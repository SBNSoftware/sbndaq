#!/usr/bin/env bash
# Captured environment: 20250729_200456

[[ "$0" != "${BASH_SOURCE}" ]] || { echo "The script $(basename ${BASH_SOURCE}) should be sourced!"; exit 1; }
shopt -s extglob
#Environment variables
export ACLOCAL_PATH=/daq/software/spack_packages/cmake/3.27.9/linux-almalinux9-x86_64_v2-gcc-12.1.0-gw75efpzlsu7zaoucalbpqindvkj6nny/share/aclocal:\
/daq/software/spack_packages/gsl/2.7.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-dte7qnr7n4xmca6wl42smoectjvkguep/share/aclocal:\
/daq/software/spack_packages/curl/8.8.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-z7e2szbfkoavoygrcllup4gk4kdbpr7r/share/aclocal:\
/daq/software/spack_packages/util-macros/1.20.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-rvdcksscpxnwnkmfgsuoolsokndu2umi/share/aclocal:\
/daq/software/spack_packages/xtrans/1.5.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-ooh4pi4uhs347bt4oin5wwxaidbauajn/share/aclocal:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-o24mpgnv2tvlxzwjem6ocswqatoimalr/share/aclocal:\
/daq/software/spack_packages/glib/2.78.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-psonxgo2b7pesvyczo5afk4bf77xoyyi/share/aclocal:\
/daq/software/spack_packages/pkgconf/2.2.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-rkbm2nowpexldgom57d2p23l5ueulwql/share/aclocal:\
/daq/software/spack_packages/gettext/0.22.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-z5xxp3xauiyvdh366dqxzxcu26nse43n/share/aclocal:\
/daq/software/spack_packages/libxml2/2.9.12/linux-almalinux9-x86_64_v2-gcc-12.1.0-x47iqhck3h2pb7eixtuueook4ouxmfvg/share/aclocal:\
/daq/software/spack_packages/freetype/2.13.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-yo2np5c7dcdz7lvv2biqwaflnblp3xf4/share/aclocal:\
/daq/software/spack_packages/font-util/1.4.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-jmlvtezux52f4dop6w2wprixquezgjl7/share/aclocal:\
/usr/share/aclocal

export ARTDAQ_DAQINTERFACE_DIR="/daq/software/spack_packages/artdaq-daqinterface/v3_14_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-dxnj54yjzpgpz62andd7qbxw5tvscte7"

export ARTDAQ_DAQINTERFACE_VERSION="SPACK"

export ARTDAQ_MFEXTENSIONS_DIR="/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-vkq4zvmjx4ziugghilcxjdpf44uy7s7s"

export BASHRCSOURCED="Y"

export BASH_ARGV0="bash"

export BASH_EXECUTION_STRING="export SPACK_DISABLE_LOCAL_CONFIG=true;. /home/nfs/icarus/DAQ_SPACK_DevAreas/DAQ_2024-11-26_GAL_v1_10_04/DAQInterface/overrides/spack/share/spack/setup-env.sh ; . /home/nfs/icarus/DAQ_SPACK_ProdAreas/DAQ_2025-04-07_GAL_v1_10_07/srcs/sbndaq/sbn-fd/DAQInterface2/setup_sbn_artdaq.sh for_running"

export BOOST_ROOT="/daq/software/spack_packages/boost/1.82.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-v5jttyqvfm3u5zlplivys23nhlrrjmel"

export BUILD_HASH="/52ng43s"

export BUILD_VARIANT="gcc@12.1.0"

export CC="/daq/software/spack_packages/llvm/17.0.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-fmjyd745m2zmhikdc43h44mykiercerl/bin/clang"

export CET_PLUGIN_PATH=/daq/software/spack_packages/sbndaq/v1_10_07/linux-almalinux9-x86_64_v2-gcc-12.1.0-o3xfx3vdyf2lxzcdh5tdy3qw7su5auek/lib:\
/daq/software/spack_packages/sbndaq-artdaq/v1_10_07/linux-almalinux9-x86_64_v2-gcc-12.1.0-yglheov2bxljghltdvecm3ugzt5ci6ic/lib:\
/daq/software/spack_packages/artdaq-epics-plugin/v1_06_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-k2fu374hlpnpkru4ys4mvefd4exfqnq5/lib:\
/daq/software/spack_packages/artdaq-demo/v3_13_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-wmmdibmynmeprhwidgmme7c3iqyw7psu/lib:\
/daq/software/spack_packages/artdaq-core-demo/v1_11_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-jpaisaqc6koek2acavlx4f6ajnsbtjot/lib:\
/daq/software/spack_packages/artdaq/v3_13_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-qewu4xzmqqsdfg5nxozmwvyvftan6fvi/lib:\
/daq/software/spack_packages/artdaq-utilities/v1_09_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-i3qldzy7uof55d3wa3xk6szqkrw7uh34/lib:\
/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-vkq4zvmjx4ziugghilcxjdpf44uy7s7s/lib:\
/daq/software/spack_packages/artdaq-core/v3_10_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-72gb7nd2j4mzk2hmpigmwfe7jc2azhr2/lib:\
/daq/software/spack_packages/trace/v3_17_11/linux-almalinux9-x86_64_v2-gcc-12.1.0-fvs5jtlzawym5z3fqhv4w3pkakla6g67/lib:\
/daq/software/spack_packages/art-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-12.1.0-lelbmrkgwpdqiytkjx3vnuzjpwvrx7y6/lib:\
/daq/software/spack_packages/art/3.14.04/linux-almalinux9-x86_64_v2-gcc-12.1.0-fj2pexyqnwlhnonwlov6mc3o5gsqvhwv/lib:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-almalinux9-x86_64_v2-gcc-12.1.0-uidzun2mkfq24weydifzfsmdhblioknj/lib

export CLING_STANDARD_PCH="none"

