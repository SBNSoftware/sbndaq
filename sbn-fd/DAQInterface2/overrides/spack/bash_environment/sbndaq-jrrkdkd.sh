#!/usr/bin/env bash
# Captured environment: 20250307_015912

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

export BASH_COMPLETION_VERSINFO="2"

export BASH_REMATCH

export BASH_SILENCE_DEPRECATION_WARNING="1"

export BOOST_ROOT="/daq/software/spack_packages/boost/1.82.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-v5jttyqvfm3u5zlplivys23nhlrrjmel"

export BUILD_HASH="/jrrkdkd"

export BUILD_VARIANT="gcc@12.1.0"

export CC="/daq/software/spack_packages/llvm/17.0.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-fmjyd745m2zmhikdc43h44mykiercerl/bin/clang"

export CET_PLUGIN_PATH=/daq/software/spack_packages/sbndaq/v1_10_06/linux-almalinux9-x86_64_v2-gcc-12.1.0-pdb6dl62zmrwsyzjumjdakygveb55abi/lib:\
/daq/software/spack_packages/sbndaq-artdaq/v1_10_06/linux-almalinux9-x86_64_v2-gcc-12.1.0-srdttqypqgzfrsoohn6poznoufnniru2/lib:\
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

export CMAKE_PREFIX_PATH=/daq/software/spack_packages/sbndaq-suite/v1_10_06/linux-almalinux9-x86_64_v2-gcc-12.1.0-jrrkdkdrxppgvgnyjo5ozkhg66iemljt:\
/daq/software/spack_packages/sbndaq/v1_10_06/linux-almalinux9-x86_64_v2-gcc-12.1.0-pdb6dl62zmrwsyzjumjdakygveb55abi:\
/daq/software/spack_packages/sbndaq-artdaq/v1_10_06/linux-almalinux9-x86_64_v2-gcc-12.1.0-srdttqypqgzfrsoohn6poznoufnniru2:\
/daq/software/spack_packages/windriver/v12_06_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-lc7qtjtter4xalppr5bo4hjof43tpd2t:\
/daq/software/spack_packages/wibtools/v1_10_06/linux-almalinux9-x86_64_v2-gcc-12.1.0-de3owtfiguffeebcbw4jmnx7ojdv64l3:\
/daq/software/spack_packages/sbndaq-artdaq-core/v1_10_06/linux-almalinux9-x86_64_v2-gcc-12.1.0-id6omk64t4bohlrx54ixdcrjaba3cc7v:\
/daq/software/spack_packages/redis/7.4.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-hx22fzubtasdi3ialu5togkthxzf5hbz:\
/daq/software/spack_packages/libpqxx/7.6.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-zlkzygpne2jzhn3f4jtq3vvwlbhl5xyz:\
/daq/software/spack_packages/jsoncpp/1.9.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-w32z3huxmjgku2jdqqfwnty4o22fmiy3:\
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

export COLORS="/etc/DIR_COLORS"

export COLOR_BLACK="[0;30m"

export COLOR_BLUE="[0;34m"

export COLOR_BROWN="[0;33m"

export COLOR_CYAN="[0;36m"

export COLOR_DARKGRAY="[1;30m"

export COLOR_GREEN="[0;32m"

export COLOR_LIGHTBLUE="[1;34m"

export COLOR_LIGHTCYAN="[1;36m"

export COLOR_LIGHTGRAY="[0;37m"

export COLOR_LIGHTGREEN="[1;32m"

export COLOR_LIGHTPURPLE="[1;35m"

export COLOR_LIGHTRED="[1;31m"

export COLOR_NONE="[0m"

export COLOR_PINK="[0;35m"

export COLOR_PURPLE="[0;35m"

export COLOR_RED="[0;31m"

export COLOR_WHITE="[1;37m"

export COLOR_YELLOW="[1;33m"

export CPPYY_API_PATH="none"

export CXX="/daq/software/spack_packages/llvm/17.0.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-fmjyd745m2zmhikdc43h44mykiercerl/bin/clang++"

export DAQINTERFACE_CONFIGURE_STATUS_CHECK_QUIET_TIME="60"

export DAQ_SETUP_SCRIPT="/home/nfs/icarus/DAQ_SPACK_ProdAreas/DAQ_2025-03-07_GAL_v1_10_06/srcs/sbndaq/sbn-fd/DAQInterface2/setup_sbn_artdaq.sh"

export DEBUGINFOD_URLS="https://debuginfod.centos.org/"

export DOTFILES_DIR="/home/nfs/icarus/.dotfiles"

export EDITOR="nvim"

export EPICS_BASE="/daq/software/spack_packages/epics-base/7.0.6.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-maqplht4b42weugqogotjmqgkf7pzlmy"

export EPICS_HOST_ARCH="linux-x86_64"

export EPOCHREALTIME="1741334352.525157"

export EPOCHSECONDS="1741334352"

export FHICL_FILE_PATH=/daq/software/spack_packages/sbndaq/v1_10_06/linux-almalinux9-x86_64_v2-gcc-12.1.0-pdb6dl62zmrwsyzjumjdakygveb55abi/fcl:\
/daq/software/spack_packages/sbndaq-artdaq/v1_10_06/linux-almalinux9-x86_64_v2-gcc-12.1.0-srdttqypqgzfrsoohn6poznoufnniru2/fcl:\
/daq/software/spack_packages/artdaq-epics-plugin/v1_06_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-k2fu374hlpnpkru4ys4mvefd4exfqnq5/fcl:\
/daq/software/spack_packages/artdaq-demo/v3_13_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-wmmdibmynmeprhwidgmme7c3iqyw7psu/fcl:\
/daq/software/spack_packages/artdaq-core-demo/v1_11_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-jpaisaqc6koek2acavlx4f6ajnsbtjot/fcl:\
/daq/software/spack_packages/artdaq/v3_13_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-qewu4xzmqqsdfg5nxozmwvyvftan6fvi/fcl:\
/daq/software/spack_packages/artdaq-utilities/v1_09_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-i3qldzy7uof55d3wa3xk6szqkrw7uh34/fcl:\
/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-vkq4zvmjx4ziugghilcxjdpf44uy7s7s/fcl:\
/daq/software/spack_packages/artdaq-core/v3_10_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-72gb7nd2j4mzk2hmpigmwfe7jc2azhr2/fcl

export FUNCNAME="export_environment_vars"

export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

export FZF_ALT_C_OPTS="--preview ' {} | head -200'"

export FZF_CTRL_T_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"

export FZF_CTRL_T_OPTS="--preview 'if [ -d {} ]; then eza --tree --color=always {} | head -200; else bat -n --color=always --line-range :500 {}; fi'"

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"

export GIT_CONFIG_GLOBAL="/home/nfs/icarus/.dotfiles/git/gitconfig"

export GIT_CONFIG_SYSTEM

export GIT_EXEC_PATH="/home/nfs/icarus/.dotfiles/local/Linux-x86_64-k5.14.0/libexec/git-core"

export GIT_SSH_COMMAND="/usr/bin/ssh -F /home/nfs/icarus/.dotfiles/config/ssh_config"

export GI_TYPELIB_PATH=/daq/software/spack_packages/harfbuzz/10.0.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-7xwkkdldvrzkcjdtcbtgcxfwwjxmjxzq/lib/girepository-1.0:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-o24mpgnv2tvlxzwjem6ocswqatoimalr/lib/girepository-1.0

export GSL_ROOT_DIR="/daq/software/spack_packages/gsl/2.7.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-dte7qnr7n4xmca6wl42smoectjvkguep"

export HISTCONTROL="ignorespace"

export HISTIGNORE="history:[bf]g:exit:logout:clear:pwd:ls"

export HISTTIMEFORMAT="%Y-%m-%d-%T"

export INCLUDE

export INSTALL_PREFIX="/home/nfs/icarus/.dotfiles/local/Linux-x86_64-k5.14.0"

export KRB5CCNAME

export LC_ALL="en_US.UTF-8"

export LDSHARED

export LD_LIBRARY_PATH=/daq/software/spack_packages/canvas-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-12.1.0-3jdzjqn7hxs6gqcgth5p4z4al2ie4hon/lib:\
/home/nfs/icarus/.dotfiles/local/Linux-x86_64-k5.14.0/lib64:\
/home/nfs/icarus/.dotfiles/local/Linux-x86_64-k5.14.0/lib

export LIBRARY_PATH

export LOADEDMODULES

export LUA_CPATH="/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-vz3ivv7iyzztgzb54aaqa33vcjkjexc3/lib/lua/5.3/?.so"

export LUA_PATH="/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-vz3ivv7iyzztgzb54aaqa33vcjkjexc3/lib/lua/5.3/?/init.lua;/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-vz3ivv7iyzztgzb54aaqa33vcjkjexc3/lib/lua/5.3/?.lua;/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-vz3ivv7iyzztgzb54aaqa33vcjkjexc3/share/lua/5.3/?/init.lua;/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-vz3ivv7iyzztgzb54aaqa33vcjkjexc3/share/lua/5.3/?.lua"

export MANPATH=

export MODULEPATH="/etc/scl/modulefiles:/usr/share/Modules/modulefiles:/etc/modulefiles:/usr/share/modulefiles"

export MODULESHOME="/usr/share/Modules"

export MODULES_CMD="/usr/share/Modules/libexec/modulecmd.tcl"

export MODULES_RUN_QUARANTINE="LD_LIBRARY_PATH LD_PRELOAD"

export MPICC="/daq/software/spack_packages/openmpi/5.0.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-6klvsvkvev74x5vnd4cfe7ws4sixppze/bin/mpicc"

export MPICXX="/daq/software/spack_packages/openmpi/5.0.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-6klvsvkvev74x5vnd4cfe7ws4sixppze/bin/mpic++"

export MPIF77="/daq/software/spack_packages/openmpi/5.0.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-6klvsvkvev74x5vnd4cfe7ws4sixppze/bin/mpif77"

export MPIF90="/daq/software/spack_packages/openmpi/5.0.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-6klvsvkvev74x5vnd4cfe7ws4sixppze/bin/mpif90"

export MPIFC="/daq/software/spack_packages/openmpi/5.0.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-6klvsvkvev74x5vnd4cfe7ws4sixppze/bin/mpifort"

export MRB_QUALS="both"

export MULTICAST_INTERFACE_IP_TO_USE="192.168.191.0"

export OLDPWD="/home/nfs/icarus/DAQ_SPACK_ProdAreas/DAQ_2025-03-07_GAL_v1_10_06"

export OPENAI_API_KEY="default_value"

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
/daq/software/spack_packages/sbndaq/v1_10_06/linux-almalinux9-x86_64_v2-gcc-12.1.0-pdb6dl62zmrwsyzjumjdakygveb55abi/bin:\
/daq/software/spack_packages/sbndaq-artdaq/v1_10_06/linux-almalinux9-x86_64_v2-gcc-12.1.0-srdttqypqgzfrsoohn6poznoufnniru2/bin:\
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
/home/nfs/icarus/.dotfiles/tools_daq:\
/home/nfs/icarus/.dotfiles/bin:\
/home/nfs/icarus/.dotfiles/local/Linux-x86_64-k5.14.0/bin:\
/usr/share/Modules/bin:\
/usr/kerberos/sbin:\
/usr/kerberos/bin:\
/usr/local/sbin:\
/usr/sbin:\
/sbin:\
/opt/puppetlabs/bin:\
/home/nfs/icarus/.dotfiles/local/Linux-x86_64-k5.14.0/libexec/git-core:\
/home/nfs/icarus/.dotfiles/local/Linux-x86_64-k5.14.0/libexec/mc:\
/usr/local/bin:\
/usr/bin:\
/bin

export PERL5LIB=/daq/software/spack_packages/trace/v3_17_11/linux-almalinux9-x86_64_v2-gcc-12.1.0-fvs5jtlzawym5z3fqhv4w3pkakla6g67/perllib:\
/daq/software/spack_packages/art/3.14.04/linux-almalinux9-x86_64_v2-gcc-12.1.0-fj2pexyqnwlhnonwlov6mc3o5gsqvhwv/perllib:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-almalinux9-x86_64_v2-gcc-12.1.0-uidzun2mkfq24weydifzfsmdhblioknj/perllib:\
/daq/software/spack_packages/cetlib/3.18.02/linux-almalinux9-x86_64_v2-gcc-12.1.0-otutjrqtagnlfg3vplfbl4n5ov5zc3sn/perllib

export PKG_CONFIG_PATH=/daq/software/spack_packages/libpqxx/7.6.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-zlkzygpne2jzhn3f4jtq3vvwlbhl5xyz/lib64/pkgconfig:\
/daq/software/spack_packages/jsoncpp/1.9.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-w32z3huxmjgku2jdqqfwnty4o22fmiy3/lib64/pkgconfig:\
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
/daq/software/spack_packages/sbndaq-suite/v1_10_06/linux-almalinux9-x86_64_v2-gcc-12.1.0-jrrkdkdrxppgvgnyjo5ozkhg66iemljt/include:\
/daq/software/spack_packages/art-suite/s131/linux-almalinux9-x86_64_v2-gcc-12.1.0-7xx7cvdfgnnfsuposup3fanirv3ctnbp/include:\
/daq/software/spack_packages/art-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-12.1.0-lelbmrkgwpdqiytkjx3vnuzjpwvrx7y6/include:\
/usr/include

export ROOT_LIBRARY_PATH=/daq/software/spack_packages/art-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-12.1.0-lelbmrkgwpdqiytkjx3vnuzjpwvrx7y6/lib:\
/daq/software/spack_packages/canvas-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-12.1.0-3jdzjqn7hxs6gqcgth5p4z4al2ie4hon/lib

export ROOT_VERSION="v6"

export SBNDAQ_VERSION="v1_10_06"

export SETUP_ARTDAQ_MFEXTENSIONS="spack load artdaq-mfextensions"

export SPACK_ALIASES="concretise:concretize;containerise:containerize;rm:remove"

export SPACK_ARCH="linux-almalinux9-x86_64_v2"

export SPACK_DISABLE_LOCAL_CONFIG="true"

export SPACK_ENV_SCRIPT="/daq/software/spack_packages/spack/current/NULL/share/spack/setup-env.sh"

export SPACK_INSTALL_DIR="/daq/software/spack_packages/spack/current/NULL"

export SPACK_LOADED_HASHES="jrrkdkdrxppgvgnyjo5ozkhg66iemljt"

export SPACK_PYTHON="/usr/bin/python3"

export SPACK_ROOT="/daq/software/spack_packages/spack/current/NULL"

export SPACK_USER_CONFIG_PATH="/home/nfs/icarus/DAQ_SPACK_ProdAreas/DAQ_2025-03-07_GAL_v1_10_06/srcs/sbndaq/sbn-fd/DAQInterface2/overrides/spack"

export SRANDOM="1347404553"

export SSH_AUTH_SOCK

export S_COLORS="auto"

export THIS_SBN_DAQ_DAQINTERFACE_DIR="/home/nfs/icarus/DAQ_SPACK_ProdAreas/DAQ_2025-03-07_GAL_v1_10_06/srcs/sbndaq/sbn-fd/DAQInterface2"

export TMUX_TMPDIR="/tmp/tmux33a"

export USE_CACHED_BASH_ENV="True"

export WAS_SOURCED="true"

export WIBTOOLS_BIN="/daq/software/spack_packages/wibtools/v1_10_06/linux-almalinux9-x86_64_v2-gcc-12.1.0-de3owtfiguffeebcbw4jmnx7ojdv64l3/bin"

export WIB_ADDRESS_TABLE_PATH="/daq/software/spack_packages/wibtools/v1_10_06/linux-almalinux9-x86_64_v2-gcc-12.1.0-de3owtfiguffeebcbw4jmnx7ojdv64l3/tables"

export WIB_CONFIG_PATH="/daq/software/spack_packages/wibtools/v1_10_06/linux-almalinux9-x86_64_v2-gcc-12.1.0-de3owtfiguffeebcbw4jmnx7ojdv64l3/config"

export XDG_CACHE_HOME="/home/nfs/icarus/.dotfiles/.cache"

export XDG_CONFIG_HOME="/home/nfs/icarus/.dotfiles/config"

export XDG_DATA_HOME="/home/nfs/icarus/.dotfiles/.share"

export XLOCALEDIR=/daq/software/spack_packages/libx11/1.8.10/linux-almalinux9-x86_64_v2-gcc-12.1.0-3buagovsmgkgardwjy5me6eid4vubjh6/share/X11/locale

export __MODULES_LMINIT="module use --append /usr/share/Modules/modulefiles:module use --append /etc/modulefiles:module use --append /usr/share/modulefiles"

export __fzf_nospace_commands="cd pushd"

export __git_all_commands

export __git_diff_common_options="--stat --numstat --shortstat --summary --patch-with-stat --name-only --name-status --color --no-color --color-words --no-renames --check --full-index --binary --abbrev --diff-filter= --find-copies-harder --text --ignore-space-at-eol --ignore-space-change --ignore-all-space --exit-code --quiet --ext-diff --no-ext-diff --no-prefix --src-prefix= --dst-prefix= --inter-hunk-context= --patience --raw --dirstat --dirstat= --dirstat-by-file --dirstat-by-file= --cumulative"

export __git_fetch_options="--quiet --verbose --append --upload-pack --force --keep --depth= --tags --no-tags --all --prune --dry-run"

export __git_log_common_options="--not --all --branches --tags --remotes --first-parent --merges --no-merges --max-count= --max-age= --since= --after= --min-age= --until= --before="

export __git_log_date_formats="relative iso8601 rfc2822 short local default raw"

export __git_log_gitk_options="--dense --sparse --full-history --simplify-merges --simplify-by-decoration --left-right"

export __git_log_pretty_formats="oneline short medium full fuller email raw format:"

export __git_log_shortlog_options="--author= --committer= --grep= --all-match"

export __git_merge_options="--no-commit --no-stat --log --no-log --squash --strategy --commit --stat --no-squash --ff --no-ff --ff-only"

export __git_merge_strategies

export __git_mergetools_common="diffuse ecmerge emerge kdiff3 meld opendiff tkdiff vimdiff gvimdiff xxdiff araxis p4merge"

export __git_porcelain_commands

export __git_send_email_confirm_options="always never auto cc compose"

export __git_send_email_suppresscc_options="author self cc bodycc sob cccmd body all"

export __git_whitespacelist="nowarn warn error error-all fix"

export __zoxide_oldpwd="/home/nfs/icarus/DAQ_SPACK_ProdAreas/DAQ_2025-03-07_GAL_v1_10_06/DAQInterface"

export __zoxide_z_prefix="z#"

export _a="sbndaq-suite@v1_10_06%gcc@12.1.0 arch=linux-almalinux9-x86_64_v2 /jrrkdkd"

export _backup_glob="MessageFacility.fcl.bak"

export _fzf_completion_loader="__load_completion"

export _fzf_orig_completion_awk="complete -F %s awk #_longopt"

export _fzf_orig_completion_cat="complete -F %s cat #_longopt"

export _fzf_orig_completion_cd="complete -o nospace -F %s cd #_cd"

export _fzf_orig_completion_cp="complete -F %s cp #_longopt"

export _fzf_orig_completion_diff="complete -F %s diff #_longopt"

export _fzf_orig_completion_du="complete -F %s du #_longopt"

export _fzf_orig_completion_ftp="complete -F %s ftp #_known_hosts"

export _fzf_orig_completion_grep="complete -F %s grep #_longopt"

export _fzf_orig_completion_head="complete -F %s head #_longopt"

export _fzf_orig_completion_ld="complete -F %s ld #_longopt"

export _fzf_orig_completion_less="complete -F %s less #_longopt"

export _fzf_orig_completion_ln="complete -F %s ln #_longopt"

export _fzf_orig_completion_ls="complete -F %s ls #_longopt"

export _fzf_orig_completion_mv="complete -F %s mv #_longopt"

export _fzf_orig_completion_pushd="complete -o nospace -F %s pushd #_cd"

export _fzf_orig_completion_rm="complete -F %s rm #_longopt"

export _fzf_orig_completion_rmdir="complete -F %s rmdir #_longopt"

export _fzf_orig_completion_sed="complete -F %s sed #_longopt"

export _fzf_orig_completion_sort="complete -F %s sort #_longopt"

export _fzf_orig_completion_tail="complete -F %s tail #_longopt"

export _fzf_orig_completion_tee="complete -F %s tee #_longopt"

export _fzf_orig_completion_uniq="complete -F %s uniq #_longopt"

export _fzf_orig_completion_vim="complete -F %s vim #_filedir_xspec"

export _fzf_orig_completion_wc="complete -F %s wc #_longopt"

export _pa_canonical="/etc/scl/modulefiles:/usr/share/Modules/modulefiles:/etc/modulefiles:/usr/share/modulefiles:"

export _pa_new_path="/daq/software/spack_packages/spack/v0.23.0.sbnd/NULL/share/spack/modules/linux-almalinux9-x86_64"

export _pa_oldvalue="/etc/scl/modulefiles:/usr/share/Modules/modulefiles:/etc/modulefiles:/usr/share/modulefiles"

export _pa_varname="MODULEPATH"

export _rbd_commands

export _rbd_global_options

export _sp_compatible_sys_types="linux-almalinux9-zen3:linux-almalinux9-zen2:linux-almalinux9-zen:linux-almalinux9-x86_64_v3:linux-almalinux9-x86_64_v2:linux-almalinux9-x86_64"

export _sp_flags

export _sp_lmod_roots="/daq/software/spack_packages/spack/v0.23.0.sbnd/NULL/share/spack/lmod"

export _sp_prefix="/daq/software/spack_packages/spack/current/NULL"

export _sp_share_dir="/daq/software/spack_packages/spack/current/NULL/share/spack"

export _sp_shell="bash"

export _sp_source_file="/daq/software/spack_packages/spack/current/NULL/share/spack/setup-env.sh"

export _sp_subcommand="load"

export _sp_sys_type="linux-almalinux9-zen3"

export _sp_tcl_roots="/daq/software/spack_packages/spack/v0.23.0.sbnd/NULL/share/spack/modules"

export _xspecs

export bash_bin="/usr/bin/bash"

export build_hash_map

export c="/home/nfs/icarus/.dotfiles/bash/functions/whois"

export cmd="/usr/bin/python3"

export colorflag="--color auto"

export colors="/home/nfs/icarus/.dircolors"

export config="artdaq.bash"

export file="/home/nfs/icarus/.dotfiles/local/Linux-x86_64-k5.14.0/completions/zoxide.bash"

export i="1"

export kernel="5.14.0-427.42.1.el9_4.x86_64"

export ls_bin="/usr/bin/ls"

export my_INSTALL_PREFIX="/home/nfs/icarus/.dotfiles/local/Linux-x86_64-k5.14.0"

export need_module="no"

export new_dirs="/home/nfs/icarus/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share"

export nvim_bin="/home/nfs/icarus/.dotfiles/local/Linux-x86_64-k5.14.0/bin/nvim"

export pth="/daq/software/spack_packages/spack/v0.23.0.sbnd/NULL/share/spack/modules"

export script_dir="/home/nfs/icarus/.dotfiles/hostconfig"

export shell="bash"

export show_file_or_dir_preview="if [ -d {} ]; then eza --tree --color=always {} | head -200; else bat -n --color=always --line-range :500 {}; fi"

export ssh_bin="/usr/bin/ssh"

export systype="linux-almalinux9-x86_64"

export tmux_bin="/home/nfs/icarus/.dotfiles/local/Linux-x86_64-k5.14.0/bin/tmux"

export which_declare="declare -f"

export which_opt="-f"

#Functions
__bat_escape_completions () 
{ 
    [[ $cur == [\"\']* ]] && return 0;
    if ((
		BASH_VERSINFO[0] > 4 || 		BASH_VERSINFO[0] == 4 && BASH_VERSINFO[1] > 0
	)); then
        local i;
        for i in ${!COMPREPLY[*]};
        do
            printf -v "COMPREPLY[i]" %q "${COMPREPLY[i]}";
        done;
    else
        compopt -o filenames;
    fi
}

__bat_init_completion () 
{ 
    COMPREPLY=();
    _get_comp_words_by_ref "$@" cur prev words cword
}

__expand_tilde_by_ref () 
{ 
    if [[ ${!1-} == \~* ]]; then
        eval $1="$(printf ~%q "${!1#\~}")";
    fi
}

__fzf_cd__ () 
{ 
    local dir;
    dir=$(
    FZF_DEFAULT_COMMAND=${FZF_ALT_C_COMMAND:-}     FZF_DEFAULT_OPTS=$(__fzf_defaults "--reverse --walker=dir,follow,hidden --scheme=path" "${FZF_ALT_C_OPTS-} +m")     FZF_DEFAULT_OPTS_FILE='' $(__fzfcmd)
  ) && printf 'builtin cd -- %q' "$(builtin unset CDPATH && builtin cd -- "$dir" && builtin pwd)"
}

__fzf_comprun () 
{ 
    if [[ "$(type -t _fzf_comprun 2>&1)" = function ]]; then
        _fzf_comprun "$@";
    else
        if [[ -n "${TMUX_PANE-}" ]] && { 
            [[ "${FZF_TMUX:-0}" != 0 ]] || [[ -n "${FZF_TMUX_OPTS-}" ]]
        }; then
            shift;
            fzf-tmux ${FZF_TMUX_OPTS:--d${FZF_TMUX_HEIGHT:-40%}} -- "$@";
        else
            shift;
            fzf "$@";
        fi;
    fi
}

__fzf_default_completion () 
{ 
    __fzf_generic_path_completion _fzf_compgen_path "-m" "" "$@";
    if [[ $? -eq 124 ]]; then
        _fzf_setup_completion path "$1";
        return 124;
    fi
}

__fzf_defaults () 
{ 
    echo "--height ${FZF_TMUX_HEIGHT:-40%} --bind=ctrl-z:ignore $1";
    command cat "${FZF_DEFAULT_OPTS_FILE-}" 2> /dev/null;
    echo "${FZF_DEFAULT_OPTS-} $2"
}

__fzf_defc () 
{ 
    local cmd func opts REPLY;
    cmd="$1";
    func="$2";
    opts="$3";
    if __fzf_orig_completion_instantiate "$cmd" "$func"; then
        eval "$REPLY";
    else
        complete -F "$func" $opts "$cmd";
    fi
}

__fzf_generic_path_completion () 
{ 
    local cur base dir leftover matches trigger cmd;
    cmd="${COMP_WORDS[0]}";
    if [[ $cmd == \\* ]]; then
        cmd="${cmd:1}";
    fi;
    COMPREPLY=();
    trigger=${FZF_COMPLETION_TRIGGER-'**'};
    [[ $COMP_CWORD -ge 0 ]] && cur="${COMP_WORDS[COMP_CWORD]}";
    if [[ "$cur" == *"$trigger" ]] && [[ $cur != *'$('* ]] && [[ $cur != *':='* ]] && [[ $cur != *'`'* ]]; then
        base=${cur:0:${#cur}-${#trigger}};
        eval "base=$base" 2> /dev/null || return;
        dir=;
        [[ $base = *"/"* ]] && dir="$base";
        while true; do
            if [[ -z "$dir" ]] || [[ -d "$dir" ]]; then
                leftover=${base/#"$dir"};
                leftover=${leftover/#\/};
                [[ -z "$dir" ]] && dir='.';
                [[ "$dir" != "/" ]] && dir="${dir/%\//}";
                matches=$(
          export FZF_DEFAULT_OPTS=$(__fzf_defaults "--reverse --scheme=path" "${FZF_COMPLETION_OPTS-} $2")
          unset FZF_DEFAULT_COMMAND FZF_DEFAULT_OPTS_FILE
          if declare -F "$1" > /dev/null; then
            eval "$1 $(printf %q "$dir")" | __fzf_comprun "$4" -q "$leftover"
          else
            if [[ $1 =~ dir ]]; then
              walker=dir,follow
              rest=${FZF_COMPLETION_DIR_OPTS-}
            else
              walker=file,dir,follow,hidden
              rest=${FZF_COMPLETION_PATH_OPTS-}
            fi
            __fzf_comprun "$4" -q "$leftover" --walker "$walker" --walker-root="$dir" $rest
          fi | while read -r item; do
            printf "%q " "${item%$3}$3"
          done
        );
                matches=${matches% };
                [[ -z "$3" ]] && [[ "${__fzf_nospace_commands-}" = *" ${COMP_WORDS[0]} "* ]] && matches="$matches ";
                if [[ -n "$matches" ]]; then
                    COMPREPLY=("$matches");
                else
                    COMPREPLY=("$cur");
                fi;
                printf '\e[5n';
                return 0;
            fi;
            dir=$(command dirname "$dir");
            [[ "$dir" =~ /$ ]] || dir="$dir"/;
        done;
    else
        shift;
        shift;
        shift;
        _fzf_handle_dynamic_completion "$cmd" "$@";
    fi
}

__fzf_history__ () 
{ 
    local output script;
    script='BEGIN { getc; $/ = "\n\t"; $HISTCOUNT = $ENV{last_hist} + 1 } s/^[ *]//; s/\n/\n\t/gm; print $HISTCOUNT - $. . "\t$_" if !$seen{$_}++';
    output=$(
      set +o pipefail
      builtin fc -lnr -2147483648 |
        last_hist=$(HISTTIMEFORMAT='' builtin history 1) command perl -n -l0 -e "$script" |
        FZF_DEFAULT_OPTS=$(__fzf_defaults "" "-n2..,.. --scheme=history --bind=ctrl-r:toggle-sort --wrap-sign '"'	'"↳ ' --highlight-line ${FZF_CTRL_R_OPTS-} +m --read0")         FZF_DEFAULT_OPTS_FILE='' $(__fzfcmd) --query "$READLINE_LINE"
    ) || return;
    READLINE_LINE=$(command perl -pe 's/^\d*\t//' <<< "$output");
    if [[ -z "$READLINE_POINT" ]]; then
        echo "$READLINE_LINE";
    else
        READLINE_POINT=0x7fffffff;
    fi
}

__fzf_list_hosts () 
{ 
    command cat <(command tail -n +1 ~/.ssh/config ~/.ssh/config.d/* /etc/ssh/ssh_config 2> /dev/null | command grep -i '^\s*host\(name\)\? ' | command awk '{for (i = 2; i <= NF; i++) print $1 " " $i}' | command grep -v '[*?%]') <(command grep -oE '^[[a-z0-9.,:-]+' ~/.ssh/known_hosts 2> /dev/null | command tr ',' '\n' | command tr -d '[' | command awk '{ print $1 " " $1 }') <(command grep -v '^\s*\(#\|$\)' /etc/hosts 2> /dev/null | command grep -Fv '0.0.0.0' | command sed 's/#.*//') | command awk '{for (i = 2; i <= NF; i++) print $i}' | command sort -u
}

__fzf_orig_completion () 
{ 
    local l comp f cmd;
    while read -r l; do
        if [[ "$l" =~ ^(.*\ -F)\ *([^ ]*).*\ ([^ ]*)$ ]]; then
            comp="${BASH_REMATCH[1]}";
            f="${BASH_REMATCH[2]}";
            cmd="${BASH_REMATCH[3]}";
            [[ "$f" = _fzf_* ]] && continue;
            printf -v "_fzf_orig_completion_${cmd//[^A-Za-z0-9_]/_}" "%s" "${comp} %s ${cmd} #${f}";
            if [[ "$l" = *" -o nospace "* ]] && [[ ! "${__fzf_nospace_commands-}" = *" $cmd "* ]]; then
                __fzf_nospace_commands="${__fzf_nospace_commands-} $cmd ";
            fi;
        fi;
    done
}

__fzf_orig_completion_get_orig_func () 
{ 
    local cmd orig_var orig;
    cmd=$1;
    orig_var="_fzf_orig_completion_${cmd//[^A-Za-z0-9_]/_}";
    orig="${!orig_var-}";
    REPLY="${orig##*#}";
    [[ -n $REPLY ]] && type "$REPLY" &> /dev/null
}

__fzf_orig_completion_instantiate () 
{ 
    local cmd func orig_var orig;
    cmd=$1;
    func=$2;
    orig_var="_fzf_orig_completion_${cmd//[^A-Za-z0-9_]/_}";
    orig="${!orig_var-}";
    orig="${orig%#*}";
    [[ $orig == *' %s '* ]] || return 1;
    printf -v REPLY "$orig" "$func"
}

__fzf_select__ () 
{ 
    FZF_DEFAULT_COMMAND=${FZF_CTRL_T_COMMAND:-} FZF_DEFAULT_OPTS=$(__fzf_defaults "--reverse --walker=file,dir,follow,hidden --scheme=path" "${FZF_CTRL_T_OPTS-} -m") FZF_DEFAULT_OPTS_FILE='' $(__fzfcmd) "$@" | while read -r item; do
        printf '%q ' "$item";
    done
}

__fzfcmd () 
{ 
    [[ -n "${TMUX_PANE-}" ]] && { 
        [[ "${FZF_TMUX:-0}" != 0 ]] || [[ -n "${FZF_TMUX_OPTS-}" ]]
    } && echo "fzf-tmux ${FZF_TMUX_OPTS:--d${FZF_TMUX_HEIGHT:-40%}} -- " || echo "fzf"
}

__get_cword_at_cursor_by_ref () 
{ 
    local cword words=();
    __reassemble_comp_words_by_ref "$1" words cword;
    local i cur="" index=$COMP_POINT lead=${COMP_LINE:0:COMP_POINT};
    if [[ $index -gt 0 && ( -n $lead && -n ${lead//[[:space:]]/} ) ]]; then
        cur=$COMP_LINE;
        for ((i = 0; i <= cword; ++i))
        do
            while [[ ${#cur} -ge ${#words[i]} && ${cur:0:${#words[i]}} != "${words[i]-}" ]]; do
                cur="${cur:1}";
                ((index > 0)) && ((index--));
            done;
            if ((i < cword)); then
                local old_size=${#cur};
                cur="${cur#"${words[i]}"}";
                local new_size=${#cur};
                ((index -= old_size - new_size));
            fi;
        done;
        [[ -n $cur && ! -n ${cur//[[:space:]]/} ]] && cur=;
        ((index < 0)) && index=0;
    fi;
    local "$2" "$3" "$4" && _upvars -a${#words[@]} $2 ${words+"${words[@]}"} -v $3 "$cword" -v $4 "${cur:0:index}"
}

__git_aliased_command () 
{ 
    local word cmdline=$(git --git-dir="$(__gitdir)" 		config --get "alias.$1");
    for word in $cmdline;
    do
        case "$word" in 
            \!gitk | gitk)
                echo "gitk";
                return
            ;;
            \!*)
                : shell command alias
            ;;
            -*)
                : option
            ;;
            *=*)
                : setting env
            ;;
            git)
                : git itself
            ;;
            *)
                echo "$word";
                return
            ;;
        esac;
    done
}

__git_aliases () 
{ 
    local i IFS='
';
    for i in $(git --git-dir="$(__gitdir)" config --get-regexp "alias\..*" 2>/dev/null);
    do
        case "$i" in 
            alias.*)
                i="${i#alias.}";
                echo "${i/ */}"
            ;;
        esac;
    done
}

__git_complete_file () 
{ 
    local pfx ls ref cur="${COMP_WORDS[COMP_CWORD]}";
    case "$cur" in 
        ?*:*)
            ref="${cur%%:*}";
            cur="${cur#*:}";
            case "$cur" in 
                ?*/*)
                    pfx="${cur%/*}";
                    cur="${cur##*/}";
                    ls="$ref:$pfx";
                    pfx="$pfx/"
                ;;
                *)
                    ls="$ref"
                ;;
            esac;
            case "$COMP_WORDBREAKS" in 
                *:*)
                    : great
                ;;
                *)
                    pfx="$ref:$pfx"
                ;;
            esac;
            local IFS='
';
            COMPREPLY=($(compgen -P "$pfx" 			-W "$(git --git-dir="$(__gitdir)" ls-tree "$ls" 				| sed '/^100... blob /{
				           s,^.*	,,
				           s,$, ,
				       }
				       /^120000 blob /{
				           s,^.*	,,
				           s,$, ,
				       }
				       /^040000 tree /{
				           s,^.*	,,
				           s,$,/,
				       }
				       s/^.*	//')" 			-- "$cur"))
        ;;
        *)
            __gitcomp "$(__git_refs)"
        ;;
    esac
}

__git_complete_remote_or_refspec () 
{ 
    local cmd="${COMP_WORDS[1]}";
    local cur="${COMP_WORDS[COMP_CWORD]}";
    local i c=2 remote="" pfx="" lhs=1 no_complete_refspec=0;
    while [ $c -lt $COMP_CWORD ]; do
        i="${COMP_WORDS[c]}";
        case "$i" in 
            --mirror)
                [ "$cmd" = "push" ] && no_complete_refspec=1
            ;;
            --all)
                case "$cmd" in 
                    push)
                        no_complete_refspec=1
                    ;;
                    fetch)
                        COMPREPLY=();
                        return
                    ;;
                    *)

                    ;;
                esac
            ;;
            -*)

            ;;
            *)
                remote="$i";
                break
            ;;
        esac;
        c=$((++c));
    done;
    if [ -z "$remote" ]; then
        __gitcomp "$(__git_remotes)";
        return;
    fi;
    if [ $no_complete_refspec = 1 ]; then
        COMPREPLY=();
        return;
    fi;
    [ "$remote" = "." ] && remote=;
    case "$cur" in 
        *:*)
            case "$COMP_WORDBREAKS" in 
                *:*)
                    : great
                ;;
                *)
                    pfx="${cur%%:*}:"
                ;;
            esac;
            cur="${cur#*:}";
            lhs=0
        ;;
        +*)
            pfx="+";
            cur="${cur#+}"
        ;;
    esac;
    case "$cmd" in 
        fetch)
            if [ $lhs = 1 ]; then
                __gitcomp "$(__git_refs2 "$remote")" "$pfx" "$cur";
            else
                __gitcomp "$(__git_refs)" "$pfx" "$cur";
            fi
        ;;
        pull)
            if [ $lhs = 1 ]; then
                __gitcomp "$(__git_refs "$remote")" "$pfx" "$cur";
            else
                __gitcomp "$(__git_refs)" "$pfx" "$cur";
            fi
        ;;
        push)
            if [ $lhs = 1 ]; then
                __gitcomp "$(__git_refs)" "$pfx" "$cur";
            else
                __gitcomp "$(__git_refs "$remote")" "$pfx" "$cur";
            fi
        ;;
    esac
}

