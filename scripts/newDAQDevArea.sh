#!/usr/bin/env bash

[[ "$0" != "${BASH_SOURCE}" ]] && { echo "Error: This script must be run, not sourced."; return 1; }

#defaults
my_quals="e26:prof:s131"
my_version="v1_10_05"
my_env="sbn-fd"
my_devdir=$(date +"DAQ_%Y-%m-%d")_GAL_${my_version}_test
#my_devdir=DAQ_14May20
my_projname=sbndaq
my_new=true

my_mrb_version=v6_08_01

#my_mrb_version=v5_19_05

my_selected_build_config=develop


#available build configurations
source_branches_develop=(
   "wibtools:develop"
   "sbndaq-artdaq-core:develop"
   "sbndaq-artdaq:develop"
   "sbndaq:develop"
)

source_branches_testrelease=(
   "wibtools:release/v1_10_04"
   "sbndaq-artdaq-core:release/v1_10_04"
   "sbndaq-artdaq:release/v1_10_04"
   "sbndaq:release/v1_10_04"
)

source_branches_release=(
   "wibtools:release/${my_version}"
   "sbndaq-artdaq-core:release/${my_version}"
   "sbndaq-artdaq:release/${my_version}"
   "sbndaq:release/${my_version}"
)

source_branches_master=(
   "wibtools:master"
   "sbndaq-artdaq-core:master"
   "sbndaq-artdaq:master"
   "sbndaq:master"
)

while [[ "$#" -gt 0 ]]; do case $1 in
  -e|--env) my_env="$2"; shift;;
  -d|--devdir) my_devdir="$2"; shift;;
  -s|--swdir) my_swdir="$2"; shift;;
  -v|--version) my_version="$2"; shift;;
  -q|--quals) my_quals="$2"; shift;;
  -p|--projname) my_projname="$2"; shift;;
  -n|--new) my_new=True;;
  *) echo "Unknown parameter passed: $1"; exit 1;;
esac; shift; done

my_swdir=${UPS_REPO_DIR:-"/software/products"}
my_daqarea=${HOME}/DAQ_DevAreas

my_local_swdir=${my_local_swdir:-"/nvme_scratch/products"}
my_local_daqarea=${my_local_daqarea:-"/nvme_scratch/DAQ_DevAreas"}

[[ -f ${my_local_swdir}/setup ]] && export my_swdir=${my_local_swdir}
[[ -d ${my_local_daqarea} ]] && export my_daqarea=${my_local_daqarea}

source_branches_var=source_branches_$my_selected_build_config[@]
source_branches=${!source_branches_var}

unset PRODUCTS

printf "Options:\n"
printf "\tnew=$my_new\n"
printf "\tenv=$my_env\n"
printf "\tquals=$my_quals\n"
printf "\tversion=$my_version\n"
printf "\tdevdir=$my_devdir\n"
printf "\tswdir=$my_swdir\n"
printf "Usage:\n"
printf " $(basename "$1") -e $my_env -v $my_version -q $my_quals -d $my_devdir -s$my_swdir \n\n"

abort()
{
    echo >&2 '
***************
*** ABORTED ***
***************
'
    echo "An error occurred. Exiting..." >&2
    exit 1
}

trap 'abort' 0

source $my_swdir/setup
[[ -f $my_swdir/../products_dev/setup ]] && source $my_swdir/../products_dev/setup

echo "PRODUCTS: ${PRODUCTS}"
if [[ $my_new -eq "true" ]]; then
  if [[ ! -d $my_daqarea/$my_devdir ]]; then
    mkdir -p $my_daqarea/$my_devdir
    cd $my_daqarea/$my_devdir
    unsetup_all
    setup mrb ${my_mrb_version}
    setup git
    export MRB_PROJECT=$my_projname
    mrb newDev -v "$my_version" -q "$my_quals" -f
    source $(ls -f $(pwd)/localProducts*$my_version*/setup |head -1)

    for source_branch in ${source_branches[*]};do
      this_project_name=$(echo $source_branch | cut -d ":" -f 1 )
      this_source_branch=$(echo $source_branch | cut -d ":" -f 2 )
      this_project_dir=$(echo $this_project_name | tr "-" "_")

      cd $MRB_SOURCE
      #echo  mrb gitCheckout --branch ${this_source_branch} --directory ${this_project_dir} --github-org SBNSoftware  ${this_project_name}
      #mrb gitCheckout --branch ${this_source_branch} --directory ${this_project_dir}  --github-org SBNSoftware ${this_project_name}
      echo git clone https://github.com/SBNSoftware/${this_project_name}.git ${this_project_dir}
      git clone https://github.com/SBNSoftware/${this_project_name}.git ${this_project_dir}
      cd ${MRB_SOURCE}/${this_project_dir} >/dev/null 2>&1
      if [ $? -eq 0 ]; then
        git checkout ${this_source_branch}
        git remote set-url origin git@github.com:SBNSoftware/${this_project_name}.git
        git branch --set-upstream-to=origin/${this_source_branch}
      fi
    done

    cd $MRB_TOP

    cd $my_daqarea/$my_devdir
    ln -s $my_daqarea/$my_devdir/srcs/sbndaq/$my_env/DAQInterface .
    #mrbsetenv
    mrb uc
    mrbsetenv
    mrb i -j$(nproc)
    unsetup_all > /dev/null
  else
    echo "$my_daqarea/$my_devdir already exits; rebuilding..."
  fi
fi

cd $my_daqarea/$my_devdir
setup mrb ${my_mrb_version}

source $(ls -f $(pwd)/localProducts*$my_version*/setup |head -1) > /dev/null
setup sbndaq $my_version -q $my_quals

ups active |grep -E "(sbndaq)"

printenv |grep SBNDAQ


cd  $my_daqarea/$my_devdir/srcs/sbndaq/$my_env/DAQInterface

source setup_daqinterface.sh

#artdaqRunControl

trap : 0

echo >&2 '
************
*** DONE ***
************
'