export CMAKE_PREFIX_PATH=/daq/software/spack_packages/sbndaq-suite/v1_10_07/linux-almalinux9-x86_64_v2-gcc-12.1.0-52ng43siaego4zypndqsj6cjhfubhiyi:\
/daq/software/spack_packages/sbndaq/v1_10_07/linux-almalinux9-x86_64_v2-gcc-12.1.0-o3xfx3vdyf2lxzcdh5tdy3qw7su5auek:\
/daq/software/spack_packages/sbndaq-artdaq/v1_10_07/linux-almalinux9-x86_64_v2-gcc-12.1.0-yglheov2bxljghltdvecm3ugzt5ci6ic:\
/daq/software/spack_packages/windriver/v12_06_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-lc7qtjtter4xalppr5bo4hjof43tpd2t:\
/daq/software/spack_packages/wibtools/v1_10_06/linux-almalinux9-x86_64_v2-gcc-12.1.0-de3owtfiguffeebcbw4jmnx7ojdv64l3:\
/daq/software/spack_packages/sbndaq-artdaq-core/v1_10_06/linux-almalinux9-x86_64_v2-gcc-12.1.0-id6omk64t4bohlrx54ixdcrjaba3cc7v:\
/daq/software/spack_packages/redis/7.4.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-hx22fzubtasdi3ialu5togkthxzf5hbz:\
/daq/software/spack_packages/libpqxx/7.6.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-zlkzygpne2jzhn3f4jtq3vvwlbhl5xyz:\
/daq/software/spack_packages/jsoncpp/1.9.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-rsh47gsaxww6cdkd5sion2ylrltgy4rl:\
/daq/software/spack_packages/hiredis/1.1.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-w6j4m5bcqqpotetw2go5ywcirojclzef:\
/daq/software/spack_packages/cppzmq/4.10.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-omubvdeyk4serv6wynsx52apf3lpo2g4:\
/daq/software/spack_packages/libzmq/4.3.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-bgj6bq6kbaujbkdauuu7ocazqassf5pa:\
/daq/software/spack_packages/libsodium/1.0.20/linux-almalinux9-x86_64_v2-gcc-12.1.0-d5lde37addk5r6gusooncsvvbo4ke25d:\
/daq/software/spack_packages/caendigitizer/2.17.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-usbnsdifozwnsi7r3nvglo63j2m3crgg:\
/daq/software/spack_packages/caencomm/1.7.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-yqc3g774n6lb7ixwmq563d33qksupqqf:\
/daq/software/spack_packages/caenvmelib/4.0.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-mndirlspwtumr4jrhuzwgkpl2uksxwtr:\
/daq/software/spack_packages/libusb/1.0.22/linux-almalinux9-x86_64_v2-gcc-12.1.0-pjhvgmx6wo7fyk4hpnk3vprdqxr5q6ui:\
/daq/software/spack_packages/artdaq-suite/v3_13_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-rmifhnyrqf5a7efx75ggydftplkof5bh:\
/daq/software/spack_packages/artdaq-epics-plugin/v1_06_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-k2fu374hlpnpkru4ys4mvefd4exfqnq5:\
/daq/software/spack_packages/epics-base/7.0.6.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-maqplht4b42weugqogotjmqgkf7pzlmy:\
/daq/software/spack_packages/artdaq-demo/v3_13_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-wmmdibmynmeprhwidgmme7c3iqyw7psu:\
/daq/software/spack_packages/artdaq-database/v1_10_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-alpoy5ripta42v5x6z4l6ozawc6zzpdf:\
/daq/software/spack_packages/artdaq-daqinterface/v3_14_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-dxnj54yjzpgpz62andd7qbxw5tvscte7:\
/daq/software/spack_packages/artdaq-core-demo/v1_11_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-jpaisaqc6koek2acavlx4f6ajnsbtjot:\
/daq/software/spack_packages/artdaq/v3_13_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-qewu4xzmqqsdfg5nxozmwvyvftan6fvi:\
/daq/software/spack_packages/artdaq-utilities/v1_09_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-i3qldzy7uof55d3wa3xk6szqkrw7uh34:\
/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-vkq4zvmjx4ziugghilcxjdpf44uy7s7s:\
/daq/software/spack_packages/artdaq-core/v3_10_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-72gb7nd2j4mzk2hmpigmwfe7jc2azhr2:\
/daq/software/spack_packages/trace/v3_17_11/linux-almalinux9-x86_64_v2-gcc-12.1.0-fvs5jtlzawym5z3fqhv4w3pkakla6g67:\
/daq/software/spack_packages/art-suite/s131/linux-almalinux9-x86_64_v2-gcc-12.1.0-7xx7cvdfgnnfsuposup3fanirv3ctnbp:\
/daq/software/spack_packages/xrootd/5.5.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-vprlpgdwmz66xvfzidildyjxyca2doeh:\
/daq/software/spack_packages/json-c/0.16/linux-almalinux9-x86_64_v2-gcc-12.1.0-6e4jjmirxxgixumcryhfmxq6fjqbfxiy:\
/daq/software/spack_packages/pythia6/6.4.28/linux-almalinux9-x86_64_v2-gcc-12.1.0-ho6e5ai7vei36ogzsicgsqshcazos7sv:\
/daq/software/spack_packages/py-pybind11/2.10.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-szexzqcmsqyxn4qnrbjkughfscazcgvy:\
/daq/software/spack_packages/py-numpy/1.24.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-maytltsgwu4e4vcwslgabu4t3fq7o7xk:\
/daq/software/spack_packages/py-setuptools/63.4.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-b3bcaab7zrc37kezgp2pwv4r4ocgkwxa:\
/daq/software/spack_packages/python-venv/1.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-wjuxvbsfkelej6c4gvinhvjfiezsbqk6:\
/daq/software/spack_packages/postgresql/15.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-sxlv3xed3xmzbfrjwvl6uqmvwtvi7hni:\
/daq/software/spack_packages/openblas/0.3.23/linux-almalinux9-x86_64_v2-gcc-12.1.0-l2fq3bngddszdbcxzrb6bcssu76ejuvz:\
/daq/software/spack_packages/fftw/3.3.10/linux-almalinux9-x86_64_v2-gcc-12.1.0-t7tgcbycpv6fs4fohc6bted72ryu2qfq:\
/daq/software/spack_packages/openmpi/5.0.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-6klvsvkvev74x5vnd4cfe7ws4sixppze:\
/daq/software/spack_packages/pmix/5.0.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-qkxegydyu4w5i4xpisygmdmuskvth7la:\
/daq/software/spack_packages/openssh/9.8p1/linux-almalinux9-x86_64_v2-gcc-12.1.0-sqc4lttfue2qjtgjgvch5pck2j7i56g7:\
/daq/software/spack_packages/krb5/1.21.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-qsdhns3lopkkvlotz63pvgx2rd6wjnyu:\
/daq/software/spack_packages/numactl/2.0.18/linux-almalinux9-x86_64_v2-gcc-12.1.0-gjtegvznj2i62aquz737gubsm56t52jf:\
/daq/software/spack_packages/libevent/2.1.12/linux-almalinux9-x86_64_v2-gcc-12.1.0-z6hs2p4qcgakfbocsr77jpfwr6xt7hty:\
/daq/software/spack_packages/cetmodules/3.24.01/linux-almalinux9-x86_64_v2-gcc-12.1.0-z3mc27oqft6hppht4ok3tqdwcus2rjw3:\
/daq/software/spack_packages/cmake/3.27.9/linux-almalinux9-x86_64_v2-gcc-12.1.0-gw75efpzlsu7zaoucalbpqindvkj6nny:\
/daq/software/spack_packages/gmake/4.4.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-3ahdu6yf7gqc2j7ybk67hfjp2s367hk4:\
/daq/software/spack_packages/art-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-12.1.0-lelbmrkgwpdqiytkjx3vnuzjpwvrx7y6:\
/daq/software/spack_packages/canvas-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-12.1.0-3jdzjqn7hxs6gqcgth5p4z4al2ie4hon:\
/daq/software/spack_packages/root/6.28.12/linux-almalinux9-x86_64_v2-gcc-12.1.0-se7z5epldsshgf5qx7mevifmiwh4tjcb:\
/daq/software/spack_packages/xxhash/0.8.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-k6wqvx24jgwto4dp77kj5qsb7z4f5qn3:\
/daq/software/spack_packages/vdt/0.4.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-xjrxrotj7wouwa2mfilzmntyay4ch3nu:\
/daq/software/spack_packages/unuran/1.8.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-tdd5jdgwxwsplyxv3cxmmrmhn6omem5u:\
/daq/software/spack_packages/rngstreams/1.0.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-dvskhdizfcdy26eaoluliei7pzduacll:\
/daq/software/spack_packages/pcre/8.45/linux-almalinux9-x86_64_v2-gcc-12.1.0-cvcedz6yywrfsk6ylgzjjdlvc5lp47sr:\
/daq/software/spack_packages/nlohmann-json/3.11.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-tof7fp5skv5cepvoa6fjgvkdreueh5dq:\
/daq/software/spack_packages/lz4/1.10.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-5rps36i4tu27ehhdehutlanu7u7gs3qv:\
/daq/software/spack_packages/libxpm/3.5.17/linux-almalinux9-x86_64_v2-gcc-12.1.0-zxfbcuyqtnw6hcunilm3f5xlhhkx65eg:\
/daq/software/spack_packages/libxft/2.3.8/linux-almalinux9-x86_64_v2-gcc-12.1.0-flu5wynn6iwcm2igdujmb2hjqu3dthee:\
/daq/software/spack_packages/gsl/2.7.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-dte7qnr7n4xmca6wl42smoectjvkguep:\
/daq/software/spack_packages/glew/2.2.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-gk2puc4ixm625hkzer5iiq47buzetb6i:\
/daq/software/spack_packages/gl2ps/1.4.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-eaods5rpirycwzugx4sdgflysqjcnq6x:\
/daq/software/spack_packages/ftgl/2.4.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-ojiplhflt7jkg5uhao2gvzjouoteo7sb:\
/daq/software/spack_packages/mesa-glu/9.0.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-vvoesp52gbvld44yurpoafqro27xpqxg:\
/daq/software/spack_packages/glx/1.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-pyrsr2xbrd2tuhmxzvadcsuetjimhld6:\
/daq/software/spack_packages/mesa/23.3.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-sp6jsusmvwxi7zgemhflxnkbuljsfuo3:\
/daq/software/spack_packages/xrandr/1.5.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-6ydyufuyfrwxctsuxmu4oxoha7g2xlmo:\
/daq/software/spack_packages/libxrandr/1.5.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-guxic6bp5b3ajloch4tgomamqn6itme2:\
/daq/software/spack_packages/randrproto/1.5.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-npglrq2aqbcfhf4j45y5gednqbecimk6:\
/daq/software/spack_packages/llvm/17.0.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-fmjyd745m2zmhikdc43h44mykiercerl:\
/daq/software/spack_packages/swig/4.1.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-3rwieaivjm2qg4eh42jl6qpgcepukmjs:\
/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-vz3ivv7iyzztgzb54aaqa33vcjkjexc3:\
/daq/software/spack_packages/unzip/6.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-petmj5kvbdlm53rnx3qovwloffdrdggs:\
/daq/software/spack_packages/libedit/3.1-20240808/linux-almalinux9-x86_64_v2-gcc-12.1.0-2tiow43ho23yi5h3z2lmv3aob453t3fn:\
/daq/software/spack_packages/binutils/2.43.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-jc2yzbda3t7so4gjrdac5u5xie3qclft:\
/daq/software/spack_packages/libxt/1.3.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-mbgwrrekkqbya5gd654xonbanw7mf7g5:\
/daq/software/spack_packages/libunwind/1.6.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-zx6g2z4gbvzplwzv2sqpnyqgeumsbj5a:\
/daq/software/spack_packages/glproto/1.4.17/linux-almalinux9-x86_64_v2-gcc-12.1.0-zkh2noe4mp22delsa7tigbnjyzzsmyow:\
/daq/software/spack_packages/davix/0.8.7/linux-almalinux9-x86_64_v2-gcc-12.1.0-mbjm5tqy42ryz2wy2rl6rkaanomg4wfy:\
/daq/software/spack_packages/rapidjson/1.2.0-2024-08-16/linux-almalinux9-x86_64_v2-gcc-12.1.0-pbybp7l2gkyel7jlb4g6kbhtumxakoph:\
/daq/software/spack_packages/art/3.14.04/linux-almalinux9-x86_64_v2-gcc-12.1.0-fj2pexyqnwlhnonwlov6mc3o5gsqvhwv:\
/daq/software/spack_packages/hep-concurrency/1.09.02/linux-almalinux9-x86_64_v2-gcc-12.1.0-ao3zkwdhjmm2dbnoi5udhpdcnqws4c7x:\
/daq/software/spack_packages/canvas/3.16.04/linux-almalinux9-x86_64_v2-gcc-12.1.0-ei42ap5ejkzrfoz5m4fzrn677t7rpxdd:\
/daq/software/spack_packages/range-v3/0.12.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-t5j23r46iyamjbtaemecxqwlsdszz6sc:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-almalinux9-x86_64_v2-gcc-12.1.0-uidzun2mkfq24weydifzfsmdhblioknj:\
/daq/software/spack_packages/catch2/3.3.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-wrgxf5f625vsntkwpc4b24m43ywi4idi:\
/daq/software/spack_packages/fhicl-cpp/4.18.04/linux-almalinux9-x86_64_v2-gcc-12.1.0-4cwq55rww3hxz2iifhd66kii7wzdnwbc:\
/daq/software/spack_packages/intel-tbb/2021.12.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-bptlzhvqrda2okafsuzy32vvhfw5cwqo:\
/daq/software/spack_packages/hwloc/2.11.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-du2vs5pxcpuen3p7krgjvgb6vxqvyqlm:\
/daq/software/spack_packages/libpciaccess/0.17/linux-almalinux9-x86_64_v2-gcc-12.1.0-ku6whcybw7jbzfajbhyz46uawbcpququ:\
/daq/software/spack_packages/clhep/2.4.7.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-6ykaga4xrvlclvxd53vw4tefckmectrp:\
/daq/software/spack_packages/cetlib/3.18.02/linux-almalinux9-x86_64_v2-gcc-12.1.0-otutjrqtagnlfg3vplfbl4n5ov5zc3sn:\
/daq/software/spack_packages/cetlib-except/1.09.01/linux-almalinux9-x86_64_v2-gcc-12.1.0-tbc3vjnlbjwbr7aaqddszfe2ebpb7hk4:\
/daq/software/spack_packages/boost/1.82.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-v5jttyqvfm3u5zlplivys23nhlrrjmel:\
/daq/software/spack_packages/artdaq-runcontrol-gui/v1_03_06/linux-almalinux9-x86_64_v2-gcc-12.1.0-qkhmp7gzrwytftezpc72zznvycwarzqo:\
/daq/software/spack_packages/xmlrpc-c/1.51.06/linux-almalinux9-x86_64_v2-gcc-12.1.0-sjsc6qjt7f4gmpjrbm6wj2lgm4nr2hpl:\
/daq/software/spack_packages/curl/8.8.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-z7e2szbfkoavoygrcllup4gk4kdbpr7r:\
/daq/software/spack_packages/nghttp2/1.63.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-rysbhkutkdnrfabwdughe4q5gam4scbw:\
/daq/software/spack_packages/qt/5.15.15/linux-almalinux9-x86_64_v2-gcc-12.1.0-dejn4gtbfdbm7xmrj5sugqc37dgjr3oc:\
/daq/software/spack_packages/xcb-util-wm/0.4.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-cqrbi5bbvqanqzz6brx6hqbfw2cn34pc:\
/daq/software/spack_packages/xcb-util-renderutil/0.3.10/linux-almalinux9-x86_64_v2-gcc-12.1.0-r3ivty5tp6sadw456h3h32tsee6o2gmz:\
/daq/software/spack_packages/xcb-util-keysyms/0.4.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-4fuihu5ehroshon7phixyig26r2eqg3a:\
/daq/software/spack_packages/xcb-util-image/0.4.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-emdh6loj6ybj5zgmmgyqcuweweji7vml:\
/daq/software/spack_packages/xcb-util/0.4.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-jhr7h7vgtqaxlmw4wxxc5wywpdpd2a4u:\
/daq/software/spack_packages/libxrender/0.9.11/linux-almalinux9-x86_64_v2-gcc-12.1.0-o6coasbyj5bwajpwjxlbpg4kwfggs2sm:\
/daq/software/spack_packages/renderproto/0.11.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-5lztkrm5cw2s4is47owcbl5gz7t7z7mq:\
/daq/software/spack_packages/libxkbcommon/1.7.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-nw5ifevvsyn6hqabnpkzdquxcdudojpe:\
/daq/software/spack_packages/xkbdata/1.0.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-6rvkibnwmrjvypjvqqk3oza4wmbeztei:\
/daq/software/spack_packages/util-macros/1.20.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-rvdcksscpxnwnkmfgsuoolsokndu2umi:\
/daq/software/spack_packages/libxext/1.3.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-4l4aotfkkh6lp3ys7m5lur5ye2riarvg:\
/daq/software/spack_packages/xextproto/7.3.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-6tdr7hl6kcwsz3wqxkbthj4ug3uood7c:\
/daq/software/spack_packages/libx11/1.8.10/linux-almalinux9-x86_64_v2-gcc-12.1.0-3buagovsmgkgardwjy5me6eid4vubjh6:\
/daq/software/spack_packages/libxcb/1.17.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-z6gm6d65ednltaxdcd5yv7z6v2kp5oqj:\
/daq/software/spack_packages/libxdmcp/1.1.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-uupnvhexmi5zpljgzutn4agbebcp253z:\
/daq/software/spack_packages/libxau/1.0.11/linux-almalinux9-x86_64_v2-gcc-12.1.0-twddkqujs6iaocysrlfyppcr5pcaoudu:\
/daq/software/spack_packages/libpthread-stubs/0.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-shxexcvzbq2cs6p3wxpthig3lpn3gyal:\
/daq/software/spack_packages/kbproto/1.0.7/linux-almalinux9-x86_64_v2-gcc-12.1.0-trzy4upnu5enjqttxe7dbslfi43knk6t:\
/daq/software/spack_packages/libsm/1.2.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-ecinmmfpmrivgog4n2sxjkaa575sylng:\
/daq/software/spack_packages/libice/1.1.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-cpx3kfjcih6yhax3c6j7jvo2r5537rg2:\
/daq/software/spack_packages/xtrans/1.5.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-ooh4pi4uhs347bt4oin5wwxaidbauajn:\
/daq/software/spack_packages/xproto/7.0.31/linux-almalinux9-x86_64_v2-gcc-12.1.0-o5vlio55s4xpljre5wqhu7tgymn4ofn4:\
/daq/software/spack_packages/libmng/2.0.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-b76ht25k4lubtdgydsgfroqmzurijqil:\
/daq/software/spack_packages/lcms/2.16/linux-almalinux9-x86_64_v2-gcc-12.1.0-4r74noqjzolnv3jge62rla3kuitaho5b:\
/daq/software/spack_packages/libtiff/4.7.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-f3vqoxqfecwovbrxpwlv3nkzhqpwswqc:\
/daq/software/spack_packages/libjpeg-turbo/3.0.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-pfjxkqdbkwzgfkvxysuiyvhcduzkqxx6:\
/daq/software/spack_packages/harfbuzz/10.0.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-7xwkkdldvrzkcjdtcbtgcxfwwjxmjxzq:\
/daq/software/spack_packages/icu4c/74.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-2xuiizg7tgpc3bkrncsfiaknck524sgm:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-o24mpgnv2tvlxzwjem6ocswqatoimalr:\
/daq/software/spack_packages/cairo/1.16.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-emul6o74vgdsbb3ygvoi54byii66mtfs:\
/daq/software/spack_packages/pixman/0.42.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-dhwae4lqoc237xvut6xmt773f4vhuhuv:\
/daq/software/spack_packages/glib/2.78.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-psonxgo2b7pesvyczo5afk4bf77xoyyi:\
/daq/software/spack_packages/python/3.9.15/linux-almalinux9-x86_64_v2-gcc-12.1.0-c3nbdeplpvphsensa5mdhi2d4uswvjkp:\
/daq/software/spack_packages/sqlite/3.40.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-rvbifxz4w225cdsxrluomxtdtmwlwj4i:\
/daq/software/spack_packages/openssl/3.3.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-jqzfdzlyslfwdu7irr5ecuvuxupt2wen:\
/daq/software/spack_packages/libxcrypt/4.4.35/linux-almalinux9-x86_64_v2-gcc-12.1.0-rvxs7onyvjozw5dqnapkj7vlyq2yq2ri:\
/daq/software/spack_packages/expat/2.6.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-uug72qsr6nqo6iovyf6t63tc5cbsm33m:\
/daq/software/spack_packages/libbsd/0.12.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-mmzx3gn4qoyjngqqbjulughmnixd5bgs:\
/daq/software/spack_packages/libmd/1.0.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-jsfnt7kyodug6ny4m4enq7qjp434fzdb:\
/daq/software/spack_packages/perl/5.40.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-vvjkhxpv7cgf4kzkxfh66y42zwd5uqbi:\
/daq/software/spack_packages/gdbm/1.23/linux-almalinux9-x86_64_v2-gcc-12.1.0-lqqu6lwer7kdgze5bdvpuovwqj3d4m73:\
/daq/software/spack_packages/readline/8.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-at6s64x7blsgz3f3ldfbexktwmxxhxbw:\
/daq/software/spack_packages/berkeley-db/18.1.40/linux-almalinux9-x86_64_v2-gcc-12.1.0-f2v5nw7mto7pnxbka7qzrl4wn3evciqr:\
/daq/software/spack_packages/pcre2/10.44/linux-almalinux9-x86_64_v2-gcc-12.1.0-yt6bdur2ojwkfco44mck2upatdlmlua2:\
/daq/software/spack_packages/libffi/3.4.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-ri2kz2i3fvrmyzrqi6o5i6mdqbq7dh3t:\
/daq/software/spack_packages/elfutils/0.191/linux-almalinux9-x86_64_v2-gcc-12.1.0-itslpmszn53wyn7zuc6qo2dddwsmgqcz:\
/daq/software/spack_packages/pkgconf/2.2.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-rkbm2nowpexldgom57d2p23l5ueulwql:\
/daq/software/spack_packages/gettext/0.22.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-z5xxp3xauiyvdh366dqxzxcu26nse43n:\
/daq/software/spack_packages/tar/1.34/linux-almalinux9-x86_64_v2-gcc-12.1.0-wj32mteoh4gn6q2barn6dqy4n67bdfvr:\
/daq/software/spack_packages/zstd/1.5.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-rf3bh4myisswpaehzx22djeruhswuo3n:\
/daq/software/spack_packages/pigz/2.8/linux-almalinux9-x86_64_v2-gcc-12.1.0-bjkchtg6q2im4ij5ujbf5wonuronvvtf:\
/daq/software/spack_packages/ncurses/6.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-cmqq6c2lnvnqakbdvavqz7z7coxd6235:\
/daq/software/spack_packages/fontconfig/2.15.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-xxhw3mxaafk6xpqur3cxxj22jxt6iz6i:\
/daq/software/spack_packages/util-linux-uuid/2.40.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-kamu3iecs4aoqky57hp5gnropwnalay6:\
/daq/software/spack_packages/libxml2/2.9.12/linux-almalinux9-x86_64_v2-gcc-12.1.0-x47iqhck3h2pb7eixtuueook4ouxmfvg:\
/daq/software/spack_packages/xz/5.4.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-nfrvmeak3zwrxdzjpyun4ejudeybfv6k:\
/daq/software/spack_packages/libiconv/1.17/linux-almalinux9-x86_64_v2-gcc-12.1.0-tnaiaf3nyfdtyg4nwlnrh2hf3vpvotaz:\
/daq/software/spack_packages/freetype/2.13.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-yo2np5c7dcdz7lvv2biqwaflnblp3xf4:\
/daq/software/spack_packages/libpng/1.6.39/linux-almalinux9-x86_64_v2-gcc-12.1.0-slm54vxjlwpak7stzh47zn7chwkgk6qq:\
/daq/software/spack_packages/zlib-ng/2.2.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-l5scy544r3v37g4oapdjqo7zfhmizsrr:\
/daq/software/spack_packages/bzip2/1.0.8/linux-almalinux9-x86_64_v2-gcc-12.1.0-5gz4qrpph2lsxsapzex2ha75jxjmh3lu:\
/daq/software/spack_packages/font-util/1.4.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-jmlvtezux52f4dop6w2wprixquezgjl7:\
/daq/software/spack_packages/double-conversion/3.3.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-p5bcuaszihtus24dsc7g2v2j2srll6sy:\
/daq/software/spack_packages/gcc-runtime/12.1.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-22upj6ywn6pzwvs55uuul5fafxlxmw2r

export CPPYY_API_PATH="none"

export CXX="/daq/software/spack_packages/llvm/17.0.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-fmjyd745m2zmhikdc43h44mykiercerl/bin/clang++"

export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/52361/bus"

export DEBUGINFOD_URLS="https://debuginfod.centos.org/"

export EPICS_BASE="/daq/software/spack_packages/epics-base/7.0.6.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-maqplht4b42weugqogotjmqgkf7pzlmy"

export EPICS_HOST_ARCH="linux-x86_64"

export EPOCHREALTIME="1753837496.397237"

export EPOCHSECONDS="1753837496"

export FHICL_FILE_PATH=/daq/software/spack_packages/sbndaq/v1_10_07/linux-almalinux9-x86_64_v2-gcc-12.1.0-o3xfx3vdyf2lxzcdh5tdy3qw7su5auek/fcl:\
/daq/software/spack_packages/sbndaq-artdaq/v1_10_07/linux-almalinux9-x86_64_v2-gcc-12.1.0-yglheov2bxljghltdvecm3ugzt5ci6ic/fcl:\
/daq/software/spack_packages/artdaq-epics-plugin/v1_06_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-k2fu374hlpnpkru4ys4mvefd4exfqnq5/fcl:\
/daq/software/spack_packages/artdaq-demo/v3_13_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-wmmdibmynmeprhwidgmme7c3iqyw7psu/fcl:\
/daq/software/spack_packages/artdaq-core-demo/v1_11_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-jpaisaqc6koek2acavlx4f6ajnsbtjot/fcl:\
/daq/software/spack_packages/artdaq/v3_13_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-qewu4xzmqqsdfg5nxozmwvyvftan6fvi/fcl:\
/daq/software/spack_packages/artdaq-utilities/v1_09_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-i3qldzy7uof55d3wa3xk6szqkrw7uh34/fcl:\
/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-vkq4zvmjx4ziugghilcxjdpf44uy7s7s/fcl:\
/daq/software/spack_packages/artdaq-core/v3_10_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-72gb7nd2j4mzk2hmpigmwfe7jc2azhr2/fcl

export FUNCNAME="export_environment_vars"

export GI_TYPELIB_PATH=/daq/software/spack_packages/harfbuzz/10.0.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-7xwkkdldvrzkcjdtcbtgcxfwwjxmjxzq/lib/girepository-1.0:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-o24mpgnv2tvlxzwjem6ocswqatoimalr/lib/girepository-1.0

export GSL_ROOT_DIR="/daq/software/spack_packages/gsl/2.7.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-dte7qnr7n4xmca6wl42smoectjvkguep"

export HISTIGNORE="history:[bf]g:exit:logout:clear:pwd:ls"

export HISTTIMEFORMAT="%Y-%m-%d-%T"

export LDSHARED

export LD_LIBRARY_PATH="/daq/software/spack_packages/canvas-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-12.1.0-3jdzjqn7hxs6gqcgth5p4z4al2ie4hon/lib"

export LIBRARY_PATH

export LOADEDMODULES

export LUA_CPATH="/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-vz3ivv7iyzztgzb54aaqa33vcjkjexc3/lib/lua/5.3/?.so"

export LUA_PATH="/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-vz3ivv7iyzztgzb54aaqa33vcjkjexc3/lib/lua/5.3/?/init.lua;/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-vz3ivv7iyzztgzb54aaqa33vcjkjexc3/lib/lua/5.3/?.lua;/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-vz3ivv7iyzztgzb54aaqa33vcjkjexc3/share/lua/5.3/?/init.lua;/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-vz3ivv7iyzztgzb54aaqa33vcjkjexc3/share/lua/5.3/?.lua"

export MANPATH=

export MODULEPATH="/etc/scl/modulefiles:/usr/share/Modules/modulefiles:/etc/modulefiles:/usr/share/modulefiles"