__git_complete_revlist () 
{ 
    local pfx cur="${COMP_WORDS[COMP_CWORD]}";
    case "$cur" in 
        *...*)
            pfx="${cur%...*}...";
            cur="${cur#*...}";
            __gitcomp "$(__git_refs)" "$pfx" "$cur"
        ;;
        *..*)
            pfx="${cur%..*}..";
            cur="${cur#*..}";
            __gitcomp "$(__git_refs)" "$pfx" "$cur"
        ;;
        *)
            __gitcomp "$(__git_refs)"
        ;;
    esac
}

__git_complete_strategy () 
{ 
    __git_compute_merge_strategies;
    case "${COMP_WORDS[COMP_CWORD-1]}" in 
        -s | --strategy)
            __gitcomp "$__git_merge_strategies";
            return 0
        ;;
    esac;
    local cur="${COMP_WORDS[COMP_CWORD]}";
    case "$cur" in 
        --strategy=*)
            __gitcomp "$__git_merge_strategies" "" "${cur##--strategy=}";
            return 0
        ;;
    esac;
    return 1
}

__git_compute_all_commands () 
{ 
    : ${__git_all_commands:=$(__git_list_all_commands)}
}

__git_compute_merge_strategies () 
{ 
    : ${__git_merge_strategies:=$(__git_list_merge_strategies)}
}

__git_compute_porcelain_commands () 
{ 
    __git_compute_all_commands;
    : ${__git_porcelain_commands:=$(__git_list_porcelain_commands)}
}

__git_config_get_set_variables () 
{ 
    local prevword word config_file= c=$COMP_CWORD;
    while [ $c -gt 1 ]; do
        word="${COMP_WORDS[c]}";
        case "$word" in 
            --global | --system | --file=*)
                config_file="$word";
                break
            ;;
            -f | --file)
                config_file="$word $prevword";
                break
            ;;
        esac;
        prevword=$word;
        c=$((--c));
    done;
    git --git-dir="$(__gitdir)" config $config_file --list 2> /dev/null | while read line; do
        case "$line" in 
            *.*=*)
                echo "${line/=*/}"
            ;;
        esac;
    done
}

__git_find_on_cmdline () 
{ 
    local word subcommand c=1;
    while [ $c -lt $COMP_CWORD ]; do
        word="${COMP_WORDS[c]}";
        for subcommand in $1;
        do
            if [ "$subcommand" = "$word" ]; then
                echo "$subcommand";
                return;
            fi;
        done;
        c=$((++c));
    done
}

__git_has_doubledash () 
{ 
    local c=1;
    while [ $c -lt $COMP_CWORD ]; do
        if [ "--" = "${COMP_WORDS[c]}" ]; then
            return 0;
        fi;
        c=$((++c));
    done;
    return 1
}

__git_heads () 
{ 
    local cmd i is_hash=y dir="$(__gitdir "${1-}")";
    if [ -d "$dir" ]; then
        git --git-dir="$dir" for-each-ref --format='%(refname:short)' refs/heads;
        return;
    fi;
    for i in $(git ls-remote "${1-}" 2>/dev/null);
    do
        case "$is_hash,$i" in 
            y,*)
                is_hash=n
            ;;
            n,*^{})
                is_hash=y
            ;;
            n,refs/heads/*)
                is_hash=y;
                echo "${i#refs/heads/}"
            ;;
            n,*)
                is_hash=y;
                echo "$i"
            ;;
        esac;
    done
}

__git_list_all_commands () 
{ 
    local i IFS=" "'
';
    for i in $(git help -a|egrep '^  [a-zA-Z0-9]');
    do
        case $i in 
            *--*)
                : helper pattern
            ;;
            *)
                echo $i
            ;;
        esac;
    done
}

__git_list_merge_strategies () 
{ 
    git merge -s help 2>&1 | sed -n -e '/[Aa]vailable strategies are: /,/^$/{
		s/\.$//
		s/.*://
		s/^[ 	]*//
		s/[ 	]*$//
		p
	}'
}

__git_list_porcelain_commands () 
{ 
    local i IFS=" "'
';
    __git_compute_all_commands;
    for i in "help" $__git_all_commands;
    do
        case $i in 
            *--*)
                : helper pattern
            ;;
            applymbox)
                : ask gittus
            ;;
            applypatch)
                : ask gittus
            ;;
            archimport)
                : import
            ;;
            cat-file)
                : plumbing
            ;;
            check-attr)
                : plumbing
            ;;
            check-ref-format)
                : plumbing
            ;;
            checkout-index)
                : plumbing
            ;;
            commit-tree)
                : plumbing
            ;;
            count-objects)
                : infrequent
            ;;
            cvsexportcommit)
                : export
            ;;
            cvsimport)
                : import
            ;;
            cvsserver)
                : daemon
            ;;
            daemon)
                : daemon
            ;;
            diff-files)
                : plumbing
            ;;
            diff-index)
                : plumbing
            ;;
            diff-tree)
                : plumbing
            ;;
            fast-import)
                : import
            ;;
            fast-export)
                : export
            ;;
            fsck-objects)
                : plumbing
            ;;
            fetch-pack)
                : plumbing
            ;;
            fmt-merge-msg)
                : plumbing
            ;;
            for-each-ref)
                : plumbing
            ;;
            hash-object)
                : plumbing
            ;;
            http-*)
                : transport
            ;;
            index-pack)
                : plumbing
            ;;
            init-db)
                : deprecated
            ;;
            local-fetch)
                : plumbing
            ;;
            lost-found)
                : infrequent
            ;;
            ls-files)
                : plumbing
            ;;
            ls-remote)
                : plumbing
            ;;
            ls-tree)
                : plumbing
            ;;
            mailinfo)
                : plumbing
            ;;
            mailsplit)
                : plumbing
            ;;
            merge-*)
                : plumbing
            ;;
            mktree)
                : plumbing
            ;;
            mktag)
                : plumbing
            ;;
            pack-objects)
                : plumbing
            ;;
            pack-redundant)
                : plumbing
            ;;
            pack-refs)
                : plumbing
            ;;
            parse-remote)
                : plumbing
            ;;
            patch-id)
                : plumbing
            ;;
            peek-remote)
                : plumbing
            ;;
            prune)
                : plumbing
            ;;
            prune-packed)
                : plumbing
            ;;
            quiltimport)
                : import
            ;;
            read-tree)
                : plumbing
            ;;
            receive-pack)
                : plumbing
            ;;
            reflog)
                : plumbing
            ;;
            remote-*)
                : transport
            ;;
            repo-config)
                : deprecated
            ;;
            rerere)
                : plumbing
            ;;
            rev-list)
                : plumbing
            ;;
            rev-parse)
                : plumbing
            ;;
            runstatus)
                : plumbing
            ;;
            sh-setup)
                : internal
            ;;
            shell)
                : daemon
            ;;
            show-ref)
                : plumbing
            ;;
            send-pack)
                : plumbing
            ;;
            show-index)
                : plumbing
            ;;
            ssh-*)
                : transport
            ;;
            stripspace)
                : plumbing
            ;;
            symbolic-ref)
                : plumbing
            ;;
            tar-tree)
                : deprecated
            ;;
            unpack-file)
                : plumbing
            ;;
            unpack-objects)
                : plumbing
            ;;
            update-index)
                : plumbing
            ;;
            update-ref)
                : plumbing
            ;;
            update-server-info)
                : daemon
            ;;
            upload-archive)
                : plumbing
            ;;
            upload-pack)
                : plumbing
            ;;
            write-tree)
                : plumbing
            ;;
            var)
                : infrequent
            ;;
            verify-pack)
                : infrequent
            ;;
            verify-tag)
                : plumbing
            ;;
            *)
                echo $i
            ;;
        esac;
    done
}

__git_prompt () 
{ 
    GIT_PS1_SHOWDIRTYSTATE=1;
    [ $(git config user.pair) ] && GIT_PS1_PAIR="$(git config user.pair)@";
    __git_ps1 " $GIT_PS1_PAIR%s" | sed 's/ \([+*]\{1,\}\)$/\1/'
}

__git_ps1 () 
{ 
    local g="$(__gitdir)";
    if [ -n "$g" ]; then
        local r;
        local b;
        if [ -f "$g/rebase-merge/interactive" ]; then
            r="|REBASE-i";
            b="$(cat "$g/rebase-merge/head-name")";
        else
            if [ -d "$g/rebase-merge" ]; then
                r="|REBASE-m";
                b="$(cat "$g/rebase-merge/head-name")";
            else
                if [ -d "$g/rebase-apply" ]; then
                    if [ -f "$g/rebase-apply/rebasing" ]; then
                        r="|REBASE";
                    else
                        if [ -f "$g/rebase-apply/applying" ]; then
                            r="|AM";
                        else
                            r="|AM/REBASE";
                        fi;
                    fi;
                else
                    if [ -f "$g/MERGE_HEAD" ]; then
                        r="|MERGING";
                    else
                        if [ -f "$g/BISECT_LOG" ]; then
                            r="|BISECTING";
                        fi;
                    fi;
                fi;
                b="$(git symbolic-ref HEAD 2>/dev/null)" || { 
                    b="$(
				case "${GIT_PS1_DESCRIBE_STYLE-}" in
				(contains)
					git describe --contains HEAD ;;
				(branch)
					git describe --contains --all HEAD ;;
				(describe)
					git describe HEAD ;;
				(* | default)
					git describe --exact-match HEAD ;;
				esac 2>/dev/null)" || b="$(cut -c1-7 "$g/HEAD" 2>/dev/null)..." || b="unknown";
                    b="($b)"
                };
            fi;
        fi;
        local w;
        local i;
        local s;
        local u;
        local c;
        if [ "true" = "$(git rev-parse --is-inside-git-dir 2>/dev/null)" ]; then
            if [ "true" = "$(git rev-parse --is-bare-repository 2>/dev/null)" ]; then
                c="BARE:";
            else
                b="GIT_DIR!";
            fi;
        else
            if [ "true" = "$(git rev-parse --is-inside-work-tree 2>/dev/null)" ]; then
                if [ -n "${GIT_PS1_SHOWDIRTYSTATE-}" ]; then
                    if [ "$(git config --bool bash.showDirtyState)" != "false" ]; then
                        git diff --no-ext-diff --quiet --exit-code || w="*";
                        if git rev-parse --quiet --verify HEAD > /dev/null; then
                            git diff-index --cached --quiet HEAD -- || i="+";
                        else
                            i="#";
                        fi;
                    fi;
                fi;
                if [ -n "${GIT_PS1_SHOWSTASHSTATE-}" ]; then
                    git rev-parse --verify refs/stash > /dev/null 2>&1 && s="$";
                fi;
                if [ -n "${GIT_PS1_SHOWUNTRACKEDFILES-}" ]; then
                    if [ -n "$(git ls-files --others --exclude-standard)" ]; then
                        u="%";
                    fi;
                fi;
            fi;
        fi;
        local f="$w$i$s$u";
        printf "${1:- (%s)}" "$c${b##refs/heads/}${f:+ $f}$r";
    fi
}

__git_refs () 
{ 
    local i is_hash=y dir="$(__gitdir "${1-}")";
    local cur="${COMP_WORDS[COMP_CWORD]}" format refs;
    if [ -d "$dir" ]; then
        case "$cur" in 
            refs | refs/*)
                format="refname";
                refs="${cur%/*}"
            ;;
            *)
                for i in HEAD FETCH_HEAD ORIG_HEAD MERGE_HEAD;
                do
                    if [ -e "$dir/$i" ]; then
                        echo $i;
                    fi;
                done;
                format="refname:short";
                refs="refs/tags refs/heads refs/remotes"
            ;;
        esac;
        git --git-dir="$dir" for-each-ref --format="%($format)" $refs;
        return;
    fi;
    for i in $(git ls-remote "$dir" 2>/dev/null);
    do
        case "$is_hash,$i" in 
            y,*)
                is_hash=n
            ;;
            n,*^{})
                is_hash=y
            ;;
            n,refs/tags/*)
                is_hash=y;
                echo "${i#refs/tags/}"
            ;;
            n,refs/heads/*)
                is_hash=y;
                echo "${i#refs/heads/}"
            ;;
            n,refs/remotes/*)
                is_hash=y;
                echo "${i#refs/remotes/}"
            ;;
            n,*)
                is_hash=y;
                echo "$i"
            ;;
        esac;
    done
}

__git_refs2 () 
{ 
    local i;
    for i in $(__git_refs "$1");
    do
        echo "$i:$i";
    done
}

__git_refs_remotes () 
{ 
    local cmd i is_hash=y;
    for i in $(git ls-remote "$1" 2>/dev/null);
    do
        case "$is_hash,$i" in 
            n,refs/heads/*)
                is_hash=y;
                echo "$i:refs/remotes/$1/${i#refs/heads/}"
            ;;
            y,*)
                is_hash=n
            ;;
            n,*^{})
                is_hash=y
            ;;
            n,refs/tags/*)
                is_hash=y
            ;;
            n,*)
                is_hash=y
            ;;
        esac;
    done
}

__git_remotes () 
{ 
    local i ngoff IFS='
' d="$(__gitdir)";
    shopt -q nullglob || ngoff=1;
    shopt -s nullglob;
    for i in "$d/remotes"/*;
    do
        echo ${i#$d/remotes/};
    done;
    [ "$ngoff" ] && shopt -u nullglob;
    for i in $(git --git-dir="$d" config --get-regexp 'remote\..*\.url' 2>/dev/null);
    do
        i="${i#remote.}";
        echo "${i/.url*/}";
    done
}

__git_tags () 
{ 
    local cmd i is_hash=y dir="$(__gitdir "${1-}")";
    if [ -d "$dir" ]; then
        git --git-dir="$dir" for-each-ref --format='%(refname:short)' refs/tags;
        return;
    fi;
    for i in $(git ls-remote "${1-}" 2>/dev/null);
    do
        case "$is_hash,$i" in 
            y,*)
                is_hash=n
            ;;
            n,*^{})
                is_hash=y
            ;;
            n,refs/tags/*)
                is_hash=y;
                echo "${i#refs/tags/}"
            ;;
            n,*)
                is_hash=y;
                echo "$i"
            ;;
        esac;
    done
}

__gitcomp () 
{ 
    local cur="${COMP_WORDS[COMP_CWORD]}";
    if [ $# -gt 2 ]; then
        cur="$3";
    fi;
    case "$cur" in 
        --*=)
            COMPREPLY=()
        ;;
        *)
            local IFS='
';
            COMPREPLY=($(compgen -P "${2-}" 			-W "$(__gitcomp_1 "${1-}" "${4-}")" 			-- "$cur"))
        ;;
    esac
}

__gitcomp_1 () 
{ 
    local c IFS=' ''	''
';
    for c in $1;
    do
        case "$c$2" in 
            --*=*)
                printf %s'
' "$c$2"
            ;;
            *.)
                printf %s'
' "$c$2"
            ;;
            *)
                printf %s'
' "$c$2 "
            ;;
        esac;
    done
}

__gitdir () 
{ 
    if [ -z "${1-}" ]; then
        if [ -n "${__git_dir-}" ]; then
            echo "$__git_dir";
        else
            if [ -d .git ]; then
                echo .git;
            else
                git rev-parse --git-dir 2> /dev/null;
            fi;
        fi;
    else
        if [ -d "$1/.git" ]; then
            echo "$1/.git";
        else
            echo "$1";
        fi;
    fi
}

__hosted_repos () 
{ 
    local predicate="$1";
    local reply=;
    if [ x"$predicate" != x"" ]; then
        reply=$(cvmfs_server list 2>/dev/null | awk "$predicate");
    else
        reply=$(cvmfs_server list 2>/dev/null);
    fi;
    echo "$reply" | awk '{ print $1 }'
}

__load_completion () 
{ 
    local -a dirs=(${BASH_COMPLETION_USER_DIR:-${XDG_DATA_HOME:-$HOME/.local/share}/bash-completion}/completions);
    local ifs=$IFS IFS=: dir cmd="${1##*/}" compfile;
    [[ -n $cmd ]] || return 1;
    for dir in ${XDG_DATA_DIRS:-/usr/local/share:/usr/share};
    do
        dirs+=($dir/bash-completion/completions);
    done;
    IFS=$ifs;
    if [[ $BASH_SOURCE == */* ]]; then
        dirs+=("${BASH_SOURCE%/*}/completions");
    else
        dirs+=(./completions);
    fi;
    local backslash=;
    if [[ $cmd == \\* ]]; then
        cmd="${cmd:1}";
        $(complete -p "$cmd" 2>/dev/null || echo false) "\\$cmd" && return 0;
        backslash=\\;
    fi;
    for dir in "${dirs[@]}";
    do
        [[ -d $dir ]] || continue;
        for compfile in "$cmd" "$cmd.bash" "_$cmd";
        do
            compfile="$dir/$compfile";
            if [[ -f $compfile ]] && . "$compfile" &> /dev/null; then
                [[ -n $backslash ]] && $(complete -p "$cmd") "\\$cmd";
                return 0;
            fi;
        done;
    done;
    [[ -v _xspecs[$cmd] ]] && complete -F _filedir_xspec "$cmd" "$backslash$cmd" && return 0;
    return 1
}

__local_repos () 
{ 
    eval $(grep '^CVMFS_REPOSITORIES=' /etc/cvmfs/default.local);
    __local_repos=$(echo $CVMFS_REPOSITORIES | sed 's/,/ /g' );
    unset CVMFS_REPOSITORIES;
    echo $__local_repos
}

__ltrim_colon_completions () 
{ 
    if [[ $1 == *:* && $COMP_WORDBREAKS == *:* ]]; then
        local colon_word=${1%"${1##*:}"};
        local i=${#COMPREPLY[*]};
        while ((i-- > 0)); do
            COMPREPLY[i]=${COMPREPLY[i]#"$colon_word"};
        done;
    fi
}

__parse_options () 
{ 
    local option option2 i IFS=' 	
,/|';
    option=;
    local -a array=($1);
    for i in "${array[@]}";
    do
        case "$i" in 
            ---*)
                break
            ;;
            --?*)
                option=$i;
                break
            ;;
            -?*)
                [[ -n $option ]] || option=$i
            ;;
            *)
                break
            ;;
        esac;
    done;
    [[ -n $option ]] || return 0;
    IFS=' 	
';
    if [[ $option =~ (\[((no|dont)-?)\]). ]]; then
        option2=${option/"${BASH_REMATCH[1]}"/};
        option2=${option2%%[<{().[]*};
        printf '%s\n' "${option2/=*/=}";
        option=${option/"${BASH_REMATCH[1]}"/"${BASH_REMATCH[2]}"};
    fi;
    option=${option%%[<{().[]*};
    printf '%s\n' "${option/=*/=}"
}

__reassemble_comp_words_by_ref () 
{ 
    local exclude i j line ref;
    if [[ -n $1 ]]; then
        exclude="[${1//[^$COMP_WORDBREAKS]/}]";
    fi;
    printf -v "$3" %s "$COMP_CWORD";
    if [[ -v exclude ]]; then
        line=$COMP_LINE;
        for ((i = 0, j = 0; i < ${#COMP_WORDS[@]}; i++, j++))
        do
            while [[ $i -gt 0 && ${COMP_WORDS[i]} == +($exclude) ]]; do
                [[ $line != [[:blank:]]* ]] && ((j >= 2)) && ((j--));
                ref="$2[$j]";
                printf -v "$ref" %s "${!ref-}${COMP_WORDS[i]}";
                ((i == COMP_CWORD)) && printf -v "$3" %s "$j";
                line=${line#*"${COMP_WORDS[i]}"};
                [[ $line == [[:blank:]]* ]] && ((j++));
                ((i < ${#COMP_WORDS[@]} - 1)) && ((i++)) || break 2;
            done;
            ref="$2[$j]";
            printf -v "$ref" %s "${!ref-}${COMP_WORDS[i]}";
            line=${line#*"${COMP_WORDS[i]}"};
            ((i == COMP_CWORD)) && printf -v "$3" %s "$j";
        done;
        ((i == COMP_CWORD)) && printf -v "$3" %s "$j";
    else
        for i in "${!COMP_WORDS[@]}";
        do
            printf -v "$2[i]" %s "${COMP_WORDS[i]}";
        done;
    fi
}

__tags () 
{ 
    local reply="";
    for repo in $(__hosted_repos '/stratum0/');
    do
        reply="$(cvmfs_server tag -lx $repo | awk '{print $1}') $reply";
    done;
    echo $reply
}

__zoxide_cd () 
{ 
    \builtin cd -- "$@"
}

__zoxide_doctor () 
{ 
    [[ ${_ZO_DOCTOR:-1} -ne 0 ]] || return 0;
    [[ ${PROMPT_COMMAND:=} != *'__zoxide_hook'* ]] || return 0;
    _ZO_DOCTOR=0;
    \builtin printf '%s\n' 'zoxide: detected a possible configuration issue.' 'Please ensure that zoxide is initialized right at the end of your shell configuration file (usually ~/.bashrc).' '' 'If the issue persists, consider filing an issue at:' 'https://github.com/ajeetdsouza/zoxide/issues' '' 'Disable this message by setting _ZO_DOCTOR=0.' '' 1>&2
}

__zoxide_hook () 
{ 
    \builtin local -r retval="$?";
    \builtin local pwd_tmp;
    pwd_tmp="$(__zoxide_pwd)";
    if [[ ${__zoxide_oldpwd} != "${pwd_tmp}" ]]; then
        __zoxide_oldpwd="${pwd_tmp}";
        \command zoxide add -- "${__zoxide_oldpwd}";
    fi;
    return "${retval}"
}

__zoxide_pwd () 
{ 
    \builtin pwd -L
}

__zoxide_z () 
{ 
    __zoxide_doctor;
    if [[ $# -eq 0 ]]; then
        __zoxide_cd ~;
    else
        if [[ $# -eq 1 && $1 == '-' ]]; then
            __zoxide_cd "${OLDPWD}";
        else
            if [[ $# -eq 1 && -d $1 ]]; then
                __zoxide_cd "$1";
            else
                if [[ $# -eq 2 && $1 == '--' ]]; then
                    __zoxide_cd "$2";
                else
                    if [[ ${@: -1} == "${__zoxide_z_prefix}"?* ]]; then
                        \builtin local result="${@: -1}";
                        __zoxide_cd "${result:${#__zoxide_z_prefix}}";
                    else
                        \builtin local result;
                        result="$(\command zoxide query --exclude "$(__zoxide_pwd)" -- "$@")" && __zoxide_cd "${result}";
                    fi;
                fi;
            fi;
        fi;
    fi
}

__zoxide_zi () 
{ 
    __zoxide_doctor;
    \builtin local result;
    result="$(\command zoxide query --interactive -- "$@")" && __zoxide_cd "${result}"
}

_alacritty () 
{ 
    local i cur prev opts cmd;
    COMPREPLY=();
    cur="${COMP_WORDS[COMP_CWORD]}";
    prev="${COMP_WORDS[COMP_CWORD-1]}";
    cmd="";
    opts="";
    for i in ${COMP_WORDS[@]};
    do
        case "${cmd},${i}" in 
            ",$1")
                cmd="alacritty"
            ;;
            alacritty,help)
                cmd="alacritty__help"
            ;;
            alacritty,migrate)
                cmd="alacritty__migrate"
            ;;
            alacritty,msg)
                cmd="alacritty__msg"
            ;;
            alacritty__help,help)
                cmd="alacritty__help__help"
            ;;
            alacritty__help,migrate)
                cmd="alacritty__help__migrate"
            ;;
            alacritty__help,msg)
                cmd="alacritty__help__msg"
            ;;
            alacritty__help__msg,config)
                cmd="alacritty__help__msg__config"
            ;;
            alacritty__help__msg,create-window)
                cmd="alacritty__help__msg__create__window"
            ;;
            alacritty__msg,config)
                cmd="alacritty__msg__config"
            ;;
            alacritty__msg,create-window)
                cmd="alacritty__msg__create__window"
            ;;
            alacritty__msg,help)
                cmd="alacritty__msg__help"
            ;;
            alacritty__msg__help,config)
                cmd="alacritty__msg__help__config"
            ;;
            alacritty__msg__help,create-window)
                cmd="alacritty__msg__help__create__window"
            ;;
            alacritty__msg__help,help)
                cmd="alacritty__msg__help__help"
            ;;
            *)

            ;;
        esac;
    done;
    case "${cmd}" in 
        alacritty)
            opts="-q -v -e -T -o -h -V --print-events --ref-test --embed --config-file --socket --daemon --working-directory --hold --command --title --class --option --help --version msg migrate help";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 1 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                --embed)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --config-file)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                --socket)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                --working-directory)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                --command)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -e)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --title)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -T)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --class)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --option)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -o)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        alacritty__help)
            opts="msg migrate help";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        alacritty__help__help)
            opts="";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        alacritty__help__migrate)
            opts="";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        alacritty__help__msg)
            opts="create-window config";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        alacritty__help__msg__config)
            opts="";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        alacritty__help__msg__create__window)
            opts="";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        alacritty__migrate)
            opts="-c -d -i -s -h --config-file --dry-run --skip-imports --skip-renames --silent --help";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                --config-file)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                -c)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        alacritty__msg)
            opts="-s -h --socket --help create-window config help";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                --socket)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                -s)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        alacritty__msg__config)
            opts="-w -r -h --window-id --reset --help <CONFIG_OPTIONS>...";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                --window-id)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -w)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        alacritty__msg__create__window)
            opts="-e -T -o -h --working-directory --hold --command --title --class --option --help";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                --working-directory)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                --command)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -e)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --title)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -T)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --class)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --option)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -o)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        alacritty__msg__help)
            opts="create-window config help";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        alacritty__msg__help__config)
            opts="";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        alacritty__msg__help__create__window)
            opts="";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        alacritty__msg__help__help)
            opts="";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
    esac
}

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

