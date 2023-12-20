#!/usr/bin/bash
[ -z "$RUNSINCLEANSHELL" ] && exec /bin/env -i RUNSINCLEANSHELL="TRUE" \
 HOME=$HOME \
 DISPLAY=$DISPLAY \
 SHELL=$SHELL \
 TERM=$TERM \
 USER=$USER \
 HOSTNAME="$HOSTNAME" \
 KRB5CCNAME="$KRB5CCNAME" \
 LANG="$LANG" \
 my_kerberos_principal="$my_kerberos_principal" \
 my_scripts_dir="$my_scripts_dir" \
 my_products_repo_dir="$my_products_repo_dir" \
 my_project_name="$my_project_name" \
 my_release_version="$my_release_version" \
 PATH=/usr/kerberos/sbin:/usr/kerberos/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin \
 /usr/bin/bash --noprofile --norc "$0" "$@"

export daq_rel_tag=v1_08_00-release
my_selected_build_config=develop
my_build_variants=( "e20:prof:s120a" )

##build settings
my_release_version=${my_release_version:-"v1_08_05"}
my_project_name=${my_mrb_project_name:-"sbnd"}
my_products_repo_dir=${my_products_repo_dir:-"/software/products"}
my_kerberos_principal=${my_kerberos_principal:-$(tmp=$(klist |grep "Default principal:") && (tmp=${tmp#*:} && tmp=${tmp%@*} &&  echo $tmp) || echo $USER)}

#available build configurations
source_branches_develop=(
   "icarus-artdaq-base:develop"
   "sbndaq-artdaq-core:develop"
   "sbndaq-artdaq:develop"
   "sbndaq:develop"
)

source_branches_master=(
   "icarus-artdaq-base:master"
   "sbndaq-artdaq-core:master"
   "sbndaq-artdaq:master"
   "sbndaq-redis-plugin:master"
   "sbndaq:master"
)



##begin script
rc_success=0 
rc_failure=1

experiment_root_dir=$HOME/${my_project_name}_artdaq
products_repo_dir=$my_products_repo_dir

this_nproc=$(nproc)
script_full_path=$(readlink --canonicalize-existing $0)
timestamp=$(date -d "today" +"%Y%m%d%H%M%S")
this_user=($my_kerberos_principal "$(cat /etc/passwd |grep lukhanin |cut -d ":" -f 5)" )

source_branches_var=source_branches_$my_selected_build_config[@]
source_branches=${!source_branches_var}

source ${products_repo_dir}/setup
unsetup_all >/dev/null 2>&1
export PRODUCTS=""

source ${products_repo_dir}/setup

if [ -z ${UPS_DIR} ]
then
  printf "\nERROR: please setup ups"
  exit 1
fi

ups_repo_dir=$(dirname $(dirname $(dirname ${UPS_DIR})))

work_dir=${experiment_root_dir}/work_dirs/${this_user[0]}-${my_project_name}-${my_release_version}-${my_selected_build_config}
source_dir=${work_dir}/srcs
scratch_dir=${work_dir}/tmp
products_dir=${work_dir}/products
packages_dir=${work_dir}/packages


printf "\nLogged as ${USER}@$(hostname)"
printf "\nOS $(uname -a)"
printf "\nPRODUCTS=${PRODUCTS}"
printf "\ngit user.name=${this_user[1]}"
printf "\ngit user.email=${this_user[0]}@fnal.gov"
printf "\nups_repo_dir=${ups_repo_dir}"
printf "\nwork_dir=${work_dir}\n"
printf "\nSelected sources: ($source_branches)\n"

[[ ! -d "${work_dir}" ]] && mkdir -p ${work_dir}
[[ ! -d "${products_dir}" ]] && mkdir -p ${products_dir}
[[ ! -d "${packages_dir}" ]] && mkdir -p ${packages_dir}
[[ ! -d "${source_dir}" ]] && mkdir -p ${source_dir}
[[ ! -d "${scratch_dir}" ]] && mkdir -p ${scratch_dir}

setup mrb v6_08_01
setup git 
setup gitflow 

git config --global user.name  ${this_user[1]}
git config --global user.email ${this_user[0]}@fnal.gov

function checkout_source() {
  #use defaults for getting source code git
  local this_qual=e17
  local this_rqual=prof
  local this_daq_rel_qual="$this_qual:$this_rqual"

  export PRODUCTS="${products_dir}:${PRODUCTS}";printf "\nPRODUCTS=$PRODUCTS\n"
  export MRB_TOP=${work_dir};printf "\nMRB_TOP=$MRB_TOP"
  export MRB_PROJECT="${my_project_name}";printf "\nMRB_PROJECT=$MRB_PROJECT"
  export MRB_PROJECT_VERSION="${my_release_version}";printf "\nMRB_PROJECT_VERSION=$MRB_PROJECT_VERSION"
  export MRB_SOURCE="${source_dir}" ;printf "\nMRB_SOURCE=$MRB_SOURCE\n"

  if [  -d "${source_dir}" ]; then
      mv ${source_dir} ${source_dir}.${timestamp}
      printf "\nBackup old source to ${source_dir}.${timestamp}"
  fi

  [[ ! -d "${source_dir}" ]] && mkdir -p ${source_dir}

  cd ${work_dir}

  rm -rf *build_* 
  rm -rf *localProducts_*
  rm -rf ${work_dir}/*build_*  
  rm -rf ${work_dir}/*localProducts_* 

  mrb newDev -f -v ${my_release_version} -q ${this_daq_rel_qual}

  export MRB_INSTALL="${work_dir}/localProducts_${my_project_name}_${my_release_version}_$(echo ${this_qual}|sed 's/:/_/g')_${this_rqual}";printf "\nMRB_INSTALL=$MRB_INSTALL"

  source  ${MRB_INSTALL}/setup   

  cd ${source_dir}

  local log_file=${source_dir}/gitCheckout-${timestamp}.log

  printf "\nDownloading source to ${source_dir}, see ${log_file} for details..."

  printf "\nChecking-out \"icarus_artdaq_base\""
  mrb gitCheckout -d icarus_artdaq_base     ssh://p-icarus-artdaq@cdcvs.fnal.gov/cvs/projects/icarus-artdaq-base     >>${log_file} 2>&1
  
  printf "\nChecking-out \"sbndaq_artdaq_core\""
  mrb gitCheckout -d sbndaq_artdaq_core   ssh://p-sbndaq@cdcvs.fnal.gov/cvs/projects/sbndaq-artdaq-core   >>${log_file} 2>&1

  printf "\nChecking-out \"sbndaq_artdaq\""
  mrb gitCheckout -d sbndaq_artdaq ssh://p-sbndaq@cdcvs.fnal.gov/cvs/projects/sbndaq-artdaq >>${log_file} 2>&1

  printf "\nChecking-out \"sbndaq\""
  mrb gitCheckout -d sbndaq ssh://p-sbndaq@cdcvs.fnal.gov/cvs/projects/sbndaq >>${log_file} 2>&1

#  printf "\nChecking-out \"sbndqm\""
#  mrb gitCheckout -d sbndqm ssh://p-sbndqm@cdcvs.fnal.gov/cvs/projects/sbndqm >>${log_file} 2>&1

#  printf "\nChecking-out \"sbndaq_decode\""
#  mrb gitCheckout -d sbndaq_decode ssh://p-sbndaq@cdcvs.fnal.gov/cvs/projects/sbndaq-decode >>${log_file} 2>&1

#  printf "\nChecking-out \"sbndaq_online\""
#  mrb gitCheckout -d sbndaq_online ssh://p-sbndaq@cdcvs.fnal.gov/cvs/projects/sbndaq-online >>${log_file} 2>&1

  unset MRB_TOP
  unset MRB_PROJECT
  unset MRB_PROJECT_VERSION
  unset MRB_INSTALL
  unset MRB_SOURCE
}

function pull_source() {
  #use defaults for getting source code git
  local this_qual=e17
  local this_rqual=prof  
  local this_daq_rel_qual="$this_qual:$this_rqual"
  
  export PRODUCTS="${products_dir}:${PRODUCTS}";printf "\nPRODUCTS=$PRODUCTS\n"
  export MRB_TOP=${work_dir};printf "\nMRB_TOP=$MRB_TOP"
  export MRB_PROJECT="${my_project_name}";printf "\nMRB_PROJECT=$MRB_PROJECT"
  export MRB_PROJECT_VERSION="${my_release_version}";printf "\nMRB_PROJECT_VERSION=$MRB_PROJECT_VERSION"
  export MRB_SOURCE="${source_dir}" ;printf "\nMRB_SOURCE=$MRB_SOURCE\n"

  if [ ! -d "${source_dir}" ]; then
      printf "\nError: No source found!"
      return $rc_failure
  fi

  export MRB_INSTALL="${work_dir}/localProducts_${my_project_name}_${my_release_version}_$(echo ${this_qual}|sed 's/:/_/g')_${this_rqual}";printf "\nMRB_INSTALL=$MRB_INSTALL"

  source  ${MRB_INSTALL}/setup    >/dev/null 2>&1

  cd ${source_dir}

  for this_dir in ${source_dir}/*; do
    cd ${this_dir} >/dev/null 2>&1
    if [ $? -eq 0 ]; then 
      printf "$(basename $this_dir): "
      git stash   >/dev/null 2>&1
      git pull
      git stash pop >/dev/null 2>&1
    fi    
  done

  unset MRB_TOP
  unset MRB_PROJECT
  unset MRB_PROJECT_VERSION
  unset MRB_INSTALL
  unset MRB_SOURCE
}

function change_branches(){
  cd ${source_dir}

  for source_branch in ${source_branches[*]};do
   local this_project_name=$(echo $source_branch | cut -d ":" -f 1 )
   local this_source_branch=$(echo $source_branch | cut -d ":" -f 2 )
   local this_project_dir=$(echo $this_project_name | tr "-" "_")

   cd ${source_dir}/${this_project_dir} >/dev/null 2>&1
   if [ $? -eq 0 ]; then 
      git stash >/dev/null 2>&1
      echo
      echo "Switching $this_project_name to branch '$this_source_branch'"
      git checkout ${this_source_branch}
      git branch --set-upstream-to=origin/${this_source_branch}
      git stash pop >/dev/null 2>&1
    fi
  done
}


function run_buildtool_build() 
{

  [ -d "${products_dir}" ] && rm -rf ${products_dir}
  [ ! -d "${products_dir}" ] && mkdir -p ${products_dir}

  cp -ra ${ups_repo_dir}/{ups,.upsfiles,setup*} ${products_dir}/

  export PRODUCTS="${products_dir}:${PRODUCTS}";printf "\nPRODUCTS=$PRODUCTS\n"

  for this_build_variant in ${my_build_variants[*]}; do
      unsetup_all >/dev/null 2>&1

      local daq_rel_bqual=e17
      local daq_rel_squal=""
      local daq_rel_oquals=""
      local daq_rel_rqual="-d"

      for q in $(echo $this_build_variant |tr ':' '\n' ); do
        case $q in 
            debug) daq_rel_rqual="-d"                   ;;
            prof) daq_rel_rqual="-p"                    ;;
            icarus) daq_rel_oquals="$daq_rel_oquals $q" ;;
            sbnd) daq_rel_oquals="$daq_rel_oquals $q"   ;;
            e*) daq_rel_bqual=e${q#*e}                  ;;
            s*) daq_rel_squal=s${q#*s}                  ;;
            *) echo "Error: Invalid qualifier \"$q\""
        esac
      done

      cd ${work_dir}

      daq_rel_oquals="$daq_rel_squal $daq_rel_oquals"

      for source_branch in ${source_branches[*]}; do
        unsetup_all >/dev/null 2>&1

        local this_project_name=$(echo $source_branch | cut -d ":" -f 1 )
        local this_build_dir=${work_dir}/build-${this_project_name}
        local this_project_dir=$(echo $this_project_name | tr "-" "_")

        #printf "\nthis_build_dir = ${this_build_dir}\n"
        #printf "\nthis_project_name = ${this_project_name}\n"

        [ -d "${this_build_dir}" ] && rm -rf ${this_build_dir}
        [ ! -d "${this_build_dir}" ] && mkdir -p ${this_build_dir}

        cd ${this_build_dir}

        printf "\n******* Starting build for project $this_project_name  with qualifiers "$this_build_variant" ......\n"

        #echo source ${source_dir}/${this_project_dir}/ups/setup_for_development ${daq_rel_rqual} ${daq_rel_bqual} ${daq_rel_oquals}

        local daq_rel_oquals_tmp=${daq_rel_oquals}
        local this_build_variant_tmp=${this_build_variant}

        if [[ "${this_project_name}" == "icarus-artdaq-base" ]]; then
            printf "\n****** Warning: Removed the \"s\" qualifier for icarus_artdaq_base."
            this_build_variant_tmp=${this_build_variant%:s*} 
            daq_rel_oquals_tmp=""
        fi

        source ${source_dir}/${this_project_dir}/ups/setup_for_development ${daq_rel_rqual} ${daq_rel_bqual} ${daq_rel_oquals_tmp}

        printf "\n******* Active products......\n"
        ups active

        printf "\n******* Building......\n"
        export MRB_QUALS="${this_build_variant_tmp}"
        buildtool -j$this_nproc 2>&1 |tee ${work_dir}/build-${this_project_name}/build_${this_project_name}.log

        printf "\n******* Packaging......\n"
        buildtool -p -j$this_nproc 2>&1 |tee ${work_dir}/build-${this_project_name}/package_${this_project_name}.log

        printf "\n******* Staging......\n"
        cp ${work_dir}/build-${this_project_name}/*.tar.bz2 ${packages_dir}/

        for f in ${work_dir}/build-${this_project_name}/*.tar.bz2; do 
          printf "Installing ${f} file......\n";
          tar jxvf $f -C ${products_dir} >/dev/null 2>&1
        done
      done
  done

  printf "\n****** Built packages in ${packages_dir}\n"
  ls -al ${packages_dir}/

  find ${products_dir} -type f -atime 0 -print | xargs -d '\n' chmod go+r
  find ${products_dir} -type d -atime 0 -print | xargs -d '\n' chmod go+rx

  unsetup_all >/dev/null 2>&1
  export PRODUCTS=""

  source ${products_dir}/setup

  ups list -aK+
}



##main program
checkout_source
pull_source
change_branches

#export SANITIZE_ADDRESS="TRUE"


run_buildtool_build