export MODULESHOME="/usr/share/Modules"

export MODULES_CMD="/usr/share/Modules/libexec/modulecmd.tcl"

export MODULES_RUN_QUARANTINE="LD_LIBRARY_PATH LD_PRELOAD"

export MOTD_SHOWN="pam"

export MPICC="/daq/software/spack_packages/openmpi/5.0.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-6klvsvkvev74x5vnd4cfe7ws4sixppze/bin/mpicc"

export MPICXX="/daq/software/spack_packages/openmpi/5.0.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-6klvsvkvev74x5vnd4cfe7ws4sixppze/bin/mpic++"

export MPIF77="/daq/software/spack_packages/openmpi/5.0.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-6klvsvkvev74x5vnd4cfe7ws4sixppze/bin/mpif77"

export MPIF90="/daq/software/spack_packages/openmpi/5.0.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-6klvsvkvev74x5vnd4cfe7ws4sixppze/bin/mpif90"

export MPIFC="/daq/software/spack_packages/openmpi/5.0.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-6klvsvkvev74x5vnd4cfe7ws4sixppze/bin/mpifort"

export MRB_QUALS="both"

export OS_NAME="almalinux9"

export PATH=/daq/software/spack_packages/epics-base/7.0.6.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-maqplht4b42weugqogotjmqgkf7pzlmy/bin/linux-x86_64:\
/daq/software/spack_packages/trace/v3_17_11/linux-almalinux9-x86_64_v2-gcc-12.1.0-fvs5jtlzawym5z3fqhv4w3pkakla6g67/bin:\
/daq/software/spack_packages/py-numpy/1.24.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-maytltsgwu4e4vcwslgabu4t3fq7o7xk/bin:\
/daq/software/spack_packages/py-pybind11/2.10.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-szexzqcmsqyxn4qnrbjkughfscazcgvy/bin:\
/daq/software/spack_packages/python-venv/1.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-wjuxvbsfkelej6c4gvinhvjfiezsbqk6/bin:\
/daq/software/spack_packages/openssh/9.8p1/linux-almalinux9-x86_64_v2-gcc-12.1.0-sqc4lttfue2qjtgjgvch5pck2j7i56g7/bin:\
/daq/software/spack_packages/cmake/3.27.9/linux-almalinux9-x86_64_v2-gcc-12.1.0-gw75efpzlsu7zaoucalbpqindvkj6nny/bin:\
/daq/software/spack_packages/unzip/6.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-petmj5kvbdlm53rnx3qovwloffdrdggs/bin:\
/daq/software/spack_packages/curl/8.8.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-z7e2szbfkoavoygrcllup4gk4kdbpr7r/bin:\
/daq/software/spack_packages/python/3.9.15/linux-almalinux9-x86_64_v2-gcc-12.1.0-c3nbdeplpvphsensa5mdhi2d4uswvjkp/bin:\
/daq/software/spack_packages/sqlite/3.40.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-rvbifxz4w225cdsxrluomxtdtmwlwj4i/bin:\
/daq/software/spack_packages/perl/5.40.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-vvjkhxpv7cgf4kzkxfh66y42zwd5uqbi/bin:\
/daq/software/spack_packages/tar/1.34/linux-almalinux9-x86_64_v2-gcc-12.1.0-wj32mteoh4gn6q2barn6dqy4n67bdfvr/bin:\
/daq/software/spack_packages/zstd/1.5.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-rf3bh4myisswpaehzx22djeruhswuo3n/bin:\
/daq/software/spack_packages/pigz/2.8/linux-almalinux9-x86_64_v2-gcc-12.1.0-bjkchtg6q2im4ij5ujbf5wonuronvvtf/bin:\
/daq/software/spack_packages/xz/5.4.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-nfrvmeak3zwrxdzjpyun4ejudeybfv6k/bin:\
/daq/software/spack_packages/bzip2/1.0.8/linux-almalinux9-x86_64_v2-gcc-12.1.0-5gz4qrpph2lsxsapzex2ha75jxjmh3lu/bin:\
/daq/software/spack_packages/sbndaq/v1_10_07/linux-almalinux9-x86_64_v2-gcc-12.1.0-o3xfx3vdyf2lxzcdh5tdy3qw7su5auek/bin:\
/daq/software/spack_packages/sbndaq-artdaq/v1_10_07/linux-almalinux9-x86_64_v2-gcc-12.1.0-yglheov2bxljghltdvecm3ugzt5ci6ic/bin:\
/daq/software/spack_packages/wibtools/v1_10_06/linux-almalinux9-x86_64_v2-gcc-12.1.0-de3owtfiguffeebcbw4jmnx7ojdv64l3/bin:\
/daq/software/spack_packages/redis/7.4.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-hx22fzubtasdi3ialu5togkthxzf5hbz/bin:\
/daq/software/spack_packages/libzmq/4.3.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-bgj6bq6kbaujbkdauuu7ocazqassf5pa/bin:\
/daq/software/spack_packages/artdaq-epics-plugin/v1_06_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-k2fu374hlpnpkru4ys4mvefd4exfqnq5/bin:\
/daq/software/spack_packages/epics-base/7.0.6.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-maqplht4b42weugqogotjmqgkf7pzlmy/bin:\
/daq/software/spack_packages/artdaq-demo/v3_13_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-wmmdibmynmeprhwidgmme7c3iqyw7psu/bin:\
/daq/software/spack_packages/artdaq-database/v1_10_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-alpoy5ripta42v5x6z4l6ozawc6zzpdf/bin:\
/daq/software/spack_packages/artdaq-daqinterface/v3_14_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-dxnj54yjzpgpz62andd7qbxw5tvscte7/bin:\
/daq/software/spack_packages/artdaq/v3_13_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-qewu4xzmqqsdfg5nxozmwvyvftan6fvi/bin:\
/daq/software/spack_packages/artdaq-utilities/v1_09_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-i3qldzy7uof55d3wa3xk6szqkrw7uh34/bin:\
/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-vkq4zvmjx4ziugghilcxjdpf44uy7s7s/bin:\
/daq/software/spack_packages/xrootd/5.5.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-vprlpgdwmz66xvfzidildyjxyca2doeh/bin:\
/daq/software/spack_packages/postgresql/15.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-sxlv3xed3xmzbfrjwvl6uqmvwtvi7hni/bin:\
/daq/software/spack_packages/openblas/0.3.23/linux-almalinux9-x86_64_v2-gcc-12.1.0-l2fq3bngddszdbcxzrb6bcssu76ejuvz/bin:\
/daq/software/spack_packages/fftw/3.3.10/linux-almalinux9-x86_64_v2-gcc-12.1.0-t7tgcbycpv6fs4fohc6bted72ryu2qfq/bin:\
/daq/software/spack_packages/openmpi/5.0.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-6klvsvkvev74x5vnd4cfe7ws4sixppze/bin:\
/daq/software/spack_packages/pmix/5.0.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-qkxegydyu4w5i4xpisygmdmuskvth7la/bin:\
/daq/software/spack_packages/krb5/1.21.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-qsdhns3lopkkvlotz63pvgx2rd6wjnyu/bin:\
/daq/software/spack_packages/numactl/2.0.18/linux-almalinux9-x86_64_v2-gcc-12.1.0-gjtegvznj2i62aquz737gubsm56t52jf/bin:\
/daq/software/spack_packages/libevent/2.1.12/linux-almalinux9-x86_64_v2-gcc-12.1.0-z6hs2p4qcgakfbocsr77jpfwr6xt7hty/bin:\
/daq/software/spack_packages/cetmodules/3.24.01/linux-almalinux9-x86_64_v2-gcc-12.1.0-z3mc27oqft6hppht4ok3tqdwcus2rjw3/bin:\
/daq/software/spack_packages/gmake/4.4.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-3ahdu6yf7gqc2j7ybk67hfjp2s367hk4/bin:\
/daq/software/spack_packages/art-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-12.1.0-lelbmrkgwpdqiytkjx3vnuzjpwvrx7y6/bin:\
/daq/software/spack_packages/root/6.28.12/linux-almalinux9-x86_64_v2-gcc-12.1.0-se7z5epldsshgf5qx7mevifmiwh4tjcb/bin:\
/daq/software/spack_packages/xxhash/0.8.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-k6wqvx24jgwto4dp77kj5qsb7z4f5qn3/bin:\
/daq/software/spack_packages/pcre/8.45/linux-almalinux9-x86_64_v2-gcc-12.1.0-cvcedz6yywrfsk6ylgzjjdlvc5lp47sr/bin:\
/daq/software/spack_packages/lz4/1.10.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-5rps36i4tu27ehhdehutlanu7u7gs3qv/bin:\
/daq/software/spack_packages/libxpm/3.5.17/linux-almalinux9-x86_64_v2-gcc-12.1.0-zxfbcuyqtnw6hcunilm3f5xlhhkx65eg/bin:\
/daq/software/spack_packages/gsl/2.7.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-dte7qnr7n4xmca6wl42smoectjvkguep/bin:\
/daq/software/spack_packages/glew/2.2.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-gk2puc4ixm625hkzer5iiq47buzetb6i/bin:\
/daq/software/spack_packages/xrandr/1.5.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-6ydyufuyfrwxctsuxmu4oxoha7g2xlmo/bin:\
/daq/software/spack_packages/llvm/17.0.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-fmjyd745m2zmhikdc43h44mykiercerl/bin:\
/daq/software/spack_packages/swig/4.1.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-3rwieaivjm2qg4eh42jl6qpgcepukmjs/bin:\
/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-vz3ivv7iyzztgzb54aaqa33vcjkjexc3/bin:\
/daq/software/spack_packages/binutils/2.43.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-jc2yzbda3t7so4gjrdac5u5xie3qclft/bin:\
/daq/software/spack_packages/davix/0.8.7/linux-almalinux9-x86_64_v2-gcc-12.1.0-mbjm5tqy42ryz2wy2rl6rkaanomg4wfy/bin:\
/daq/software/spack_packages/art/3.14.04/linux-almalinux9-x86_64_v2-gcc-12.1.0-fj2pexyqnwlhnonwlov6mc3o5gsqvhwv/bin:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-almalinux9-x86_64_v2-gcc-12.1.0-uidzun2mkfq24weydifzfsmdhblioknj/bin:\
/daq/software/spack_packages/fhicl-cpp/4.18.04/linux-almalinux9-x86_64_v2-gcc-12.1.0-4cwq55rww3hxz2iifhd66kii7wzdnwbc/bin:\
/daq/software/spack_packages/hwloc/2.11.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-du2vs5pxcpuen3p7krgjvgb6vxqvyqlm/bin:\
/daq/software/spack_packages/clhep/2.4.7.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-6ykaga4xrvlclvxd53vw4tefckmectrp/bin:\
/daq/software/spack_packages/cetlib/3.18.02/linux-almalinux9-x86_64_v2-gcc-12.1.0-otutjrqtagnlfg3vplfbl4n5ov5zc3sn/bin:\
/daq/software/spack_packages/artdaq-runcontrol-gui/v1_03_06/linux-almalinux9-x86_64_v2-gcc-12.1.0-qkhmp7gzrwytftezpc72zznvycwarzqo/bin:\
/daq/software/spack_packages/xmlrpc-c/1.51.06/linux-almalinux9-x86_64_v2-gcc-12.1.0-sjsc6qjt7f4gmpjrbm6wj2lgm4nr2hpl/bin:\
/daq/software/spack_packages/nghttp2/1.63.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-rysbhkutkdnrfabwdughe4q5gam4scbw/bin:\
/daq/software/spack_packages/qt/5.15.15/linux-almalinux9-x86_64_v2-gcc-12.1.0-dejn4gtbfdbm7xmrj5sugqc37dgjr3oc/bin:\
/daq/software/spack_packages/libxkbcommon/1.7.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-nw5ifevvsyn6hqabnpkzdquxcdudojpe/bin:\
/daq/software/spack_packages/lcms/2.16/linux-almalinux9-x86_64_v2-gcc-12.1.0-4r74noqjzolnv3jge62rla3kuitaho5b/bin:\
/daq/software/spack_packages/libtiff/4.7.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-f3vqoxqfecwovbrxpwlv3nkzhqpwswqc/bin:\
/daq/software/spack_packages/libjpeg-turbo/3.0.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-pfjxkqdbkwzgfkvxysuiyvhcduzkqxx6/bin:\
/daq/software/spack_packages/harfbuzz/10.0.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-7xwkkdldvrzkcjdtcbtgcxfwwjxmjxzq/bin:\
/daq/software/spack_packages/icu4c/74.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-2xuiizg7tgpc3bkrncsfiaknck524sgm/bin:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-o24mpgnv2tvlxzwjem6ocswqatoimalr/bin:\
/daq/software/spack_packages/cairo/1.16.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-emul6o74vgdsbb3ygvoi54byii66mtfs/bin:\
/daq/software/spack_packages/glib/2.78.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-psonxgo2b7pesvyczo5afk4bf77xoyyi/bin:\
/daq/software/spack_packages/openssl/3.3.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-jqzfdzlyslfwdu7irr5ecuvuxupt2wen/bin:\
/daq/software/spack_packages/expat/2.6.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-uug72qsr6nqo6iovyf6t63tc5cbsm33m/bin:\
/daq/software/spack_packages/gdbm/1.23/linux-almalinux9-x86_64_v2-gcc-12.1.0-lqqu6lwer7kdgze5bdvpuovwqj3d4m73/bin:\
/daq/software/spack_packages/readline/8.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-at6s64x7blsgz3f3ldfbexktwmxxhxbw/bin:\
/daq/software/spack_packages/berkeley-db/18.1.40/linux-almalinux9-x86_64_v2-gcc-12.1.0-f2v5nw7mto7pnxbka7qzrl4wn3evciqr/bin:\
/daq/software/spack_packages/pcre2/10.44/linux-almalinux9-x86_64_v2-gcc-12.1.0-yt6bdur2ojwkfco44mck2upatdlmlua2/bin:\
/daq/software/spack_packages/elfutils/0.191/linux-almalinux9-x86_64_v2-gcc-12.1.0-itslpmszn53wyn7zuc6qo2dddwsmgqcz/bin:\
/daq/software/spack_packages/pkgconf/2.2.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-rkbm2nowpexldgom57d2p23l5ueulwql/bin:\
/daq/software/spack_packages/gettext/0.22.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-z5xxp3xauiyvdh366dqxzxcu26nse43n/bin:\
/daq/software/spack_packages/ncurses/6.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-cmqq6c2lnvnqakbdvavqz7z7coxd6235/bin:\
/daq/software/spack_packages/fontconfig/2.15.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-xxhw3mxaafk6xpqur3cxxj22jxt6iz6i/bin:\
/daq/software/spack_packages/util-linux-uuid/2.40.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-kamu3iecs4aoqky57hp5gnropwnalay6/bin:\
/daq/software/spack_packages/libxml2/2.9.12/linux-almalinux9-x86_64_v2-gcc-12.1.0-x47iqhck3h2pb7eixtuueook4ouxmfvg/bin:\
/daq/software/spack_packages/libiconv/1.17/linux-almalinux9-x86_64_v2-gcc-12.1.0-tnaiaf3nyfdtyg4nwlnrh2hf3vpvotaz/bin:\
/daq/software/spack_packages/freetype/2.13.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-yo2np5c7dcdz7lvv2biqwaflnblp3xf4/bin:\
/daq/software/spack_packages/libpng/1.6.39/linux-almalinux9-x86_64_v2-gcc-12.1.0-slm54vxjlwpak7stzh47zn7chwkgk6qq/bin:\
/daq/software/spack_packages/font-util/1.4.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-jmlvtezux52f4dop6w2wprixquezgjl7/bin:\
/daq/software/spack_packages/spack/current/NULL/bin:\
/usr/share/Modules/bin:\
/usr/local/sbin:\
/usr/sbin:\
/opt/puppetlabs/bin:\
/usr/local/bin:\
/usr/bin

export PERL5LIB=/daq/software/spack_packages/trace/v3_17_11/linux-almalinux9-x86_64_v2-gcc-12.1.0-fvs5jtlzawym5z3fqhv4w3pkakla6g67/perllib:\
/daq/software/spack_packages/art/3.14.04/linux-almalinux9-x86_64_v2-gcc-12.1.0-fj2pexyqnwlhnonwlov6mc3o5gsqvhwv/perllib:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-almalinux9-x86_64_v2-gcc-12.1.0-uidzun2mkfq24weydifzfsmdhblioknj/perllib:\
/daq/software/spack_packages/cetlib/3.18.02/linux-almalinux9-x86_64_v2-gcc-12.1.0-otutjrqtagnlfg3vplfbl4n5ov5zc3sn/perllib