_allowed_groups () 
{ 
    if _complete_as_root; then
        local IFS='
';
        COMPREPLY=($(compgen -g -- "$1"));
    else
        local IFS='
 ';
        COMPREPLY=($(compgen -W             "$(id -Gn 2>/dev/null || groups 2>/dev/null)" -- "$1"));
    fi
}

_allowed_users () 
{ 
    if _complete_as_root; then
        local IFS='
';
        COMPREPLY=($(compgen -u -- "${1:-$cur}"));
    else
        local IFS='
 ';
        COMPREPLY=($(compgen -W             "$(id -un 2>/dev/null || whoami 2>/dev/null)" -- "${1:-$cur}"));
    fi
}

_authselect_completions () 
{ 
    local COMMANDS;
    local command;
    local possibleopts;
    function is_valid_command () 
    { 
        local cmd;
        for cmd in "${COMMANDS[@]}";
        do
            if [[ "$cmd" = "$1" ]]; then
                return 0;
            fi;
        done;
        return 1
    };
    function get_command () 
    { 
        local opt;
        if [[ $COMP_CWORD -lt 2 ]]; then
            return;
        fi;
        for opt in "${COMP_WORDS[@]:0:$COMP_CWORD}";
        do
            if is_valid_command "$opt"; then
                echo "$opt";
                return;
            fi;
        done
    };
    function get_command_param () 
    { 
        local havecmd=0;
        local len=${#COMP_WORDS[@]}-1;
        if [[ "$command" = "" ]]; then
            return;
        fi;
        havecmd=0;
        for ((i=0; i<$len; i++ ))
        do
            if [[ "$havecmd" = "1" ]]; then
                if [[ "${COMP_WORDS[$i]}" =~ ^[-=] || "${COMP_WORDS[$i-1]}" = "=" ]]; then
                    continue;
                fi;
                echo "${COMP_WORDS[$i]}";
                return;
            fi;
            if [[ "${COMP_WORDS[$i]}" = "$command" ]]; then
                havecmd=1;
            fi;
        done
    };
    function get_profile () 
    { 
        case "$command" in 
            select | show | requirements | test | list-features)
                get_command_param
            ;;
            enable-feature | disable-feature)
                authselect current 2> /dev/null | head -n1 | cut -d" " -f3
            ;;
        esac
    };
    function get_command_keywords () 
    { 
        local profile;
        case "$command" in 
            select | requirements | test)
                profile="$(get_profile)";
                if [[ "$profile" != "" ]]; then
                    authselect list-features "$profile" 2> /dev/null;
                fi
            ;;
        esac
    };
    function get_command_options () 
    { 
        if [[ "${COMP_WORDS[$COMP_CWORD]}" =~ ^- ]]; then
            case "$command" in 
                select)
                    echo "--force --quiet --nobackup --backup="
                ;;
                apply-changes | disable-feature)
                    echo "--backup="
                ;;
                enable-feature)
                    echo "--backup= --quiet"
                ;;
                current | backup-list)
                    echo "--raw"
                ;;
                create-profile)
                    echo "--vendor --base-on= --base-on-default" "--symlink-meta --symlink-nsswitch --symlink-pam" "--symlink-dconf --symlink="
                ;;
                test)
                    echo "--all --nsswitch --system-auth --password-auth" "--smartcard-auth --fingerprint-auth --postlogin" "--dconf-db --dconf-lock"
                ;;
            esac;
        fi
    };
    function get_global_options () 
    { 
        if [[ "${COMP_WORDS[$COMP_CWORD]}" =~ ^- ]]; then
            echo "--debug --trace --warn --help";
        fi
    };
    function get_option_params () 
    { 
        local opt;
        if [[ $COMP_CWORD -gt 2 && "${COMP_WORDS[$COMP_CWORD-1]}" = "=" ]]; then
            opt="${COMP_WORDS[$COMP_CWORD-2]}";
        else
            if [[ $COMP_CWORD -gt 1 ]]; then
                opt="${COMP_WORDS[$COMP_CWORD-1]}";
            fi;
        fi;
        case "$opt" in 
            --base-on)
                authselect list 2> /dev/null | cut -d" " -f2
            ;;
            --symlink)
                echo "dconf-db dconf-locks fingerprint-auth nsswitch.conf" "password-auth postlogin smartcard-auth system-auth" "README REQUIREMENTS"
            ;;
        esac
    };
    function get_command_params () 
    { 
        local i;
        local profile;
        if [[ "$command" = "" ]]; then
            return;
        fi;
        for ((i=$COMP_CWORD-1; i>1; i-- ))
        do
            opt="${COMP_WORDS[$i]}";
            if [[ "$opt" = "$command" ]]; then
                break;
            fi;
            if [[ "$opt" =~ ^[-=] || "${COMP_WORDS[$i-1]}" = "=" ]]; then
                continue;
            fi;
            return;
        done;
        case "$command" in 
            select | show | requirements | test | list-features)
                authselect list 2> /dev/null | cut -d" " -f2
            ;;
            backup-remove | backup-restore)
                authselect backup-list 2> /dev/null | cut -d" " -f1
            ;;
            enable-feature | disable-feature)
                profile="$(get_profile)";
                if [[ "$profile" != "" ]]; then
                    authselect list-features "$profile" 2> /dev/null;
                fi
            ;;
        esac
    };
    COMMANDS=(select apply-changes list list-features show requirements current check test enable-feature disable-feature create-profile backup-list backup-remove backup-restore);
    possibleopts="$(get_option_params)";
    if [[ "$possibleopts" != "" ]]; then
        if [[ "${COMP_WORDS[$COMP_CWORD]}" = "=" ]]; then
            COMPREPLY=($(compgen -W "$possibleopts"));
        else
            COMPREPLY=($(compgen -W "$possibleopts" -- "${COMP_WORDS[$COMP_CWORD]}"));
        fi;
    else
        command="$(get_command)";
        if [[ "$command" = "" ]]; then
            possibleopts="$(get_global_options) ${COMMANDS[@]}";
        else
            possibleopts="$(get_global_options) $(get_command_params) $(get_command_keywords) $(get_command_options)";
        fi;
        COMPREPLY=($(compgen -W "$possibleopts" -- "${COMP_WORDS[$COMP_CWORD]}"));
    fi
}

_available_interfaces () 
{ 
    local PATH=$PATH:/sbin;
    COMPREPLY=($({
        if [[ ${1:-} == -w ]]; then
            iwconfig
        elif [[ ${1:-} == -a ]]; then
            ifconfig || ip link show up
        else
            ifconfig -a || ip link show
        fi
    } 2>/dev/null | awk         '/^[^ \t]/ { if ($1 ~ /^[0-9]+:/) { print $2 } else { print $1 } }'));
    COMPREPLY=($(compgen -W '${COMPREPLY[@]/%[[:punct:]]/}' -- "$cur"))
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

_bashcomp_try_faketty () 
{ 
    if type unbuffer &> /dev/null; then
        unbuffer -p "$@";
    else
        if script --version 2>&1 | command grep -qF util-linux; then
            script -qaefc "$*" /dev/null;
        else
            "$@";
        fi;
    fi
}

_bat () 
{ 
    local cur prev words split=false;
    if declare -F _init_completion > /dev/null 2>&1; then
        _init_completion -s || return 0;
    else
        __bat_init_completion -n "=" || return 0;
        _split_longopt && split=true;
    fi;
    if [[ ${words[1]-} == cache ]]; then
        case $prev in 
            --source | --target)
                _filedir -d;
                return 0
            ;;
        esac;
        COMPREPLY=($(compgen -W "
			--build
			--clear
			--source
			--target
			--blank
			--help
		" -- "$cur"));
        return 0;
    fi;
    case $prev in 
        -l | --language)
            local IFS='
';
            COMPREPLY=($(compgen -W "$(
			"$1" --list-languages | while IFS=: read -r lang _; do
				printf "%s\n" "$lang"
			done
		)" -- "$cur"));
            __bat_escape_completions;
            return 0
        ;;
        -H | --highlight-line | --diff-context | --tabs | --terminal-width | -m | --map-syntax | --ignored-suffix | --list-themes | --squeeze-limit | --line-range | -L | --list-languages | --lessopen | --diagnostic | --acknowledgements | -h | --help | -V | --version | --cache-dir | --config-dir | --config-file | --generate-config-file)
            return 0
        ;;
        --file-name)
            _filedir;
            return 0
        ;;
        --wrap)
            COMPREPLY=($(compgen -W "auto never character" -- "$cur"));
            return 0
        ;;
        --color | --decorations | --paging)
            COMPREPLY=($(compgen -W "auto never always" -- "$cur"));
            return 0
        ;;
        --italic-text)
            COMPREPLY=($(compgen -W "always never" -- "$cur"));
            return 0
        ;;
        --pager)
            COMPREPLY=($(compgen -c -- "$cur"));
            return 0
        ;;
        --theme)
            local IFS='
';
            COMPREPLY=($(compgen -W "auto${IFS}auto:always${IFS}auto:system${IFS}dark${IFS}light${IFS}$("$1" --list-themes)" -- "$cur"));
            __bat_escape_completions;
            return 0
        ;;
        --theme-dark | --theme-light)
            local IFS='
';
            COMPREPLY=($(compgen -W "$("$1" --list-themes)" -- "$cur"));
            __bat_escape_completions;
            return 0
        ;;
        --style)
            local -a styles=(default full auto plain changes header header-filename header-filesize grid rule numbers snip);
            if declare -F _comp_delimited > /dev/null 2>&1; then
                _comp_delimited , -W '"${styles[@]}"';
            else
                COMPREPLY=($(compgen -W '${styles[@]}' -- "$cur"));
            fi;
            return 0
        ;;
    esac;
    $split && return 0;
    if [[ $cur == -* ]]; then
        COMPREPLY=($(compgen -W "
			--show-all
			--plain
			--language
			--highlight-line
			--file-name
			--diff
			--diff-context
			--tabs
			--wrap
			--chop-long-lines
			--terminal-width
			--number
			--color
			--italic-text
			--decorations
			--force-colorization
			--paging
			--pager
			--map-syntax
			--ignored-suffix
			--theme
			--theme-dark
			--theme-light
			--list-themes
			--squeeze-blank
			--squeeze-limit
			--style
			--line-range
			--list-languages
			--lessopen
			--diagnostic
			--acknowledgements
			--set-terminal-title
			--help
			--version
			--cache-dir
			--config-dir
			--config-file
			--generate-config-file
			--no-config
			--no-custom-assets
			--no-lessopen
		" -- "$cur"));
        return 0;
    fi;
    _filedir
}

_bpftool () 
{ 
    local cur prev words objword json=0;
    _init_completion || return;
    if [[ ${words[cword]} == -* ]]; then
        local c='--version --json --pretty --bpffs --mapcompat --debug \
            --use-loader --base-btf';
        COMPREPLY=($( compgen -W "$c" -- "$cur" ));
        return 0;
    fi;
    if _bpftool_search_list -j --json -p --pretty; then
        json=1;
    fi;
    case $prev in 
        help | hex)
            return 0
        ;;
        tag)
            _bpftool_get_prog_tags;
            return 0
        ;;
        dev | offload_dev | xdpmeta_dev)
            _sysfs_get_netdevs;
            return 0
        ;;
        file | pinned | -B | --base-btf)
            _filedir;
            return 0
        ;;
        batch)
            COMPREPLY=($( compgen -W 'file' -- "$cur" ));
            return 0
        ;;
    esac;
    local i;
    for ((i=1; i < ${#words[@]}; 1))
    do
        if [[ ${words[i]::1} == - ]] && [[ ${words[i]} != "-B" ]] && [[ ${words[i]} != "--base-btf" ]]; then
            words=("${words[@]:0:i}" "${words[@]:i+1}");
            [[ $i -le $cword ]] && cword=$(( cword - 1 ));
        else
            i=$(( ++i ));
        fi;
    done;
    cur=${words[cword]};
    prev=${words[cword - 1]};
    pprev=${words[cword - 2]};
    local object=${words[1]} command=${words[2]};
    if [[ -z $object || $cword -eq 1 ]]; then
        case $cur in 
            *)
                COMPREPLY=($( compgen -W "$( bpftool help 2>&1 |                     command sed                     -e '/OBJECT := /!d'                     -e 's/.*{//'                     -e 's/}.*//'                     -e 's/|//g' )" -- "$cur" ));
                COMPREPLY+=($( compgen -W 'batch help' -- "$cur" ));
                return 0
            ;;
        esac;
    fi;
    [[ $command == help ]] && return 0;
    case $object in 
        prog)
            case $command in 
                show | list | dump | pin)
                    case $prev in 
                        id)
                            _bpftool_get_prog_ids;
                            return 0
                        ;;
                        name)
                            _bpftool_get_prog_names;
                            return 0
                        ;;
                    esac
                ;;
            esac;
            local PROG_TYPE='id pinned tag name';
            local MAP_TYPE='id pinned name';
            local METRIC_TYPE='cycles instructions l1d_loads llc_misses \
                itlb_misses dtlb_misses';
            case $command in 
                show | list)
                    [[ $prev != "$command" ]] && return 0;
                    COMPREPLY=($( compgen -W "$PROG_TYPE" -- "$cur" ));
                    return 0
                ;;
                dump)
                    case $prev in 
                        $command)
                            COMPREPLY+=($( compgen -W "xlated jited" --                                 "$cur" ));
                            return 0
                        ;;
                        xlated | jited)
                            COMPREPLY=($( compgen -W "$PROG_TYPE" --                                 "$cur" ));
                            return 0
                        ;;
                        *)
                            if _bpftool_search_list 'file'; then
                                return 0;
                            fi;
                            if ! _bpftool_search_list 'linum opcodes visual'; then
                                _bpftool_once_attr 'file';
                            fi;
                            _bpftool_once_attr 'linum opcodes';
                            if _bpftool_search_list 'xlated' && [[ "$json" == 0 ]]; then
                                _bpftool_once_attr 'visual';
                            fi;
                            return 0
                        ;;
                    esac
                ;;
                pin)
                    if [[ $prev == "$command" ]]; then
                        COMPREPLY=($( compgen -W "$PROG_TYPE" -- "$cur" ));
                    else
                        _filedir;
                    fi;
                    return 0
                ;;
                attach | detach)
                    case $cword in 
                        3)
                            COMPREPLY=($( compgen -W "$PROG_TYPE" -- "$cur" ));
                            return 0
                        ;;
                        4)
                            case $prev in 
                                id)
                                    _bpftool_get_prog_ids
                                ;;
                                name)
                                    _bpftool_get_prog_names
                                ;;
                                pinned)
                                    _filedir
                                ;;
                            esac;
                            return 0
                        ;;
                        5)
                            local BPFTOOL_PROG_ATTACH_TYPES='sk_msg_verdict \
                                sk_skb_verdict sk_skb_stream_verdict sk_skb_stream_parser \
                                flow_dissector';
                            COMPREPLY=($( compgen -W "$BPFTOOL_PROG_ATTACH_TYPES" -- "$cur" ));
                            return 0
                        ;;
                        6)
                            COMPREPLY=($( compgen -W "$MAP_TYPE" -- "$cur" ));
                            return 0
                        ;;
                        7)
                            case $prev in 
                                id)
                                    _bpftool_get_map_ids
                                ;;
                                name)
                                    _bpftool_get_map_names
                                ;;
                                pinned)
                                    _filedir
                                ;;
                            esac;
                            return 0
                        ;;
                    esac
                ;;
                load | loadall)
                    local obj;
                    if [[ ${#words[@]} -eq 3 ]]; then
                        COMPREPLY=($( compgen -W "load loadall" -- "$cur" ));
                        return 0;
                    fi;
                    if [[ ${#words[@]} -lt 6 ]]; then
                        _filedir;
                        return 0;
                    fi;
                    obj=${words[3]};
                    if [[ ${words[-4]} == "map" ]]; then
                        COMPREPLY=($( compgen -W "id pinned" -- "$cur" ));
                        return 0;
                    fi;
                    if [[ ${words[-3]} == "map" ]]; then
                        if [[ ${words[-2]} == "idx" ]]; then
                            _bpftool_get_obj_map_idxs $obj;
                        else
                            if [[ ${words[-2]} == "name" ]]; then
                                _bpftool_get_obj_map_names $obj;
                            fi;
                        fi;
                        return 0;
                    fi;
                    if [[ ${words[-2]} == "map" ]]; then
                        COMPREPLY=($( compgen -W "idx name" -- "$cur" ));
                        return 0;
                    fi;
                    case $prev in 
                        type)
                            local BPFTOOL_PROG_LOAD_TYPES='socket kprobe \
                                kretprobe classifier flow_dissector \
                                action tracepoint raw_tracepoint \
                                xdp perf_event cgroup/skb cgroup/sock \
                                cgroup/dev lwt_in lwt_out lwt_xmit \
                                lwt_seg6local sockops sk_skb sk_msg \
                                lirc_mode2 cgroup/bind4 cgroup/bind6 \
                                cgroup/connect4 cgroup/connect6 \
                                cgroup/getpeername4 cgroup/getpeername6 \
                                cgroup/getsockname4 cgroup/getsockname6 \
                                cgroup/sendmsg4 cgroup/sendmsg6 \
                                cgroup/recvmsg4 cgroup/recvmsg6 \
                                cgroup/post_bind4 cgroup/post_bind6 \
                                cgroup/sysctl cgroup/getsockopt \
                                cgroup/setsockopt cgroup/sock_release struct_ops \
                                fentry fexit freplace sk_lookup';
                            COMPREPLY=($( compgen -W "$BPFTOOL_PROG_LOAD_TYPES" -- "$cur" ));
                            return 0
                        ;;
                        id)
                            _bpftool_get_map_ids;
                            return 0
                        ;;
                        name)
                            _bpftool_get_map_names;
                            return 0
                        ;;
                        pinned | pinmaps)
                            _filedir;
                            return 0
                        ;;
                        *)
                            COMPREPLY=($( compgen -W "map" -- "$cur" ));
                            _bpftool_once_attr 'type pinmaps autoattach';
                            _bpftool_one_of_list 'offload_dev xdpmeta_dev';
                            return 0
                        ;;
                    esac
                ;;
                tracelog)
                    return 0
                ;;
                profile)
                    case $cword in 
                        3)
                            COMPREPLY=($( compgen -W "$PROG_TYPE" -- "$cur" ));
                            return 0
                        ;;
                        4)
                            case $prev in 
                                id)
                                    _bpftool_get_prog_ids
                                ;;
                                name)
                                    _bpftool_get_prog_names
                                ;;
                                pinned)
                                    _filedir
                                ;;
                            esac;
                            return 0
                        ;;
                        5)
                            COMPREPLY=($( compgen -W "$METRIC_TYPE duration" -- "$cur" ));
                            return 0
                        ;;
                        6)
                            case $prev in 
                                duration)
                                    return 0
                                ;;
                                *)
                                    COMPREPLY=($( compgen -W "$METRIC_TYPE" -- "$cur" ));
                                    return 0
                                ;;
                            esac;
                            return 0
                        ;;
                        *)
                            COMPREPLY=($( compgen -W "$METRIC_TYPE" -- "$cur" ));
                            return 0
                        ;;
                    esac
                ;;
                run)
                    if [[ ${#words[@]} -eq 4 ]]; then
                        COMPREPLY=($( compgen -W "$PROG_TYPE" -- "$cur" ));
                        return 0;
                    fi;
                    case $prev in 
                        id)
                            _bpftool_get_prog_ids;
                            return 0
                        ;;
                        name)
                            _bpftool_get_prog_names;
                            return 0
                        ;;
                        data_in | data_out | ctx_in | ctx_out)
                            _filedir;
                            return 0
                        ;;
                        repeat | data_size_out | ctx_size_out)
                            return 0
                        ;;
                        *)
                            _bpftool_once_attr 'data_in data_out data_size_out \
                                ctx_in ctx_out ctx_size_out repeat';
                            return 0
                        ;;
                    esac
                ;;
                *)
                    [[ $prev == $object ]] && COMPREPLY=($( compgen -W 'dump help pin attach detach \
                            load loadall show list tracelog run profile' -- "$cur" ))
                ;;
            esac
        ;;
        struct_ops)
            local STRUCT_OPS_TYPE='id name';
            case $command in 
                show | list | dump | unregister)
                    case $prev in 
                        $command)
                            COMPREPLY=($( compgen -W "$STRUCT_OPS_TYPE" -- "$cur" ))
                        ;;
                        id)
                            _bpftool_get_map_ids_for_type struct_ops
                        ;;
                        name)
                            _bpftool_get_map_names_for_type struct_ops
                        ;;
                    esac;
                    return 0
                ;;
                register)
                    _filedir;
                    return 0
                ;;
                *)
                    [[ $prev == $object ]] && COMPREPLY=($( compgen -W 'register unregister show list dump help'                             -- "$cur" ))
                ;;
            esac
        ;;
        iter)
            case $command in 
                pin)
                    case $prev in 
                        $command)
                            _filedir
                        ;;
                        id)
                            _bpftool_get_map_ids
                        ;;
                        name)
                            _bpftool_get_map_names
                        ;;
                        pinned)
                            _filedir
                        ;;
                        *)
                            _bpftool_one_of_list $MAP_TYPE
                        ;;
                    esac;
                    return 0
                ;;
                *)
                    [[ $prev == $object ]] && COMPREPLY=($( compgen -W 'pin help'                             -- "$cur" ))
                ;;
            esac
        ;;
        map)
            local MAP_TYPE='id pinned name';
            case $command in 
                show | list | dump | peek | pop | dequeue | freeze)
                    case $prev in 
                        $command)
                            COMPREPLY=($( compgen -W "$MAP_TYPE" -- "$cur" ));
                            return 0
                        ;;
                        id)
                            case "$command" in 
                                peek)
                                    _bpftool_get_map_ids_for_type stack;
                                    _bpftool_get_map_ids_for_type queue
                                ;;
                                pop)
                                    _bpftool_get_map_ids_for_type stack
                                ;;
                                dequeue)
                                    _bpftool_get_map_ids_for_type queue
                                ;;
                                *)
                                    _bpftool_get_map_ids
                                ;;
                            esac;
                            return 0
                        ;;
                        name)
                            case "$command" in 
                                peek)
                                    _bpftool_get_map_names_for_type stack;
                                    _bpftool_get_map_names_for_type queue
                                ;;
                                pop)
                                    _bpftool_get_map_names_for_type stack
                                ;;
                                dequeue)
                                    _bpftool_get_map_names_for_type queue
                                ;;
                                *)
                                    _bpftool_get_map_names
                                ;;
                            esac;
                            return 0
                        ;;
                        *)
                            return 0
                        ;;
                    esac
                ;;
                create)
                    case $prev in 
                        $command)
                            _filedir;
                            return 0
                        ;;
                        type)
                            local BPFTOOL_MAP_CREATE_TYPES="$(bpftool feature list_builtins map_types 2>/dev/null |                                 grep -v '^unspec$')";
                            COMPREPLY=($( compgen -W "$BPFTOOL_MAP_CREATE_TYPES" -- "$cur" ));
                            return 0
                        ;;
                        key | value | flags | entries)
                            return 0
                        ;;
                        inner_map)
                            COMPREPLY=($( compgen -W "$MAP_TYPE" -- "$cur" ));
                            return 0
                        ;;
                        id)
                            _bpftool_get_map_ids
                        ;;
                        name)
                            case $pprev in 
                                inner_map)
                                    _bpftool_get_map_names
                                ;;
                                *)
                                    return 0
                                ;;
                            esac
                        ;;
                        *)
                            _bpftool_once_attr 'type key value entries name flags offload_dev';
                            if _bpftool_search_list 'array_of_maps' 'hash_of_maps'; then
                                _bpftool_once_attr 'inner_map';
                            fi;
                            return 0
                        ;;
                    esac
                ;;
                lookup | getnext | delete)
                    case $prev in 
                        $command)
                            COMPREPLY=($( compgen -W "$MAP_TYPE" -- "$cur" ));
                            return 0
                        ;;
                        id)
                            _bpftool_get_map_ids;
                            return 0
                        ;;
                        name)
                            _bpftool_get_map_names;
                            return 0
                        ;;
                        key)
                            COMPREPLY+=($( compgen -W 'hex' -- "$cur" ))
                        ;;
                        *)
                            case $(_bpftool_map_guess_map_type) in 
                                queue | stack)
                                    return 0
                                ;;
                            esac;
                            _bpftool_once_attr 'key';
                            return 0
                        ;;
                    esac
                ;;
                update | push | enqueue)
                    case $prev in 
                        $command)
                            COMPREPLY=($( compgen -W "$MAP_TYPE" -- "$cur" ));
                            return 0
                        ;;
                        id)
                            _bpftool_map_update_get_id $command;
                            return 0
                        ;;
                        name)
                            _bpftool_map_update_get_name $command;
                            return 0
                        ;;
                        key)
                            COMPREPLY+=($( compgen -W 'hex' -- "$cur" ))
                        ;;
                        value)
                            case "$(_bpftool_map_guess_map_type)" in 
                                array_of_maps | hash_of_maps)
                                    local MAP_TYPE='id pinned name';
                                    COMPREPLY+=($( compgen -W "$MAP_TYPE"                                         -- "$cur" ));
                                    return 0
                                ;;
                                prog_array)
                                    local PROG_TYPE='id pinned tag name';
                                    COMPREPLY+=($( compgen -W "$PROG_TYPE"                                         -- "$cur" ));
                                    return 0
                                ;;
                                *)
                                    COMPREPLY+=($( compgen -W 'hex'                                         -- "$cur" ));
                                    return 0
                                ;;
                            esac;
                            return 0
                        ;;
                        *)
                            case $(_bpftool_map_guess_map_type) in 
                                queue | stack)
                                    _bpftool_once_attr 'value';
                                    return 0
                                ;;
                            esac;
                            _bpftool_once_attr 'key';
                            local UPDATE_FLAGS='any exist noexist';
                            for ((idx=3; idx < ${#words[@]}-1; idx++ ))
                            do
                                if [[ ${words[idx]} == 'value' ]]; then
                                    _bpftool_one_of_list "$UPDATE_FLAGS";
                                    return 0;
                                fi;
                            done;
                            for ((idx=3; idx < ${#words[@]}-1; idx++ ))
                            do
                                if [[ ${words[idx]} == 'key' ]]; then
                                    _bpftool_once_attr 'value';
                                    return 0;
                                fi;
                            done;
                            return 0
                        ;;
                    esac
                ;;
                pin)
                    case $prev in 
                        $command)
                            COMPREPLY=($( compgen -W "$MAP_TYPE" -- "$cur" ))
                        ;;
                        id)
                            _bpftool_get_map_ids
                        ;;
                        name)
                            _bpftool_get_map_names
                        ;;
                    esac;
                    return 0
                ;;
                event_pipe)
                    case $prev in 
                        $command)
                            COMPREPLY=($( compgen -W "$MAP_TYPE" -- "$cur" ));
                            return 0
                        ;;
                        id)
                            _bpftool_get_map_ids_for_type perf_event_array;
                            return 0
                        ;;
                        name)
                            _bpftool_get_map_names_for_type perf_event_array;
                            return 0
                        ;;
                        cpu)
                            return 0
                        ;;
                        index)
                            return 0
                        ;;
                        *)
                            _bpftool_once_attr 'cpu index';
                            return 0
                        ;;
                    esac
                ;;
                *)
                    [[ $prev == $object ]] && COMPREPLY=($( compgen -W 'delete dump getnext help \
                            lookup pin event_pipe show list update create \
                            peek push enqueue pop dequeue freeze' --                             "$cur" ))
                ;;
            esac
        ;;
        btf)
            local PROG_TYPE='id pinned tag name';
            local MAP_TYPE='id pinned name';
            case $command in 
                dump)
                    case $prev in 
                        $command)
                            COMPREPLY+=($( compgen -W "id map prog file" --                                 "$cur" ));
                            return 0
                        ;;
                        prog)
                            COMPREPLY=($( compgen -W "$PROG_TYPE" -- "$cur" ));
                            return 0
                        ;;
                        map)
                            COMPREPLY=($( compgen -W "$MAP_TYPE" -- "$cur" ));
                            return 0
                        ;;
                        id)
                            case $pprev in 
                                prog)
                                    _bpftool_get_prog_ids
                                ;;
                                map)
                                    _bpftool_get_map_ids
                                ;;
                                $command)
                                    _bpftool_get_btf_ids
                                ;;
                            esac;
                            return 0
                        ;;
                        name)
                            case $pprev in 
                                prog)
                                    _bpftool_get_prog_names
                                ;;
                                map)
                                    _bpftool_get_map_names
                                ;;
                            esac;
                            return 0
                        ;;
                        format)
                            COMPREPLY=($( compgen -W "c raw" -- "$cur" ))
                        ;;
                        *)
                            case ${words[3]} in 
                                id | file)
                                    _bpftool_once_attr 'format'
                                ;;
                                map | prog)
                                    if [[ ${words[3]} == "map" ]] && [[ $cword == 6 ]]; then
                                        COMPREPLY+=($( compgen -W "key value kv all" -- "$cur" ));
                                    fi;
                                    _bpftool_once_attr 'format'
                                ;;
                                *)

                                ;;
                            esac;
                            return 0
                        ;;
                    esac
                ;;
                show | list)
                    case $prev in 
                        $command)
                            COMPREPLY+=($( compgen -W "id" -- "$cur" ))
                        ;;
                        id)
                            _bpftool_get_btf_ids
                        ;;
                    esac;
                    return 0
                ;;
                *)
                    [[ $prev == $object ]] && COMPREPLY=($( compgen -W 'dump help show list'                             -- "$cur" ))
                ;;
            esac
        ;;
        gen)
            case $command in 
                object)
                    _filedir;
                    return 0
                ;;
                skeleton)
                    case $prev in 
                        $command)
                            _filedir;
                            return 0
                        ;;
                        *)
                            _bpftool_once_attr 'name';
                            return 0
                        ;;
                    esac
                ;;
                subskeleton)
                    case $prev in 
                        $command)
                            _filedir;
                            return 0
                        ;;
                        *)
                            _bpftool_once_attr 'name';
                            return 0
                        ;;
                    esac
                ;;
                min_core_btf)
                    _filedir;
                    return 0
                ;;
                *)
                    [[ $prev == $object ]] && COMPREPLY=($( compgen -W 'object skeleton subskeleton help min_core_btf' -- "$cur" ))
                ;;
            esac
        ;;
        cgroup)
            case $command in 
                show | list | tree)
                    case $cword in 
                        3)
                            _filedir
                        ;;
                        4)
                            COMPREPLY=($( compgen -W 'effective' -- "$cur" ))
                        ;;
                    esac;
                    return 0
                ;;
                attach | detach)
                    local BPFTOOL_CGROUP_ATTACH_TYPES="$(bpftool feature list_builtins attach_types 2>/dev/null |                         grep '^cgroup_')";
                    local ATTACH_FLAGS='multi override';
                    local PROG_TYPE='id pinned tag name';
                    if [ $prev = $command ]; then
                        _filedir;
                        return 0;
                    else
                        if [[ $BPFTOOL_CGROUP_ATTACH_TYPES =~ $prev ]]; then
                            COMPREPLY=($( compgen -W "$PROG_TYPE" --                                 "$cur" ));
                            return 0;
                        fi;
                    fi;
                    case $prev in 
                        id)
                            _bpftool_get_prog_ids;
                            return 0
                        ;;
                        *)
                            if ! _bpftool_search_list "$BPFTOOL_CGROUP_ATTACH_TYPES"; then
                                COMPREPLY=($( compgen -W                                     "$BPFTOOL_CGROUP_ATTACH_TYPES" -- "$cur" ));
                            else
                                if [[ "$command" == "attach" ]]; then
                                    _bpftool_one_of_list "$ATTACH_FLAGS";
                                fi;
                            fi;
                            return 0
                        ;;
                    esac
                ;;
                *)
                    [[ $prev == $object ]] && COMPREPLY=($( compgen -W 'help attach detach \
                            show list tree' -- "$cur" ))
                ;;
            esac
        ;;
        perf)
            case $command in 
                *)
                    [[ $prev == $object ]] && COMPREPLY=($( compgen -W 'help \
                            show list' -- "$cur" ))
                ;;
            esac
        ;;
        net)
            local PROG_TYPE='id pinned tag name';
            local ATTACH_TYPES='xdp xdpgeneric xdpdrv xdpoffload';
            case $command in 
                show | list)
                    [[ $prev != "$command" ]] && return 0;
                    COMPREPLY=($( compgen -W 'dev' -- "$cur" ));
                    return 0
                ;;
                attach)
                    case $cword in 
                        3)
                            COMPREPLY=($( compgen -W "$ATTACH_TYPES" -- "$cur" ));
                            return 0
                        ;;
                        4)
                            COMPREPLY=($( compgen -W "$PROG_TYPE" -- "$cur" ));
                            return 0
                        ;;
                        5)
                            case $prev in 
                                id)
                                    _bpftool_get_prog_ids
                                ;;
                                name)
                                    _bpftool_get_prog_names
                                ;;
                                pinned)
                                    _filedir
                                ;;
                            esac;
                            return 0
                        ;;
                        6)
                            COMPREPLY=($( compgen -W 'dev' -- "$cur" ));
                            return 0
                        ;;
                        8)
                            _bpftool_once_attr 'overwrite';
                            return 0
                        ;;
                    esac
                ;;
                detach)
                    case $cword in 
                        3)
                            COMPREPLY=($( compgen -W "$ATTACH_TYPES" -- "$cur" ));
                            return 0
                        ;;
                        4)
                            COMPREPLY=($( compgen -W 'dev' -- "$cur" ));
                            return 0
                        ;;
                    esac
                ;;
                *)
                    [[ $prev == $object ]] && COMPREPLY=($( compgen -W 'help \
                            show list attach detach' -- "$cur" ))
                ;;
            esac
        ;;
        feature)
            case $command in 
                probe)
                    [[ $prev == "prefix" ]] && return 0;
                    if _bpftool_search_list 'macros'; then
                        _bpftool_once_attr 'prefix';
                    else
                        COMPREPLY+=($( compgen -W 'macros' -- "$cur" ));
                    fi;
                    _bpftool_one_of_list 'kernel dev';
                    _bpftool_once_attr 'full unprivileged';
                    return 0
                ;;
                list_builtins)
                    [[ $prev != "$command" ]] && return 0;
                    COMPREPLY=($( compgen -W 'prog_types map_types \
                        attach_types link_types helpers' -- "$cur" ))
                ;;
                *)
                    [[ $prev == $object ]] && COMPREPLY=($( compgen -W 'help list_builtins probe' -- "$cur" ))
                ;;
            esac
        ;;
        link)
            case $command in 
                show | list | pin | detach)
                    case $prev in 
                        id)
                            _bpftool_get_link_ids;
                            return 0
                        ;;
                    esac
                ;;
            esac;
            local LINK_TYPE='id pinned';
            case $command in 
                show | list)
                    [[ $prev != "$command" ]] && return 0;
                    COMPREPLY=($( compgen -W "$LINK_TYPE" -- "$cur" ));
                    return 0
                ;;
                pin | detach)
                    if [[ $prev == "$command" ]]; then
                        COMPREPLY=($( compgen -W "$LINK_TYPE" -- "$cur" ));
                    else
                        _filedir;
                    fi;
                    return 0
                ;;
                *)
                    [[ $prev == $object ]] && COMPREPLY=($( compgen -W 'help pin show list' -- "$cur" ))
                ;;
            esac
        ;;
    esac
}

_bpftool_get_btf_ids () 
{ 
    COMPREPLY+=($( compgen -W "$( bpftool -jp btf 2>&1 |         command sed -n 's/.*"id": \(.*\),$/\1/p' )" -- "$cur" ))
}

_bpftool_get_link_ids () 
{ 
    COMPREPLY+=($( compgen -W "$( bpftool -jp link 2>&1 |         command sed -n 's/.*"id": \(.*\),$/\1/p' )" -- "$cur" ))
}

_bpftool_get_map_ids () 
{ 
    COMPREPLY+=($( compgen -W "$( bpftool -jp map  2>&1 |         command sed -n 's/.*"id": \(.*\),$/\1/p' )" -- "$cur" ))
}

_bpftool_get_map_ids_for_type () 
{ 
    local type="$1";
    COMPREPLY+=($( compgen -W "$( bpftool -jp map  2>&1 |         command grep -C2 "$type" |         command sed -n 's/.*"id": \(.*\),$/\1/p' )" -- "$cur" ))
}

_bpftool_get_map_names () 
{ 
    COMPREPLY+=($( compgen -W "$( bpftool -jp map  2>&1 |         command sed -n 's/.*"name": \(.*\),$/\1/p' )" -- "$cur" ))
}

_bpftool_get_map_names_for_type () 
{ 
    local type="$1";
    COMPREPLY+=($( compgen -W "$( bpftool -jp map  2>&1 |         command grep -C2 "$type" |         command sed -n 's/.*"name": \(.*\),$/\1/p' )" -- "$cur" ))
}

_bpftool_get_obj_map_idxs () 
{ 
    local obj;
    obj=$1;
    nmaps=$(objdump -j maps -t $obj 2>/dev/null | grep -c 'g     . maps');
    COMPREPLY+=($( compgen -W "$(seq 0 $((nmaps - 1)))" -- "$cur" ))
}

_bpftool_get_obj_map_names () 
{ 
    local obj;
    obj=$1;
    maps=$(objdump -j maps -t $obj 2>/dev/null |         command awk '/g     . maps/ {print $NF}');
    COMPREPLY+=($( compgen -W "$maps" -- "$cur" ))
}

_bpftool_get_prog_ids () 
{ 
    COMPREPLY+=($( compgen -W "$( bpftool -jp prog 2>&1 |         command sed -n 's/.*"id": \(.*\),$/\1/p' )" -- "$cur" ))
}

_bpftool_get_prog_names () 
{ 
    COMPREPLY+=($( compgen -W "$( bpftool -jp prog 2>&1 |         command sed -n 's/.*"name": "\(.*\)",$/\1/p' )" -- "$cur" ))
}

_bpftool_get_prog_tags () 
{ 
    COMPREPLY+=($( compgen -W "$( bpftool -jp prog 2>&1 |         command sed -n 's/.*"tag": "\(.*\)",$/\1/p' )" -- "$cur" ))
}

_bpftool_map_guess_map_type () 
{ 
    local keyword ref;
    for ((idx=3; idx < ${#words[@]}-1; idx++ ))
    do
        case "${words[$((idx-2))]}" in 
            lookup | update)
                keyword=${words[$((idx-1))]};
                ref=${words[$((idx))]}
            ;;
            push)
                printf "stack";
                return 0
            ;;
            enqueue)
                printf "queue";
                return 0
            ;;
        esac;
    done;
    [[ -z $ref ]] && return 0;
    local type;
    type=$(bpftool -jp map show $keyword $ref |         command sed -n 's/.*"type": "\(.*\)",$/\1/p');
    [[ -n $type ]] && printf $type
}

_bpftool_map_update_get_id () 
{ 
    local command="$1";
    local idx value;
    for ((idx=7; idx < ${#words[@]}-1; idx++ ))
    do
        if [[ ${words[idx]} == "value" ]]; then
            value=1;
            break;
        fi;
    done;
    if [[ $value -eq 0 ]]; then
        case "$command" in 
            push)
                _bpftool_get_map_ids_for_type stack
            ;;
            enqueue)
                _bpftool_get_map_ids_for_type queue
            ;;
            *)
                _bpftool_get_map_ids
            ;;
        esac;
        return 0;
    fi;
    local type=$(_bpftool_map_guess_map_type);
    case $type in 
        array_of_maps | hash_of_maps)
            _bpftool_get_map_ids;
            return 0
        ;;
        prog_array)
            _bpftool_get_prog_ids;
            return 0
        ;;
        *)
            return 0
        ;;
    esac
}

_bpftool_map_update_get_name () 
{ 
    local command="$1";
    local idx value;
    for ((idx=7; idx < ${#words[@]}-1; idx++ ))
    do
        if [[ ${words[idx]} == "value" ]]; then
            value=1;
            break;
        fi;
    done;
    if [[ $value -eq 0 ]]; then
        case "$command" in 
            push)
                _bpftool_get_map_names_for_type stack
            ;;
            enqueue)
                _bpftool_get_map_names_for_type queue
            ;;
            *)
                _bpftool_get_map_names
            ;;
        esac;
        return 0;
    fi;
    local type=$(_bpftool_map_guess_map_type);
    case $type in 
        array_of_maps | hash_of_maps)
            _bpftool_get_map_names;
            return 0
        ;;
        prog_array)
            _bpftool_get_prog_names;
            return 0
        ;;
        *)
            return 0
        ;;
    esac
}

_bpftool_once_attr () 
{ 
    local w idx found;
    for w in $*;
    do
        found=0;
        for ((idx=3; idx < ${#words[@]}-1; idx++ ))
        do
            if [[ $w == ${words[idx]} ]]; then
                found=1;
                break;
            fi;
        done;
        [[ $found -eq 0 ]] && COMPREPLY+=($( compgen -W "$w" -- "$cur" ));
    done
}

_bpftool_one_of_list () 
{ 
    _bpftool_search_list $* && return 1;
    COMPREPLY+=($( compgen -W "$*" -- "$cur" ))
}

_bpftool_search_list () 
{ 
    local w idx;
    for w in $*;
    do
        for ((idx=3; idx < ${#words[@]}-1; idx++ ))
        do
            [[ $w == ${words[idx]} ]] && return 0;
        done;
    done;
    return 1
}

_cd () 
{ 
    local cur prev words cword;
    _init_completion || return;
    local IFS='
' i j k;
    compopt -o filenames;
    if [[ -z ${CDPATH:-} || $cur == ?(.)?(.)/* ]]; then
        _filedir -d;
        return;
    fi;
    local -r mark_dirs=$(_rl_enabled mark-directories && echo y);
    local -r mark_symdirs=$(_rl_enabled mark-symlinked-directories && echo y);
    for i in ${CDPATH//:/'
'};
    do
        k="${#COMPREPLY[@]}";
        for j in $(compgen -d -- $i/$cur);
        do
            if [[ ( -n $mark_symdirs && -L $j || -n $mark_dirs && ! -L $j ) && ! -d ${j#$i/} ]]; then
                j+="/";
            fi;
            COMPREPLY[k++]=${j#$i/};
        done;
    done;
    _filedir -d;
    if ((${#COMPREPLY[@]} == 1)); then
        i=${COMPREPLY[0]};
        if [[ $i == "$cur" && $i != "*/" ]]; then
            COMPREPLY[0]="${i}/";
        fi;
    fi;
    return
}

_cd_devices () 
{ 
    COMPREPLY+=($(compgen -f -d -X "!*/?([amrs])cd*" -- "${cur:-/dev/}"))
}

_ceph () 
{ 
    local options_noarg="-h --help -s --status -w --watch --watch-debug --watch-info --watch-sec --watch-warn --watch-error --version -v --verbose --concise";
    local options_arg="-c --conf -i --in-file -o --out-file --id --user -n --name --cluster --admin-daemon --admin-socket -f --format --connect-timeout";
    local cnt=${#COMP_WORDS[@]};
    local cur=${COMP_WORDS[COMP_CWORD]};
    local prev=${COMP_WORDS[COMP_CWORD-1]};
    if [[ " -c --conf -i --in-file -o --out-file " =~ " ${prev} " ]]; then
        compopt -o default;
        COMPREPLY=();
        return 0;
    fi;
    if [[ "${cur:0:1}" == "-" ]]; then
        COMPREPLY=($(compgen -W "${options_noarg} ${options_arg}" -- $cur));
        return 0;
    fi;
    declare -a hint_args;
    for ((i=1 ; i<cnt ; i++ ))
    do
        if [[ " ${options_noarg} " =~ " ${COMP_WORDS[i]} " ]]; then
            continue;
        fi;
        if [[ " ${options_arg} " =~ " ${COMP_WORDS[i]} " ]]; then
            ((i++));
            continue;
        fi;
        hint_args[$((i-1))]="${COMP_WORDS[i]}";
    done;
    local IFS='
';
    COMPREPLY=($(${COMP_WORDS[0]} --completion "${hint_args[@]}" 2>/dev/null))
}

_command () 
{ 
    local offset i;
    offset=1;
    for ((i = 1; i <= COMP_CWORD; i++))
    do
        if [[ ${COMP_WORDS[i]} != -* ]]; then
            offset=$i;
            break;
        fi;
    done;
    _command_offset $offset
}

_command_offset () 
{ 
    local word_offset=$1 i j;
    for ((i = 0; i < word_offset; i++))
    do
        for ((j = 0; j <= ${#COMP_LINE}; j++))
        do
            [[ $COMP_LINE == "${COMP_WORDS[i]}"* ]] && break;
            COMP_LINE=${COMP_LINE:1};
            ((COMP_POINT--));
        done;
        COMP_LINE=${COMP_LINE#"${COMP_WORDS[i]}"};
        ((COMP_POINT -= ${#COMP_WORDS[i]}));
    done;
    for ((i = 0; i <= COMP_CWORD - word_offset; i++))
    do
        COMP_WORDS[i]=${COMP_WORDS[i + word_offset]};
    done;
    for ((i; i <= COMP_CWORD; i++))
    do
        unset 'COMP_WORDS[i]';
    done;
    ((COMP_CWORD -= word_offset));
    COMPREPLY=();
    local cur;
    _get_comp_words_by_ref cur;
    if ((COMP_CWORD == 0)); then
        local IFS='
';
        compopt -o filenames;
        COMPREPLY=($(compgen -d -c -- "$cur"));
    else
        local cmd=${COMP_WORDS[0]} compcmd=${COMP_WORDS[0]};
        local cspec=$(complete -p $cmd 2>/dev/null);
        if [[ ! -n $cspec && $cmd == */* ]]; then
            cspec=$(complete -p ${cmd##*/} 2>/dev/null);
            [[ -n $cspec ]] && compcmd=${cmd##*/};
        fi;
        if [[ ! -n $cspec ]]; then
            compcmd=${cmd##*/};
            _completion_loader $compcmd;
            cspec=$(complete -p $compcmd 2>/dev/null);
        fi;
        if [[ -n $cspec ]]; then
            if [[ ${cspec#* -F } != "$cspec" ]]; then
                local func=${cspec#*-F };
                func=${func%% *};
                if ((${#COMP_WORDS[@]} >= 2)); then
                    $func $cmd "${COMP_WORDS[-1]}" "${COMP_WORDS[-2]}";
                else
                    $func $cmd "${COMP_WORDS[-1]}";
                fi;
                local opt;
                while [[ $cspec == *" -o "* ]]; do
                    cspec=${cspec#*-o };
                    opt=${cspec%% *};
                    compopt -o $opt;
                    cspec=${cspec#$opt};
                done;
            else
                cspec=${cspec#complete};
                cspec=${cspec%%$compcmd};
                COMPREPLY=($(eval compgen "$cspec" -- '$cur'));
            fi;
        else
            if ((${#COMPREPLY[@]} == 0)); then
                _minimal;
            fi;
        fi;
    fi
}

_comp_iprconfig () 
{ 
    iprconfig="${COMP_WORDS[0]}";
    cur="${COMP_WORDS[COMP_CWORD]}";
    prev="${COMP_WORDS[COMP_CWORD-1]}";
    case "${prev}" in 
        "-c")
            opts=$(${iprconfig} -l 2>/dev/null);
            COMPREPLY=($(compgen -W "${opts}" -- ${cur}))
        ;;
        "-k")
            COMPREPLY=($(compgen -o dirnames -- ${cur}))
        ;;
        *)
            opts=$(find /dev -printf "%f\n" | grep -G "^\(sd\|sg\)");
            COMPREPLY=($(compgen -W "${opts}" -- ${cur}))
        ;;
    esac;
    return 0
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

_complete_as_root () 
{ 
    [[ $EUID -eq 0 || -n ${root_command:-} ]]
}

_completion_loader () 
{ 
    local cmd="${1:-_EmptycmD_}";
    __load_completion "$cmd" && return 124;
    complete -F _minimal -- "$cmd" && return 124
}

_config_sections () 
{ 
    if [[ -z "${SPACK_CONFIG_SECTIONS:-}" ]]; then
        SPACK_CONFIG_SECTIONS="$(spack config list)";
    fi;
    SPACK_COMPREPLY="$SPACK_CONFIG_SECTIONS"
}

_configured_interfaces () 
{ 
    if [[ -f /etc/debian_version ]]; then
        COMPREPLY=($(compgen -W "$(command sed -ne 's|^iface \([^ ]\{1,\}\).*$|\1|p'             /etc/network/interfaces /etc/network/interfaces.d/* 2>/dev/null)"             -- "$cur"));
    else
        if [[ -f /etc/SuSE-release ]]; then
            COMPREPLY=($(compgen -W "$(printf '%s\n'             /etc/sysconfig/network/ifcfg-* |
            command sed -ne 's|.*ifcfg-\([^*].*\)$|\1|p')" -- "$cur"));
        else
            if [[ -f /etc/pld-release ]]; then
                COMPREPLY=($(compgen -W "$(command ls -B             /etc/sysconfig/interfaces |
            command sed -ne 's|.*ifcfg-\([^*].*\)$|\1|p')" -- "$cur"));
            else
                COMPREPLY=($(compgen -W "$(printf '%s\n'             /etc/sysconfig/network-scripts/ifcfg-* |
            command sed -ne 's|.*ifcfg-\([^*].*\)$|\1|p')" -- "$cur"));
            fi;
        fi;
    fi
}

_count_args () 
{ 
    local i cword words;
    __reassemble_comp_words_by_ref "${1-}" words cword;
    args=1;
    for ((i = 1; i < cword; i++))
    do
        if [[ ${words[i]} != -* && ${words[i - 1]} != ${2-} || ${words[i]} == ${3-} ]]; then
            ((args++));
        fi;
    done
}

_cvmfs_config () 
{ 
    local cur prev opts;
    COMPREPLY=();
    cur="${COMP_WORDS[COMP_CWORD]}";
    prev="${COMP_WORDS[COMP_CWORD-1]}";
    local -r cmds="setup chksetup showconfig stat status probe reload umount bugreport";
    case "${prev}" in 
        setup)
            COMPREPLY=($(compgen -W "nouser nocfgmod" ${cur}));
            return 0
        ;;
        showconfig)
            COMPREPLY=($(compgen -W "$(__local_repos)" ${cur}));
            return 0
        ;;
        stat)
            case "${cur}" in 
                -*)
                    COMPREPLY=($(compgen -W "-v" ${cur}));
                    return 0
                ;;
                *)
                    COMPREPLY=($(compgen -W "$(__local_repos)" ${cur} ));
                    return 0
                ;;
            esac
        ;;
        reload)
            case "${cur}" in 
                -*)
                    COMPREPLY=($(compgen -W "-c" ${cur}));
                    return 0
                ;;
                *)
                    COMPREPLY=($(compgen -W "$(__local_repos)" ${cur}));
                    return 0
                ;;
            esac
        ;;
    esac;
    COMPREPLY=($(compgen -W "${cmds}" -- ${cur}));
    return 0
}

_cvmfs_server () 
{ 
    local cur cmd;
    COMPREPLY=();
    cur="${COMP_WORDS[COMP_CWORD]}";
    prev_idx=$(( $COMP_CWORD - 1));
    prev="${COMP_WORDS[$prev_idx]}";
    cmd="${COMP_WORDS[1]}";
    local -r cmds="mkfs add-replica import publish rollback rmfs     resign list info tag check transaction abort snapshot migrate     list-catalogs update-info update-repoinfo mount";
    if [ $COMP_CWORD -le 1 ]; then
        COMPREPLY=($(compgen -W "${cmds}" -- ${cur}));
        return 0;
    fi;
    case "${cmd}" in 
        publish)
            COMPREPLY=($(compgen -W "$(__hosted_repos '/stratum0/ && /transaction/')" ${cur}));
            return 0
        ;;
        abort)
            COMPREPLY=($(compgen -W "$(__hosted_repos '/stratum0/ && /transaction/')" ${cur}));
            return 0
        ;;
        rollback)
            COMPREPLY=($(compgen -W "$(__hosted_repos '/stratum0/')" ${cur}));
            return 0
        ;;
        resign)
            COMPREPLY=($(compgen -W "$(__hosted_repos '/stratum0/')" ${cur}));
            return 0
        ;;
        tag)
            case "$prev" in 
                -a | -r | -i)
                    COMPREPLY=($(compgen -W "$(__tags)" ${cur}))
                ;;
                *)
                    COMPREPLY=($(compgen -W "$(__hosted_repos '/stratum0/')" ${cur}));
                    return 0
                ;;
            esac
        ;;
        transaction)
            COMPREPLY=($(compgen -W "$(__hosted_repos '/stratum0/ && !/transaction/')" ${cur}));
            return 0
        ;;
        migrate)
            COMPREPLY=($(compgen -W "$(__hosted_repos '/INCOMPATIBLE/')" ${cur}));
            return 0
        ;;
        snapshot)
            COMPREPLY=($(compgen -W "$(__hosted_repos '/stratum1/')" ${cur}));
            return 0
        ;;
        rmfs)
            COMPREPLY=($(compgen -W "$(__hosted_repos)" ${cur}));
            return 0
        ;;
        alterfs)
            COMPREPLY=($(compgen -W "$(__hosted_repos)" ${cur}));
            return 0
        ;;
        info)
            COMPREPLY=($(compgen -W "$(__hosted_repos)" ${cur}));
            return 0
        ;;
        list-catalogs)
            COMPREPLY=($(compgen -W "$(__hosted_repos)" ${cur}));
            return 0
        ;;
        check)
            COMPREPLY=($(compgen -W "$(__hosted_repos)" ${cur}));
            return 0
        ;;
        gc)
            COMPREPLY=($(compgen -W "$(__hosted_repos)" ${cur}));
            return 0
        ;;
        update-repoinfo)
            COMPREPLY=($(compgen -W "$(__hosted_repos '/stratum0/')" ${cur}));
            return 0
        ;;
        mount)
            COMPREPLY=($(compgen -W "$(__hosted_repos '/stratum0/')" ${cur}));
            return 0
        ;;
    esac
}

_delta () 
{ 
    local i cur prev opts cmd;
    COMPREPLY=();
    cur="${COMP_WORDS[COMP_CWORD]}";
    prev="${COMP_WORDS[COMP_CWORD-1]}";
    cmd="";
    opts="";
    for i in ${COMP_WORDS[@]};
    do
        case "${cmd},${i}" in 
            ",$1")
                cmd="delta"
            ;;
            *)

            ;;
        esac;
    done;
    case "${cmd}" in 
        delta)
            opts="-n -s -w -h -V --blame-code-style --blame-format --blame-palette --blame-separator-format --blame-separator-style --blame-timestamp-format --blame-timestamp-output-format --color-only --config --commit-decoration-style --commit-regex --commit-style --dark --default-language --diff-highlight --diff-so-fancy --diff-stat-align-width --features --file-added-label --file-copied-label --file-decoration-style --file-modified-label --file-removed-label --file-renamed-label --file-style --file-transformation --generate-completion --grep-context-line-style --grep-file-style --grep-header-decoration-style --grep-header-file-style --grep-line-number-style --grep-output-type --grep-match-line-style --grep-match-word-style --grep-separator-symbol --hunk-header-decoration-style --hunk-header-file-style --hunk-header-line-number-style --hunk-header-style --hunk-label --hyperlinks --hyperlinks-commit-link-format --hyperlinks-file-link-format --inline-hint-style --inspect-raw-lines --keep-plus-minus-markers --light --line-buffer-size --line-fill-method --line-numbers --line-numbers-left-format --line-numbers-left-style --line-numbers-minus-style --line-numbers-plus-style --line-numbers-right-format --line-numbers-right-style --line-numbers-zero-style --list-languages --list-syntax-themes --map-styles --max-line-distance --max-line-length --merge-conflict-begin-symbol --merge-conflict-end-symbol --merge-conflict-ours-diff-header-decoration-style --merge-conflict-ours-diff-header-style --merge-conflict-theirs-diff-header-decoration-style --merge-conflict-theirs-diff-header-style --minus-empty-line-marker-style --minus-emph-style --minus-non-emph-style --minus-style --navigate --navigate-regex --no-gitconfig --pager --paging --parse-ansi --plus-emph-style --plus-empty-line-marker-style --plus-non-emph-style --plus-style --raw --relative-paths --right-arrow --show-colors --show-config --show-syntax-themes --show-themes --side-by-side --syntax-theme --tabs --true-color --whitespace-error-style --width --word-diff-regex --wrap-left-symbol --wrap-max-lines --wrap-right-percent --wrap-right-prefix-symbol --wrap-right-symbol --zero-style --24-bit-color --help --version [MINUS_FILE] [PLUS_FILE]";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 1 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                --blame-code-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --blame-format)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --blame-palette)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --blame-separator-format)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --blame-separator-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --blame-timestamp-format)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --blame-timestamp-output-format)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --config)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --commit-decoration-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --commit-regex)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --commit-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --default-language)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --diff-stat-align-width)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --features)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --file-added-label)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --file-copied-label)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --file-decoration-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --file-modified-label)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --file-removed-label)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --file-renamed-label)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --file-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --file-transformation)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --generate-completion)
                    COMPREPLY=($(compgen -W "bash elvish fish powershell zsh" -- "${cur}"));
                    return 0
                ;;
                --grep-context-line-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --grep-file-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --grep-header-decoration-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --grep-header-file-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --grep-line-number-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --grep-output-type)
                    COMPREPLY=($(compgen -W "ripgrep classic" -- "${cur}"));
                    return 0
                ;;
                --grep-match-line-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --grep-match-word-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --grep-separator-symbol)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --hunk-header-decoration-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --hunk-header-file-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --hunk-header-line-number-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --hunk-header-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --hunk-label)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --hyperlinks-commit-link-format)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --hyperlinks-file-link-format)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --inline-hint-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --inspect-raw-lines)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"));
                    return 0
                ;;
                --line-buffer-size)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --line-fill-method)
                    COMPREPLY=($(compgen -W "ansi spaces" -- "${cur}"));
                    return 0
                ;;
                --line-numbers-left-format)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --line-numbers-left-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --line-numbers-minus-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --line-numbers-plus-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --line-numbers-right-format)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --line-numbers-right-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --line-numbers-zero-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --map-styles)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --max-line-distance)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --max-line-length)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --merge-conflict-begin-symbol)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --merge-conflict-end-symbol)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --merge-conflict-ours-diff-header-decoration-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --merge-conflict-ours-diff-header-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --merge-conflict-theirs-diff-header-decoration-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --merge-conflict-theirs-diff-header-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --minus-empty-line-marker-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --minus-emph-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --minus-non-emph-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --minus-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --navigate-regex)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --pager)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --paging)
                    COMPREPLY=($(compgen -W "auto always never" -- "${cur}"));
                    return 0
                ;;
                --plus-emph-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --plus-empty-line-marker-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --plus-non-emph-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --plus-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --right-arrow)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --syntax-theme)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --tabs)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --true-color)
                    COMPREPLY=($(compgen -W "auto always never" -- "${cur}"));
                    return 0
                ;;
                --whitespace-error-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --width)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -w)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --word-diff-regex)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --wrap-left-symbol)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --wrap-max-lines)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --wrap-right-percent)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --wrap-right-prefix-symbol)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --wrap-right-symbol)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --zero-style)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --24-bit-color)
                    COMPREPLY=($(compgen -W "auto always never" -- "${cur}"));
                    return 0
                ;;
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
    esac
}

_dust () 
{ 
    local i cur prev opts cmd;
    COMPREPLY=();
    cur="${COMP_WORDS[COMP_CWORD]}";
    prev="${COMP_WORDS[COMP_CWORD-1]}";
    cmd="";
    opts="";
    for i in ${COMP_WORDS[@]};
    do
        case "${cmd},${i}" in 
            ",$1")
                cmd="dust"
            ;;
            *)

            ;;
        esac;
    done;
    case "${cmd}" in 
        dust)
            opts="-d -T -n -p -X -I -L -x -s -r -c -C -b -B -z -R -f -i -v -e -t -w -P -D -F -o -S -j -M -A -y -m -h -V --depth --threads --config --number-of-lines --full-paths --ignore-directory --ignore-all-in-file --dereference-links --limit-filesystem --apparent-size --reverse --no-colors --force-colors --no-percent-bars --bars-on-right --min-size --screen-reader --skip-total --filecount --ignore_hidden --invert-filter --filter --file_types --terminal_width --no-progress --print-errors --only-dir --only-file --output-format --stack-size --output-json --mtime --atime --ctime --files0-from --collapse --filetime --help --version [PATH]...";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 1 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                --depth)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -d)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --threads)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -T)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --config)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                --number-of-lines)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -n)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --ignore-directory)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -X)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --ignore-all-in-file)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                -I)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                --min-size)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -z)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --invert-filter)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -v)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --filter)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -e)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --terminal_width)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -w)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --output-format)
                    COMPREPLY=($(compgen -W "si b k m g t kb mb gb tb" -- "${cur}"));
                    return 0
                ;;
                -o)
                    COMPREPLY=($(compgen -W "si b k m g t kb mb gb tb" -- "${cur}"));
                    return 0
                ;;
                --stack-size)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -S)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --mtime)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -M)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --atime)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -A)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --ctime)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -y)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --files0-from)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --collapse)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --filetime)
                    COMPREPLY=($(compgen -W "a c m" -- "${cur}"));
                    return 0
                ;;
                -m)
                    COMPREPLY=($(compgen -W "a c m" -- "${cur}"));
                    return 0
                ;;
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
    esac
}

_dvd_devices () 
{ 
    COMPREPLY+=($(compgen -f -d -X "!*/?(r)dvd*" -- "${cur:-/dev/}"))
}

_environments () 
{ 
    if [[ -z "${SPACK_ENVIRONMENTS:-}" ]]; then
        SPACK_ENVIRONMENTS="$(spack env list)";
    fi;
    SPACK_COMPREPLY="$SPACK_ENVIRONMENTS"
}

_exa () 
{ 
    cur=${COMP_WORDS[COMP_CWORD]};
    prev=${COMP_WORDS[COMP_CWORD-1]};
    case "$prev" in 
        -'?' | --help | -v | --version)
            return
        ;;
        -L | --level)
            COMPREPLY=($( compgen -W '{0..9}' -- "$cur" ));
            return
        ;;
        -s | --sort)
            COMPREPLY=($( compgen -W 'name filename Name Filename size filesize extension Extension date time modified changed accessed created type inode oldest newest age none --' -- "$cur" ));
            return
        ;;
        -t | --time)
            COMPREPLY=($( compgen -W 'modified changed accessed created --' -- $cur ));
            return
        ;;
        --time-style)
            COMPREPLY=($( compgen -W 'default iso long-iso full-iso --' -- $cur ));
            return
        ;;
    esac;
    case "$cur" in 
        -*)
            COMPREPLY=($( compgen -W '$( _parse_help "$1" )' -- "$cur" ))
        ;;
        *)
            _filedir
        ;;
    esac
}