export PKG_CONFIG_PATH=/daq/software/spack_packages/libpqxx/7.6.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-zlkzygpne2jzhn3f4jtq3vvwlbhl5xyz/lib64/pkgconfig:\
/daq/software/spack_packages/jsoncpp/1.9.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-rsh47gsaxww6cdkd5sion2ylrltgy4rl/lib64/pkgconfig:\
/daq/software/spack_packages/hiredis/1.1.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-w6j4m5bcqqpotetw2go5ywcirojclzef/lib64/pkgconfig:\
/daq/software/spack_packages/cppzmq/4.10.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-omubvdeyk4serv6wynsx52apf3lpo2g4/lib64/pkgconfig:\
/daq/software/spack_packages/libzmq/4.3.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-bgj6bq6kbaujbkdauuu7ocazqassf5pa/lib/pkgconfig:\
/daq/software/spack_packages/libsodium/1.0.20/linux-almalinux9-x86_64_v2-gcc-12.1.0-d5lde37addk5r6gusooncsvvbo4ke25d/lib/pkgconfig:\
/daq/software/spack_packages/libusb/1.0.22/linux-almalinux9-x86_64_v2-gcc-12.1.0-pjhvgmx6wo7fyk4hpnk3vprdqxr5q6ui/lib/pkgconfig:\
/daq/software/spack_packages/epics-base/7.0.6.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-maqplht4b42weugqogotjmqgkf7pzlmy/lib/pkgconfig:\
/daq/software/spack_packages/artdaq-database/v1_10_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-alpoy5ripta42v5x6z4l6ozawc6zzpdf/lib64/pkgconfig:\
/daq/software/spack_packages/json-c/0.16/linux-almalinux9-x86_64_v2-gcc-12.1.0-6e4jjmirxxgixumcryhfmxq6fjqbfxiy/lib64/pkgconfig:\
/daq/software/spack_packages/py-pybind11/2.10.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-szexzqcmsqyxn4qnrbjkughfscazcgvy/share/pkgconfig:\
/daq/software/spack_packages/postgresql/15.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-sxlv3xed3xmzbfrjwvl6uqmvwtvi7hni/lib/pkgconfig:\
/daq/software/spack_packages/openblas/0.3.23/linux-almalinux9-x86_64_v2-gcc-12.1.0-l2fq3bngddszdbcxzrb6bcssu76ejuvz/lib/pkgconfig:\
/daq/software/spack_packages/fftw/3.3.10/linux-almalinux9-x86_64_v2-gcc-12.1.0-t7tgcbycpv6fs4fohc6bted72ryu2qfq/lib/pkgconfig:\
/daq/software/spack_packages/openmpi/5.0.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-6klvsvkvev74x5vnd4cfe7ws4sixppze/lib/pkgconfig:\
/daq/software/spack_packages/pmix/5.0.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-qkxegydyu4w5i4xpisygmdmuskvth7la/lib/pkgconfig:\
/daq/software/spack_packages/krb5/1.21.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-qsdhns3lopkkvlotz63pvgx2rd6wjnyu/lib/pkgconfig:\
/daq/software/spack_packages/numactl/2.0.18/linux-almalinux9-x86_64_v2-gcc-12.1.0-gjtegvznj2i62aquz737gubsm56t52jf/lib/pkgconfig:\
/daq/software/spack_packages/libevent/2.1.12/linux-almalinux9-x86_64_v2-gcc-12.1.0-z6hs2p4qcgakfbocsr77jpfwr6xt7hty/lib/pkgconfig:\
/daq/software/spack_packages/xxhash/0.8.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-k6wqvx24jgwto4dp77kj5qsb7z4f5qn3/lib/pkgconfig:\
/daq/software/spack_packages/pcre/8.45/linux-almalinux9-x86_64_v2-gcc-12.1.0-cvcedz6yywrfsk6ylgzjjdlvc5lp47sr/lib/pkgconfig:\
/daq/software/spack_packages/nlohmann-json/3.11.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-tof7fp5skv5cepvoa6fjgvkdreueh5dq/share/pkgconfig:\
/daq/software/spack_packages/lz4/1.10.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-5rps36i4tu27ehhdehutlanu7u7gs3qv/lib/pkgconfig:\
/daq/software/spack_packages/libxpm/3.5.17/linux-almalinux9-x86_64_v2-gcc-12.1.0-zxfbcuyqtnw6hcunilm3f5xlhhkx65eg/lib/pkgconfig:\
/daq/software/spack_packages/libxft/2.3.8/linux-almalinux9-x86_64_v2-gcc-12.1.0-flu5wynn6iwcm2igdujmb2hjqu3dthee/lib/pkgconfig:\
/daq/software/spack_packages/gsl/2.7.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-dte7qnr7n4xmca6wl42smoectjvkguep/lib/pkgconfig:\
/daq/software/spack_packages/glew/2.2.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-gk2puc4ixm625hkzer5iiq47buzetb6i/lib64/pkgconfig:\
/daq/software/spack_packages/mesa-glu/9.0.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-vvoesp52gbvld44yurpoafqro27xpqxg/lib/pkgconfig:\
/daq/software/spack_packages/mesa/23.3.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-sp6jsusmvwxi7zgemhflxnkbuljsfuo3/lib/pkgconfig:\
/daq/software/spack_packages/libxrandr/1.5.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-guxic6bp5b3ajloch4tgomamqn6itme2/lib/pkgconfig:\
/daq/software/spack_packages/randrproto/1.5.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-npglrq2aqbcfhf4j45y5gednqbecimk6/lib/pkgconfig:\
/daq/software/spack_packages/libedit/3.1-20240808/linux-almalinux9-x86_64_v2-gcc-12.1.0-2tiow43ho23yi5h3z2lmv3aob453t3fn/lib/pkgconfig:\
/daq/software/spack_packages/libxt/1.3.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-mbgwrrekkqbya5gd654xonbanw7mf7g5/lib/pkgconfig:\
/daq/software/spack_packages/libunwind/1.6.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-zx6g2z4gbvzplwzv2sqpnyqgeumsbj5a/lib/pkgconfig:\
/daq/software/spack_packages/glproto/1.4.17/linux-almalinux9-x86_64_v2-gcc-12.1.0-zkh2noe4mp22delsa7tigbnjyzzsmyow/lib/pkgconfig:\
/daq/software/spack_packages/davix/0.8.7/linux-almalinux9-x86_64_v2-gcc-12.1.0-mbjm5tqy42ryz2wy2rl6rkaanomg4wfy/lib64/pkgconfig:\
/daq/software/spack_packages/rapidjson/1.2.0-2024-08-16/linux-almalinux9-x86_64_v2-gcc-12.1.0-pbybp7l2gkyel7jlb4g6kbhtumxakoph/lib/pkgconfig:\
/daq/software/spack_packages/catch2/3.3.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-wrgxf5f625vsntkwpc4b24m43ywi4idi/share/pkgconfig:\
/daq/software/spack_packages/intel-tbb/2021.12.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-bptlzhvqrda2okafsuzy32vvhfw5cwqo/lib64/pkgconfig:\
/daq/software/spack_packages/hwloc/2.11.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-du2vs5pxcpuen3p7krgjvgb6vxqvyqlm/lib/pkgconfig:\
/daq/software/spack_packages/libpciaccess/0.17/linux-almalinux9-x86_64_v2-gcc-12.1.0-ku6whcybw7jbzfajbhyz46uawbcpququ/lib/pkgconfig:\
/daq/software/spack_packages/clhep/2.4.7.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-6ykaga4xrvlclvxd53vw4tefckmectrp/lib/pkgconfig:\
/daq/software/spack_packages/xmlrpc-c/1.51.06/linux-almalinux9-x86_64_v2-gcc-12.1.0-sjsc6qjt7f4gmpjrbm6wj2lgm4nr2hpl/lib/pkgconfig:\
/daq/software/spack_packages/curl/8.8.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-z7e2szbfkoavoygrcllup4gk4kdbpr7r/lib/pkgconfig:\
/daq/software/spack_packages/nghttp2/1.63.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-rysbhkutkdnrfabwdughe4q5gam4scbw/lib/pkgconfig:\
/daq/software/spack_packages/qt/5.15.15/linux-almalinux9-x86_64_v2-gcc-12.1.0-dejn4gtbfdbm7xmrj5sugqc37dgjr3oc/lib/pkgconfig:\
/daq/software/spack_packages/xcb-util-wm/0.4.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-cqrbi5bbvqanqzz6brx6hqbfw2cn34pc/lib/pkgconfig:\
/daq/software/spack_packages/xcb-util-renderutil/0.3.10/linux-almalinux9-x86_64_v2-gcc-12.1.0-r3ivty5tp6sadw456h3h32tsee6o2gmz/lib/pkgconfig:\
/daq/software/spack_packages/xcb-util-keysyms/0.4.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-4fuihu5ehroshon7phixyig26r2eqg3a/lib/pkgconfig:\
/daq/software/spack_packages/xcb-util-image/0.4.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-emdh6loj6ybj5zgmmgyqcuweweji7vml/lib/pkgconfig:\
/daq/software/spack_packages/xcb-util/0.4.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-jhr7h7vgtqaxlmw4wxxc5wywpdpd2a4u/lib/pkgconfig:\
/daq/software/spack_packages/libxrender/0.9.11/linux-almalinux9-x86_64_v2-gcc-12.1.0-o6coasbyj5bwajpwjxlbpg4kwfggs2sm/lib/pkgconfig:\
/daq/software/spack_packages/renderproto/0.11.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-5lztkrm5cw2s4is47owcbl5gz7t7z7mq/lib/pkgconfig:\
/daq/software/spack_packages/libxkbcommon/1.7.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-nw5ifevvsyn6hqabnpkzdquxcdudojpe/lib/pkgconfig:\
/daq/software/spack_packages/util-macros/1.20.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-rvdcksscpxnwnkmfgsuoolsokndu2umi/share/pkgconfig:\
/daq/software/spack_packages/libxext/1.3.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-4l4aotfkkh6lp3ys7m5lur5ye2riarvg/lib/pkgconfig:\
/daq/software/spack_packages/xextproto/7.3.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-6tdr7hl6kcwsz3wqxkbthj4ug3uood7c/lib/pkgconfig:\
/daq/software/spack_packages/libx11/1.8.10/linux-almalinux9-x86_64_v2-gcc-12.1.0-3buagovsmgkgardwjy5me6eid4vubjh6/lib/pkgconfig:\
/daq/software/spack_packages/libxcb/1.17.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-z6gm6d65ednltaxdcd5yv7z6v2kp5oqj/lib/pkgconfig:\
/daq/software/spack_packages/libxdmcp/1.1.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-uupnvhexmi5zpljgzutn4agbebcp253z/lib/pkgconfig:\
/daq/software/spack_packages/libxau/1.0.11/linux-almalinux9-x86_64_v2-gcc-12.1.0-twddkqujs6iaocysrlfyppcr5pcaoudu/lib/pkgconfig:\
/daq/software/spack_packages/libpthread-stubs/0.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-shxexcvzbq2cs6p3wxpthig3lpn3gyal/lib/pkgconfig:\
/daq/software/spack_packages/kbproto/1.0.7/linux-almalinux9-x86_64_v2-gcc-12.1.0-trzy4upnu5enjqttxe7dbslfi43knk6t/lib/pkgconfig:\
/daq/software/spack_packages/libsm/1.2.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-ecinmmfpmrivgog4n2sxjkaa575sylng/lib/pkgconfig:\
/daq/software/spack_packages/libice/1.1.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-cpx3kfjcih6yhax3c6j7jvo2r5537rg2/lib/pkgconfig:\
/daq/software/spack_packages/xtrans/1.5.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-ooh4pi4uhs347bt4oin5wwxaidbauajn/share/pkgconfig:\
/daq/software/spack_packages/xproto/7.0.31/linux-almalinux9-x86_64_v2-gcc-12.1.0-o5vlio55s4xpljre5wqhu7tgymn4ofn4/lib/pkgconfig:\
/daq/software/spack_packages/libmng/2.0.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-b76ht25k4lubtdgydsgfroqmzurijqil/lib64/pkgconfig:\
/daq/software/spack_packages/lcms/2.16/linux-almalinux9-x86_64_v2-gcc-12.1.0-4r74noqjzolnv3jge62rla3kuitaho5b/lib/pkgconfig:\
/daq/software/spack_packages/libtiff/4.7.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-f3vqoxqfecwovbrxpwlv3nkzhqpwswqc/lib64/pkgconfig:\
/daq/software/spack_packages/libjpeg-turbo/3.0.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-pfjxkqdbkwzgfkvxysuiyvhcduzkqxx6/lib64/pkgconfig:\
/daq/software/spack_packages/harfbuzz/10.0.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-7xwkkdldvrzkcjdtcbtgcxfwwjxmjxzq/lib/pkgconfig:\
/daq/software/spack_packages/icu4c/74.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-2xuiizg7tgpc3bkrncsfiaknck524sgm/lib/pkgconfig:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-o24mpgnv2tvlxzwjem6ocswqatoimalr/lib/pkgconfig:\
/daq/software/spack_packages/cairo/1.16.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-emul6o74vgdsbb3ygvoi54byii66mtfs/lib/pkgconfig:\
/daq/software/spack_packages/pixman/0.42.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-dhwae4lqoc237xvut6xmt773f4vhuhuv/lib/pkgconfig:\
/daq/software/spack_packages/glib/2.78.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-psonxgo2b7pesvyczo5afk4bf77xoyyi/lib/pkgconfig:\
/daq/software/spack_packages/python/3.9.15/linux-almalinux9-x86_64_v2-gcc-12.1.0-c3nbdeplpvphsensa5mdhi2d4uswvjkp/lib/pkgconfig:\
/daq/software/spack_packages/sqlite/3.40.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-rvbifxz4w225cdsxrluomxtdtmwlwj4i/lib/pkgconfig:\
/daq/software/spack_packages/openssl/3.3.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-jqzfdzlyslfwdu7irr5ecuvuxupt2wen/lib64/pkgconfig:\
/daq/software/spack_packages/libxcrypt/4.4.35/linux-almalinux9-x86_64_v2-gcc-12.1.0-rvxs7onyvjozw5dqnapkj7vlyq2yq2ri/lib/pkgconfig:\
/daq/software/spack_packages/expat/2.6.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-uug72qsr6nqo6iovyf6t63tc5cbsm33m/lib/pkgconfig:\
/daq/software/spack_packages/libbsd/0.12.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-mmzx3gn4qoyjngqqbjulughmnixd5bgs/lib/pkgconfig:\
/daq/software/spack_packages/libmd/1.0.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-jsfnt7kyodug6ny4m4enq7qjp434fzdb/lib/pkgconfig:\
/daq/software/spack_packages/readline/8.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-at6s64x7blsgz3f3ldfbexktwmxxhxbw/lib/pkgconfig:\
/daq/software/spack_packages/pcre2/10.44/linux-almalinux9-x86_64_v2-gcc-12.1.0-yt6bdur2ojwkfco44mck2upatdlmlua2/lib/pkgconfig:\
/daq/software/spack_packages/libffi/3.4.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-ri2kz2i3fvrmyzrqi6o5i6mdqbq7dh3t/lib/pkgconfig:\
/daq/software/spack_packages/elfutils/0.191/linux-almalinux9-x86_64_v2-gcc-12.1.0-itslpmszn53wyn7zuc6qo2dddwsmgqcz/lib/pkgconfig:\
/daq/software/spack_packages/pkgconf/2.2.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-rkbm2nowpexldgom57d2p23l5ueulwql/lib/pkgconfig:\
/daq/software/spack_packages/zstd/1.5.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-rf3bh4myisswpaehzx22djeruhswuo3n/lib/pkgconfig:\
/daq/software/spack_packages/ncurses/6.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-cmqq6c2lnvnqakbdvavqz7z7coxd6235/lib/pkgconfig:\
/daq/software/spack_packages/fontconfig/2.15.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-xxhw3mxaafk6xpqur3cxxj22jxt6iz6i/lib/pkgconfig:\
/daq/software/spack_packages/util-linux-uuid/2.40.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-kamu3iecs4aoqky57hp5gnropwnalay6/lib/pkgconfig:\
/daq/software/spack_packages/libxml2/2.9.12/linux-almalinux9-x86_64_v2-gcc-12.1.0-x47iqhck3h2pb7eixtuueook4ouxmfvg/lib/pkgconfig:\
/daq/software/spack_packages/xz/5.4.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-nfrvmeak3zwrxdzjpyun4ejudeybfv6k/lib/pkgconfig:\
/daq/software/spack_packages/freetype/2.13.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-yo2np5c7dcdz7lvv2biqwaflnblp3xf4/lib/pkgconfig:\
/daq/software/spack_packages/libpng/1.6.39/linux-almalinux9-x86_64_v2-gcc-12.1.0-slm54vxjlwpak7stzh47zn7chwkgk6qq/lib64/pkgconfig:\
/daq/software/spack_packages/zlib-ng/2.2.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-l5scy544r3v37g4oapdjqo7zfhmizsrr/lib/pkgconfig:\
/daq/software/spack_packages/bzip2/1.0.8/linux-almalinux9-x86_64_v2-gcc-12.1.0-5gz4qrpph2lsxsapzex2ha75jxjmh3lu/lib/pkgconfig:\
/daq/software/spack_packages/font-util/1.4.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-jmlvtezux52f4dop6w2wprixquezgjl7/lib/pkgconfig:\
/usr/share/pkgconfig:\
/usr/lib64/pkgconfig