_expand () 
{ 
    case ${cur-} in 
        ~*/*)
            __expand_tilde_by_ref cur
        ;;
        ~*)
            _tilde "$cur" || eval COMPREPLY[0]="$(printf ~%q "${COMPREPLY[0]#\~}")";
            return ${#COMPREPLY[@]}
        ;;
    esac
}

_extensions () 
{ 
    if [[ -z "${SPACK_EXTENSIONS:-}" ]]; then
        SPACK_EXTENSIONS="$(spack extensions)";
    fi;
    SPACK_COMPREPLY="$SPACK_EXTENSIONS"
}

_eza () 
{ 
    cur=${COMP_WORDS[COMP_CWORD]};
    prev=${COMP_WORDS[COMP_CWORD-1]};
    case "$prev" in 
        --help | -v | --version | --smart-group)
            return
        ;;
        --colour)
            mapfile -t COMPREPLY < <(compgen -W 'always automatic auto never' -- "$cur");
            return
        ;;
        --icons)
            mapfile -t COMPREPLY < <(compgen -W 'always automatic auto never' -- "$cur");
            return
        ;;
        -L | --level)
            mapfile -t COMPREPLY < <(compgen -W '{0..9}' -- "$cur");
            return
        ;;
        -s | --sort)
            mapfile -t COMPREPLY < <(compgen -W 'name filename Name Filename size filesize extension Extension date time modified changed accessed created type inode oldest newest age none --' -- "$cur");
            return
        ;;
        -t | --time)
            mapfile -t COMPREPLY < <(compgen -W 'modified changed accessed created --' -- "$cur");
            return
        ;;
        --time-style)
            mapfile -t COMPREPLY < <(compgen -W 'default iso long-iso full-iso relative +FORMAT --' -- "$cur");
            return
        ;;
        --color-scale)
            mapfile -t COMPREPLY < <(compgen -W 'all age size --' -- "$cur");
            return
        ;;
        --color-scale-mode)
            mapfile -t COMPREPLY < <(compgen -W 'fixed gradient --' -- "$cur");
            return
        ;;
        --absolute)
            mapfile -t COMPREPLY < <(compgen -W 'on follow off --' -- "$cur");
            return
        ;;
    esac;
    case "$cur" in 
        --*)
            parse_help=$(eza --help | grep -oE ' (--[[:alnum:]@-]+)' | tr -d ' ' | grep -v '\--colo');
            completions=$(echo '--color --colour --color-scale --colour-scale --color-scale-mode --colour-scale-mode' "$parse_help");
            mapfile -t COMPREPLY < <(compgen -W "$completions" -- "$cur")
        ;;
        -*)
            completions=$(eza --help | grep -oE ' (-[[:alnum:]@])' | tr -d ' ');
            mapfile -t COMPREPLY < <(compgen -W "$completions" -- "$cur")
        ;;
        *)
            _filedir
        ;;
    esac
}

_fapolicyd () 
{ 
    local cur prev opts;
    COMPREPLY=();
    cur="${COMP_WORDS[COMP_CWORD]}";
    prev="${COMP_WORDS[COMP_CWORD-1]}";
    opts="--debug --debug-deny --help --no-details --permissive";
    if [[ ${cur} == -* ]]; then
        COMPREPLY=($(compgen -W "${opts}" -- ${cur}));
        return 0;
    fi
}

_fapolicydcli () 
{ 
    local cur prev opts;
    COMPREPLY=();
    cur="${COMP_WORDS[COMP_CWORD]}";
    prev="${COMP_WORDS[COMP_CWORD-1]}";
    opts="--check-config --check-path --check-status --check-trustdb                 --check-watch_fs --delete-db --dump-db                 --file --ftype --help --list --update";
    case $prev in 
        --ftype)
            if [ -e /usr/share/bash-completion/bash_completion ]; then
                _filedir;
                return 0;
            else
                compopt -o filenames 2> /dev/null;
                COMPREPLY=($(compgen -f -- ${cur}));
                return 0;
            fi
        ;;
        --file)
            COMPREPLY=($(compgen -W 'add delete update' -- "$cur"));
            return 0
        ;;
    esac;
    if [[ $cur == -* ]]; then
        COMPREPLY=($(compgen -W "${opts}" -- "$cur"));
        [[ ${COMPREPLY-} == *= ]] && compopt -o nospace;
        return 0;
    fi
}

_fd () 
{ 
    local i cur prev opts cmd;
    COMPREPLY=();
    cur="${COMP_WORDS[COMP_CWORD]}";
    prev="${COMP_WORDS[COMP_CWORD-1]}";
    cmd="";
    opts="";
    for i in ${COMP_WORDS[@]};
    do
        case "${cmd},${i}" in 
            ",$1")
                cmd="fd"
            ;;
            *)

            ;;
        esac;
    done;
    case "${cmd}" in 
        fd)
            opts="-H -I -u -s -i -g -F -a -l -L -p -0 -d -E -t -e -S -o -x -X -c -j -1 -q -h -V --hidden --no-hidden --no-ignore --ignore --no-ignore-vcs --ignore-vcs --no-require-git --require-git --no-ignore-parent --no-global-ignore-file --unrestricted --case-sensitive --ignore-case --glob --regex --fixed-strings --and --absolute-path --relative-path --list-details --follow --no-follow --full-path --print0 --max-depth --min-depth --exact-depth --exclude --prune --type --extension --size --changed-within --changed-before --owner --format --exec --exec-batch --batch-size --ignore-file --color --hyperlink --threads --max-buffer-time --max-results --quiet --show-errors --base-directory --path-separator --search-path --strip-cwd-prefix --one-file-system --gen-completions --help --version [pattern] [path]...";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 1 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                --and)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --max-depth)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -d)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --min-depth)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --exact-depth)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --exclude)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -E)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --type)
                    COMPREPLY=($(compgen -W "file directory symlink block-device char-device executable empty socket pipe" -- "${cur}"));
                    return 0
                ;;
                -t)
                    COMPREPLY=($(compgen -W "file directory symlink block-device char-device executable empty socket pipe" -- "${cur}"));
                    return 0
                ;;
                --extension)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -e)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --size)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -S)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --changed-within)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --changed-before)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --owner)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -o)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --format)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --exec)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -x)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --exec-batch)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -X)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --batch-size)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --ignore-file)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --color)
                    COMPREPLY=($(compgen -W "auto always never" -- "${cur}"));
                    return 0
                ;;
                -c)
                    COMPREPLY=($(compgen -W "auto always never" -- "${cur}"));
                    return 0
                ;;
                --hyperlink)
                    COMPREPLY=($(compgen -W "auto always never" -- "${cur}"));
                    return 0
                ;;
                --threads)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -j)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --max-buffer-time)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --max-results)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --base-directory)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --path-separator)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --search-path)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --strip-cwd-prefix)
                    COMPREPLY=($(compgen -W "auto always never" -- "${cur}"));
                    return 0
                ;;
                --gen-completions)
                    COMPREPLY=($(compgen -W "bash elvish fish powershell zsh" -- "${cur}"));
                    return 0
                ;;
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
    esac
}

_filedir () 
{ 
    local IFS='
';
    _tilde "${cur-}" || return;
    local -a toks;
    local reset arg=${1-};
    if [[ $arg == -d ]]; then
        reset=$(shopt -po noglob);
        set -o noglob;
        toks=($(compgen -d -- "${cur-}"));
        IFS=' ';
        $reset;
        IFS='
';
    else
        local quoted;
        _quote_readline_by_ref "${cur-}" quoted;
        local xspec=${arg:+"!*.@($arg|${arg^^})"} plusdirs=();
        local opts=(-f -X "$xspec");
        [[ -n $xspec ]] && plusdirs=(-o plusdirs);
        [[ -n ${COMP_FILEDIR_FALLBACK-} || -z ${plusdirs-} ]] || opts+=("${plusdirs[@]}");
        reset=$(shopt -po noglob);
        set -o noglob;
        toks+=($(compgen "${opts[@]}" -- $quoted));
        IFS=' ';
        $reset;
        IFS='
';
        [[ -n ${COMP_FILEDIR_FALLBACK-} && -n $arg && ${#toks[@]} -lt 1 ]] && { 
            reset=$(shopt -po noglob);
            set -o noglob;
            toks+=($(compgen -f ${plusdirs+"${plusdirs[@]}"} -- $quoted));
            IFS=' ';
            $reset;
            IFS='
'
        };
    fi;
    if ((${#toks[@]} != 0)); then
        compopt -o filenames 2> /dev/null;
        COMPREPLY+=("${toks[@]}");
    fi
}

_filedir_xspec () 
{ 
    local cur prev words cword;
    _init_completion || return;
    _tilde "$cur" || return;
    local IFS='
' xspec=${_xspecs[${1##*/}]} tmp;
    local -a toks;
    toks=($(
        compgen -d -- "$(quote_readline "$cur")" | {
            while read -r tmp; do
                printf '%s\n' $tmp
            done
        }
    ));
    eval xspec="${xspec}";
    local matchop=!;
    if [[ $xspec == !* ]]; then
        xspec=${xspec#!};
        matchop=@;
    fi;
    xspec="$matchop($xspec|${xspec^^})";
    toks+=($(
        eval compgen -f -X "'!$xspec'" -- '$(quote_readline "$cur")' | {
            while read -r tmp; do
                [[ -n $tmp ]] && printf '%s\n' $tmp
            done
        }
    ));
    [[ -n ${COMP_FILEDIR_FALLBACK:-} && ${#toks[@]} -lt 1 ]] && { 
        local reset=$(shopt -po noglob);
        set -o noglob;
        toks+=($(compgen -f -- "$(quote_readline "$cur")"));
        IFS=' ';
        $reset;
        IFS='
'
    };
    if ((${#toks[@]} != 0)); then
        compopt -o filenames;
        COMPREPLY=("${toks[@]}");
    fi
}

_fstypes () 
{ 
    local fss;
    if [[ -e /proc/filesystems ]]; then
        fss="$(cut -d'	' -f2 /proc/filesystems)
             $(awk '! /\*/ { print $NF }' /etc/filesystems 2>/dev/null)";
    else
        fss="$(awk '/^[ \t]*[^#]/ { print $3 }' /etc/fstab 2>/dev/null)
             $(awk '/^[ \t]*[^#]/ { print $3 }' /etc/mnttab 2>/dev/null)
             $(awk '/^[ \t]*[^#]/ { print $4 }' /etc/vfstab 2>/dev/null)
             $(awk '{ print $1 }' /etc/dfs/fstypes 2>/dev/null)
             $([[ -d /etc/fs ]] && command ls /etc/fs)";
    fi;
    [[ -n $fss ]] && COMPREPLY+=($(compgen -W "$fss" -- "$cur"))
}

_fzf_alias_completion () 
{ 
    _fzf_complete -m -- "$@" < <(
    alias | command sed -En 's|^alias ([^=]+).*|\1|p'
  )
}

_fzf_compgen_dir () 
{ 
    fd --type=d --hidden --exclude .git . "$1"
}

_fzf_compgen_path () 
{ 
    fd --hidden --exclude .git . "$1"
}

_fzf_complete () 
{ 
    local args rest str_arg i sep;
    args=("$@");
    sep=;
    for i in "${!args[@]}";
    do
        if [[ "${args[$i]}" = -- ]]; then
            sep=$i;
            break;
        fi;
    done;
    if [[ -n "$sep" ]]; then
        str_arg=;
        rest=("${args[@]:$((sep + 1)):${#args[@]}}");
        args=("${args[@]:0:$sep}");
    else
        str_arg=$1;
        args=();
        shift;
        rest=("$@");
    fi;
    local cur selected trigger cmd post;
    post="$(caller 0 | command awk '{print $2}')_post";
    type -t "$post" > /dev/null 2>&1 || post='command cat';
    trigger=${FZF_COMPLETION_TRIGGER-'**'};
    cmd="${COMP_WORDS[0]}";
    cur="${COMP_WORDS[COMP_CWORD]}";
    if [[ "$cur" == *"$trigger" ]] && [[ $cur != *'$('* ]] && [[ $cur != *':='* ]] && [[ $cur != *'`'* ]]; then
        cur=${cur:0:${#cur}-${#trigger}};
        selected=$(
      FZF_DEFAULT_OPTS=$(__fzf_defaults "--reverse" "${FZF_COMPLETION_OPTS-} $str_arg")       FZF_DEFAULT_OPTS_FILE=''         __fzf_comprun "${rest[0]}" "${args[@]}" -q "$cur" | $post | command tr '\n' ' ');
        selected=${selected% };
        if [[ -n "$selected" ]]; then
            COMPREPLY=("$selected");
        else
            COMPREPLY=("$cur");
        fi;
        printf '\e[5n';
        return 0;
    else
        _fzf_handle_dynamic_completion "$cmd" "${rest[@]}";
    fi
}

_fzf_complete_kill () 
{ 
    _fzf_proc_completion "$@"
}

_fzf_complete_ssh () 
{ 
    case $3 in 
        -i | -F | -E)
            _fzf_path_completion "$@"
        ;;
        *)
            local user=;
            [[ "$2" =~ '@' ]] && user="${2%%@*}@";
            _fzf_complete +m -- "$@" < <(__fzf_list_hosts | command awk -v user="$user" '{print user $0}')
        ;;
    esac
}

_fzf_comprun () 
{ 
    local command=$1;
    shift;
    case "$command" in 
        cd)
            fzf --preview '${fzf_cmd_ls_tree} {} | head -200' "$@"
        ;;
        export | unset)
            fzf --preview "eval 'echo \${}'" "$@"
        ;;
        ssh)
            fzf --preview 'dig {}' "$@"
        ;;
        *)
            fzf --preview "$show_file_or_dir_preview" "$@"
        ;;
    esac
}

_fzf_dir_completion () 
{ 
    __fzf_generic_path_completion _fzf_compgen_dir "" "/" "$@"
}

_fzf_file_completion () 
{ 
    _fzf_path_completion "$@"
}

_fzf_handle_dynamic_completion () 
{ 
    local cmd ret REPLY orig_cmd orig_complete;
    cmd="$1";
    shift;
    orig_cmd="$1";
    if __fzf_orig_completion_get_orig_func "$cmd"; then
        "$REPLY" "$@";
    else
        if [[ -n "${_fzf_completion_loader-}" ]]; then
            orig_complete=$(complete -p "$orig_cmd" 2> /dev/null);
            $_fzf_completion_loader "$@";
            ret=$?;
            if [[ "$(complete -p "$orig_cmd" 2> /dev/null)" != "$orig_complete" ]]; then
                __fzf_orig_completion < <(complete -p "$orig_cmd" 2> /dev/null);
                [[ $orig_complete =~ ' -F '(_fzf_[^ ]+)' ' ]] && __fzf_orig_completion_instantiate "$cmd" "${BASH_REMATCH[1]}" && orig_complete=$REPLY;
                if [[ "${__fzf_nospace_commands-}" = *" $orig_cmd "* ]]; then
                    eval "${orig_complete/ -F / -o nospace -F }";
                else
                    eval "$orig_complete";
                fi;
            fi;
            [[ $ret -eq 0 ]] && return 124;
            return $ret;
        fi;
    fi
}

_fzf_host_completion () 
{ 
    _fzf_complete +m -- "$@" < <(__fzf_list_hosts)
}

_fzf_opts_completion () 
{ 
    local cur prev opts;
    COMPREPLY=();
    cur="${COMP_WORDS[COMP_CWORD]}";
    prev="${COMP_WORDS[COMP_CWORD-1]}";
    opts="
    +c --no-color
    +i --no-ignore-case
    +s --no-sort
    +x --no-extended
    --ansi
    --bash
    --bind
    --border
    --border-label
    --border-label-pos
    --color
    --cycle
    --disabled
    --ellipsis
    --expect
    --filepath-word
    --fish
    --header
    --header-first
    --header-lines
    --height
    --highlight-line
    --history
    --history-size
    --hscroll-off
    --info
    --jump-labels
    --keep-right
    --layout
    --listen
    --listen-unsafe
    --literal
    --man
    --margin
    --marker
    --min-height
    --no-bold
    --no-clear
    --no-hscroll
    --no-mouse
    --no-scrollbar
    --no-separator
    --no-unicode
    --padding
    --pointer
    --preview
    --preview-label
    --preview-label-pos
    --preview-window
    --print-query
    --print0
    --prompt
    --read0
    --reverse
    --scheme
    --scroll-off
    --separator
    --sync
    --tabstop
    --tac
    --tiebreak
    --tmux
    --track
    --version
    --with-nth
    --with-shell
    --wrap
    --zsh
    -0 --exit-0
    -1 --select-1
    -d --delimiter
    -e --exact
    -f --filter
    -h --help
    -i --ignore-case
    -m --multi
    -n --nth
    -q --query
    --";
    case "${prev}" in 
        --scheme)
            COMPREPLY=($(compgen -W "default path history" -- "$cur"));
            return 0
        ;;
        --tiebreak)
            COMPREPLY=($(compgen -W "length chunk begin end index" -- "$cur"));
            return 0
        ;;
        --color)
            COMPREPLY=($(compgen -W "dark light 16 bw no" -- "$cur"));
            return 0
        ;;
        --layout)
            COMPREPLY=($(compgen -W "default reverse reverse-list" -- "$cur"));
            return 0
        ;;
        --info)
            COMPREPLY=($(compgen -W "default right hidden inline inline-right" -- "$cur"));
            return 0
        ;;
        --preview-window)
            COMPREPLY=($(compgen -W "
      default
      hidden
      nohidden
      wrap
      nowrap
      cycle
      nocycle
      up top
      down bottom
      left
      right
      rounded border border-rounded
      sharp border-sharp
      border-bold
      border-block
      border-thinblock
      border-double
      noborder border-none
      border-horizontal
      border-vertical
      border-up border-top
      border-down border-bottom
      border-left
      border-right
      follow
      nofollow" -- "$cur"));
            return 0
        ;;
        --border)
            COMPREPLY=($(compgen -W "rounded sharp bold block thinblock double horizontal vertical top bottom left right none" -- "$cur"));
            return 0
        ;;
        --border-label-pos | --preview-label-pos)
            COMPREPLY=($(compgen -W "center bottom top" -- "$cur"));
            return 0
        ;;
    esac;
    if [[ "$cur" =~ ^-|\+ ]]; then
        COMPREPLY=($(compgen -W "${opts}" -- "$cur"));
        return 0;
    fi;
    return 0
}

_fzf_path_completion () 
{ 
    __fzf_generic_path_completion _fzf_compgen_path "-m" "" "$@"
}

_fzf_proc_completion () 
{ 
    _fzf_complete -m --header-lines=1 --no-preview --wrap -- "$@" < <(
    command ps -eo user,pid,ppid,start,time,command 2> /dev/null ||
      command ps -eo user,pid,ppid,time,args 2> /dev/null || # For BusyBox
      command ps --everyone --full --windows # For cygwin
  )
}

_fzf_proc_completion_post () 
{ 
    command awk '{print $2}'
}

_fzf_setup_completion () 
{ 
    local kind fn cmd;
    kind=$1;
    fn=_fzf_${1}_completion;
    if [[ $# -lt 2 ]] || ! type -t "$fn" > /dev/null; then
        echo "usage: ${FUNCNAME[0]} path|dir|var|alias|host|proc COMMANDS...";
        return 1;
    fi;
    shift;
    __fzf_orig_completion < <(complete -p "$@" 2> /dev/null);
    for cmd in "$@";
    do
        case "$kind" in 
            dir)
                __fzf_defc "$cmd" "$fn" "-o nospace -o dirnames"
            ;;
            var)
                __fzf_defc "$cmd" "$fn" "-o default -o nospace -v"
            ;;
            alias)
                __fzf_defc "$cmd" "$fn" "-a"
            ;;
            *)
                __fzf_defc "$cmd" "$fn" "-o default -o bashdefault"
            ;;
        esac;
    done
}

_fzf_var_completion () 
{ 
    _fzf_complete -m -- "$@" < <(
    declare -xp | command sed -En 's|^declare [^ ]+ ([^=]+).*|\1|p'
  )
}

_get_comp_words_by_ref () 
{ 
    local exclude flag i OPTIND=1;
    local cur cword words=();
    local upargs=() upvars=() vcur vcword vprev vwords;
    while getopts "c:i:n:p:w:" flag "$@"; do
        case $flag in 
            c)
                vcur=$OPTARG
            ;;
            i)
                vcword=$OPTARG
            ;;
            n)
                exclude=$OPTARG
            ;;
            p)
                vprev=$OPTARG
            ;;
            w)
                vwords=$OPTARG
            ;;
            *)
                echo "bash_completion: $FUNCNAME: usage error" 1>&2;
                return 1
            ;;
        esac;
    done;
    while [[ $# -ge $OPTIND ]]; do
        case ${!OPTIND} in 
            cur)
                vcur=cur
            ;;
            prev)
                vprev=prev
            ;;
            cword)
                vcword=cword
            ;;
            words)
                vwords=words
            ;;
            *)
                echo "bash_completion: $FUNCNAME: \`${!OPTIND}':" "unknown argument" 1>&2;
                return 1
            ;;
        esac;
        ((OPTIND += 1));
    done;
    __get_cword_at_cursor_by_ref "${exclude-}" words cword cur;
    [[ -v vcur ]] && { 
        upvars+=("$vcur");
        upargs+=(-v $vcur "$cur")
    };
    [[ -v vcword ]] && { 
        upvars+=("$vcword");
        upargs+=(-v $vcword "$cword")
    };
    [[ -v vprev && $cword -ge 1 ]] && { 
        upvars+=("$vprev");
        upargs+=(-v $vprev "${words[cword - 1]}")
    };
    [[ -v vwords ]] && { 
        upvars+=("$vwords");
        upargs+=(-a${#words[@]} $vwords ${words+"${words[@]}"})
    };
    ((${#upvars[@]})) && local "${upvars[@]}" && _upvars "${upargs[@]}"
}

_get_cword () 
{ 
    local LC_CTYPE=C;
    local cword words;
    __reassemble_comp_words_by_ref "${1-}" words cword;
    if [[ -n ${2-} && -n ${2//[^0-9]/} ]]; then
        printf "%s" "${words[cword - $2]}";
    else
        if ((${#words[cword]} == 0 && COMP_POINT == ${#COMP_LINE})); then
            :;
        else
            local i;
            local cur="$COMP_LINE";
            local index="$COMP_POINT";
            for ((i = 0; i <= cword; ++i))
            do
                while [[ ${#cur} -ge ${#words[i]} && ${cur:0:${#words[i]}} != "${words[i]}" ]]; do
                    cur="${cur:1}";
                    ((index > 0)) && ((index--));
                done;
                if ((i < cword)); then
                    local old_size="${#cur}";
                    cur="${cur#${words[i]}}";
                    local new_size="${#cur}";
                    ((index -= old_size - new_size));
                fi;
            done;
            if [[ ${words[cword]:0:${#cur}} != "$cur" ]]; then
                printf "%s" "${words[cword]}";
            else
                printf "%s" "${cur:0:index}";
            fi;
        fi;
    fi
}

_get_first_arg () 
{ 
    local i;
    arg=;
    for ((i = 1; i < COMP_CWORD; i++))
    do
        if [[ ${COMP_WORDS[i]} != -* ]]; then
            arg=${COMP_WORDS[i]};
            break;
        fi;
    done
}

_get_pword () 
{ 
    if ((COMP_CWORD >= 1)); then
        _get_cword "${@:-}" 1;
    fi
}

_gids () 
{ 
    if type getent &> /dev/null; then
        COMPREPLY=($(compgen -W '$(getent group | cut -d: -f3)' -- "$cur"));
    else
        if type perl &> /dev/null; then
            COMPREPLY=($(compgen -W '$(perl -e '"'"'while (($gid) = (getgrent)[2]) { print $gid . "\n" }'"'"')' -- "$cur"));
        else
            COMPREPLY=($(compgen -W '$(cut -d: -f3 /etc/group)' -- "$cur"));
        fi;
    fi
}

_git () 
{ 
    local i c=1 command __git_dir;
    while [ $c -lt $COMP_CWORD ]; do
        i="${COMP_WORDS[c]}";
        case "$i" in 
            --git-dir=*)
                __git_dir="${i#--git-dir=}"
            ;;
            --bare)
                __git_dir="."
            ;;
            --version | -p | --paginate)

            ;;
            --help)
                command="help";
                break
            ;;
            *)
                command="$i";
                break
            ;;
        esac;
        c=$((++c));
    done;
    if [ -z "$command" ]; then
        case "${COMP_WORDS[COMP_CWORD]}" in 
            --*)
                __gitcomp "
			--paginate
			--no-pager
			--git-dir=
			--bare
			--version
			--exec-path
			--html-path
			--work-tree=
			--help
			"
            ;;
            *)
                __git_compute_porcelain_commands;
                __gitcomp "$__git_porcelain_commands $(__git_aliases)"
            ;;
        esac;
        return;
    fi;
    local completion_func="_git_${command//-/_}";
    declare -F $completion_func > /dev/null && $completion_func && return;
    local expansion=$(__git_aliased_command "$command");
    if [ -n "$expansion" ]; then
        completion_func="_git_${expansion//-/_}";
        declare -F $completion_func > /dev/null && $completion_func;
    fi
}

_git_add () 
{ 
    __git_has_doubledash && return;
    local cur="${COMP_WORDS[COMP_CWORD]}";
    case "$cur" in 
        --*)
            __gitcomp "
			--interactive --refresh --patch --update --dry-run
			--ignore-errors --intent-to-add
			";
            return
        ;;
    esac;
    COMPREPLY=()
}

_git_am () 
{ 
    local cur="${COMP_WORDS[COMP_CWORD]}" dir="$(__gitdir)";
    if [ -d "$dir"/rebase-apply ]; then
        __gitcomp "--skip --continue --resolved --abort";
        return;
    fi;
    case "$cur" in 
        --whitespace=*)
            __gitcomp "$__git_whitespacelist" "" "${cur##--whitespace=}";
            return
        ;;
        --*)
            __gitcomp "
			--3way --committer-date-is-author-date --ignore-date
			--ignore-whitespace --ignore-space-change
			--interactive --keep --no-utf8 --signoff --utf8
			--whitespace= --scissors
			";
            return
        ;;
    esac;
    COMPREPLY=()
}

_git_apply () 
{ 
    local cur="${COMP_WORDS[COMP_CWORD]}";
    case "$cur" in 
        --whitespace=*)
            __gitcomp "$__git_whitespacelist" "" "${cur##--whitespace=}";
            return
        ;;
        --*)
            __gitcomp "
			--stat --numstat --summary --check --index
			--cached --index-info --reverse --reject --unidiff-zero
			--apply --no-add --exclude=
			--ignore-whitespace --ignore-space-change
			--whitespace= --inaccurate-eof --verbose
			";
            return
        ;;
    esac;
    COMPREPLY=()
}

_git_archive () 
{ 
    local cur="${COMP_WORDS[COMP_CWORD]}";
    case "$cur" in 
        --format=*)
            __gitcomp "$(git archive --list)" "" "${cur##--format=}";
            return
        ;;
        --remote=*)
            __gitcomp "$(__git_remotes)" "" "${cur##--remote=}";
            return
        ;;
        --*)
            __gitcomp "
			--format= --list --verbose
			--prefix= --remote= --exec=
			";
            return
        ;;
    esac;
    __git_complete_file
}

_git_bisect () 
{ 
    __git_has_doubledash && return;
    local subcommands="start bad good skip reset visualize replay log run";
    local subcommand="$(__git_find_on_cmdline "$subcommands")";
    if [ -z "$subcommand" ]; then
        __gitcomp "$subcommands";
        return;
    fi;
    case "$subcommand" in 
        bad | good | reset | skip)
            __gitcomp "$(__git_refs)"
        ;;
        *)
            COMPREPLY=()
        ;;
    esac
}

_git_branch () 
{ 
    local i c=1 only_local_ref="n" has_r="n";
    while [ $c -lt $COMP_CWORD ]; do
        i="${COMP_WORDS[c]}";
        case "$i" in 
            -d | -m)
                only_local_ref="y"
            ;;
            -r)
                has_r="y"
            ;;
        esac;
        c=$((++c));
    done;
    case "${COMP_WORDS[COMP_CWORD]}" in 
        --*)
            __gitcomp "
			--color --no-color --verbose --abbrev= --no-abbrev
			--track --no-track --contains --merged --no-merged
			"
        ;;
        *)
            if [ $only_local_ref = "y" -a $has_r = "n" ]; then
                __gitcomp "$(__git_heads)";
            else
                __gitcomp "$(__git_refs)";
            fi
        ;;
    esac
}

_git_bundle () 
{ 
    local cmd="${COMP_WORDS[2]}";
    case "$COMP_CWORD" in 
        2)
            __gitcomp "create list-heads verify unbundle"
        ;;
        3)

        ;;
        *)
            case "$cmd" in 
                create)
                    __git_complete_revlist
                ;;
            esac
        ;;
    esac
}

_git_checkout () 
{ 
    __git_has_doubledash && return;
    local cur="${COMP_WORDS[COMP_CWORD]}";
    case "$cur" in 
        --conflict=*)
            __gitcomp "diff3 merge" "" "${cur##--conflict=}"
        ;;
        --*)
            __gitcomp "
			--quiet --ours --theirs --track --no-track --merge
			--conflict= --patch
			"
        ;;
        *)
            __gitcomp "$(__git_refs)"
        ;;
    esac
}

_git_cherry () 
{ 
    __gitcomp "$(__git_refs)"
}

_git_cherry_pick () 
{ 
    local cur="${COMP_WORDS[COMP_CWORD]}";
    case "$cur" in 
        --*)
            __gitcomp "--edit --no-commit"
        ;;
        *)
            __gitcomp "$(__git_refs)"
        ;;
    esac
}

_git_clean () 
{ 
    __git_has_doubledash && return;
    local cur="${COMP_WORDS[COMP_CWORD]}";
    case "$cur" in 
        --*)
            __gitcomp "--dry-run --quiet";
            return
        ;;
    esac;
    COMPREPLY=()
}

_git_clone () 
{ 
    local cur="${COMP_WORDS[COMP_CWORD]}";
    case "$cur" in 
        --*)
            __gitcomp "
			--local
			--no-hardlinks
			--shared
			--reference
			--quiet
			--no-checkout
			--bare
			--mirror
			--origin
			--upload-pack
			--template=
			--depth
			";
            return
        ;;
    esac;
    COMPREPLY=()
}

_git_commit () 
{ 
    __git_has_doubledash && return;
    local cur="${COMP_WORDS[COMP_CWORD]}";
    case "$cur" in 
        --cleanup=*)
            __gitcomp "default strip verbatim whitespace
			" "" "${cur##--cleanup=}";
            return
        ;;
        --reuse-message=*)
            __gitcomp "$(__git_refs)" "" "${cur##--reuse-message=}";
            return
        ;;
        --reedit-message=*)
            __gitcomp "$(__git_refs)" "" "${cur##--reedit-message=}";
            return
        ;;
        --untracked-files=*)
            __gitcomp "all no normal" "" "${cur##--untracked-files=}";
            return
        ;;
        --*)
            __gitcomp "
			--all --author= --signoff --verify --no-verify
			--edit --amend --include --only --interactive
			--dry-run --reuse-message= --reedit-message=
			--reset-author --file= --message= --template=
			--cleanup= --untracked-files --untracked-files=
			--verbose --quiet
			";
            return
        ;;
    esac;
    COMPREPLY=()
}

_git_config () 
{ 
    local cur="${COMP_WORDS[COMP_CWORD]}";
    local prv="${COMP_WORDS[COMP_CWORD-1]}";
    case "$prv" in 
        branch.*.remote)
            __gitcomp "$(__git_remotes)";
            return
        ;;
        branch.*.merge)
            __gitcomp "$(__git_refs)";
            return
        ;;
        remote.*.fetch)
            local remote="${prv#remote.}";
            remote="${remote%.fetch}";
            __gitcomp "$(__git_refs_remotes "$remote")";
            return
        ;;
        remote.*.push)
            local remote="${prv#remote.}";
            remote="${remote%.push}";
            __gitcomp "$(git --git-dir="$(__gitdir)" 			for-each-ref --format='%(refname):%(refname)' 			refs/heads)";
            return
        ;;
        pull.twohead | pull.octopus)
            __git_compute_merge_strategies;
            __gitcomp "$__git_merge_strategies";
            return
        ;;
        color.branch | color.diff | color.interactive | color.showbranch | color.status | color.ui)
            __gitcomp "always never auto";
            return
        ;;
        color.pager)
            __gitcomp "false true";
            return
        ;;
        color.*.*)
            __gitcomp "
			normal black red green yellow blue magenta cyan white
			bold dim ul blink reverse
			";
            return
        ;;
        help.format)
            __gitcomp "man info web html";
            return
        ;;
        log.date)
            __gitcomp "$__git_log_date_formats";
            return
        ;;
        sendemail.aliasesfiletype)
            __gitcomp "mutt mailrc pine elm gnus";
            return
        ;;
        sendemail.confirm)
            __gitcomp "$__git_send_email_confirm_options";
            return
        ;;
        sendemail.suppresscc)
            __gitcomp "$__git_send_email_suppresscc_options";
            return
        ;;
        --get | --get-all | --unset | --unset-all)
            __gitcomp "$(__git_config_get_set_variables)";
            return
        ;;
        *.*)
            COMPREPLY=();
            return
        ;;
    esac;
    case "$cur" in 
        --*)
            __gitcomp "
			--global --system --file=
			--list --replace-all
			--get --get-all --get-regexp
			--add --unset --unset-all
			--remove-section --rename-section
			";
            return
        ;;
        branch.*.*)
            local pfx="${cur%.*}.";
            cur="${cur##*.}";
            __gitcomp "remote merge mergeoptions rebase" "$pfx" "$cur";
            return
        ;;
        branch.*)
            local pfx="${cur%.*}.";
            cur="${cur#*.}";
            __gitcomp "$(__git_heads)" "$pfx" "$cur" ".";
            return
        ;;
        guitool.*.*)
            local pfx="${cur%.*}.";
            cur="${cur##*.}";
            __gitcomp "
			argprompt cmd confirm needsfile noconsole norescan
			prompt revprompt revunmerged title
			" "$pfx" "$cur";
            return
        ;;
        difftool.*.*)
            local pfx="${cur%.*}.";
            cur="${cur##*.}";
            __gitcomp "cmd path" "$pfx" "$cur";
            return
        ;;
        man.*.*)
            local pfx="${cur%.*}.";
            cur="${cur##*.}";
            __gitcomp "cmd path" "$pfx" "$cur";
            return
        ;;
        mergetool.*.*)
            local pfx="${cur%.*}.";
            cur="${cur##*.}";
            __gitcomp "cmd path trustExitCode" "$pfx" "$cur";
            return
        ;;
        pager.*)
            local pfx="${cur%.*}.";
            cur="${cur#*.}";
            __git_compute_all_commands;
            __gitcomp "$__git_all_commands" "$pfx" "$cur";
            return
        ;;
        remote.*.*)
            local pfx="${cur%.*}.";
            cur="${cur##*.}";
            __gitcomp "
			url proxy fetch push mirror skipDefaultUpdate
			receivepack uploadpack tagopt pushurl
			" "$pfx" "$cur";
            return
        ;;
        remote.*)
            local pfx="${cur%.*}.";
            cur="${cur#*.}";
            __gitcomp "$(__git_remotes)" "$pfx" "$cur" ".";
            return
        ;;
        url.*.*)
            local pfx="${cur%.*}.";
            cur="${cur##*.}";
            __gitcomp "insteadOf pushInsteadOf" "$pfx" "$cur";
            return
        ;;
    esac;
    __gitcomp "
		add.ignore-errors
		alias.
		apply.ignorewhitespace
		apply.whitespace
		branch.autosetupmerge
		branch.autosetuprebase
		clean.requireForce
		color.branch
		color.branch.current
		color.branch.local
		color.branch.plain
		color.branch.remote
		color.diff
		color.diff.commit
		color.diff.frag
		color.diff.meta
		color.diff.new
		color.diff.old
		color.diff.plain
		color.diff.whitespace
		color.grep
		color.grep.external
		color.grep.match
		color.interactive
		color.interactive.header
		color.interactive.help
		color.interactive.prompt
		color.pager
		color.showbranch
		color.status
		color.status.added
		color.status.changed
		color.status.header
		color.status.nobranch
		color.status.untracked
		color.status.updated
		color.ui
		commit.template
		core.autocrlf
		core.bare
		core.compression
		core.createObject
		core.deltaBaseCacheLimit
		core.editor
		core.excludesfile
		core.fileMode
		core.fsyncobjectfiles
		core.gitProxy
		core.ignoreCygwinFSTricks
		core.ignoreStat
		core.logAllRefUpdates
		core.loosecompression
		core.packedGitLimit
		core.packedGitWindowSize
		core.pager
		core.preferSymlinkRefs
		core.preloadindex
		core.quotepath
		core.repositoryFormatVersion
		core.safecrlf
		core.sharedRepository
		core.symlinks
		core.trustctime
		core.warnAmbiguousRefs
		core.whitespace
		core.worktree
		diff.autorefreshindex
		diff.external
		diff.mnemonicprefix
		diff.renameLimit
		diff.renameLimit.
		diff.renames
		diff.suppressBlankEmpty
		diff.tool
		diff.wordRegex
		difftool.
		difftool.prompt
		fetch.unpackLimit
		format.attach
		format.cc
		format.headers
		format.numbered
		format.pretty
		format.signoff
		format.subjectprefix
		format.suffix
		format.thread
		gc.aggressiveWindow
		gc.auto
		gc.autopacklimit
		gc.packrefs
		gc.pruneexpire
		gc.reflogexpire
		gc.reflogexpireunreachable
		gc.rerereresolved
		gc.rerereunresolved
		gitcvs.allbinary
		gitcvs.commitmsgannotation
		gitcvs.dbTableNamePrefix
		gitcvs.dbdriver
		gitcvs.dbname
		gitcvs.dbpass
		gitcvs.dbuser
		gitcvs.enabled
		gitcvs.logfile
		gitcvs.usecrlfattr
		guitool.
		gui.blamehistoryctx
		gui.commitmsgwidth
		gui.copyblamethreshold
		gui.diffcontext
		gui.encoding
		gui.fastcopyblame
		gui.matchtrackingbranch
		gui.newbranchtemplate
		gui.pruneduringfetch
		gui.spellingdictionary
		gui.trustmtime
		help.autocorrect
		help.browser
		help.format
		http.lowSpeedLimit
		http.lowSpeedTime
		http.maxRequests
		http.noEPSV
		http.proxy
		http.sslCAInfo
		http.sslCAPath
		http.sslCert
		http.sslKey
		http.sslVerify
		i18n.commitEncoding
		i18n.logOutputEncoding
		imap.folder
		imap.host
		imap.pass
		imap.port
		imap.preformattedHTML
		imap.sslverify
		imap.tunnel
		imap.user
		instaweb.browser
		instaweb.httpd
		instaweb.local
		instaweb.modulepath
		instaweb.port
		interactive.singlekey
		log.date
		log.showroot
		mailmap.file
		man.
		man.viewer
		merge.conflictstyle
		merge.log
		merge.renameLimit
		merge.stat
		merge.tool
		merge.verbosity
		mergetool.
		mergetool.keepBackup
		mergetool.prompt
		pack.compression
		pack.deltaCacheLimit
		pack.deltaCacheSize
		pack.depth
		pack.indexVersion
		pack.packSizeLimit
		pack.threads
		pack.window
		pack.windowMemory
		pager.
		pull.octopus
		pull.twohead
		push.default
		rebase.stat
		receive.denyCurrentBranch
		receive.denyDeletes
		receive.denyNonFastForwards
		receive.fsckObjects
		receive.unpackLimit
		repack.usedeltabaseoffset
		rerere.autoupdate
		rerere.enabled
		sendemail.aliasesfile
		sendemail.aliasesfiletype
		sendemail.bcc
		sendemail.cc
		sendemail.cccmd
		sendemail.chainreplyto
		sendemail.confirm
		sendemail.envelopesender
		sendemail.multiedit
		sendemail.signedoffbycc
		sendemail.smtpencryption
		sendemail.smtppass
		sendemail.smtpserver
		sendemail.smtpserverport
		sendemail.smtpuser
		sendemail.suppresscc
		sendemail.suppressfrom
		sendemail.thread
		sendemail.to
		sendemail.validate
		showbranch.default
		status.relativePaths
		status.showUntrackedFiles
		tar.umask
		transfer.unpackLimit
		url.
		user.email
		user.name
		user.signingkey
		web.browser
		branch. remote.
	"
}

_git_describe () 
{ 
    local cur="${COMP_WORDS[COMP_CWORD]}";
    case "$cur" in 
        --*)
            __gitcomp "
			--all --tags --contains --abbrev= --candidates=
			--exact-match --debug --long --match --always
			";
            return
        ;;
    esac;
    __gitcomp "$(__git_refs)"
}

_git_diff () 
{ 
    __git_has_doubledash && return;
    local cur="${COMP_WORDS[COMP_CWORD]}";
    case "$cur" in 
        --*)
            __gitcomp "--cached --staged --pickaxe-all --pickaxe-regex
			--base --ours --theirs
			$__git_diff_common_options
			";
            return
        ;;
    esac;
    __git_complete_file
}

_git_difftool () 
{ 
    __git_has_doubledash && return;
    local cur="${COMP_WORDS[COMP_CWORD]}";
    case "$cur" in 
        --tool=*)
            __gitcomp "$__git_mergetools_common kompare" "" "${cur##--tool=}";
            return
        ;;
        --*)
            __gitcomp "--cached --staged --pickaxe-all --pickaxe-regex
			--base --ours --theirs
			--no-renames --diff-filter= --find-copies-harder
			--relative --ignore-submodules
			--tool=";
            return
        ;;
    esac;
    __git_complete_file
}

_git_fetch () 
{ 
    local cur="${COMP_WORDS[COMP_CWORD]}";
    case "$cur" in 
        --*)
            __gitcomp "$__git_fetch_options";
            return
        ;;
    esac;
    __git_complete_remote_or_refspec
}

_git_format_patch () 
{ 
    local cur="${COMP_WORDS[COMP_CWORD]}";
    case "$cur" in 
        --thread=*)
            __gitcomp "
			deep shallow
			" "" "${cur##--thread=}";
            return
        ;;
        --*)
            __gitcomp "
			--stdout --attach --no-attach --thread --thread=
			--output-directory
			--numbered --start-number
			--numbered-files
			--keep-subject
			--signoff
			--in-reply-to= --cc=
			--full-index --binary
			--not --all
			--cover-letter
			--no-prefix --src-prefix= --dst-prefix=
			--inline --suffix= --ignore-if-in-upstream
			--subject-prefix=
			";
            return
        ;;
    esac;
    __git_complete_revlist
}

_git_fsck () 
{ 
    local cur="${COMP_WORDS[COMP_CWORD]}";
    case "$cur" in 
        --*)
            __gitcomp "
			--tags --root --unreachable --cache --no-reflogs --full
			--strict --verbose --lost-found
			";
            return
        ;;
    esac;
    COMPREPLY=()
}

_git_gc () 
{ 
    local cur="${COMP_WORDS[COMP_CWORD]}";
    case "$cur" in 
        --*)
            __gitcomp "--prune --aggressive";
            return
        ;;
    esac;
    COMPREPLY=()
}

_git_gitk () 
{ 
    _gitk
}

_git_grep () 
{ 
    __git_has_doubledash && return;
    local cur="${COMP_WORDS[COMP_CWORD]}";
    case "$cur" in 
        --*)
            __gitcomp "
			--cached
			--text --ignore-case --word-regexp --invert-match
			--full-name
			--extended-regexp --basic-regexp --fixed-strings
			--files-with-matches --name-only
			--files-without-match
			--max-depth
			--count
			--and --or --not --all-match
			";
            return
        ;;
    esac;
    __gitcomp "$(__git_refs)"
}

_git_help () 
{ 
    local cur="${COMP_WORDS[COMP_CWORD]}";
    case "$cur" in 
        --*)
            __gitcomp "--all --info --man --web";
            return
        ;;
    esac;
    __git_compute_all_commands;
    __gitcomp "$__git_all_commands
		attributes cli core-tutorial cvs-migration
		diffcore gitk glossary hooks ignore modules
		repository-layout tutorial tutorial-2
		workflows
		"
}

_git_init () 
{ 
    local cur="${COMP_WORDS[COMP_CWORD]}";
    case "$cur" in 
        --shared=*)
            __gitcomp "
			false true umask group all world everybody
			" "" "${cur##--shared=}";
            return
        ;;
        --*)
            __gitcomp "--quiet --bare --template= --shared --shared=";
            return
        ;;
    esac;
    COMPREPLY=()
}

_git_log () 
{ 
    __git_has_doubledash && return;
    local cur="${COMP_WORDS[COMP_CWORD]}";
    local g="$(git rev-parse --git-dir 2>/dev/null)";
    local merge="";
    if [ -f "$g/MERGE_HEAD" ]; then
        merge="--merge";
    fi;
    case "$cur" in 
        --pretty=*)
            __gitcomp "$__git_log_pretty_formats
			" "" "${cur##--pretty=}";
            return
        ;;
        --format=*)
            __gitcomp "$__git_log_pretty_formats
			" "" "${cur##--format=}";
            return
        ;;
        --date=*)
            __gitcomp "$__git_log_date_formats" "" "${cur##--date=}";
            return
        ;;
        --decorate=*)
            __gitcomp "long short" "" "${cur##--decorate=}";
            return
        ;;
        --*)
            __gitcomp "
			$__git_log_common_options
			$__git_log_shortlog_options
			$__git_log_gitk_options
			--root --topo-order --date-order --reverse
			--follow --full-diff
			--abbrev-commit --abbrev=
			--relative-date --date=
			--pretty= --format= --oneline
			--cherry-pick
			--graph
			--decorate --decorate=
			--walk-reflogs
			--parents --children
			$merge
			$__git_diff_common_options
			--pickaxe-all --pickaxe-regex
			";
            return
        ;;
    esac;
    __git_complete_revlist
}

_git_ls_files () 
{ 
    __git_has_doubledash && return;
    local cur="${COMP_WORDS[COMP_CWORD]}";
    case "$cur" in 
        --*)
            __gitcomp "--cached --deleted --modified --others --ignored
			--stage --directory --no-empty-directory --unmerged
			--killed --exclude= --exclude-from=
			--exclude-per-directory= --exclude-standard
			--error-unmatch --with-tree= --full-name
			--abbrev --ignored --exclude-per-directory
			";
            return
        ;;
    esac;
    COMPREPLY=()
}

_git_ls_remote () 
{ 
    __gitcomp "$(__git_remotes)"
}

_git_ls_tree () 
{ 
    __git_complete_file
}

_git_merge () 
{ 
    __git_complete_strategy && return;
    local cur="${COMP_WORDS[COMP_CWORD]}";
    case "$cur" in 
        --*)
            __gitcomp "$__git_merge_options";
            return
        ;;
    esac;
    __gitcomp "$(__git_refs)"
}

_git_merge_base () 
{ 
    __gitcomp "$(__git_refs)"
}

_git_mergetool () 
{ 
    local cur="${COMP_WORDS[COMP_CWORD]}";
    case "$cur" in 
        --tool=*)
            __gitcomp "$__git_mergetools_common tortoisemerge" "" "${cur##--tool=}";
            return
        ;;
        --*)
            __gitcomp "--tool=";
            return
        ;;
    esac;
    COMPREPLY=()
}

_git_mv () 
{ 
    local cur="${COMP_WORDS[COMP_CWORD]}";
    case "$cur" in 
        --*)
            __gitcomp "--dry-run";
            return
        ;;
    esac;
    COMPREPLY=()
}

_git_name_rev () 
{ 
    __gitcomp "--tags --all --stdin"
}

_git_notes () 
{ 
    local subcommands="edit show";
    if [ -z "$(__git_find_on_cmdline "$subcommands")" ]; then
        __gitcomp "$subcommands";
        return;
    fi;
    case "${COMP_WORDS[COMP_CWORD-1]}" in 
        -m | -F)
            COMPREPLY=()
        ;;
        *)
            __gitcomp "$(__git_refs)"
        ;;
    esac
}

_git_pull () 
{ 
    __git_complete_strategy && return;
    local cur="${COMP_WORDS[COMP_CWORD]}";
    case "$cur" in 
        --*)
            __gitcomp "
			--rebase --no-rebase
			$__git_merge_options
			$__git_fetch_options
		";
            return
        ;;
    esac;
    __git_complete_remote_or_refspec
}

_git_push () 
{ 
    local cur="${COMP_WORDS[COMP_CWORD]}";
    case "${COMP_WORDS[COMP_CWORD-1]}" in 
        --repo)
            __gitcomp "$(__git_remotes)";
            return
        ;;
    esac;
    case "$cur" in 
        --repo=*)
            __gitcomp "$(__git_remotes)" "" "${cur##--repo=}";
            return
        ;;
        --*)
            __gitcomp "
			--all --mirror --tags --dry-run --force --verbose
			--receive-pack= --repo=
		";
            return
        ;;
    esac;
    __git_complete_remote_or_refspec
}

_git_rebase () 
{ 
    local cur="${COMP_WORDS[COMP_CWORD]}" dir="$(__gitdir)";
    if [ -d "$dir"/rebase-apply ] || [ -d "$dir"/rebase-merge ]; then
        __gitcomp "--continue --skip --abort";
        return;
    fi;
    __git_complete_strategy && return;
    case "$cur" in 
        --whitespace=*)
            __gitcomp "$__git_whitespacelist" "" "${cur##--whitespace=}";
            return
        ;;
        --*)
            __gitcomp "
			--onto --merge --strategy --interactive
			--preserve-merges --stat --no-stat
			--committer-date-is-author-date --ignore-date
			--ignore-whitespace --whitespace=
			--autosquash
			";
            return
        ;;
    esac;
    __gitcomp "$(__git_refs)"
}

_git_remote () 
{ 
    local subcommands="add rename rm show prune update set-head";
    local subcommand="$(__git_find_on_cmdline "$subcommands")";
    if [ -z "$subcommand" ]; then
        __gitcomp "$subcommands";
        return;
    fi;
    case "$subcommand" in 
        rename | rm | show | prune)
            __gitcomp "$(__git_remotes)"
        ;;
        update)
            local i c='' IFS='
';
            for i in $(git --git-dir="$(__gitdir)" config --get-regexp "remotes\..*" 2>/dev/null);
            do
                i="${i#remotes.}";
                c="$c ${i/ */}";
            done;
            __gitcomp "$c"
        ;;
        *)
            COMPREPLY=()
        ;;
    esac
}

_git_replace () 
{ 
    __gitcomp "$(__git_refs)"
}

_git_reset () 
{ 
    __git_has_doubledash && return;
    local cur="${COMP_WORDS[COMP_CWORD]}";
    case "$cur" in 
        --*)
            __gitcomp "--merge --mixed --hard --soft --patch";
            return
        ;;
    esac;
    __gitcomp "$(__git_refs)"
}

_git_revert () 
{ 
    local cur="${COMP_WORDS[COMP_CWORD]}";
    case "$cur" in 
        --*)
            __gitcomp "--edit --mainline --no-edit --no-commit --signoff";
            return
        ;;
    esac;
    __gitcomp "$(__git_refs)"
}

_git_rm () 
{ 
    __git_has_doubledash && return;
    local cur="${COMP_WORDS[COMP_CWORD]}";
    case "$cur" in 
        --*)
            __gitcomp "--cached --dry-run --ignore-unmatch --quiet";
            return
        ;;
    esac;
    COMPREPLY=()
}

_git_send_email () 
{ 
    local cur="${COMP_WORDS[COMP_CWORD]}";
    case "$cur" in 
        --confirm=*)
            __gitcomp "
			$__git_send_email_confirm_options
			" "" "${cur##--confirm=}";
            return
        ;;
        --suppress-cc=*)
            __gitcomp "
			$__git_send_email_suppresscc_options
			" "" "${cur##--suppress-cc=}";
            return
        ;;
        --smtp-encryption=*)
            __gitcomp "ssl tls" "" "${cur##--smtp-encryption=}";
            return
        ;;
        --*)
            __gitcomp "--annotate --bcc --cc --cc-cmd --chain-reply-to
			--compose --confirm= --dry-run --envelope-sender
			--from --identity
			--in-reply-to --no-chain-reply-to --no-signed-off-by-cc
			--no-suppress-from --no-thread --quiet
			--signed-off-by-cc --smtp-pass --smtp-server
			--smtp-server-port --smtp-encryption= --smtp-user
			--subject --suppress-cc= --suppress-from --thread --to
			--validate --no-validate";
            return
        ;;
    esac;
    COMPREPLY=()
}

_git_shortlog () 
{ 
    __git_has_doubledash && return;
    local cur="${COMP_WORDS[COMP_CWORD]}";
    case "$cur" in 
        --*)
            __gitcomp "
			$__git_log_common_options
			$__git_log_shortlog_options
			--numbered --summary
			";
            return
        ;;
    esac;
    __git_complete_revlist
}

_git_show () 
{ 
    __git_has_doubledash && return;
    local cur="${COMP_WORDS[COMP_CWORD]}";
    case "$cur" in 
        --pretty=*)
            __gitcomp "$__git_log_pretty_formats
			" "" "${cur##--pretty=}";
            return
        ;;
        --format=*)
            __gitcomp "$__git_log_pretty_formats
			" "" "${cur##--format=}";
            return
        ;;
        --*)
            __gitcomp "--pretty= --format= --abbrev-commit --oneline
			$__git_diff_common_options
			";
            return
        ;;
    esac;
    __git_complete_file
}

_git_show_branch () 
{ 
    local cur="${COMP_WORDS[COMP_CWORD]}";
    case "$cur" in 
        --*)
            __gitcomp "
			--all --remotes --topo-order --current --more=
			--list --independent --merge-base --no-name
			--color --no-color
			--sha1-name --sparse --topics --reflog
			";
            return
        ;;
    esac;
    __git_complete_revlist
}

_git_stage () 
{ 
    _git_add
}

_git_stash () 
{ 
    local cur="${COMP_WORDS[COMP_CWORD]}";
    local save_opts='--keep-index --no-keep-index --quiet --patch';
    local subcommands='save list show apply clear drop pop create branch';
    local subcommand="$(__git_find_on_cmdline "$subcommands")";
    if [ -z "$subcommand" ]; then
        case "$cur" in 
            --*)
                __gitcomp "$save_opts"
            ;;
            *)
                if [ -z "$(__git_find_on_cmdline "$save_opts")" ]; then
                    __gitcomp "$subcommands";
                else
                    COMPREPLY=();
                fi
            ;;
        esac;
    else
        case "$subcommand,$cur" in 
            save,--*)
                __gitcomp "$save_opts"
            ;;
            apply,--* | pop,--*)
                __gitcomp "--index --quiet"
            ;;
            show,--* | drop,--* | branch,--*)
                COMPREPLY=()
            ;;
            show,* | apply,* | drop,* | pop,* | branch,*)
                __gitcomp "$(git --git-dir="$(__gitdir)" stash list 					| sed -n -e 's/:.*//p')"
            ;;
            *)
                COMPREPLY=()
            ;;
        esac;
    fi
}

_git_submodule () 
{ 
    __git_has_doubledash && return;
    local subcommands="add status init update summary foreach sync";
    if [ -z "$(__git_find_on_cmdline "$subcommands")" ]; then
        local cur="${COMP_WORDS[COMP_CWORD]}";
        case "$cur" in 
            --*)
                __gitcomp "--quiet --cached"
            ;;
            *)
                __gitcomp "$subcommands"
            ;;
        esac;
        return;
    fi
}

_git_svn () 
{ 
    local subcommands="
		init fetch clone rebase dcommit log find-rev
		set-tree commit-diff info create-ignore propget
		proplist show-ignore show-externals branch tag blame
		migrate mkdirs reset gc
		";
    local subcommand="$(__git_find_on_cmdline "$subcommands")";
    if [ -z "$subcommand" ]; then
        __gitcomp "$subcommands";
    else
        local remote_opts="--username= --config-dir= --no-auth-cache";
        local fc_opts="
			--follow-parent --authors-file= --repack=
			--no-metadata --use-svm-props --use-svnsync-props
			--log-window-size= --no-checkout --quiet
			--repack-flags --use-log-author --localtime
			--ignore-paths= $remote_opts
			";
        local init_opts="
			--template= --shared= --trunk= --tags=
			--branches= --stdlayout --minimize-url
			--no-metadata --use-svm-props --use-svnsync-props
			--rewrite-root= --prefix= --use-log-author
			--add-author-from $remote_opts
			";
        local cmt_opts="
			--edit --rmdir --find-copies-harder --copy-similarity=
			";
        local cur="${COMP_WORDS[COMP_CWORD]}";
        case "$subcommand,$cur" in 
            fetch,--*)
                __gitcomp "--revision= --fetch-all $fc_opts"
            ;;
            clone,--*)
                __gitcomp "--revision= $fc_opts $init_opts"
            ;;
            init,--*)
                __gitcomp "$init_opts"
            ;;
            dcommit,--*)
                __gitcomp "
				--merge --strategy= --verbose --dry-run
				--fetch-all --no-rebase --commit-url
				--revision $cmt_opts $fc_opts
				"
            ;;
            set-tree,--*)
                __gitcomp "--stdin $cmt_opts $fc_opts"
            ;;
            create-ignore,--* | propget,--* | proplist,--* | show-ignore,--* | show-externals,--* | mkdirs,--*)
                __gitcomp "--revision="
            ;;
            log,--*)
                __gitcomp "
				--limit= --revision= --verbose --incremental
				--oneline --show-commit --non-recursive
				--authors-file= --color
				"
            ;;
            rebase,--*)
                __gitcomp "
				--merge --verbose --strategy= --local
				--fetch-all --dry-run $fc_opts
				"
            ;;
            commit-diff,--*)
                __gitcomp "--message= --file= --revision= $cmt_opts"
            ;;
            info,--*)
                __gitcomp "--url"
            ;;
            branch,--*)
                __gitcomp "--dry-run --message --tag"
            ;;
            tag,--*)
                __gitcomp "--dry-run --message"
            ;;
            blame,--*)
                __gitcomp "--git-format"
            ;;
            migrate,--*)
                __gitcomp "
				--config-dir= --ignore-paths= --minimize
				--no-auth-cache --username=
				"
            ;;
            reset,--*)
                __gitcomp "--revision= --parent"
            ;;
            *)
                COMPREPLY=()
            ;;
        esac;
    fi
}

_git_tag () 
{ 
    local i c=1 f=0;
    while [ $c -lt $COMP_CWORD ]; do
        i="${COMP_WORDS[c]}";
        case "$i" in 
            -d | -v)
                __gitcomp "$(__git_tags)";
                return
            ;;
            -f)
                f=1
            ;;
        esac;
        c=$((++c));
    done;
    case "${COMP_WORDS[COMP_CWORD-1]}" in 
        -m | -F)
            COMPREPLY=()
        ;;
        -* | tag)
            if [ $f = 1 ]; then
                __gitcomp "$(__git_tags)";
            else
                COMPREPLY=();
            fi
        ;;
        *)
            __gitcomp "$(__git_refs)"
        ;;
    esac
}

_git_whatchanged () 
{ 
    _git_log
}

_gitk () 
{ 
    __git_has_doubledash && return;
    local cur="${COMP_WORDS[COMP_CWORD]}";
    local g="$(__gitdir)";
    local merge="";
    if [ -f "$g/MERGE_HEAD" ]; then
        merge="--merge";
    fi;
    case "$cur" in 
        --*)
            __gitcomp "
			$__git_log_common_options
			$__git_log_gitk_options
			$merge
			";
            return
        ;;
    esac;
    __git_complete_revlist
}

_have () 
{ 
    PATH=$PATH:/usr/sbin:/sbin:/usr/local/sbin type $1 &> /dev/null
}

_included_ssh_config_files () 
{ 
    (($# < 1)) && echo "bash_completion: $FUNCNAME: missing mandatory argument CONFIG" 1>&2;
    local configfile i f;
    configfile=$1;
    local reset=$(shopt -po noglob);
    set -o noglob;
    local included=($(command sed -ne 's/^[[:blank:]]*[Ii][Nn][Cc][Ll][Uu][Dd][Ee][[:blank:]]\(.*\)$/\1/p' "${configfile}"));
    $reset;
    [[ -n ${included-} ]] || return;
    for i in "${included[@]}";
    do
        if ! [[ $i =~ ^\~.*|^\/.* ]]; then
            if [[ $configfile =~ ^\/etc\/ssh.* ]]; then
                i="/etc/ssh/$i";
            else
                i="$HOME/.ssh/$i";
            fi;
        fi;
        __expand_tilde_by_ref i;
        set +o noglob;
        for f in $i;
        do
            if [[ -r $f ]]; then
                config+=("$f");
                _included_ssh_config_files $f;
            fi;
        done;
        $reset;
    done
}

_init_completion () 
{ 
    local exclude="" flag outx errx inx OPTIND=1;
    while getopts "n:e:o:i:s" flag "$@"; do
        case $flag in 
            n)
                exclude+=$OPTARG
            ;;
            e)
                errx=$OPTARG
            ;;
            o)
                outx=$OPTARG
            ;;
            i)
                inx=$OPTARG
            ;;
            s)
                split=false;
                exclude+==
            ;;
            *)
                echo "bash_completion: $FUNCNAME: usage error" 1>&2;
                return 1
            ;;
        esac;
    done;
    COMPREPLY=();
    local redir="@(?([0-9])<|?([0-9&])>?(>)|>&)";
    _get_comp_words_by_ref -n "$exclude<>&" cur prev words cword;
    _variables && return 1;
    if [[ $cur == $redir* || ${prev-} == $redir ]]; then
        local xspec;
        case $cur in 
            2'>'*)
                xspec=${errx-}
            ;;
            *'>'*)
                xspec=${outx-}
            ;;
            *'<'*)
                xspec=${inx-}
            ;;
            *)
                case $prev in 
                    2'>'*)
                        xspec=${errx-}
                    ;;
                    *'>'*)
                        xspec=${outx-}
                    ;;
                    *'<'*)
                        xspec=${inx-}
                    ;;
                esac
            ;;
        esac;
        cur="${cur##$redir}";
        _filedir $xspec;
        return 1;
    fi;
    local i skip;
    for ((i = 1; i < ${#words[@]}; 1))
    do
        if [[ ${words[i]} == $redir* ]]; then
            [[ ${words[i]} == $redir ]] && skip=2 || skip=1;
            words=("${words[@]:0:i}" "${words[@]:i+skip}");
            ((i <= cword)) && ((cword -= skip));
        else
            ((i++));
        fi;
    done;
    ((cword <= 0)) && return 1;
    prev=${words[cword - 1]};
    [[ -n ${split-} ]] && _split_longopt && split=true;
    return 0
}

_installed_compilers () 
{ 
    if [[ -z "${SPACK_INSTALLED_COMPILERS:-}" ]]; then
        SPACK_INSTALLED_COMPILERS="$(spack compilers | egrep -v "^(-|=)")";
    fi;
    SPACK_COMPREPLY="$SPACK_INSTALLED_COMPILERS"
}

_installed_modules () 
{ 
    COMPREPLY=($(compgen -W "$(PATH="$PATH:/sbin" lsmod |
        awk '{if (NR != 1) print $1}')" -- "$1"))
}

_installed_packages () 
{ 
    if [[ -z "${SPACK_INSTALLED_PACKAGES:-}" ]]; then
        SPACK_INSTALLED_PACKAGES="$(spack --color=never find --no-groups)";
    fi;
    SPACK_COMPREPLY="$SPACK_INSTALLED_PACKAGES"
}

_ip_addresses () 
{ 
    local n;
    case ${1-} in 
        -a)
            n='6\?'
        ;;
        -6)
            n='6'
        ;;
        *)
            n=
        ;;
    esac;
    local PATH=$PATH:/sbin;
    local addrs=$({
        LC_ALL=C ifconfig -a || ip addr show
    } 2>/dev/null |
        command sed -e 's/[[:space:]]addr:/ /' -ne             "s|.*inet${n}[[:space:]]\{1,\}\([^[:space:]/]*\).*|\1|p");
    COMPREPLY+=($(compgen -W "$addrs" -- "${cur-}"))
}