export PYTHONPATH=/daq/software/spack_packages/py-numpy/1.24.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-maytltsgwu4e4vcwslgabu4t3fq7o7xk/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-pybind11/2.10.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-szexzqcmsqyxn4qnrbjkughfscazcgvy/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-setuptools/63.4.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-b3bcaab7zrc37kezgp2pwv4r4ocgkwxa/lib/python3.9/site-packages:\
/daq/software/spack_packages/root/6.28.12/linux-almalinux9-x86_64_v2-gcc-12.1.0-se7z5epldsshgf5qx7mevifmiwh4tjcb/lib/root:\
/daq/software/spack_packages/python-venv/1.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-wjuxvbsfkelej6c4gvinhvjfiezsbqk6/lib/python3.9/site-packages

export QTDIR="/daq/software/spack_packages/qt/5.15.15/linux-almalinux9-x86_64_v2-gcc-12.1.0-dejn4gtbfdbm7xmrj5sugqc37dgjr3oc"

export QTINC="/daq/software/spack_packages/qt/5.15.15/linux-almalinux9-x86_64_v2-gcc-12.1.0-dejn4gtbfdbm7xmrj5sugqc37dgjr3oc/inc"

export QTLIB="/daq/software/spack_packages/qt/5.15.15/linux-almalinux9-x86_64_v2-gcc-12.1.0-dejn4gtbfdbm7xmrj5sugqc37dgjr3oc/lib"

export QT_PLUGIN_PATH="/daq/software/spack_packages/qt/5.15.15/linux-almalinux9-x86_64_v2-gcc-12.1.0-dejn4gtbfdbm7xmrj5sugqc37dgjr3oc/plugins"

export ROOTSYS="/daq/software/spack_packages/root/6.28.12/linux-almalinux9-x86_64_v2-gcc-12.1.0-se7z5epldsshgf5qx7mevifmiwh4tjcb"

export ROOT_INCLUDE_PATH=/daq/software/spack_packages/canvas-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-12.1.0-3jdzjqn7hxs6gqcgth5p4z4al2ie4hon/include:\
/daq/software/spack_packages/root/6.28.12/linux-almalinux9-x86_64_v2-gcc-12.1.0-se7z5epldsshgf5qx7mevifmiwh4tjcb/include:\
/daq/software/spack_packages/xxhash/0.8.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-k6wqvx24jgwto4dp77kj5qsb7z4f5qn3/include:\
/daq/software/spack_packages/vdt/0.4.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-xjrxrotj7wouwa2mfilzmntyay4ch3nu/include:\
/daq/software/spack_packages/unuran/1.8.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-tdd5jdgwxwsplyxv3cxmmrmhn6omem5u/include:\
/daq/software/spack_packages/rngstreams/1.0.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-dvskhdizfcdy26eaoluliei7pzduacll/include:\
/daq/software/spack_packages/pcre/8.45/linux-almalinux9-x86_64_v2-gcc-12.1.0-cvcedz6yywrfsk6ylgzjjdlvc5lp47sr/include:\
/daq/software/spack_packages/nlohmann-json/3.11.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-tof7fp5skv5cepvoa6fjgvkdreueh5dq/include:\
/daq/software/spack_packages/lz4/1.10.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-5rps36i4tu27ehhdehutlanu7u7gs3qv/include:\
/daq/software/spack_packages/libxpm/3.5.17/linux-almalinux9-x86_64_v2-gcc-12.1.0-zxfbcuyqtnw6hcunilm3f5xlhhkx65eg/include:\
/daq/software/spack_packages/libxft/2.3.8/linux-almalinux9-x86_64_v2-gcc-12.1.0-flu5wynn6iwcm2igdujmb2hjqu3dthee/include:\
/daq/software/spack_packages/fontconfig/2.15.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-xxhw3mxaafk6xpqur3cxxj22jxt6iz6i/include:\
/daq/software/spack_packages/font-util/1.4.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-jmlvtezux52f4dop6w2wprixquezgjl7/include:\
/daq/software/spack_packages/libjpeg-turbo/3.0.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-pfjxkqdbkwzgfkvxysuiyvhcduzkqxx6/include:\
/daq/software/spack_packages/gsl/2.7.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-dte7qnr7n4xmca6wl42smoectjvkguep/include:\
/daq/software/spack_packages/glew/2.2.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-gk2puc4ixm625hkzer5iiq47buzetb6i/include:\
/daq/software/spack_packages/gl2ps/1.4.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-eaods5rpirycwzugx4sdgflysqjcnq6x/include:\
/daq/software/spack_packages/ftgl/2.4.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-ojiplhflt7jkg5uhao2gvzjouoteo7sb/include:\
/daq/software/spack_packages/mesa-glu/9.0.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-vvoesp52gbvld44yurpoafqro27xpqxg/include:\
/daq/software/spack_packages/glx/1.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-pyrsr2xbrd2tuhmxzvadcsuetjimhld6/include:\
/daq/software/spack_packages/mesa/23.3.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-sp6jsusmvwxi7zgemhflxnkbuljsfuo3/include:\
/daq/software/spack_packages/xrandr/1.5.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-6ydyufuyfrwxctsuxmu4oxoha7g2xlmo/include:\
/daq/software/spack_packages/libxrandr/1.5.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-guxic6bp5b3ajloch4tgomamqn6itme2/include:\
/daq/software/spack_packages/randrproto/1.5.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-npglrq2aqbcfhf4j45y5gednqbecimk6/include:\
/daq/software/spack_packages/libxrender/0.9.11/linux-almalinux9-x86_64_v2-gcc-12.1.0-o6coasbyj5bwajpwjxlbpg4kwfggs2sm/include:\
/daq/software/spack_packages/renderproto/0.11.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-5lztkrm5cw2s4is47owcbl5gz7t7z7mq/include:\
/daq/software/spack_packages/llvm/17.0.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-fmjyd745m2zmhikdc43h44mykiercerl/include:\
/daq/software/spack_packages/swig/4.1.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-3rwieaivjm2qg4eh42jl6qpgcepukmjs/include:\
/daq/software/spack_packages/pcre2/10.44/linux-almalinux9-x86_64_v2-gcc-12.1.0-yt6bdur2ojwkfco44mck2upatdlmlua2/include:\
/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-vz3ivv7iyzztgzb54aaqa33vcjkjexc3/include:\
/daq/software/spack_packages/libedit/3.1-20240808/linux-almalinux9-x86_64_v2-gcc-12.1.0-2tiow43ho23yi5h3z2lmv3aob453t3fn/include:\
/daq/software/spack_packages/binutils/2.43.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-jc2yzbda3t7so4gjrdac5u5xie3qclft/include:\
/daq/software/spack_packages/libxt/1.3.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-mbgwrrekkqbya5gd654xonbanw7mf7g5/include:\
/daq/software/spack_packages/libsm/1.2.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-ecinmmfpmrivgog4n2sxjkaa575sylng/include:\
/daq/software/spack_packages/libice/1.1.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-cpx3kfjcih6yhax3c6j7jvo2r5537rg2/include:\
/daq/software/spack_packages/libxext/1.3.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-4l4aotfkkh6lp3ys7m5lur5ye2riarvg/include:\
/daq/software/spack_packages/xextproto/7.3.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-6tdr7hl6kcwsz3wqxkbthj4ug3uood7c/include:\
/daq/software/spack_packages/libx11/1.8.10/linux-almalinux9-x86_64_v2-gcc-12.1.0-3buagovsmgkgardwjy5me6eid4vubjh6/include:\
/daq/software/spack_packages/xtrans/1.5.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-ooh4pi4uhs347bt4oin5wwxaidbauajn/include:\
/daq/software/spack_packages/libxcb/1.17.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-z6gm6d65ednltaxdcd5yv7z6v2kp5oqj/include:\
/daq/software/spack_packages/libxdmcp/1.1.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-uupnvhexmi5zpljgzutn4agbebcp253z/include:\
/daq/software/spack_packages/libxau/1.0.11/linux-almalinux9-x86_64_v2-gcc-12.1.0-twddkqujs6iaocysrlfyppcr5pcaoudu/include:\
/daq/software/spack_packages/xproto/7.0.31/linux-almalinux9-x86_64_v2-gcc-12.1.0-o5vlio55s4xpljre5wqhu7tgymn4ofn4/include:\
/daq/software/spack_packages/libpthread-stubs/0.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-shxexcvzbq2cs6p3wxpthig3lpn3gyal/include:\
/daq/software/spack_packages/kbproto/1.0.7/linux-almalinux9-x86_64_v2-gcc-12.1.0-trzy4upnu5enjqttxe7dbslfi43knk6t/include:\
/daq/software/spack_packages/libunwind/1.6.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-zx6g2z4gbvzplwzv2sqpnyqgeumsbj5a/include:\
/daq/software/spack_packages/glproto/1.4.17/linux-almalinux9-x86_64_v2-gcc-12.1.0-zkh2noe4mp22delsa7tigbnjyzzsmyow/include:\
/daq/software/spack_packages/freetype/2.13.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-yo2np5c7dcdz7lvv2biqwaflnblp3xf4/include:\
/daq/software/spack_packages/libpng/1.6.39/linux-almalinux9-x86_64_v2-gcc-12.1.0-slm54vxjlwpak7stzh47zn7chwkgk6qq/include:\
/daq/software/spack_packages/davix/0.8.7/linux-almalinux9-x86_64_v2-gcc-12.1.0-mbjm5tqy42ryz2wy2rl6rkaanomg4wfy/include:\
/daq/software/spack_packages/rapidjson/1.2.0-2024-08-16/linux-almalinux9-x86_64_v2-gcc-12.1.0-pbybp7l2gkyel7jlb4g6kbhtumxakoph/include:\
/daq/software/spack_packages/curl/8.8.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-z7e2szbfkoavoygrcllup4gk4kdbpr7r/include:\
/daq/software/spack_packages/nghttp2/1.63.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-rysbhkutkdnrfabwdughe4q5gam4scbw/include:\
/daq/software/spack_packages/hep-concurrency/1.09.02/linux-almalinux9-x86_64_v2-gcc-12.1.0-ao3zkwdhjmm2dbnoi5udhpdcnqws4c7x/include:\
/daq/software/spack_packages/canvas/3.16.04/linux-almalinux9-x86_64_v2-gcc-12.1.0-ei42ap5ejkzrfoz5m4fzrn677t7rpxdd/include:\
/daq/software/spack_packages/range-v3/0.12.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-t5j23r46iyamjbtaemecxqwlsdszz6sc/include:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-almalinux9-x86_64_v2-gcc-12.1.0-uidzun2mkfq24weydifzfsmdhblioknj/include:\
/daq/software/spack_packages/catch2/3.3.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-wrgxf5f625vsntkwpc4b24m43ywi4idi/include:\
/daq/software/spack_packages/fhicl-cpp/4.18.04/linux-almalinux9-x86_64_v2-gcc-12.1.0-4cwq55rww3hxz2iifhd66kii7wzdnwbc/include:\
/daq/software/spack_packages/python/3.9.15/linux-almalinux9-x86_64_v2-gcc-12.1.0-c3nbdeplpvphsensa5mdhi2d4uswvjkp/include:\
/daq/software/spack_packages/util-linux-uuid/2.40.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-kamu3iecs4aoqky57hp5gnropwnalay6/include:\
/daq/software/spack_packages/libxcrypt/4.4.35/linux-almalinux9-x86_64_v2-gcc-12.1.0-rvxs7onyvjozw5dqnapkj7vlyq2yq2ri/include:\
/daq/software/spack_packages/libffi/3.4.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-ri2kz2i3fvrmyzrqi6o5i6mdqbq7dh3t/include:\
/daq/software/spack_packages/gettext/0.22.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-z5xxp3xauiyvdh366dqxzxcu26nse43n/include:\
/daq/software/spack_packages/gdbm/1.23/linux-almalinux9-x86_64_v2-gcc-12.1.0-lqqu6lwer7kdgze5bdvpuovwqj3d4m73/include:\
/daq/software/spack_packages/expat/2.6.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-uug72qsr6nqo6iovyf6t63tc5cbsm33m/include:\
/daq/software/spack_packages/libbsd/0.12.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-mmzx3gn4qoyjngqqbjulughmnixd5bgs/include:\
/daq/software/spack_packages/libmd/1.0.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-jsfnt7kyodug6ny4m4enq7qjp434fzdb/include:\
/daq/software/spack_packages/intel-tbb/2021.12.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-bptlzhvqrda2okafsuzy32vvhfw5cwqo/include:\
/daq/software/spack_packages/hwloc/2.11.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-du2vs5pxcpuen3p7krgjvgb6vxqvyqlm/include:\
/daq/software/spack_packages/libxml2/2.9.12/linux-almalinux9-x86_64_v2-gcc-12.1.0-x47iqhck3h2pb7eixtuueook4ouxmfvg/include:\
/daq/software/spack_packages/libiconv/1.17/linux-almalinux9-x86_64_v2-gcc-12.1.0-tnaiaf3nyfdtyg4nwlnrh2hf3vpvotaz/include:\
/daq/software/spack_packages/libpciaccess/0.17/linux-almalinux9-x86_64_v2-gcc-12.1.0-ku6whcybw7jbzfajbhyz46uawbcpququ/include:\
/daq/software/spack_packages/clhep/2.4.7.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-6ykaga4xrvlclvxd53vw4tefckmectrp/include:\
/daq/software/spack_packages/cetlib/3.18.02/linux-almalinux9-x86_64_v2-gcc-12.1.0-otutjrqtagnlfg3vplfbl4n5ov5zc3sn/include:\
/daq/software/spack_packages/sqlite/3.40.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-rvbifxz4w225cdsxrluomxtdtmwlwj4i/include:\
/daq/software/spack_packages/readline/8.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-at6s64x7blsgz3f3ldfbexktwmxxhxbw/include:\
/daq/software/spack_packages/ncurses/6.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-cmqq6c2lnvnqakbdvavqz7z7coxd6235/include:\
/daq/software/spack_packages/openssl/3.3.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-jqzfdzlyslfwdu7irr5ecuvuxupt2wen/include:\
/daq/software/spack_packages/cetlib-except/1.09.01/linux-almalinux9-x86_64_v2-gcc-12.1.0-tbc3vjnlbjwbr7aaqddszfe2ebpb7hk4/include:\
/daq/software/spack_packages/boost/1.82.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-v5jttyqvfm3u5zlplivys23nhlrrjmel/include:\
/daq/software/spack_packages/zstd/1.5.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-rf3bh4myisswpaehzx22djeruhswuo3n/include:\
/daq/software/spack_packages/zlib-ng/2.2.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-l5scy544r3v37g4oapdjqo7zfhmizsrr/include:\
/daq/software/spack_packages/xz/5.4.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-nfrvmeak3zwrxdzjpyun4ejudeybfv6k/include:\
/daq/software/spack_packages/bzip2/1.0.8/linux-almalinux9-x86_64_v2-gcc-12.1.0-5gz4qrpph2lsxsapzex2ha75jxjmh3lu/include:\
/daq/software/spack_packages/gcc-runtime/12.1.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-22upj6ywn6pzwvs55uuul5fafxlxmw2r/include:\
/daq/software/spack_packages/art-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-12.1.0-lelbmrkgwpdqiytkjx3vnuzjpwvrx7y6/include:\
/daq/software/spack_packages/art-suite/s131/linux-almalinux9-x86_64_v2-gcc-12.1.0-7xx7cvdfgnnfsuposup3fanirv3ctnbp/include:\
/daq/software/spack_packages/sbndaq-suite/v1_10_07/linux-almalinux9-x86_64_v2-gcc-12.1.0-52ng43siaego4zypndqsj6cjhfubhiyi/include:\
/usr/include

export ROOT_LIBRARY_PATH=/daq/software/spack_packages/art-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-12.1.0-lelbmrkgwpdqiytkjx3vnuzjpwvrx7y6/lib:\
/daq/software/spack_packages/canvas-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-12.1.0-3jdzjqn7hxs6gqcgth5p4z4al2ie4hon/lib

export ROOT_VERSION="v6"

export SBNDAQ_VERSION="v1_10_07"

export SETUP_ARTDAQ_MFEXTENSIONS="spack load artdaq-mfextensions"

export SPACK_ALIASES="concretise:concretize;containerise:containerize;rm:remove"

export SPACK_ARCH="linux-almalinux9-x86_64_v2"

export SPACK_DISABLE_LOCAL_CONFIG="true"

export SPACK_ENV_SCRIPT="/daq/software/spack_packages/spack/current/NULL/share/spack/setup-env.sh"

export SPACK_INSTALL_DIR="/daq/software/spack_packages/spack/current/NULL"

export SPACK_LOADED_HASHES="52ng43siaego4zypndqsj6cjhfubhiyi"

export SPACK_PYTHON="/usr/bin/python3"

export SPACK_ROOT="/daq/software/spack_packages/spack/current/NULL"

export SPACK_USER_CONFIG_PATH="/home/nfs/icarus/DAQ_SPACK_ProdAreas/DAQ_2025-04-07_GAL_v1_10_07/srcs/sbndaq/sbn-fd/DAQInterface2/overrides/spack"

export SRANDOM="2502648252"

export SSH_AUTH_SOCK="/tmp/ssh-XXXX7usSgq/agent.2923828"

export S_COLORS="auto"

export THIS_SBN_DAQ_DAQINTERFACE_DIR="/home/nfs/icarus/DAQ_SPACK_ProdAreas/DAQ_2025-04-07_GAL_v1_10_07/srcs/sbndaq/sbn-fd/DAQInterface2"