_kernel_versions () 
{ 
    COMPREPLY=($(compgen -W '$(command ls /lib/modules)' -- "$cur"))
}

_keys () 
{ 
    if [[ -z "${SPACK_KEYS:-}" ]]; then
        SPACK_KEYS="$(spack gpg list)";
    fi;
    SPACK_COMPREPLY="$SPACK_KEYS"
}

_kmon () 
{ 
    local i cur prev opts cmd;
    COMPREPLY=();
    cur="${COMP_WORDS[COMP_CWORD]}";
    prev="${COMP_WORDS[COMP_CWORD-1]}";
    cmd="";
    opts="";
    for i in ${COMP_WORDS[@]};
    do
        case "${cmd},${i}" in 
            ",$1")
                cmd="kmon"
            ;;
            kmon,help)
                cmd="kmon__help"
            ;;
            kmon,sort)
                cmd="kmon__sort"
            ;;
            kmon__help,help)
                cmd="kmon__help__help"
            ;;
            kmon__help,sort)
                cmd="kmon__help__sort"
            ;;
            *)

            ;;
        esac;
    done;
    case "${cmd}" in 
        kmon)
            opts="-a -c -t -r -u -E -h -V --accent-color --color --tickrate --reverse --unicode --regex --help --version sort help";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 1 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                --accent-color)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -a)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --color)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --tickrate)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -t)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        kmon__help)
            opts="sort help";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        kmon__help__help)
            opts="";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        kmon__help__sort)
            opts="";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        kmon__sort)
            opts="-s -n -d -h --size --name --dependent --help";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
    esac
}

_known_hosts () 
{ 
    local cur prev words cword;
    _init_completion -n : || return;
    local options;
    [[ ${1-} == -a || ${2-} == -a ]] && options=-a;
    [[ ${1-} == -c || ${2-} == -c ]] && options+=" -c";
    _known_hosts_real ${options-} -- "$cur"
}

_known_hosts_real () 
{ 
    local configfile flag prefix="" ifs=$IFS;
    local cur suffix="" aliases i host ipv4 ipv6;
    local -a kh tmpkh=() khd=() config=();
    local OPTIND=1;
    while getopts "ac46F:p:" flag "$@"; do
        case $flag in 
            a)
                aliases='yes'
            ;;
            c)
                suffix=':'
            ;;
            F)
                configfile=$OPTARG
            ;;
            p)
                prefix=$OPTARG
            ;;
            4)
                ipv4=1
            ;;
            6)
                ipv6=1
            ;;
            *)
                echo "bash_completion: $FUNCNAME: usage error" 1>&2;
                return 1
            ;;
        esac;
    done;
    if (($# < OPTIND)); then
        echo "bash_completion: $FUNCNAME: missing mandatory argument CWORD" 1>&2;
        return 1;
    fi;
    cur=${!OPTIND};
    ((OPTIND += 1));
    if (($# >= OPTIND)); then
        echo "bash_completion: $FUNCNAME($*): unprocessed arguments:" "$(while (($# >= OPTIND)); do
                printf '%s ' ${!OPTIND}
                shift
            done)" 1>&2;
        return 1;
    fi;
    [[ $cur == *@* ]] && prefix=$prefix${cur%@*}@ && cur=${cur#*@};
    kh=();
    if [[ -v configfile ]]; then
        [[ -r $configfile ]] && config+=("$configfile");
    else
        for i in /etc/ssh/ssh_config ~/.ssh/config ~/.ssh2/config;
        do
            [[ -r $i ]] && config+=("$i");
        done;
    fi;
    local reset=$(shopt -po noglob);
    set -o noglob;
    if ((${#config[@]} > 0)); then
        for i in "${config[@]}";
        do
            _included_ssh_config_files "$i";
        done;
    fi;
    if ((${#config[@]} > 0)); then
        local IFS='
';
        tmpkh=($(awk 'sub("^[ \t]*([Gg][Ll][Oo][Bb][Aa][Ll]|[Uu][Ss][Ee][Rr])[Kk][Nn][Oo][Ww][Nn][Hh][Oo][Ss][Tt][Ss][Ff][Ii][Ll][Ee][ \t]+", "") { print $0 }' "${config[@]}" | sort -u));
        IFS=$ifs;
    fi;
    if ((${#tmpkh[@]} != 0)); then
        local j;
        for i in "${tmpkh[@]}";
        do
            while [[ $i =~ ^([^\"]*)\"([^\"]*)\"(.*)$ ]]; do
                i=${BASH_REMATCH[1]}${BASH_REMATCH[3]};
                j=${BASH_REMATCH[2]};
                __expand_tilde_by_ref j;
                [[ -r $j ]] && kh+=("$j");
            done;
            for j in $i;
            do
                __expand_tilde_by_ref j;
                [[ -r $j ]] && kh+=("$j");
            done;
        done;
    fi;
    if [[ ! -v configfile ]]; then
        for i in /etc/ssh/ssh_known_hosts /etc/ssh/ssh_known_hosts2 /etc/known_hosts /etc/known_hosts2 ~/.ssh/known_hosts ~/.ssh/known_hosts2;
        do
            [[ -r $i ]] && kh+=("$i");
        done;
        for i in /etc/ssh2/knownhosts ~/.ssh2/hostkeys;
        do
            [[ -d $i ]] && khd+=("$i"/*pub);
        done;
    fi;
    if ((${#kh[@]} + ${#khd[@]} > 0)); then
        if ((${#kh[@]} > 0)); then
            for i in "${kh[@]}";
            do
                while read -ra tmpkh; do
                    ((${#tmpkh[@]} == 0)) && continue;
                    set -- "${tmpkh[@]}";
                    [[ $1 == [\|\#]* ]] && continue;
                    [[ $1 == @* ]] && shift;
                    local IFS=,;
                    for host in $1;
                    do
                        [[ $host == *[*?]* ]] && continue;
                        host="${host#[}";
                        host="${host%]?(:+([0-9]))}";
                        COMPREPLY+=($host);
                    done;
                    IFS=$ifs;
                done < "$i";
            done;
            COMPREPLY=($(compgen -W '${COMPREPLY[@]}' -- "$cur"));
        fi;
        if ((${#khd[@]} > 0)); then
            for i in "${khd[@]}";
            do
                if [[ $i == *key_22_$cur*.pub && -r $i ]]; then
                    host=${i/#*key_22_/};
                    host=${host/%.pub/};
                    COMPREPLY+=($host);
                fi;
            done;
        fi;
        for i in ${!COMPREPLY[*]};
        do
            COMPREPLY[i]=$prefix${COMPREPLY[i]}$suffix;
        done;
    fi;
    if [[ ${#config[@]} -gt 0 && -v aliases ]]; then
        local -a hosts=($(command sed -ne 's/^[[:blank:]]*[Hh][Oo][Ss][Tt][[:blank:]]\(.*\)$/\1/p' "${config[@]}"));
        if ((${#hosts[@]} != 0)); then
            COMPREPLY+=($(compgen -P "$prefix"                 -S "$suffix" -W '${hosts[@]%%[*?%]*}' -X '\!*' -- "$cur"));
        fi;
    fi;
    if [[ -n ${COMP_KNOWN_HOSTS_WITH_AVAHI-} ]] && type avahi-browse &> /dev/null; then
        COMPREPLY+=($(compgen -P "$prefix" -S "$suffix" -W             "$(avahi-browse -cpr _workstation._tcp 2>/dev/null |
                awk -F';' '/^=/ { print $7 }' | sort -u)" -- "$cur"));
    fi;
    if type ruptime &> /dev/null; then
        COMPREPLY+=($(compgen -W             "$(ruptime 2>/dev/null | awk '!/^ruptime:/ { print $1 }')"             -- "$cur"));
    fi;
    if [[ -n ${COMP_KNOWN_HOSTS_WITH_HOSTFILE-1} ]]; then
        COMPREPLY+=($(compgen -A hostname -P "$prefix" -S "$suffix" -- "$cur"));
    fi;
    $reset;
    if [[ -v ipv4 ]]; then
        COMPREPLY=("${COMPREPLY[@]/*:*$suffix/}");
    fi;
    if [[ -v ipv6 ]]; then
        COMPREPLY=("${COMPREPLY[@]/+([0-9]).+([0-9]).+([0-9]).+([0-9])$suffix/}");
    fi;
    if [[ -v ipv4 || -v ipv6 ]]; then
        for i in "${!COMPREPLY[@]}";
        do
            [[ -n ${COMPREPLY[i]} ]] || unset -v "COMPREPLY[i]";
        done;
    fi;
    __ltrim_colon_completions "$prefix$cur"
}

_longopt () 
{ 
    local cur prev words cword split;
    _init_completion -s || return;
    case "${prev,,}" in 
        --help | --usage | --version)
            return
        ;;
        --!(no-*)dir*)
            _filedir -d;
            return
        ;;
        --!(no-*)@(file|path)*)
            _filedir;
            return
        ;;
        --+([-a-z0-9_]))
            local argtype=$(LC_ALL=C $1 --help 2>&1 | command sed -ne                 "s|.*$prev\[\{0,1\}=[<[]\{0,1\}\([-A-Za-z0-9_]\{1,\}\).*|\1|p");
            case ${argtype,,} in 
                *dir*)
                    _filedir -d;
                    return
                ;;
                *file* | *path*)
                    _filedir;
                    return
                ;;
            esac
        ;;
    esac;
    $split && return;
    if [[ $cur == -* ]]; then
        COMPREPLY=($(compgen -W "$(LC_ALL=C $1 --help 2>&1 |
            while read -r line; do
                [[ $line =~ --[A-Za-z0-9]+([-_][A-Za-z0-9]+)*=? ]] &&
                    printf '%s\n' ${BASH_REMATCH[0]}
            done)" -- "$cur"));
        [[ ${COMPREPLY-} == *= ]] && compopt -o nospace;
    else
        if [[ $1 == *@(rmdir|chroot) ]]; then
            _filedir -d;
        else
            [[ $1 == *mkdir ]] && compopt -o nospace;
            _filedir;
        fi;
    fi
}

_mac_addresses () 
{ 
    local re='\([A-Fa-f0-9]\{2\}:\)\{5\}[A-Fa-f0-9]\{2\}';
    local PATH="$PATH:/sbin:/usr/sbin";
    COMPREPLY+=($(
        {
            LC_ALL=C ifconfig -a || ip link show
        } 2>/dev/null | command sed -ne             "s/.*[[:space:]]HWaddr[[:space:]]\{1,\}\($re\)[[:space:]].*/\1/p" -ne             "s/.*[[:space:]]HWaddr[[:space:]]\{1,\}\($re\)[[:space:]]*$/\1/p" -ne             "s|.*[[:space:]]\(link/\)\{0,1\}ether[[:space:]]\{1,\}\($re\)[[:space:]].*|\2|p" -ne             "s|.*[[:space:]]\(link/\)\{0,1\}ether[[:space:]]\{1,\}\($re\)[[:space:]]*$|\2|p"
    ));
    COMPREPLY+=($({
        arp -an || ip neigh show
    } 2>/dev/null | command sed -ne         "s/.*[[:space:]]\($re\)[[:space:]].*/\1/p" -ne         "s/.*[[:space:]]\($re\)[[:space:]]*$/\1/p"));
    COMPREPLY+=($(command sed -ne         "s/^[[:space:]]*\($re\)[[:space:]].*/\1/p" /etc/ethers 2>/dev/null));
    COMPREPLY=($(compgen -W '${COMPREPLY[@]}' -- "$cur"));
    __ltrim_colon_completions "$cur"
}

_minimal () 
{ 
    local cur prev words cword split;
    _init_completion -s || return;
    $split && return;
    _filedir
}

_mirrors () 
{ 
    if [[ -z "${SPACK_MIRRORS:-}" ]]; then
        SPACK_MIRRORS="$(spack mirror list | awk '{print $1}')";
    fi;
    SPACK_COMPREPLY="$SPACK_MIRRORS"
}

_ml () 
{ 
    local cur="$2" prev="$3" cmds opts;
    COMPREPLY=();
    case "$prev" in 
        add | add-any | load | load-any | try-add | try-load)
            _module_comgen_words_and_files "--auto --no-auto --force -f --icase -i --tag --tag= $(_module_not_yet_loaded "$cur")" "$cur"
        ;;
        avail)
            _module_comgen_words_and_files "-a -C -d -i -j -L -l -o -S -t --all --contains --default --icase --json --latest --long --output --output= --starts-with --terse --indepth --no-indepth $(_module_avail "$cur")" "$cur"
        ;;
        edit)
            _module_comgen_words_and_files "$(_module_avail "$cur")" "$cur"
        ;;
        aliases)
            COMPREPLY=($(compgen -W "-a --all" -- "$cur"))
        ;;
        list | savelist)
            COMPREPLY=($(compgen -W "-a -j -l -o -t --all --json --long --output --output= --terse" -- "$cur"))
        ;;
        stashlist)
            COMPREPLY=($(compgen -W "-j -l -t --json --long --terse" -- "$cur"))
        ;;
        stashpop | stashshow | stashrm)
            COMPREPLY=($(compgen -W "$(_module_stashlist)" -- "$cur"))
        ;;
        clear)
            COMPREPLY=($(compgen -W "--force -f" -- "$cur"))
        ;;
        restore | save | saveshow | saverm | is-saved)
            COMPREPLY=($(compgen -W "$(_module_savelist)" -- "$cur"))
        ;;
        rm | del | remove | unload)
            COMPREPLY=($(compgen -W "--auto --no-auto --force -f --icase -i ${LOADEDMODULES//:/ }" -- "$cur"))
        ;;
        switch | swap)
            COMPREPLY=($(compgen -W "--auto --no-auto --force -f --icase -i --tag --tag= ${LOADEDMODULES//:/ }" -- "$cur"))
        ;;
        unuse | is-used)
            COMPREPLY=($(IFS=: compgen -W "${MODULEPATH}" -- "$cur"))
        ;;
        use | -a | --append | cachebuild)

        ;;
        display | help | show | test | path | paths | is-loaded | info-loaded)
            _module_comgen_words_and_files "-i --icase $(_module_avail "$cur")" "$cur"
        ;;
        is-avail)
            _module_comgen_words_and_files "-a -i --all --icase $(_module_avail "$cur")" "$cur"
        ;;
        lint)
            _module_comgen_words_and_files "-a -i --all --icase $(_module_avail "$cur")" "$cur"
        ;;
        mod-to-sh)
            _module_comgen_words_and_files "@comp_modtosh_opts@ $(_module_not_yet_loaded "$cur")" "$cur"
        ;;
        whatis)
            _module_comgen_words_and_files "-a -i -j --all --icase --json $(_module_avail "$cur")" "$cur"
        ;;
        apropos | keyword | search)
            COMPREPLY=($(compgen -W "-a -j --all --json" -- "$cur"))
        ;;
        config | --reset)
            COMPREPLY=($(compgen -W "--dump-state --reset advanced_version_spec auto_handling avail_indepth avail_output avail_terse_output cache_buffer_bytes cache_expiry_secs collection_pin_version collection_pin_tag collection_target color colors contact editor extended_default extra_siteconfig home icase ignore_cache ignore_user_rc implicit_default implicit_requirement list_output list_terse_output locked_configs mcookie_check mcookie_version_check ml nearly_forbidden_days pager protected_envvars quarantine_support rcfile redirect_output reset_target_state run_quarantine search_match set_shell_startup shells_with_ksh_fpath silent_shell_debug tag_abbrev tag_color_name tcl_linter term_background term_width unload_match_order variant_shortcut verbosity wa_277" -- "$cur"))
        ;;
        -h | --help | -V | --version | purge | refresh | reload | sh-to-mod | source | state | reset | stash | stashclear | cacheclear)

        ;;
        append-path | prepend-path)
            COMPREPLY=($(compgen -W "-d --delim --duplicates" -- "$cur"))
        ;;
        remove-path)
            COMPREPLY=($(compgen -W "-d --delim --index" -- "$cur"))
        ;;
        initadd | initclear | initlist | initprepend | initrm)

        ;;
        *)
            if test "$COMP_CWORD" -gt 2; then
                _module_long_arg_list "$cur";
            else
                case "$cur" in 
                    ls)
                        COMPREPLY=("list")
                    ;;
                    sw*)
                        COMPREPLY=("switch")
                    ;;
                    -*)
                        COMPREPLY=($(compgen -W "-D -h -s -T -v -V -w --debug --help --silent --trace --verbose --version --paginate --no-pager --color --color= --width --width= --ignore-cache --ignore-user-rc" -- "$cur"));
                        loaded_modules="";
                        for i in ${LOADEDMODULES//:/ };
                        do
                            loaded_modules+="-${i} ";
                        done;
                        COMPREPLY=("${COMPREPLY[@]}" $(compgen -W "--auto --no-auto --force -f --icase -i --tag --tag= $loaded_modules" -- "$cur"))
                    ;;
                    *)
                        _module_comgen_words_and_files "--auto --no-auto --force -f --icase -i --tag --tag= $(_module_not_yet_loaded "$cur")" "$cur";
                        COMPREPLY=("${COMPREPLY[@]}" $(compgen -W "-D -h -s -T -v -V -w --debug --help --silent --trace --verbose --version --paginate --no-pager --color --color= --width --width= --ignore-cache --ignore-user-rc add add-any apropos aliases avail append-path cachebuild cacheclear clear config del display edit help initadd initclear initlist initprepend initrm is-loaded is-saved is-used is-avail info-loaded keyword lint list load load-any mod-to-sh path paths purge prepend-path refresh reload reset restore rm remove remove-path save savelist saveshow saverm search show sh-to-mod source stash stashclear stashlist stashpop stashrm stashshow state swap switch test try-add try-load unload unuse use whatis" -- "$cur"));
                        loaded_modules="";
                        for i in ${LOADEDMODULES//:/ };
                        do
                            loaded_modules+="-${i} ";
                        done;
                        COMPREPLY=("${COMPREPLY[@]}" $(compgen -W "--auto --no-auto --force -f --icase -i --tag --tag= $loaded_modules" -- "$cur"))
                    ;;
                esac;
            fi
        ;;
    esac
}

_module () 
{ 
    local cur="$2" prev="$3" cmds opts;
    COMPREPLY=();
    case "$prev" in 
        add | add-any | load | load-any | try-add | try-load)
            _module_comgen_words_and_files "--auto --no-auto --force -f --icase -i --tag --tag= $(_module_not_yet_loaded "$cur")" "$cur"
        ;;
        avail)
            _module_comgen_words_and_files "-a -C -d -i -j -L -l -o -S -t --all --contains --default --icase --json --latest --long --output --output= --starts-with --terse --indepth --no-indepth $(_module_avail "$cur")" "$cur"
        ;;
        edit)
            _module_comgen_words_and_files "$(_module_avail "$cur")" "$cur"
        ;;
        aliases)
            COMPREPLY=($(compgen -W "-a --all" -- "$cur"))
        ;;
        list | savelist)
            COMPREPLY=($(compgen -W "-a -j -l -o -t --all --json --long --output --output= --terse" -- "$cur"))
        ;;
        stashlist)
            COMPREPLY=($(compgen -W "-j -l -t --json --long --terse" -- "$cur"))
        ;;
        stashpop | stashshow | stashrm)
            COMPREPLY=($(compgen -W "$(_module_stashlist)" -- "$cur"))
        ;;
        clear)
            COMPREPLY=($(compgen -W "--force -f" -- "$cur"))
        ;;
        restore | save | saveshow | saverm | is-saved)
            COMPREPLY=($(compgen -W "$(_module_savelist)" -- "$cur"))
        ;;
        rm | del | remove | unload)
            COMPREPLY=($(compgen -W "--auto --no-auto --force -f --icase -i ${LOADEDMODULES//:/ }" -- "$cur"))
        ;;
        switch | swap)
            COMPREPLY=($(compgen -W "--auto --no-auto --force -f --icase -i --tag --tag= ${LOADEDMODULES//:/ }" -- "$cur"))
        ;;
        unuse | is-used)
            COMPREPLY=($(IFS=: compgen -W "${MODULEPATH}" -- "$cur"))
        ;;
        use | -a | --append | cachebuild)

        ;;
        display | help | show | test | path | paths | is-loaded | info-loaded)
            _module_comgen_words_and_files "-i --icase $(_module_avail "$cur")" "$cur"
        ;;
        is-avail)
            _module_comgen_words_and_files "-a -i --all --icase $(_module_avail "$cur")" "$cur"
        ;;
        lint)
            _module_comgen_words_and_files "-a -i --all --icase $(_module_avail "$cur")" "$cur"
        ;;
        mod-to-sh)
            _module_comgen_words_and_files "@comp_modtosh_opts@ $(_module_not_yet_loaded "$cur")" "$cur"
        ;;
        whatis)
            _module_comgen_words_and_files "-a -i -j --all --icase --json $(_module_avail "$cur")" "$cur"
        ;;
        apropos | keyword | search)
            COMPREPLY=($(compgen -W "-a -j --all --json" -- "$cur"))
        ;;
        config | --reset)
            COMPREPLY=($(compgen -W "--dump-state --reset advanced_version_spec auto_handling avail_indepth avail_output avail_terse_output cache_buffer_bytes cache_expiry_secs collection_pin_version collection_pin_tag collection_target color colors contact editor extended_default extra_siteconfig home icase ignore_cache ignore_user_rc implicit_default implicit_requirement list_output list_terse_output locked_configs mcookie_check mcookie_version_check ml nearly_forbidden_days pager protected_envvars quarantine_support rcfile redirect_output reset_target_state run_quarantine search_match set_shell_startup shells_with_ksh_fpath silent_shell_debug tag_abbrev tag_color_name tcl_linter term_background term_width unload_match_order variant_shortcut verbosity wa_277" -- "$cur"))
        ;;
        -h | --help | -V | --version | purge | refresh | reload | sh-to-mod | source | state | reset | stash | stashclear | cacheclear)

        ;;
        append-path | prepend-path)
            COMPREPLY=($(compgen -W "-d --delim --duplicates" -- "$cur"))
        ;;
        remove-path)
            COMPREPLY=($(compgen -W "-d --delim --index" -- "$cur"))
        ;;
        initadd | initclear | initlist | initprepend | initrm)

        ;;
        *)
            if test "$COMP_CWORD" -gt 2; then
                _module_long_arg_list "$cur";
            else
                case "$cur" in 
                    ls)
                        COMPREPLY=("list")
                    ;;
                    sw*)
                        COMPREPLY=("switch")
                    ;;
                    -*)
                        COMPREPLY=($(compgen -W "-D -h -s -T -v -V -w --debug --help --silent --trace --verbose --version --paginate --no-pager --color --color= --width --width= --ignore-cache --ignore-user-rc" -- "$cur"))
                    ;;
                    *)
                        COMPREPLY=($(compgen -W "-D -h -s -T -v -V -w --debug --help --silent --trace --verbose --version --paginate --no-pager --color --color= --width --width= --ignore-cache --ignore-user-rc add add-any apropos aliases avail append-path cachebuild cacheclear clear config del display edit help initadd initclear initlist initprepend initrm is-loaded is-saved is-used is-avail info-loaded keyword lint list load load-any mod-to-sh path paths purge prepend-path refresh reload reset restore rm remove remove-path save savelist saveshow saverm search show sh-to-mod source stash stashclear stashlist stashpop stashrm stashshow state swap switch test try-add try-load unload unuse use whatis" -- "$cur"))
                    ;;
                esac;
            fi
        ;;
    esac
}

_module_avail () 
{ 
    local cur="${1:-}";
    if [ -z "$cur" ] || [ "${cur:0:1}" != '-' ]; then
        module avail --color=never -s -t -S --no-indepth -o '' "$cur" 2>&1;
    fi
}

_module_comgen_words_and_files () 
{ 
    local k=0;
    local setnospace=1;
    for val in $(compgen -W "$1" -- "$2");
    do
        if [ $setnospace -eq 1 ] && [ "${val: -1:1}" = '/' ]; then
            type compopt &> /dev/null && compopt -o nospace;
            setnospace=0;
        fi;
        COMPREPLY[k++]="$val";
    done
}

_module_long_arg_list () 
{ 
    local cur="$1" i;
    if [[ ${COMP_WORDS[COMP_CWORD-2]} == sw* ]]; then
        _module_comgen_words_and_files "$(_module_not_yet_loaded "$cur")" "$cur";
        return;
    fi;
    for ((i = COMP_CWORD - 1; i > 0; i--))
    do
        case ${COMP_WORDS[$i]} in 
            add | load)
                _module_comgen_words_and_files "$(_module_not_yet_loaded "$cur")" "$cur";
                break
            ;;
            rm | del | remove | unload | switch | swap)
                COMPREPLY=($(IFS=: compgen -W "${LOADEDMODULES}" -- "$cur"));
                break
            ;;
        esac;
    done
}

_module_not_yet_loaded () 
{ 
    _module_avail "${1:-}" | sort | sed -E "\%^(${LOADEDMODULES//:/|})$%d"
}

_module_raw () 
{ 
    eval "$(/usr/bin/tclsh '/usr/share/Modules/libexec/modulecmd.tcl' bash "$@")";
    _mlstatus=$?;
    return $_mlstatus
}

_module_savelist () 
{ 
    module savelist --color=never -s -t 2>&1 | sed '
        /No named collection\.$/d;
        /Named collection list$/d;
        /:$/d;'
}

_module_stashlist () 
{ 
    module stashlist --color=never -s -t 2>&1 | sed '
        /No stash collection\.$/d;
        /Stash collection list$/d;
        /:$/d;'
}

_modules () 
{ 
    local modpath;
    modpath=/lib/modules/$1;
    COMPREPLY=($(compgen -W "$(command ls -RL $modpath 2>/dev/null |
        command sed -ne 's/^\(.*\)\.k\{0,1\}o\(\.[gx]z\)\{0,1\}$/\1/p')" -- "$cur"))
}

_mqttui () 
{ 
    local i cur prev opts cmd;
    COMPREPLY=();
    cur="${COMP_WORDS[COMP_CWORD]}";
    prev="${COMP_WORDS[COMP_CWORD-1]}";
    cmd="";
    opts="";
    for i in ${COMP_WORDS[@]};
    do
        case "${cmd},${i}" in 
            ",$1")
                cmd="mqttui"
            ;;
            mqttui,c)
                cmd="mqttui__clean__retained"
            ;;
            mqttui,clean)
                cmd="mqttui__clean__retained"
            ;;
            mqttui,clean-retained)
                cmd="mqttui__clean__retained"
            ;;
            mqttui,help)
                cmd="mqttui__help"
            ;;
            mqttui,l)
                cmd="mqttui__log"
            ;;
            mqttui,log)
                cmd="mqttui__log"
            ;;
            mqttui,p)
                cmd="mqttui__publish"
            ;;
            mqttui,pub)
                cmd="mqttui__publish"
            ;;
            mqttui,publish)
                cmd="mqttui__publish"
            ;;
            mqttui,r)
                cmd="mqttui__read__one"
            ;;
            mqttui,read)
                cmd="mqttui__read__one"
            ;;
            mqttui,read-one)
                cmd="mqttui__read__one"
            ;;
            mqttui__help,clean-retained)
                cmd="mqttui__help__clean__retained"
            ;;
            mqttui__help,help)
                cmd="mqttui__help__help"
            ;;
            mqttui__help,log)
                cmd="mqttui__help__log"
            ;;
            mqttui__help,publish)
                cmd="mqttui__help__publish"
            ;;
            mqttui__help,read-one)
                cmd="mqttui__help__read__one"
            ;;
            *)

            ;;
        esac;
    done;
    case "${cmd}" in 
        mqttui)
            opts="-b -u -i -h -V --payload-size-limit --broker --username --password --client-id --client-cert --client-key --insecure --help --version [TOPIC]... clean-retained c clean log l read-one r read publish p pub help";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 1 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                --payload-size-limit)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                --broker)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --username)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --password)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                --client-id)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                -i)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                --client-cert)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                --client-key)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        mqttui__clean__retained)
            opts="-b -u -i -h --timeout --dry-run --broker --username --password --client-id --client-cert --client-key --insecure --help <TOPIC>";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                --timeout)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                --broker)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --username)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --password)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                --client-id)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                -i)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                --client-cert)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                --client-key)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        mqttui__clean__retained)
            opts="-b -u -i -h --timeout --dry-run --broker --username --password --client-id --client-cert --client-key --insecure --help <TOPIC>";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                --timeout)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                --broker)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --username)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --password)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                --client-id)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                -i)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                --client-cert)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                --client-key)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        mqttui__clean__retained)
            opts="-b -u -i -h --timeout --dry-run --broker --username --password --client-id --client-cert --client-key --insecure --help <TOPIC>";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                --timeout)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                --broker)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --username)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --password)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                --client-id)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                -i)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                --client-cert)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                --client-key)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        mqttui__help)
            opts="clean-retained log read-one publish help";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        mqttui__help__clean__retained)
            opts="";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        mqttui__help__help)
            opts="";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        mqttui__help__log)
            opts="";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        mqttui__help__publish)
            opts="";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        mqttui__help__read__one)
            opts="";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        mqttui__log)
            opts="-j -v -b -u -i -h --json --verbose --broker --username --password --client-id --client-cert --client-key --insecure --help [TOPIC]...";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                --broker)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --username)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --password)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                --client-id)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                -i)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                --client-cert)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                --client-key)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        mqttui__log)
            opts="-j -v -b -u -i -h --json --verbose --broker --username --password --client-id --client-cert --client-key --insecure --help [TOPIC]...";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                --broker)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --username)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --password)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                --client-id)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                -i)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                --client-cert)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                --client-key)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        mqttui__publish)
            opts="-r -v -b -u -i -h --retain --verbose --broker --username --password --client-id --client-cert --client-key --insecure --help <TOPIC> [PAYLOAD]";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                --broker)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --username)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --password)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                --client-id)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                -i)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                --client-cert)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                --client-key)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        mqttui__publish)
            opts="-r -v -b -u -i -h --retain --verbose --broker --username --password --client-id --client-cert --client-key --insecure --help <TOPIC> [PAYLOAD]";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                --broker)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --username)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --password)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                --client-id)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                -i)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                --client-cert)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                --client-key)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        mqttui__publish)
            opts="-r -v -b -u -i -h --retain --verbose --broker --username --password --client-id --client-cert --client-key --insecure --help <TOPIC> [PAYLOAD]";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                --broker)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --username)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --password)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                --client-id)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                -i)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                --client-cert)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                --client-key)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        mqttui__read__one)
            opts="-r -p -b -u -i -h --ignore-retained --pretty --broker --username --password --client-id --client-cert --client-key --insecure --help [TOPIC]...";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                --broker)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --username)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --password)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                --client-id)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                -i)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                --client-cert)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                --client-key)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        mqttui__read__one)
            opts="-r -p -b -u -i -h --ignore-retained --pretty --broker --username --password --client-id --client-cert --client-key --insecure --help [TOPIC]...";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                --broker)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --username)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --password)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                --client-id)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                -i)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                --client-cert)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                --client-key)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        mqttui__read__one)
            opts="-r -p -b -u -i -h --ignore-retained --pretty --broker --username --password --client-id --client-cert --client-key --insecure --help [TOPIC]...";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                --broker)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --username)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                -u)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --password)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                --client-id)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                -i)
                    COMPREPLY=("${cur}");
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace;
                    fi;
                    return 0
                ;;
                --client-cert)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                --client-key)
                    local oldifs;
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS";
                    fi;
                    IFS='
';
                    COMPREPLY=($(compgen -f "${cur}"));
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs";
                    fi;
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames;
                    fi;
                    return 0
                ;;
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
    esac
}

_ncpus () 
{ 
    local var=NPROCESSORS_ONLN;
    [[ $OSTYPE == *linux* ]] && var=_$var;
    local n=$(getconf $var 2>/dev/null);
    printf %s ${n:-1}
}

_parse_help () 
{ 
    eval local cmd="$(quote "$1")";
    local line;
    { 
        case $cmd in 
            -)
                cat
            ;;
            *)
                LC_ALL=C "$(dequote "$cmd")" ${2:---help} 2>&1
            ;;
        esac
    } | while read -r line; do
        [[ $line == *([[:blank:]])-* ]] || continue;
        while [[ $line =~ ((^|[^-])-[A-Za-z0-9?][[:space:]]+)\[?[A-Z0-9]+([,_-]+[A-Z0-9]+)?(\.\.+)?\]? ]]; do
            line=${line/"${BASH_REMATCH[0]}"/"${BASH_REMATCH[1]}"};
        done;
        __parse_options "${line// or /, }";
    done
}

_parse_usage () 
{ 
    eval local cmd="$(quote "$1")";
    local line match option i char;
    { 
        case $cmd in 
            -)
                cat
            ;;
            *)
                LC_ALL=C "$(dequote "$cmd")" ${2:---usage} 2>&1
            ;;
        esac
    } | while read -r line; do
        while [[ $line =~ \[[[:space:]]*(-[^]]+)[[:space:]]*\] ]]; do
            match=${BASH_REMATCH[0]};
            option=${BASH_REMATCH[1]};
            case $option in 
                -?(\[)+([a-zA-Z0-9?]))
                    for ((i = 1; i < ${#option}; i++))
                    do
                        char=${option:i:1};
                        [[ $char != '[' ]] && printf '%s\n' -$char;
                    done
                ;;
                *)
                    __parse_options "$option"
                ;;
            esac;
            line=${line#*"$match"};
        done;
    done
}

_pci_ids () 
{ 
    COMPREPLY+=($(compgen -W         "$(PATH="$PATH:/sbin" lspci -n | awk '{print $3}')" -- "$cur"))
}

_pgids () 
{ 
    COMPREPLY=($(compgen -W '$(command ps axo pgid=)' -- "$cur"))
}

_phoronix_test_suite_show () 
{ 
    local cur;
    COMPREPLY=();
    cur=${COMP_WORDS[COMP_CWORD]};
    COMPREPLY=($( compgen -W "$(phoronix-test-suite dump-possible-options)" -- "$cur" ))
}

_pids () 
{ 
    COMPREPLY=($(compgen -W '$(command ps axo pid=)' -- "$cur"))
}

_pnames () 
{ 
    local -a procs;
    if [[ ${1-} == -s ]]; then
        procs=($(command ps axo comm | command sed -e 1d));
    else
        local line i=-1 ifs=$IFS;
        IFS='
';
        local -a psout=($(command ps axo command=));
        IFS=$ifs;
        for line in "${psout[@]}";
        do
            if ((i == -1)); then
                if [[ $line =~ ^(.*[[:space:]])COMMAND([[:space:]]|$) ]]; then
                    i=${#BASH_REMATCH[1]};
                else
                    break;
                fi;
            else
                line=${line:i};
                line=${line%% *};
                procs+=($line);
            fi;
        done;
        if ((i == -1)); then
            for line in "${psout[@]}";
            do
                if [[ $line =~ ^[[(](.+)[])]$ ]]; then
                    procs+=(${BASH_REMATCH[1]});
                else
                    line=${line%% *};
                    line=${line##@(*/|-)};
                    procs+=($line);
                fi;
            done;
        fi;
    fi;
    COMPREPLY=($(compgen -X "<defunct>" -W '${procs[@]}' -- "$cur"))
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

_quote_readline_by_ref () 
{ 
    if [[ $1 == \'* ]]; then
        printf -v $2 %s "${1:1}";
    else
        printf -v $2 %q "$1";
    fi;
    [[ ${!2} == \$* ]] && eval $2=${!2}
}

_rados () 
{ 
    local cur prev;
    COMPREPLY=();
    cur="${COMP_WORDS[COMP_CWORD]}";
    prev="${COMP_WORDS[COMP_CWORD-1]}";
    if [[ ${cur} == -* ]]; then
        COMPREPLY=($(compgen -W "-c --conf -m -d -f -p --pool -b --snap -i -o --create" -- ${cur}));
        return 0;
    fi;
    case "${prev}" in 
        --conf | -c | -o | -i)
            COMPREPLY=($(compgen -f ${cur}));
            return 0
        ;;
        -m)
            COMPREPLY=($(compgen -A hostname ${cur}));
            return 0
        ;;
        rados)
            COMPREPLY=($(compgen -W "lspools df ls chown get put create rm listxattr getxattr setxattr rmxattr stat stat2 mapext lssnap mksnap rmsnap rollback bench" -- ${cur}));
            return 0
        ;;
    esac
}

_radosgw_admin () 
{ 
    local cur prev;
    COMPREPLY=();
    cur="${COMP_WORDS[COMP_CWORD]}";
    prev="${COMP_WORDS[COMP_CWORD-1]}";
    if [[ ${cur} == -* ]]; then
        COMPREPLY=($(compgen -W "--uid --subuser --access-key --os-user --email --auth_uid --secret --os-secret --gen-access-key --gen-secret                                       --access --display-name --bucket --object --date --conf --name --id --version -s -w" -- ${cur}));
        return 0;
    fi;
    case "${prev}" in 
        --conf | -c)
            COMPREPLY=($(compgen -f ${cur}));
            return 0
        ;;
        -m)
            COMPREPLY=($(compgen -A hostname ${cur}));
            return 0
        ;;
        user)
            COMPREPLY=($(compgen -W "create modify info rm" -- ${cur}));
            return 0
        ;;
        subuser)
            COMPREPLY=($(compgen -W "create modify rm" -- ${cur}));
            return 0
        ;;
        key)
            COMPREPLY=($(compgen -W "create rm" -- ${cur}));
            return 0
        ;;
        buckets)
            COMPREPLY=($(compgen -W "list unlink" -- ${cur}));
            return 0
        ;;
        *)
            COMPREPLY=($(compgen -W "user subuser key buckets policy log" -- ${cur}));
            return 0
        ;;
    esac
}

_rbd () 
{ 
    if [ "x${_rbd_commands}" == "x" ]; then
        local rbc="$(rbd bash-completion 2>/dev/null)";
        _rbd_commands="$(echo ${rbc} | sed -e 's/|-[^|]*//g' -e 's/||*/|/g')";
        _rbd_global_options="$(echo ${rbc} | sed -e 's/|[^-][^\|]*//g' -e 's/||*/|/g')";
    fi;
    COMPREPLY=();
    local arg_count=${#COMP_WORDS[@]};
    local args=();
    local help_request="false";
    for ((i=1; i<arg_count; i++ ))
    do
        word="${COMP_WORDS[i]}";
        if [[ "x${word}" == "xhelp" && ${#args} == 0 ]]; then
            help_request="true";
            continue;
        else
            if [[ -n $(echo ${_rbd_global_options} | grep "|${word}|") ]]; then
                continue;
            else
                if [[ "x${word:0:1}" == "x-" ]]; then
                    let i=$i+1;
                    continue;
                else
                    if [[ "x${word}" == "x" ]]; then
                        continue;
                    fi;
                fi;
            fi;
        fi;
        args+=("${word}");
    done;
    local cur="${COMP_WORDS[COMP_CWORD]}";
    local prev="${COMP_WORDS[COMP_CWORD-1]}";
    local options_exp=${_rbd_global_options};
    local command="${args[@]}";
    local valid_command="false";
    if [[ ${#args} != 0 && "${args[-1]}" != "${cur}" && $(echo "${_rbd_commands}" | grep -c "|${command}|") == 1 ]]; then
        local rbd_command_options="$(rbd bash-completion ${args[@]} 2>/dev/null)";
        options_exp="${options_exp} ${rbd_command_options}";
        valid_command="true";
    fi;
    if [[ "x${cur}" == "xhelp" ]]; then
        COMPREPLY=();
    else
        if [[ "${options_exp}}" =~ "|${prev} path|" ]]; then
            COMPREPLY=($(compgen -f ${cur}));
        else
            if [[ "${options_exp}}" =~ "|${prev} host|" ]]; then
                COMPREPLY=($(compgen -A hostname ${cur}));
            else
                if [[ "${help_request}" == "false" && ( "x${cur:0:1}" == "x-" || ( "x${cur}" == "x" && "${valid_command}" == "true" ) ) ]]; then
                    options="$(echo ${options_exp} | sed -e 's/||*/ /g' -r -e 's/ (arg|path|host)//g')";
                    COMPREPLY=($(compgen -W "${options}" -- ${cur}));
                else
                    if [[ "${valid_command}" == "false" ]]; then
                        [[ "x${command}" != "x" && "x${cur}" == "x" ]] && command="${command} ";
                        COMPREPLY=($(echo ${_rbd_commands} | grep -o "|${command}[^ |]*" | 			uniq | sed -e 's/|//g' | awk -F' ' '{print $(NF)}'));
                    fi;
                fi;
            fi;
        fi;
    fi
}

_realcommand () 
{ 
    type -P "$1" > /dev/null && { 
        if type -p realpath > /dev/null; then
            realpath "$(type -P "$1")";
        else
            if type -p greadlink > /dev/null; then
                greadlink -f "$(type -P "$1")";
            else
                if type -p readlink > /dev/null; then
                    readlink -f "$(type -P "$1")";
                else
                    type -P "$1";
                fi;
            fi;
        fi
    }
}

_repos () 
{ 
    if [[ -z "${SPACK_REPOS:-}" ]]; then
        SPACK_REPOS="$(spack repo list | awk '{print $1}')";
    fi;
    SPACK_COMPREPLY="$SPACK_REPOS"
}

_rl_enabled () 
{ 
    [[ "$(bind -v)" == *$1+([[:space:]])on* ]]
}

_root_command () 
{ 
    local PATH=$PATH:/sbin:/usr/sbin:/usr/local/sbin;
    local root_command=$1;
    _command
}

_scl () 
{ 
    local cur actions cur_action collections;
    COMPREPLY=();
    cur="${COMP_WORDS[COMP_CWORD]}";
    actions="enable run load unload list-collections list-packages man register deregister --help";
    collections=`scl list-collections`;
    if ((COMP_CWORD == 1)); then
        COMPREPLY=($(compgen -W "${actions}" -- ${cur}));
        return 0;
    fi;
    if ((COMP_CWORD > 3)); then
        for word in "${COMP_WORDS[@]}";
        do
            if [[ ${word} == \'* || ${word} == \"* || ${word} == "--" ]]; then
                return 0;
            fi;
        done;
    fi;
    if ((COMP_CWORD >= 2)); then
        cur_action="${COMP_WORDS[1]}";
        case "$cur_action" in 
            list-collections | list-enabled | --help)
                return 0
            ;;
            list-packages | man)
                if ((COMP_CWORD == 2)); then
                    COMPREPLY=($(compgen -W  "$collections" -- ${cur}));
                fi;
                return 0
            ;;
            deregister)
                if ((COMP_CWORD == 2)); then
                    COMPREPLY=($(compgen -W  "$collections --force -f" -- ${cur}));
                fi;
                if [ "$COMP_CWORD" -eq 3 -a "(" "${COMP_WORDS[2]}" == "--force" -o "${COMP_WORDS[2]}" == "-f" ")" ]; then
                    COMPREPLY=($(compgen -W  "$collections" -- ${cur}));
                fi;
                return 0
            ;;
            register)
                compopt -o plusdirs;
                if ((COMP_CWORD == 2)); then
                    COMPREPLY=($(compgen -A  directory -- ${cur}));
                fi;
                return 0
            ;;
            run | enable)
                if ((COMP_CWORD == 2)); then
                    COMPREPLY=($(compgen -W  "$collections -x --exec" -- ${cur}));
                else
                    COMPREPLY=($(compgen -W  "$collections" -- ${cur}));
                fi;
                return 0
            ;;
            load | unload)
                COMPREPLY=($(compgen -W  "$collections" -- ${cur}));
                return 0
            ;;
            *)

            ;;
        esac;
    fi
}

_service () 
{ 
    local cur prev words cword;
    _init_completion || return;
    ((cword > 2)) && return;
    if [[ $cword -eq 1 && $prev == ?(*/)service ]]; then
        _services;
        [[ -e /etc/mandrake-release ]] && _xinetd_services;
    else
        local sysvdirs;
        _sysvdirs;
        COMPREPLY=($(compgen -W '`command sed -e "y/|/ /" \
            -ne "s/^.*\(U\|msg_u\)sage.*{\(.*\)}.*$/\2/p" \
            ${sysvdirs[0]}/${prev##*/} 2>/dev/null` start stop' -- "$cur"));
    fi
}

_services () 
{ 
    local sysvdirs;
    _sysvdirs;
    local IFS=' 	
' reset=$(shopt -p nullglob);
    shopt -s nullglob;
    COMPREPLY=($(printf '%s\n' ${sysvdirs[0]}/!($_backup_glob|functions|README)));
    $reset;
    COMPREPLY+=($({
        systemctl list-units --full --all ||
            systemctl list-unit-files
    } 2>/dev/null |
        awk '$1 ~ /\.service$/ { sub("\\.service$", "", $1); print $1 }'));
    if [[ -x /sbin/upstart-udev-bridge ]]; then
        COMPREPLY+=($(initctl list 2>/dev/null | cut -d' ' -f1));
    fi;
    COMPREPLY=($(compgen -W '${COMPREPLY[@]#${sysvdirs[0]}/}' -- "$cur"))
}

_shells () 
{ 
    local shell rest;
    while read -r shell rest; do
        [[ $shell == /* && $shell == "$cur"* ]] && COMPREPLY+=($shell);
    done 2> /dev/null < /etc/shells
}

_signals () 
{ 
    local -a sigs=($(compgen -P "${1-}" -A signal "SIG${cur#${1-}}"));
    COMPREPLY+=("${sigs[@]/#${1-}SIG/${1-}}")
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

_split_longopt () 
{ 
    if [[ $cur == --?*=* ]]; then
        prev="${cur%%?(\\)=*}";
        cur="${cur#*=}";
        return 0;
    fi;
    return 1
}

_subcommands () 
{ 
    if [[ -z "${SPACK_SUBCOMMANDS:-}" ]]; then
        SPACK_SUBCOMMANDS="$(spack commands)";
    fi;
    SPACK_COMPREPLY="$SPACK_SUBCOMMANDS"
}

_sysfs_get_netdevs () 
{ 
    COMPREPLY+=($( compgen -W "$( ls /sys/class/net 2>/dev/null )" --         "$cur" ))
}

_sysvdirs () 
{ 
    sysvdirs=();
    [[ -d /etc/rc.d/init.d ]] && sysvdirs+=(/etc/rc.d/init.d);
    [[ -d /etc/init.d ]] && sysvdirs+=(/etc/init.d);
    [[ -f /etc/slackware-version ]] && sysvdirs=(/etc/rc.d);
    return 0
}

_terms () 
{ 
    COMPREPLY+=($(compgen -W "$({
        command sed -ne 's/^\([^[:space:]#|]\{2,\}\)|.*/\1/p' /etc/termcap
        {
            toe -a || toe
        } | awk '{ print $1 }'
        find /{etc,lib,usr/lib,usr/share}/terminfo/? -type f -maxdepth 1 |
            awk -F/ '{ print $NF }'
    } 2>/dev/null)" -- "$cur"))
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

_tilde () 
{ 
    local result=0;
    if [[ ${1-} == \~* && $1 != */* ]]; then
        COMPREPLY=($(compgen -P '~' -u -- "${1#\~}"));
        result=${#COMPREPLY[@]};
        ((result > 0)) && compopt -o filenames 2> /dev/null;
    fi;
    return $result
}

_tldr () 
{ 
    local cur="${COMP_WORDS[COMP_CWORD]}";
    local prev="${COMP_WORDS[COMP_CWORD-1]}";
    local opts="-u -l -a -i -r -p -L -o -c -R -q -v -h     --update --list --list-all --list-platforms --list-languages     --info --render --clean-cache --gen-config --config-path --platform     --language --offline --compact --no-compact --raw --no-raw --quiet     --color --config --version --help";
    if [[ $cur == -* ]]; then
        mapfile -t COMPREPLY < <(compgen -W "$opts" -- "$cur");
        return 0;
    fi;
    case $prev in 
        -r | --render | --config)
            mapfile -t COMPREPLY < <(compgen -f -- "$cur")
        ;;
        --color)
            mapfile -t COMPREPLY < <(compgen -W "auto always never" -- "$cur")
        ;;
        -p | --platform)
            mapfile -t COMPREPLY < <(compgen -W "$(tldr --offline --list-platforms 2> /dev/null)" -- "$cur")
        ;;
        -L | --language)
            mapfile -t COMPREPLY < <(compgen -W "$(tldr --offline --list-languages 2> /dev/null)" -- "$cur")
        ;;
        *)
            mapfile -t COMPREPLY < <(compgen -W "$(tldr --offline --list-all 2> /dev/null)" -- "$cur")
        ;;
    esac
}

_uids () 
{ 
    if type getent &> /dev/null; then
        COMPREPLY=($(compgen -W '$(getent passwd | cut -d: -f3)' -- "$cur"));
    else
        if type perl &> /dev/null; then
            COMPREPLY=($(compgen -W '$(perl -e '"'"'while (($uid) = (getpwent)[2]) { print $uid . "\n" }'"'"')' -- "$cur"));
        else
            COMPREPLY=($(compgen -W '$(cut -d: -f3 /etc/passwd)' -- "$cur"));
        fi;
    fi
}

_unit_tests () 
{ 
    if [[ -z "${SPACK_TESTS:-}" ]]; then
        SPACK_TESTS="$(spack unit-test -l)";
    fi;
    SPACK_COMPREPLY="$SPACK_TESTS"
}

_upvar () 
{ 
    echo "bash_completion: $FUNCNAME: deprecated function," "use _upvars instead" 1>&2;
    if unset -v "$1"; then
        if (($# == 2)); then
            eval $1=\"\$2\";
        else
            eval $1=\(\"\$"{@:2}"\"\);
        fi;
    fi
}

_upvars () 
{ 
    if ! (($#)); then
        echo "bash_completion: $FUNCNAME: usage: $FUNCNAME" "[-v varname value] | [-aN varname [value ...]] ..." 1>&2;
        return 2;
    fi;
    while (($#)); do
        case $1 in 
            -a*)
                [[ -n ${1#-a} ]] || { 
                    echo "bash_completion: $FUNCNAME:" "\`$1': missing number specifier" 1>&2;
                    return 1
                };
                printf %d "${1#-a}" &> /dev/null || { 
                    echo bash_completion: "$FUNCNAME: \`$1': invalid number specifier" 1>&2;
                    return 1
                };
                [[ -n "$2" ]] && unset -v "$2" && eval $2=\(\"\$"{@:3:${1#-a}}"\"\) && shift $((${1#-a} + 2)) || { 
                    echo bash_completion: "$FUNCNAME: \`$1${2+ }$2': missing argument(s)" 1>&2;
                    return 1
                }
            ;;
            -v)
                [[ -n "$2" ]] && unset -v "$2" && eval $2=\"\$3\" && shift 3 || { 
                    echo "bash_completion: $FUNCNAME: $1:" "missing argument(s)" 1>&2;
                    return 1
                }
            ;;
            *)
                echo "bash_completion: $FUNCNAME: $1: invalid option" 1>&2;
                return 1
            ;;
        esac;
    done
}

_usb_ids () 
{ 
    COMPREPLY+=($(compgen -W         "$(PATH="$PATH:/sbin" lsusb | awk '{print $6}')" -- "$cur"))
}

_user_at_host () 
{ 
    local cur prev words cword;
    _init_completion -n : || return;
    if [[ $cur == *@* ]]; then
        _known_hosts_real "$cur";
    else
        COMPREPLY=($(compgen -u -S @ -- "$cur"));
        compopt -o nospace;
    fi
}

_usergroup () 
{ 
    if [[ $cur == *\\\\* || $cur == *:*:* ]]; then
        return;
    else
        if [[ $cur == *\\:* ]]; then
            local prefix;
            prefix=${cur%%*([^:])};
            prefix=${prefix//\\/};
            local mycur="${cur#*[:]}";
            if [[ ${1-} == -u ]]; then
                _allowed_groups "$mycur";
            else
                local IFS='
';
                COMPREPLY=($(compgen -g -- "$mycur"));
            fi;
            COMPREPLY=($(compgen -P "$prefix" -W "${COMPREPLY[@]}"));
        else
            if [[ $cur == *:* ]]; then
                local mycur="${cur#*:}";
                if [[ ${1-} == -u ]]; then
                    _allowed_groups "$mycur";
                else
                    local IFS='
';
                    COMPREPLY=($(compgen -g -- "$mycur"));
                fi;
            else
                if [[ ${1-} == -u ]]; then
                    _allowed_users "$cur";
                else
                    local IFS='
';
                    COMPREPLY=($(compgen -u -- "$cur"));
                fi;
            fi;
        fi;
    fi
}

_userland () 
{ 
    local userland=$(uname -s);
    [[ $userland == @(Linux|GNU/*) ]] && userland=GNU;
    [[ $userland == "$1" ]]
}

_variables () 
{ 
    if [[ $cur =~ ^(\$(\{[!#]?)?)([A-Za-z0-9_]*)$ ]]; then
        if [[ $cur == '${'* ]]; then
            local arrs vars;
            vars=($(compgen -A variable -P ${BASH_REMATCH[1]} -S '}' -- ${BASH_REMATCH[3]}));
            arrs=($(compgen -A arrayvar -P ${BASH_REMATCH[1]} -S '[' -- ${BASH_REMATCH[3]}));
            if ((${#vars[@]} == 1 && ${#arrs[@]} != 0)); then
                compopt -o nospace;
                COMPREPLY+=(${arrs[*]});
            else
                COMPREPLY+=(${vars[*]});
            fi;
        else
            COMPREPLY+=($(compgen -A variable -P '$' -- "${BASH_REMATCH[3]}"));
        fi;
        return 0;
    else
        if [[ $cur =~ ^(\$\{[#!]?)([A-Za-z0-9_]*)\[([^]]*)$ ]]; then
            local IFS='
';
            COMPREPLY+=($(compgen -W '$(printf %s\\n "${!'${BASH_REMATCH[2]}'[@]}")'             -P "${BASH_REMATCH[1]}${BASH_REMATCH[2]}[" -S ']}' -- "${BASH_REMATCH[3]}"));
            if [[ ${BASH_REMATCH[3]} == [@*] ]]; then
                COMPREPLY+=("${BASH_REMATCH[1]}${BASH_REMATCH[2]}[${BASH_REMATCH[3]}]}");
            fi;
            __ltrim_colon_completions "$cur";
            return 0;
        else
            if [[ $cur =~ ^\$\{[#!]?[A-Za-z0-9_]*\[.*\]$ ]]; then
                COMPREPLY+=("$cur}");
                __ltrim_colon_completions "$cur";
                return 0;
            else
                case ${prev-} in 
                    TZ)
                        cur=/usr/share/zoneinfo/$cur;
                        _filedir;
                        for i in "${!COMPREPLY[@]}";
                        do
                            if [[ ${COMPREPLY[i]} == *.tab ]]; then
                                unset 'COMPREPLY[i]';
                                continue;
                            else
                                if [[ -d ${COMPREPLY[i]} ]]; then
                                    COMPREPLY[i]+=/;
                                    compopt -o nospace;
                                fi;
                            fi;
                            COMPREPLY[i]=${COMPREPLY[i]#/usr/share/zoneinfo/};
                        done;
                        return 0
                    ;;
                    TERM)
                        _terms;
                        return 0
                    ;;
                    LANG | LC_*)
                        COMPREPLY=($(compgen -W '$(locale -a 2>/dev/null)'                     -- "$cur"));
                        return 0
                    ;;
                esac;
            fi;
        fi;
    fi;
    return 1
}

_xfunc () 
{ 
    set -- "$@";
    local srcfile=$1;
    shift;
    declare -F $1 &> /dev/null || __load_completion "$srcfile";
    "$@"
}

_xinetd_services () 
{ 
    local xinetddir=${BASHCOMP_XINETDDIR:-/etc/xinetd.d};
    if [[ -d $xinetddir ]]; then
        local IFS=' 	
' reset=$(shopt -p nullglob);
        shopt -s nullglob;
        local -a svcs=($(printf '%s\n' $xinetddir/!($_backup_glob)));
        $reset;
        ((!${#svcs[@]})) || COMPREPLY+=($(compgen -W '${svcs[@]#$xinetddir/}' -- "${cur-}"));
    fi
}

_zoxide () 
{ 
    local i cur prev opts cmd;
    COMPREPLY=();
    cur="${COMP_WORDS[COMP_CWORD]}";
    prev="${COMP_WORDS[COMP_CWORD-1]}";
    cmd="";
    opts="";
    for i in ${COMP_WORDS[@]};
    do
        case "${cmd},${i}" in 
            ",$1")
                cmd="zoxide"
            ;;
            zoxide,add)
                cmd="zoxide__add"
            ;;
            zoxide,edit)
                cmd="zoxide__edit"
            ;;
            zoxide,import)
                cmd="zoxide__import"
            ;;
            zoxide,init)
                cmd="zoxide__init"
            ;;
            zoxide,query)
                cmd="zoxide__query"
            ;;
            zoxide,remove)
                cmd="zoxide__remove"
            ;;
            zoxide__edit,decrement)
                cmd="zoxide__edit__decrement"
            ;;
            zoxide__edit,delete)
                cmd="zoxide__edit__delete"
            ;;
            zoxide__edit,increment)
                cmd="zoxide__edit__increment"
            ;;
            zoxide__edit,reload)
                cmd="zoxide__edit__reload"
            ;;
            *)

            ;;
        esac;
    done;
    case "${cmd}" in 
        zoxide)
            opts="-h -V --help --version add edit import init query remove";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 1 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        zoxide__add)
            opts="-h -V --help --version <PATHS>...";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        zoxide__edit)
            opts="-h -V --help --version decrement delete increment reload";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        zoxide__edit__decrement)
            opts="-h -V --help --version <PATH>";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        zoxide__edit__delete)
            opts="-h -V --help --version <PATH>";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        zoxide__edit__increment)
            opts="-h -V --help --version <PATH>";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        zoxide__edit__reload)
            opts="-h -V --help --version";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        zoxide__import)
            opts="-h -V --from --merge --help --version <PATH>";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                --from)
                    COMPREPLY=($(compgen -W "autojump z" -- "${cur}"));
                    return 0
                ;;
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        zoxide__init)
            opts="-h -V --no-cmd --cmd --hook --help --version bash elvish fish nushell posix powershell xonsh zsh";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                --cmd)
                    COMPREPLY=($(compgen -f "${cur}"));
                    return 0
                ;;
                --hook)
                    COMPREPLY=($(compgen -W "none prompt pwd" -- "${cur}"));
                    return 0
                ;;
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        zoxide__query)
            opts="-a -i -l -s -h -V --all --interactive --list --score --exclude --help --version [KEYWORDS]...";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                --exclude)
                    COMPREPLY=();
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o plusdirs;
                    fi;
                    return 0
                ;;
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
        zoxide__remove)
            opts="-h -V --help --version [PATHS]...";
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]]; then
                COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
                return 0;
            fi;
            case "${prev}" in 
                *)
                    COMPREPLY=()
                ;;
            esac;
            COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
            return 0
        ;;
    esac
}

dequote () 
{ 
    eval printf %s "$1" 2> /dev/null
}

fzf-file-widget () 
{ 
    local selected="$(__fzf_select__ "$@")";
    READLINE_LINE="${READLINE_LINE:0:$READLINE_POINT}$selected${READLINE_LINE:$READLINE_POINT}";
    READLINE_POINT=$(( READLINE_POINT + ${#selected} ))
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

genpasswd () 
{ 
    LANG=C tr -dc 'a-zA-Z0-9-/(/)@#/,:&=+' < /dev/urandom | fold -w 48 | head -n 1
}

last_modified () 
{ 
    eza -t $* 2> /dev/null | head -n 1
}

ml () 
{ 
    module ml "$@"
}

module () 
{ 
    local _mlredir=1;
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

pathappend () 
{ 
    pathremove $1 $2;
    local PATHVARIABLE=${2:-PATH};
    export $PATHVARIABLE="${!PATHVARIABLE:+${!PATHVARIABLE}:}$1"
}

pathprepend () 
{ 
    pathremove $1 $2;
    local PATHVARIABLE=${2:-PATH};
    export $PATHVARIABLE="$1${!PATHVARIABLE:+:${!PATHVARIABLE}}"
}

pathremove () 
{ 
    local IFS=':';
    local NEWPATH;
    local DIR;
    local PATHVARIABLE=${2:-PATH};
    for DIR in ${!PATHVARIABLE};
    do
        if [ "$DIR" != "$1" ]; then
            NEWPATH=${NEWPATH:+$NEWPATH:}$DIR;
        fi;
    done;
    export $PATHVARIABLE="$NEWPATH"
}

quote () 
{ 
    local quoted=${1//\'/\'\\\'\'};
    printf "'%s'" "$quoted"
}

quote_readline () 
{ 
    local ret;
    _quote_readline_by_ref "$1" ret;
    printf %s "$ret"
}

scl () 
{ 
    if [ "$1" = "load" -o "$1" = "unload" ]; then
        eval "module $@";
    else
        /usr/bin/scl "$@";
    fi
}

setup_python () 
{ 
    VIRTUAL_ENV=${DOTFILES_DIR}/py3venv;
    if [[ ! -d ${VIRTUAL_ENV} ]]; then
        setup_tools;
        echo "Configuring python venv";
        cd $(dirname ${VIRTUAL_ENV});
        python3 -m venv $(basename ${VIRTUAL_ENV});
        python3 -m pip install --upgrade pip --prefix=$VIRTUAL_ENV;
    fi;
    export PATH=${VIRTUAL_ENV}/bin:${PATH}
}

setup_tools () 
{ 
    source /software/products/setup;
    setup python v3_9_13;
    setup ninja v1_11_1;
    setup cmake v3_27_4;
    setup clang v7_0_0
}

show-large-dir () 
{ 
    du -hc -hsx * | sort -rh | head -10
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

whois () 
{ 
    curl http://api.db-ip.com/v2/free/$1
}

z () 
{ 
    __zoxide_z "$@"
}

ze () 
{ 
    zellij edit "$*"
}

zef () 
{ 
    zellij edit --floating "$*"
}

zei () 
{ 
    zellij edit --in-place "$*"
}

zi () 
{ 
    __zoxide_zi "$@"
}

zpipe () 
{ 
    if [ -z "$1" ]; then
        zellij pipe;
    else
        zellij pipe -p $1;
    fi
}

zr () 
{ 
    zellij run --name "$*" -- bash -ic "$*"
}

zrf () 
{ 
    zellij run --name "$*" --floating -- bash -ic "$*"
}

zri () 
{ 
    zellij run --name "$*" --in-place -- bash -ic "$*"
}