export USE_CACHED_BASH_ENV="True"

export WIBTOOLS_BIN="/daq/software/spack_packages/wibtools/v1_10_06/linux-almalinux9-x86_64_v2-gcc-12.1.0-de3owtfiguffeebcbw4jmnx7ojdv64l3/bin"

export WIB_ADDRESS_TABLE_PATH="/daq/software/spack_packages/wibtools/v1_10_06/linux-almalinux9-x86_64_v2-gcc-12.1.0-de3owtfiguffeebcbw4jmnx7ojdv64l3/tables"

export WIB_CONFIG_PATH="/daq/software/spack_packages/wibtools/v1_10_06/linux-almalinux9-x86_64_v2-gcc-12.1.0-de3owtfiguffeebcbw4jmnx7ojdv64l3/config"

export XDG_SESSION_CLASS="user"

export XDG_SESSION_TYPE="tty"

export XLOCALEDIR=/daq/software/spack_packages/libx11/1.8.10/linux-almalinux9-x86_64_v2-gcc-12.1.0-3buagovsmgkgardwjy5me6eid4vubjh6/share/X11/locale

export __MODULES_LMINIT="module use --append /usr/share/Modules/modulefiles:module use --append /etc/modulefiles:module use --append /usr/share/modulefiles"

export _a="sbndaq-suite@v1_10_07%gcc@12.1.0 arch=linux-almalinux9-x86_64_v2 /52ng43s"

export _pa_canonical="/etc/scl/modulefiles:/usr/share/Modules/modulefiles:/etc/modulefiles:/usr/share/modulefiles:"

export _pa_new_path="/daq/software/spack_packages/spack/v0.23.0.sbnd/NULL/share/spack/modules/linux-almalinux9-x86_64"

export _pa_oldvalue="/etc/scl/modulefiles:/usr/share/Modules/modulefiles:/etc/modulefiles:/usr/share/modulefiles"

export _pa_varname="MODULEPATH"

export _sp_compatible_sys_types="linux-almalinux9-skylake_avx512:linux-almalinux9-skylake:linux-almalinux9-x86_64_v4:linux-almalinux9-broadwell:linux-almalinux9-haswell:linux-almalinux9-ivybridge:linux-almalinux9-x86_64_v3:linux-almalinux9-sandybridge:linux-almalinux9-westmere:linux-almalinux9-nehalem:linux-almalinux9-core2:linux-almalinux9-x86_64_v2:linux-almalinux9-nocona:linux-almalinux9-x86_64"

export _sp_flags

export _sp_lmod_roots="/daq/software/spack_packages/spack/v0.23.0.sbnd/NULL/share/spack/lmod"

export _sp_prefix="/daq/software/spack_packages/spack/current/NULL"

export _sp_share_dir="/daq/software/spack_packages/spack/current/NULL/share/spack"

export _sp_shell="bash"

export _sp_source_file="/daq/software/spack_packages/spack/current/NULL/share/spack/setup-env.sh"

export _sp_subcommand="load"

export _sp_sys_type="linux-almalinux9-skylake_avx512"

export _sp_tcl_roots="/daq/software/spack_packages/spack/v0.23.0.sbnd/NULL/share/spack/modules"

export build_hash_map

export cmd="python3"

export i="1"

export need_module="no"

export new_dirs="/home/nfs/icarus/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share"

export pth="/daq/software/spack_packages/spack/v0.23.0.sbnd/NULL/share/spack/modules"

export shell="bash"

export systype="linux-almalinux9-x86_64"

export which_declare="declare -f"

export which_opt="-f"

#Functions
_all_packages () 
{ 
    if [[ -z "${SPACK_ALL_PACKAGES:-}" ]]; then
        SPACK_ALL_PACKAGES="$(spack list)";
    fi;
    SPACK_COMPREPLY="$SPACK_ALL_PACKAGES"
}

_all_resource_hashes () 
{ 
    if [[ -z "${SPACK_ALL_RESOURCES_HASHES:-}" ]]; then
        SPACK_ALL_RESOURCE_HASHES="$(spack resource list --only-hashes)";
    fi;
    SPACK_COMPREPLY="$SPACK_ALL_RESOURCE_HASHES"
}

_bash_completion_spack () 
{ 
    local -a COMP_WORDS_NO_FLAGS;
    local index=0;
    while [[ "$index" -lt "$COMP_CWORD" ]]; do
        if [[ "${COMP_WORDS[$index]}" == [a-z]* ]]; then
            COMP_WORDS_NO_FLAGS+=("${COMP_WORDS[$index]}");
        fi;
        let index++;
    done;
    local subfunction=$(IFS='_'; echo "_${COMP_WORDS_NO_FLAGS[*]}");
    subfunction=${subfunction//-/_};
    COMP_WORDS_NO_FLAGS+=("${COMP_WORDS[$COMP_CWORD]}");
    local COMP_CWORD_NO_FLAGS=$((${#COMP_WORDS_NO_FLAGS[@]} - 1));
    local list_options=false;
    if [[ "${COMP_WORDS[$COMP_CWORD]}" == -* || "$COMP_POINT" -ne "${#COMP_LINE}" ]]; then
        list_options=true;
    fi;
    local cur=${COMP_WORDS_NO_FLAGS[$COMP_CWORD_NO_FLAGS]};
    if [[ "${COMP_LINE:$COMP_POINT-1:1}" == " " ]]; then
        cur="";
    fi;
    local rgx;
    rgx="$subfunction.*function.* ";
    if [[ "$(LC_ALL=C type $subfunction 2>&1)" =~ $rgx ]]; then
        $subfunction;
        COMPREPLY=($(_compgen_w "$SPACK_COMPREPLY" "$cur"));
    fi;
    _spack_compress_aliases
}

_compgen_w () 
{ 
    if test -n "${ZSH_VERSION:-}"; then
        typeset -a words;
        words=(${~=1});
        local find="$2";
        results=(${(M)words[@]:#$find*});
        echo "${results[@]}";
    else
        compgen -W "$1" -- "$2";
    fi
}

_config_sections () 
{ 
    if [[ -z "${SPACK_CONFIG_SECTIONS:-}" ]]; then
        SPACK_CONFIG_SECTIONS="$(spack config list)";
    fi;
    SPACK_COMPREPLY="$SPACK_CONFIG_SECTIONS"
}

_environments () 
{ 
    if [[ -z "${SPACK_ENVIRONMENTS:-}" ]]; then
        SPACK_ENVIRONMENTS="$(spack env list)";
    fi;
    SPACK_COMPREPLY="$SPACK_ENVIRONMENTS"
}

_extensions () 
{ 
    if [[ -z "${SPACK_EXTENSIONS:-}" ]]; then
        SPACK_EXTENSIONS="$(spack extensions)";
    fi;
    SPACK_COMPREPLY="$SPACK_EXTENSIONS"
}

_installed_compilers () 
{ 
    if [[ -z "${SPACK_INSTALLED_COMPILERS:-}" ]]; then
        SPACK_INSTALLED_COMPILERS="$(spack compilers | egrep -v "^(-|=)")";
    fi;
    SPACK_COMPREPLY="$SPACK_INSTALLED_COMPILERS"
}

_installed_packages () 
{ 
    if [[ -z "${SPACK_INSTALLED_PACKAGES:-}" ]]; then
        SPACK_INSTALLED_PACKAGES="$(spack --color=never find --no-groups)";
    fi;
    SPACK_COMPREPLY="$SPACK_INSTALLED_PACKAGES"
}

_keys () 
{ 
    if [[ -z "${SPACK_KEYS:-}" ]]; then
        SPACK_KEYS="$(spack gpg list)";
    fi;
    SPACK_COMPREPLY="$SPACK_KEYS"
}

_mirrors () 
{ 
    if [[ -z "${SPACK_MIRRORS:-}" ]]; then
        SPACK_MIRRORS="$(spack mirror list | awk '{print $1}')";
    fi;
    SPACK_COMPREPLY="$SPACK_MIRRORS"
}

_module_raw () 
{ 
    eval "$(/usr/bin/tclsh '/usr/share/Modules/libexec/modulecmd.tcl' bash "$@")";
    _mlstatus=$?;
    return $_mlstatus
}

_pretty_print () 
{ 
    for arg in $@;
    do
        local array=("${!arg}");
        printf "$arg: [";
        printf "'%s'" "${array[0]}";
        printf ", '%s'" "${array[@]:1}";
        echo "]";
    done
}

_providers () 
{ 
    if [[ -z "${SPACK_PROVIDERS:-}" ]]; then
        SPACK_PROVIDERS="$(spack providers)";
    fi;
    SPACK_COMPREPLY="$SPACK_PROVIDERS"
}

_repos () 
{ 
    if [[ -z "${SPACK_REPOS:-}" ]]; then
        SPACK_REPOS="$(spack repo list | awk '{print $1}')";
    fi;
    SPACK_COMPREPLY="$SPACK_REPOS"
}

_sp_multi_pathadd () 
{ 
    local IFS=':';
    if [ "$_sp_shell" = zsh ]; then
        emulate -L sh;
    fi;
    for pth in $2;
    do
        for systype in ${_sp_compatible_sys_types};
        do
            _spack_pathadd "$1" "${pth}/${systype}";
        done;
    done
}

_spack () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -H --all-help --color -c --config -C --config-scope -d --debug --timestamp --pdb -e --env -D --env-dir -E --no-env --use-env-repo -k --insecure -l --enable-locks -L --disable-locks -m --mock -b --bootstrap -p --profile --sorted-profile --lines -v --verbose --stacktrace --backtrace -V --version --print-shell-vars";
    else
        SPACK_COMPREPLY="add arch audit blame bootstrap build-env buildcache cd change checksum ci clean clone commands compiler compilers concretize concretise config containerize containerise create debug deconcretize dependencies dependents deprecate dev-build develop diff docs edit env extensions external fetch find gc gpg graph help info install license list load location log-parse logs maintainers make-installer mark mirror module patch pkg providers pydoc python reindex remove rm repo resource restage solve spec stage style tags test test-env tutorial undevelop uninstall unit-test unload url verify versions view";
    fi
}

_spack_add () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -l --list-name";
    else
        _all_packages;
    fi
}

_spack_arch () 
{ 
    SPACK_COMPREPLY="-h --help -g --generic-target --known-targets -p --platform -o --operating-system -t --target -f --frontend -b --backend"
}

_spack_audit () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        SPACK_COMPREPLY="configs externals packages-https packages list";
    fi
}

_spack_audit_configs () 
{ 
    SPACK_COMPREPLY="-h --help"
}

_spack_audit_externals () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --list";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_audit_list () 
{ 
    SPACK_COMPREPLY="-h --help"
}

_spack_audit_packages () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_audit_packages_https () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --all";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_blame () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -t --time -p --percent -g --git --json";
    else
        _all_packages;
    fi
}

_spack_bootstrap () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        SPACK_COMPREPLY="now status enable disable reset root list add remove mirror";
    fi
}

_spack_bootstrap_add () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --scope --trust";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_bootstrap_disable () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --scope";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_bootstrap_enable () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --scope";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_bootstrap_list () 
{ 
    SPACK_COMPREPLY="-h --help --scope"
}

_spack_bootstrap_mirror () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --binary-packages --dev";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_bootstrap_now () 
{ 
    SPACK_COMPREPLY="-h --help --dev"
}

_spack_bootstrap_remove () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_bootstrap_reset () 
{ 
    SPACK_COMPREPLY="-h --help -y --yes-to-all"
}

_spack_bootstrap_root () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --scope";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_bootstrap_status () 
{ 
    SPACK_COMPREPLY="-h --help --optional --dev"
}

_spack_build_env () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --clean --dirty -U --fresh --reuse --fresh-roots --reuse-deps --deprecated --dump --pickle";
    else
        _all_packages;
    fi
}

_spack_buildcache () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        SPACK_COMPREPLY="push create install list keys check download get-buildcache-name save-specfile sync update-index rebuild-index";
    fi
}

_spack_buildcache_check () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -m --mirror-url -o --output-file --scope -s --spec --spec-file";
    else
        _all_packages;
    fi
}

_spack_buildcache_create () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -f --force --unsigned -u --signed --key -k --update-index --rebuild-index --spec-file --only --with-build-dependencies --without-build-dependencies --fail-fast --base-image --tag -t --private -j --jobs";
    else
        _mirrors;
    fi
}

_spack_buildcache_download () 
{ 
    SPACK_COMPREPLY="-h --help -s --spec --spec-file -p --path"
}

_spack_buildcache_get_buildcache_name () 
{ 
    SPACK_COMPREPLY="-h --help -s --spec --spec-file"
}

_spack_buildcache_install () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -f --force -m --multiple -u --unsigned -o --otherarch";
    else
        _all_packages;
    fi
}

_spack_buildcache_keys () 
{ 
    SPACK_COMPREPLY="-h --help -i --install -t --trust -f --force"
}

_spack_buildcache_list () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -l --long -L --very-long -N --namespaces -v --variants -a --allarch";
    else
        _all_packages;
    fi
}

_spack_buildcache_push () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -f --force --unsigned -u --signed --key -k --update-index --rebuild-index --spec-file --only --with-build-dependencies --without-build-dependencies --fail-fast --base-image --tag -t --private -j --jobs";
    else
        _mirrors;
    fi
}

_spack_buildcache_rebuild_index () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -k --keys";
    else
        _mirrors;
    fi
}

_spack_buildcache_save_specfile () 
{ 
    SPACK_COMPREPLY="-h --help --root-spec --root-specfile -s --specs --specfile-dir"
}

_spack_buildcache_sync () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --manifest-glob";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_buildcache_update_index () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -k --keys";
    else
        _mirrors;
    fi
}

_spack_cd () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -m --module-dir -r --spack-root -i --install-dir -p --package-dir -P --packages -s --stage-dir -S --stages -c --source-dir -b --build-dir -e --env --first";
    else
        _all_packages;
    fi
}

_spack_change () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -l --list-name --match-spec -a --all";
    else
        _all_packages;
    fi
}

_spack_checksum () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --keep-stage --batch -b --latest -l --preferred -p --add-to-package -a --verify -j --jobs";
    else
        _all_packages;
    fi
}

_spack_ci () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        SPACK_COMPREPLY="generate rebuild-index rebuild reproduce-build";
    fi
}

_spack_ci_generate () 
{ 
    SPACK_COMPREPLY="-h --help --output-file --copy-to --optimize --dependencies --buildcache-destination --prune-dag --no-prune-dag --check-index-only --artifacts-root"
}

_spack_ci_rebuild () 
{ 
    SPACK_COMPREPLY="-h --help -t --tests --fail-fast"
}

_spack_ci_rebuild_index () 
{ 
    SPACK_COMPREPLY="-h --help"
}

_spack_ci_reproduce_build () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --runtime --working-dir -s --autostart --gpg-file --gpg-url";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_clean () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -s --stage -d --downloads -f --failures -m --misc-cache -p --python-cache -b --bootstrap -a --all";
    else
        _all_packages;
    fi
}

_spack_clone () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -r --remote";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_commands () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --update-completion -a --aliases --format --header --update";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_compiler () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        SPACK_COMPREPLY="find add remove rm list info";
    fi
}

_spack_compiler_add () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --mixed-toolchain --no-mixed-toolchain --scope -j --jobs";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_compiler_find () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --mixed-toolchain --no-mixed-toolchain --scope -j --jobs";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_compiler_info () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --scope";
    else
        _installed_compilers;
    fi
}

_spack_compiler_list () 
{ 
    SPACK_COMPREPLY="-h --help --scope"
}

_spack_compiler_remove () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -a --all --scope";
    else
        _installed_compilers;
    fi
}

_spack_compiler_rm () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -a --all --scope";
    else
        _installed_compilers;
    fi
}

_spack_compilers () 
{ 
    SPACK_COMPREPLY="-h --help --scope"
}

_spack_completions () 
{ 
    local COMP_CWORD COMP_KEY COMP_LINE COMP_POINT COMP_TYPE COMP_WORDS COMPREPLY;
    COMP_LINE="$*";
    COMP_POINT=${#COMP_LINE};
    COMP_WORDS=("$@");
    if [[ ${COMP_LINE: -1} == ' ' ]]; then
        COMP_WORDS+=('');
    fi;
    COMP_CWORD=$((${#COMP_WORDS[@]} - 1));
    COMP_KEY=9;
    COMP_TYPE=64;
    _bash_completion_spack;
    echo "${COMPREPLY[@]:-}"
}

_spack_compress_aliases () 
{ 
    if [ "${#COMPREPLY[@]}" -le "1" ] || [ "$COMP_CWORD_NO_FLAGS" != "1" ]; then
        return;
    fi;
    _spack_get_alias "${COMPREPLY[@]:0:1}";
    local first_alias="$SPACK_ALIAS";
    for comp in "${COMPREPLY[@]:1}";
    do
        _spack_get_alias "$comp";
        if [ "$SPACK_ALIAS" != "$first_alias" ]; then
            return;
        fi;
    done;
    COMPREPLY=("$first_alias")
}

_spack_concretise () 
{ 
    SPACK_COMPREPLY="-h --help -f --force --test -q --quiet -U --fresh --reuse --fresh-roots --reuse-deps --deprecated -j --jobs"
}

_spack_concretize () 
{ 
    SPACK_COMPREPLY="-h --help -f --force --test -q --quiet -U --fresh --reuse --fresh-roots --reuse-deps --deprecated -j --jobs"
}

_spack_config () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --scope";
    else
        SPACK_COMPREPLY="get blame edit list list-scopes add change prefer-upstream remove rm update revert";
    fi
}

_spack_config_add () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -f --file";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_config_blame () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        _config_sections;
    fi
}

_spack_config_change () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --match-spec";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_config_edit () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --print-file";
    else
        _config_sections;
    fi
}

_spack_config_get () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        _config_sections;
    fi
}

_spack_config_list () 
{ 
    SPACK_COMPREPLY="-h --help"
}

_spack_config_list_scopes () 
{ 
    SPACK_COMPREPLY="-h --help --file --non-platform"
}

_spack_config_prefer_upstream () 
{ 
    SPACK_COMPREPLY="-h --help --local"
}

_spack_config_remove () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_config_revert () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -y --yes-to-all";
    else
        _config_sections;
    fi
}

_spack_config_rm () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_config_update () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -y --yes-to-all";
    else
        _config_sections;
    fi
}

_spack_containerise () 
{ 
    SPACK_COMPREPLY="-h --help --list-os --last-stage"
}

_spack_containerize () 
{ 
    SPACK_COMPREPLY="-h --help --list-os --last-stage"
}

_spack_create () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --keep-stage -n --name -t --template -r --repo -N --namespace -f --force --skip-editor -b --batch";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_debug () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        SPACK_COMPREPLY="create-db-tarball report";
    fi
}

_spack_debug_create_db_tarball () 
{ 
    SPACK_COMPREPLY="-h --help"
}

_spack_debug_report () 
{ 
    SPACK_COMPREPLY="-h --help"
}

_spack_deconcretize () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --root -y --yes-to-all -a --all";
    else
        _all_packages;
    fi
}

_spack_dependencies () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -i --installed -t --transitive --deptype -V --no-expand-virtuals";
    else
        _all_packages;
    fi
}

_spack_dependents () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -i --installed -t --transitive";
    else
        _all_packages;
    fi
}

_spack_deprecate () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -y --yes-to-all -d --dependencies -D --no-dependencies -i --install-deprecator -I --no-install-deprecator -l --link-type";
    else
        _all_packages;
    fi
}

_spack_determine_shell () 
{ 
    if [ -f "/proc/$$/exe" ]; then
        _sp_exe=$(readlink /proc/$$/exe);
        basename ${_sp_exe} | tr -d '0123456789';
    else
        if [ -n "${BASH:-}" ]; then
            echo bash;
        else
            if [ -n "${ZSH_NAME:-}" ]; then
                echo zsh;
            else
                PS_FORMAT= ps -p $$ | tail -n 1 | awk '{print $4}' | sed 's/^-//' | xargs basename;
            fi;
        fi;
    fi
}

_spack_dev_build () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -j --jobs -n --no-checksum -d --source-path -i --ignore-dependencies --keep-prefix --skip-patch -q --quiet --drop-in --test -b --before -u --until --clean --dirty -U --fresh --reuse --fresh-roots --reuse-deps --deprecated";
    else
        _all_packages;
    fi
}

_spack_develop () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -p --path -b --build-directory --no-clone --clone -f --force";
    else
        _all_packages;
    fi
}

_spack_diff () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --json --first -a --attribute --ignore";
    else
        _all_packages;
    fi
}

_spack_docs () 
{ 
    SPACK_COMPREPLY="-h --help"
}

_spack_edit () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -b --build-system -c --command -d --docs -t --test -m --module -r --repo -N --namespace";
    else
        _all_packages;
    fi
}

_spack_env () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        SPACK_COMPREPLY="activate deactivate create remove rm rename mv list ls status st loads view update revert depfile";
    fi
}

_spack_env_activate () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --sh --csh --fish --bat --pwsh --with-view -v --without-view -V -p --prompt --temp --create --envfile --keep-relative -d --dir";
    else
        _environments;
    fi
}

_spack_env_create () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -d --dir --keep-relative --without-view --with-view --include-concrete";
    else
        _environments;
    fi
}

_spack_env_deactivate () 
{ 
    SPACK_COMPREPLY="-h --help --sh --csh --fish --bat --pwsh"
}

_spack_env_depfile () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --make-prefix --make-target-prefix --make-disable-jobserver --use-buildcache -o --output -G --generator";
    else
        _all_packages;
    fi
}

_spack_env_list () 
{ 
    SPACK_COMPREPLY="-h --help"
}

_spack_env_loads () 
{ 
    SPACK_COMPREPLY="-h --help -n --module-set-name -m --module-type --input-only -p --prefix -x --exclude -r --dependencies"
}

_spack_env_ls () 
{ 
    SPACK_COMPREPLY="-h --help"
}

_spack_env_mv () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -d --dir -f --force";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_env_remove () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -y --yes-to-all -f --force";
    else
        _environments;
    fi
}

_spack_env_rename () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -d --dir -f --force";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_env_revert () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -y --yes-to-all";
    else
        _environments;
    fi
}

_spack_env_rm () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -y --yes-to-all -f --force";
    else
        _environments;
    fi
}

_spack_env_st () 
{ 
    SPACK_COMPREPLY="-h --help"
}

_spack_env_status () 
{ 
    SPACK_COMPREPLY="-h --help"
}

_spack_env_update () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -y --yes-to-all";
    else
        _environments;
    fi
}

_spack_env_view () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_extensions () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -l --long -L --very-long -d --deps -p --paths -s --show";
    else
        _extensions;
    fi
}

_spack_external () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        SPACK_COMPREPLY="find list read-cray-manifest";
    fi
}

_spack_external_find () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --not-buildable --exclude -p --path --scope --all -t --tag -j --jobs";
    else
        _all_packages;
    fi
}

_spack_external_list () 
{ 
    SPACK_COMPREPLY="-h --help"
}

_spack_external_read_cray_manifest () 
{ 
    SPACK_COMPREPLY="-h --help --file --directory --ignore-default-dir --dry-run --fail-on-error"
}

_spack_fetch () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -n --no-checksum -m --missing -D --dependencies -U --fresh --reuse --fresh-roots --reuse-deps --deprecated";
    else
        _all_packages;
    fi
}

_spack_find () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --format -H --hashes --json -I --install-status -d --deps -p --paths --groups --no-groups -l --long -L --very-long -t --tag -N --namespaces -r --only-roots -c --show-concretized -f --show-flags --show-full-compiler -x --explicit -X --implicit -u --unknown -m --missing -v --variants --loaded -M --only-missing --deprecated --only-deprecated --install-tree --start-date --end-date";
    else
        _installed_packages;
    fi
}

_spack_fn_exists () 
{ 
    LANG= type $1 2>&1 | grep -q 'function'
}

_spack_gc () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -E --except-any-environment -e --except-environment -b --keep-build-dependencies -y --yes-to-all";
    else
        _installed_packages;
    fi
}

_spack_get_alias () 
{ 
    local possible_alias="${1-}";
    local IFS=";";
    for item in $SPACK_ALIASES;
    do
        eval "local real_command=\"\${item#*${possible_alias}:}\"";
        if [ "$real_command" != "$item" ]; then
            SPACK_ALIAS="$real_command";
            return;
        fi;
    done;
    SPACK_ALIAS="$possible_alias"
}

_spack_gpg () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        SPACK_COMPREPLY="verify trust untrust sign create list init export publish";
    fi
}

_spack_gpg_create () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --comment --expires --export --export-secret";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_gpg_export () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --secret";
    else
        _keys;
    fi
}

_spack_gpg_init () 
{ 
    SPACK_COMPREPLY="-h --help --from"
}

_spack_gpg_list () 
{ 
    SPACK_COMPREPLY="-h --help --trusted --signing"
}

_spack_gpg_publish () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -d --directory -m --mirror-name --mirror-url --update-index --rebuild-index";
    else
        _keys;
    fi
}

_spack_gpg_sign () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --output --key --clearsign";
    else
        _installed_packages;
    fi
}

_spack_gpg_trust () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_gpg_untrust () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --signing";
    else
        _keys;
    fi
}

_spack_gpg_verify () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        _installed_packages;
    fi
}

_spack_graph () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -a --ascii -d --dot -s --static -c --color -i --installed --deptype";
    else
        _all_packages;
    fi
}

_spack_help () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -a --all --spec";
    else
        _subcommands;
    fi
}

_spack_info () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -a --all --detectable --maintainers --namespace --no-dependencies --no-variants --no-versions --phases --tags --tests --virtuals --variants-by-name";
    else
        _all_packages;
    fi
}

_spack_install () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --only -u --until -j --jobs --overwrite --fail-fast --keep-prefix --keep-stage --dont-restage --use-cache --no-cache --cache-only --use-buildcache --include-build-deps --no-check-signature --show-log-on-error --source -n --no-checksum -v --verbose --fake --only-concrete --add --no-add -f --file --clean --dirty --test --log-format --log-file --help-cdash --cdash-upload-url --cdash-build --cdash-site --cdash-track --cdash-buildstamp -y --yes-to-all -U --fresh --reuse --fresh-roots --reuse-deps --deprecated";
    else
        _all_packages;
    fi
}

_spack_license () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --root";
    else
        SPACK_COMPREPLY="list-files verify update-copyright-year";
    fi
}

_spack_license_list_files () 
{ 
    SPACK_COMPREPLY="-h --help"
}

_spack_license_update_copyright_year () 
{ 
    SPACK_COMPREPLY="-h --help"
}

_spack_license_verify () 
{ 
    SPACK_COMPREPLY="-h --help"
}

_spack_list () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -r --repo -N --namespace -d --search-description --format -v --virtuals -t --tag --count --update";
    else
        _all_packages;
    fi
}

_spack_load () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --sh --csh --fish --bat --pwsh --first --list";
    else
        _installed_packages;
    fi
}

_spack_location () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -m --module-dir -r --spack-root -i --install-dir -p --package-dir -P --packages -s --stage-dir -S --stages -c --source-dir -b --build-dir -e --env --first";
    else
        _all_packages;
    fi
}

_spack_log_parse () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --show -c --context -p --profile -w --width -j --jobs";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_logs () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        _all_packages;
    fi
}

_spack_maintainers () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --maintained --unmaintained -a --all --by-user";
    else
        _all_packages;
    fi
}

_spack_make_installer () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -v --spack-version -s --spack-source -g --git-installer-verbosity";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_mark () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -a --all -e --explicit -i --implicit";
    else
        _installed_packages;
    fi
}

_spack_mirror () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -n --no-checksum";
    else
        SPACK_COMPREPLY="create destroy add remove rm set-url set list";
    fi
}

_spack_mirror_add () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --scope --type --autopush --unsigned --signed --s3-access-key-id --s3-access-key-secret --s3-access-token --s3-profile --s3-endpoint-url --oci-username --oci-password";
    else
        _mirrors;
    fi
}

_spack_mirror_create () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -d --directory -a --all -f --file --exclude-file --exclude-specs --skip-unstable-versions -D --dependencies -n --versions-per-spec --private -U --fresh --reuse --fresh-roots --reuse-deps --deprecated";
    else
        _all_packages;
    fi
}

_spack_mirror_destroy () 
{ 
    SPACK_COMPREPLY="-h --help -m --mirror-name --mirror-url"
}

_spack_mirror_list () 
{ 
    SPACK_COMPREPLY="-h --help --scope"
}

_spack_mirror_remove () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --scope";
    else
        _mirrors;
    fi
}

_spack_mirror_rm () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --scope";
    else
        _mirrors;
    fi
}

_spack_mirror_set () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --push --fetch --type --url --autopush --no-autopush --unsigned --signed --scope --s3-access-key-id --s3-access-key-secret --s3-access-token --s3-profile --s3-endpoint-url --oci-username --oci-password";
    else
        _mirrors;
    fi
}

_spack_mirror_set_url () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --push --fetch --scope --s3-access-key-id --s3-access-key-secret --s3-access-token --s3-profile --s3-endpoint-url --oci-username --oci-password";
    else
        _mirrors;
    fi
}

_spack_module () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        SPACK_COMPREPLY="lmod tcl";
    fi
}

_spack_module_lmod () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -n --name";
    else
        SPACK_COMPREPLY="refresh find rm loads setdefault";
    fi
}

_spack_module_lmod_find () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --full-path -r --dependencies";
    else
        _installed_packages;
    fi
}

_spack_module_lmod_loads () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --input-only -p --prefix -x --exclude -r --dependencies";
    else
        _installed_packages;
    fi
}

_spack_module_lmod_refresh () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --delete-tree --upstream-modules -y --yes-to-all";
    else
        _installed_packages;
    fi
}

_spack_module_lmod_rm () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -y --yes-to-all";
    else
        _installed_packages;
    fi
}

_spack_module_lmod_setdefault () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        _installed_packages;
    fi
}

_spack_module_tcl () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -n --name";
    else
        SPACK_COMPREPLY="refresh find rm loads setdefault";
    fi
}

_spack_module_tcl_find () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --full-path -r --dependencies";
    else
        _installed_packages;
    fi
}

_spack_module_tcl_loads () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --input-only -p --prefix -x --exclude -r --dependencies";
    else
        _installed_packages;
    fi
}

_spack_module_tcl_refresh () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --delete-tree --upstream-modules -y --yes-to-all";
    else
        _installed_packages;
    fi
}

_spack_module_tcl_rm () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -y --yes-to-all";
    else
        _installed_packages;
    fi
}

_spack_module_tcl_setdefault () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        _installed_packages;
    fi
}

_spack_patch () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -n --no-checksum -U --fresh --reuse --fresh-roots --reuse-deps --deprecated";
    else
        _all_packages;
    fi
}

_spack_pathadd () 
{ 
    _pa_varname=PATH;
    _pa_new_path="$1";
    if [ -n "$2" ]; then
        _pa_varname="$1";
        _pa_new_path="$2";
    fi;
    eval "_pa_oldvalue=\${${_pa_varname}:-}";
    _pa_canonical="$_pa_oldvalue:";
    if [ -d "$_pa_new_path" ] && [ "${_pa_canonical#$_pa_new_path:}" = "$_pa_canonical" ]; then
        if [ -n "$_pa_oldvalue" ]; then
            eval "export $_pa_varname=\"$_pa_new_path:$_pa_oldvalue\"";
        else
            export $_pa_varname="$_pa_new_path";
        fi;
    fi
}

_spack_pkg () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        SPACK_COMPREPLY="add list diff added changed removed grep source hash";
    fi
}

_spack_pkg_add () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        _all_packages;
    fi
}

_spack_pkg_added () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_pkg_changed () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -t --type";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_pkg_diff () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_pkg_grep () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="--help";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_pkg_hash () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        _all_packages;
    fi
}

_spack_pkg_list () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_pkg_removed () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_pkg_source () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -c --canonical";
    else
        _all_packages;
    fi
}

_spack_providers () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        _providers;
    fi
}

_spack_pydoc () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_python () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -V --version -c -u -i -m --path";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_reindex () 
{ 
    SPACK_COMPREPLY="-h --help"
}

_spack_remove () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -a --all -l --list-name -f --force";
    else
        _all_packages;
    fi
}

_spack_repo () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        SPACK_COMPREPLY="create list add remove rm";
    fi
}

_spack_repo_add () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --scope";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_repo_create () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -d --subdirectory";
    else
        _repos;
    fi
}

_spack_repo_list () 
{ 
    SPACK_COMPREPLY="-h --help --scope"
}

_spack_repo_remove () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --scope";
    else
        _repos;
    fi
}

_spack_repo_rm () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --scope";
    else
        _repos;
    fi
}

_spack_resource () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        SPACK_COMPREPLY="list show";
    fi
}

_spack_resource_list () 
{ 
    SPACK_COMPREPLY="-h --help --only-hashes"
}

_spack_resource_show () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        _all_resource_hashes;
    fi
}

_spack_restage () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        _all_packages;
    fi
}

_spack_rm () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -a --all -l --list-name -f --force";
    else
        _all_packages;
    fi
}

_spack_shell_wrapper () 
{ 
    for var in DYLD_LIBRARY_PATH DYLD_FALLBACK_LIBRARY_PATH;
    do
        eval "if [ -n \"\${${var}-}\" ]; then export SPACK_$var=\${${var}}; fi";
    done;
    if [ -n "${ZSH_VERSION:-}" ]; then
        emulate -L sh;
    fi;
    _sp_flags="";
    while [ ! -z ${1+x} ] && [ "${1#-}" != "${1}" ]; do
        _sp_flags="$_sp_flags $1";
        shift;
    done;
    if [ -n "$_sp_flags" ] && [ "${_sp_flags#*h}" != "${_sp_flags}" ] || [ "${_sp_flags#*V}" != "${_sp_flags}" ]; then
        command spack $_sp_flags "$@";
        return;
    fi;
    _sp_subcommand="";
    if [ ! -z ${1+x} ]; then
        _sp_subcommand="$1";
        shift;
    fi;
    case $_sp_subcommand in 
        "cd")
            _sp_arg="";
            if [ -n "$1" ]; then
                _sp_arg="$1";
                shift;
            fi;
            if [ "$_sp_arg" = "-h" ] || [ "$_sp_arg" = "--help" ]; then
                command spack cd -h;
            else
                LOC="$(SPACK_COLOR="${SPACK_COLOR:-always}" spack location $_sp_arg "$@")";
                if [ -d "$LOC" ]; then
                    cd "$LOC";
                else
                    return 1;
                fi;
            fi;
            return
        ;;
        "env")
            _sp_arg="";
            if [ -n "$1" ]; then
                _sp_arg="$1";
                shift;
            fi;
            if [ "$_sp_arg" = "-h" ] || [ "$_sp_arg" = "--help" ]; then
                command spack env -h;
            else
                case $_sp_arg in 
                    activate)
                        _a=" $@";
                        if [ "${_a#* --sh}" != "$_a" ] || [ "${_a#* --csh}" != "$_a" ] || [ "${_a#* -h}" != "$_a" ] || [ "${_a#* --help}" != "$_a" ]; then
                            command spack env activate "$@";
                        else
                            stdout="$(SPACK_COLOR="${SPACK_COLOR:-always}" command spack $_sp_flags env activate --sh "$@")" || return;
                            eval "$stdout";
                        fi
                    ;;
                    deactivate)
                        _a=" $@";
                        if [ "${_a#* --sh}" != "$_a" ] || [ "${_a#* --csh}" != "$_a" ]; then
                            command spack env deactivate "$@";
                        else
                            if [ -n "$*" ]; then
                                command spack env deactivate -h;
                            else
                                stdout="$(SPACK_COLOR="${SPACK_COLOR:-always}" command spack $_sp_flags env deactivate --sh)" || return;
                                eval "$stdout";
                            fi;
                        fi
                    ;;
                    *)
                        command spack env $_sp_arg "$@"
                    ;;
                esac;
            fi;
            return
        ;;
        "load" | "unload")
            _a=" $@";
            if [ "${_a#* --sh}" != "$_a" ] || [ "${_a#* --csh}" != "$_a" ] || [ "${_a#* -h}" != "$_a" ] || [ "${_a#* --list}" != "$_a" ] || [ "${_a#* --help}" != "$_a" ]; then
                command spack $_sp_flags $_sp_subcommand "$@";
            else
                stdout="$(SPACK_COLOR="${SPACK_COLOR:-always}" command spack $_sp_flags $_sp_subcommand --sh "$@")" || return;
                eval "$stdout";
            fi
        ;;
        *)
            command spack $_sp_flags $_sp_subcommand "$@"
        ;;
    esac
}

_spack_solve () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --show -l --long -L --very-long -N --namespaces -I --install-status --no-install-status -y --yaml -j --json -c --cover -t --types --timers --stats -U --fresh --reuse --fresh-roots --reuse-deps --deprecated";
    else
        _all_packages;
    fi
}

_spack_spec () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -l --long -L --very-long -N --namespaces -I --install-status --no-install-status -y --yaml -j --json --format -c --cover -t --types -U --fresh --reuse --fresh-roots --reuse-deps --deprecated";
    else
        _all_packages;
    fi
}

_spack_stage () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -n --no-checksum -p --path -U --fresh --reuse --fresh-roots --reuse-deps --deprecated";
    else
        _all_packages;
    fi
}

_spack_style () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -b --base -a --all -r --root-relative -U --no-untracked -f --fix --root -t --tool -s --skip";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_tags () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -i --installed -a --all";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_test () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        SPACK_COMPREPLY="run list find status results remove";
    fi
}

_spack_test_env () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --clean --dirty -U --fresh --reuse --fresh-roots --reuse-deps --deprecated --dump --pickle";
    else
        _all_packages;
    fi
}

_spack_test_find () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        _all_packages;
    fi
}

_spack_test_list () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -a --all";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_test_remove () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -y --yes-to-all";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_test_results () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -l --logs -f --failed";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_test_run () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --alias --fail-fast --fail-first --externals -x --explicit --keep-stage --log-format --log-file --cdash-upload-url --cdash-build --cdash-site --cdash-track --cdash-buildstamp --help-cdash --clean --dirty";
    else
        _installed_packages;
    fi
}

_spack_test_status () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_tutorial () 
{ 
    SPACK_COMPREPLY="-h --help -y --yes-to-all"
}

_spack_undevelop () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -a --all";
    else
        _all_packages;
    fi
}

_spack_uninstall () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -f --force --remove -R --dependents -y --yes-to-all -a --all --origin";
    else
        _installed_packages;
    fi
}

_spack_unit_test () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -H --pytest-help -n --numprocesses -l --list -L --list-long -N --list-names --extension -s -k --showlocals";
    else
        _unit_tests;
    fi
}

_spack_unload () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --sh --csh --fish --bat --pwsh -a --all";
    else
        _installed_packages;
    fi
}

_spack_url () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        SPACK_COMPREPLY="parse list summary stats";
    fi
}

_spack_url_list () 
{ 
    SPACK_COMPREPLY="-h --help -c --color -e --extrapolation -n --incorrect-name -N --correct-name -v --incorrect-version -V --correct-version"
}

_spack_url_parse () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -s --spider";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_url_stats () 
{ 
    SPACK_COMPREPLY="-h --help --show-issues"
}

_spack_url_summary () 
{ 
    SPACK_COMPREPLY="-h --help"
}

_spack_verify () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -l --local -j --json -a --all -s --specs -f --files";
    else
        _all_packages;
    fi
}

_spack_versions () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -s --safe -r --remote -n --new -j --jobs";
    else
        _all_packages;
    fi
}

_spack_view () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -v --verbose -e --exclude -d --dependencies";
    else
        SPACK_COMPREPLY="symlink add soft hardlink hard copy relocate remove rm statlink status check";
    fi
}

_spack_view_add () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --projection-file -i --ignore-conflicts";
    else
        _all_packages;
    fi
}

_spack_view_check () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        _all_packages;
    fi
}

_spack_view_copy () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --projection-file -i --ignore-conflicts";
    else
        _all_packages;
    fi
}

_spack_view_hard () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --projection-file -i --ignore-conflicts";
    else
        _all_packages;
    fi
}

_spack_view_hardlink () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --projection-file -i --ignore-conflicts";
    else
        _all_packages;
    fi
}

_spack_view_relocate () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --projection-file -i --ignore-conflicts";
    else
        _all_packages;
    fi
}

_spack_view_remove () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --no-remove-dependents -a --all";
    else
        _all_packages;
    fi
}

_spack_view_rm () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --no-remove-dependents -a --all";
    else
        _all_packages;
    fi
}

_spack_view_soft () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --projection-file -i --ignore-conflicts";
    else
        _all_packages;
    fi
}

_spack_view_statlink () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        _all_packages;
    fi
}

_spack_view_status () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        _all_packages;
    fi
}

_spack_view_symlink () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --projection-file -i --ignore-conflicts";
    else
        _all_packages;
    fi
}

_spacktivate () 
{ 
    _spack_env_activate
}

_subcommands () 
{ 
    if [[ -z "${SPACK_SUBCOMMANDS:-}" ]]; then
        SPACK_SUBCOMMANDS="$(spack commands)";
    fi;
    SPACK_COMPREPLY="$SPACK_SUBCOMMANDS"
}

_test_vars () 
{ 
    echo "-----------------------------------------------------";
    echo "Variables set by bash:";
    echo;
    echo "COMP_LINE:                '$COMP_LINE'";
    echo "# COMP_LINE:              '${#COMP_LINE}'";
    echo "COMP_WORDS:               $(_pretty_print COMP_WORDS[@])";
    echo "# COMP_WORDS:             '${#COMP_WORDS[@]}'";
    echo "COMP_CWORD:               '$COMP_CWORD'";
    echo "COMP_KEY:                 '$COMP_KEY'";
    echo "COMP_POINT:               '$COMP_POINT'";
    echo "COMP_TYPE:                '$COMP_TYPE'";
    echo "COMP_WORDBREAKS:          '$COMP_WORDBREAKS'";
    echo;
    echo "Intermediate variables:";
    echo;
    echo "COMP_WORDS_NO_FLAGS:      $(_pretty_print COMP_WORDS_NO_FLAGS[@])";
    echo "# COMP_WORDS_NO_FLAGS:    '${#COMP_WORDS_NO_FLAGS[@]}'";
    echo "COMP_CWORD_NO_FLAGS:      '$COMP_CWORD_NO_FLAGS'";
    echo;
    echo "Subfunction:              '$subfunction'";
    if $list_options; then
        echo "List options:             'True'";
    else
        echo "List options:             'False'";
    fi;
    echo "Current word:             '$cur'"
}

_unit_tests () 
{ 
    if [[ -z "${SPACK_TESTS:-}" ]]; then
        SPACK_TESTS="$(spack unit-test -l)";
    fi;
    SPACK_COMPREPLY="$SPACK_TESTS"
}

gawklibpath_append () 
{ 
    [ -z "$AWKLIBPATH" ] && AWKLIBPATH=`gawk 'BEGIN {print ENVIRON["AWKLIBPATH"]}'`;
    export AWKLIBPATH="$AWKLIBPATH:$*"
}

gawklibpath_default () 
{ 
    unset AWKLIBPATH;
    export AWKLIBPATH=`gawk 'BEGIN {print ENVIRON["AWKLIBPATH"]}'`
}

gawklibpath_prepend () 
{ 
    [ -z "$AWKLIBPATH" ] && AWKLIBPATH=`gawk 'BEGIN {print ENVIRON["AWKLIBPATH"]}'`;
    export AWKLIBPATH="$*:$AWKLIBPATH"
}

gawkpath_append () 
{ 
    [ -z "$AWKPATH" ] && AWKPATH=`gawk 'BEGIN {print ENVIRON["AWKPATH"]}'`;
    export AWKPATH="$AWKPATH:$*"
}

gawkpath_default () 
{ 
    unset AWKPATH;
    export AWKPATH=`gawk 'BEGIN {print ENVIRON["AWKPATH"]}'`
}

gawkpath_prepend () 
{ 
    [ -z "$AWKPATH" ] && AWKPATH=`gawk 'BEGIN {print ENVIRON["AWKPATH"]}'`;
    export AWKPATH="$*:$AWKPATH"
}

ml () 
{ 
    module ml "$@"
}

module () 
{ 
    local _mlredir=0;
    if [ -n "${MODULES_REDIRECT_OUTPUT+x}" ]; then
        if [ "$MODULES_REDIRECT_OUTPUT" = '0' ]; then
            _mlredir=0;
        else
            if [ "$MODULES_REDIRECT_OUTPUT" = '1' ]; then
                _mlredir=1;
            fi;
        fi;
    fi;
    case " $@ " in 
        *' --no-redirect '*)
            _mlredir=0
        ;;
        *' --redirect '*)
            _mlredir=1
        ;;
    esac;
    if [ $_mlredir -eq 0 ]; then
        _module_raw "$@";
    else
        _module_raw "$@" 2>&1;
    fi
}

scl () 
{ 
    if [ "$1" = "load" -o "$1" = "unload" ]; then
        eval "module $@";
    else
        /usr/bin/scl "$@";
    fi
}

spack () 
{ 
    : this is a shell function from: /daq/software/spack_packages/spack/current/NULL/share/spack/setup-env.sh;
    : the real spack script is here: /daq/software/spack_packages/spack/current/NULL/bin/spack;
    _spack_shell_wrapper "$@";
    return $?
}

tcntl () 
{ 
    trace_cntl "$@"
}

tcolor () 
{ 
    : $*=pids or other "token" which will have space before and after;
    : build sed filter;
    : defaults: 1=red 2=green 3=orange 4=blue 5=magenta 6=cyan 7=while 226=yellow ...;
    test -n "${color_nums-}" || color_nums='1 2 3 4 5 6 7 226 93 87 189 195 177';
    : can put color_nums in env;
    num_color_nums=`echo $color_nums | wc -w`;
    test $# -eq 0 && { 
        pid_list=`TRACE_SHOW="%x%P" trace_cntl show|awk '{print$1}'|head -300|sort -u | head -n$num_color_nums`;
        echo found `echo $pid_list | wc -w` unique PIDs in 1st 300 tshow lines 1>&2;
        set -- $pid_list
    };
    : at most,could be less;
    test $# -eq 0 && { 
        echo need at least 1 tid;
        return
    };
    tid=$1;
    esc=`printf "\033"`;
    : no shift to preserver num args to associate with arg with cnum;
    filt="s/\( $tid .*$\)/${esc}[38;5;`echo $color_nums|cut -d' ' -f1`m\1${esc}[0m/";
    for num in `seq 2 $#`;
    do
        tid=$2;
        shift;
        cnum=`echo $color_nums|cut -d' ' -f$num`;
        filt="$filt;s/\( $tid .*$\)/${esc}[38;5;${cnum}m\1${esc}[0m/";
    done;
    sed -e "$filt"
}

tdelta () 
{ 
    test -n "${PAGER-}" && trace_delta "$@" | $PAGER || trace_delta "$@"
}

tenv () 
{ 
    trace_envvars "$@"
}

tfreeze () 
{ 
    trace_cntl modeM 0
}

tinfo () 
{ 
    trace_cntl info "$@"
}

tlvlM () 
{ 
    trace_cntl lvlmskM "$@"
}

tlvlMg () 
{ 
    trace_cntl lvlmskMg "$@"
}

tlvlS () 
{ 
    trace_cntl lvlmskS "$@"
}

tlvlSg () 
{ 
    trace_cntl lvlmskSg "$@"
}

tlvlT () 
{ 
    trace_cntl lvlmskT "$@"
}

tlvlTg () 
{ 
    trace_cntl lvlmskTg "$@"
}

tlvls () 
{ 
    trace_cntl tids "$@"
}

tlvlsRestore () 
{ 
    if [ $# -gt 1 ]; then
        tlvlsSave;
    else
        test $# -eq 1 && eval x=\$tlvls_save_$1 || x=`cat`;
        echo "$x" | while read id name mskM mskS mskT; do
            test -t 1 && trace_cntl lvlmsk -n$name $mskM $mskS $mskT || echo $id $name $mskM $mskS $mskT;
        done;
    fi
}

tlvlsSave () 
{ 
    if [ $# -ne 1 ]; then
        echo "   usage: tlvlsSave <id>   # where <id> is valid shell variable characters
          tlvlsRestore [id] # if [id] not given, read stdin
examples: export TRACE_MSGMAX=0; tlvlM 0xdeadbeef; tlvls; tlvlsSave test; rm -f /tmp/trace_buffer_$USER; tlvls; tlvlsRestore test; tlvls
          tlvlsRestore test | sed /TRACE/s/0x./0x7/ | tlvlsRestore; tlvls
";
    else
        x=`tlvls -H`;
        eval tlvls_save_$1=\$x;
    fi
}

tmode () 
{ 
    trace_cntl mode "$@"
}

tmodeM () 
{ 
    trace_cntl modeM "$@"
}

tmodeS () 
{ 
    trace_cntl modeS "$@"
}

toffM () 
{ 
    trace_cntl lvlclr `bitN_to_mask "$@"` 0 0
}

toffMg () 
{ 
    trace_cntl lvlclrg `bitN_to_mask "$@"` 0 0
}

toffS () 
{ 
    trace_cntl lvlclr 0 `bitN_to_mask "$@"` 0
}

toffSg () 
{ 
    trace_cntl lvlclrg 0 `bitN_to_mask "$@"` 0
}

toffT () 
{ 
    trace_cntl lvlclr 0 0 `bitN_to_mask "$@"`
}

toffTg () 
{ 
    trace_cntl lvlclrg 0 0 `bitN_to_mask "$@"`
}

tonM () 
{ 
    trace_cntl lvlset `bitN_to_mask "$@"` 0 0;
    trace_cntl modeM 1
}

tonMg () 
{ 
    trace_cntl lvlsetg `bitN_to_mask "$@"` 0 0;
    trace_cntl modeM 1
}

tonS () 
{ 
    trace_cntl lvlset 0 `bitN_to_mask "$@"` 0;
    trace_cntl modeS 1
}

tonSg () 
{ 
    trace_cntl lvlsetg 0 `bitN_to_mask "$@"` 0;
    trace_cntl modeS 1
}

tonT () 
{ 
    trace_cntl lvlset 0 0 `bitN_to_mask "$@"`
}

tonTg () 
{ 
    trace_cntl lvlsetg 0 0 `bitN_to_mask "$@"`
}

treset () 
{ 
    trace_cntl reset
}

tshow () 
{ 
    test -n "${PAGER-}" && trace_cntl show "$@" | $PAGER || trace_cntl show "$@"
}

ttids () 
{ 
    trace_cntl tids "$@"
}

which () 
{ 
    ( alias;
    eval ${which_declare} ) | /usr/bin/which --tty-only --read-alias --read-functions --show-tilde --show-dot $@
}

