#!/usr/bin/env bash
# Captured environment: 20260623_180311

[[ "$0" != "${BASH_SOURCE}" ]] || { echo "The script $(basename ${BASH_SOURCE}) should be sourced!"; exit 1; }
shopt -s extglob
#Environment variables
export ACLOCAL_PATH=/daq/software/spack_packages/gobject-introspection/1.78.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-5tgat3csunsxm5aphdburaweuoa7x7ix/share/aclocal:\
/daq/software/spack_packages/util-macros/1.20.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-x5vvnxgca6zobpx54okm5s5mjovme35g/share/aclocal:\
/daq/software/spack_packages/cmake/3.27.9/linux-almalinux9-x86_64_v2-gcc-13.1.0-ioahe2goqgadrph3coqe26g2sgx4b6eq/share/aclocal:\
/daq/software/spack_packages/glib/2.82.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-y5epzuut6splj2kc5pzmjjsq5wlhpvhd/share/aclocal:\
/daq/software/spack_packages/gsl/2.7.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-6btdzhwfcn7dtkqah6x3uf7vv4kp67bu/share/aclocal:\
/daq/software/spack_packages/pkg-config/0.29.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-7ts6z5tdvtiw33mxlloy4iqkl3ehgq3t/share/aclocal:\
/daq/software/spack_packages/font-util/1.4.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-m5t3h7vwu42duszrjo7tjynnbpyvaizt/share/aclocal:\
/daq/software/spack_packages/freetype/2.13.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-oponq7mqewibzrqh3u4fu3i4zbeawlki/share/aclocal:\
/daq/software/spack_packages/gettext/0.22.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-rfwcs5nlupprna7s2qgltzuyd4mw3yvs/share/aclocal:\
/daq/software/spack_packages/libxml2/2.9.12/linux-almalinux9-x86_64_v2-gcc-13.1.0-xwk566phmltx6ni7hajwzppegelvp3u6/share/aclocal:\
/daq/software/spack_packages/curl/8.11.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-6sd43ofni4xsm4dovxazlsqgwkbli3re/share/aclocal:\
/daq/software/spack_packages/xtrans/1.5.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-npnqtn5vf7hq7cuamse7eywmcwlteeu5/share/aclocal:\
/usr/share/aclocal

export ARTDAQ_DAQINTERFACE_DIR="/daq/software/spack_packages/artdaq-daqinterface/v4_06_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-w4enww3ege4rds327duyqzbl7r6hiakq"

export ARTDAQ_DAQINTERFACE_VERSION="SPACK"

export ARTDAQ_MFEXTENSIONS_DIR="/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-zs7ihueevgrxnikftyivcoa43lvxdlxl"

export BASHRCSOURCED="Y"

export BASH_ARGV0="/usr/bin/bash"

export BASH_COMPLETION_VERSINFO="2"

export BASH_REMATCH

export BOOST_ROOT="/daq/software/spack_packages/boost/1.82.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-4gdnpdmrennhvsuy3z4b73f5vp3ohzrn"

export BUILD_HASH="/wkl7e6s"

export BUILD_VARIANT="gcc@13.1.0"

export CC="/daq/software/spack_packages/llvm/17.0.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-q7cxacolietx7cwnliirvqwcm4szctzd/bin/clang"

export CET_PLUGIN_PATH=/daq/software/spack_packages/sbndaq/v2_02_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-ntjklrs7cc3t7kicaq3ndcpy4umv5yjt/lib:\
/daq/software/spack_packages/artdaq-demo/v3_13_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-n6nbgfxwkuak3loo3zomewiju6onhv7x/lib:\
/daq/software/spack_packages/sbndaq-artdaq/v2_02_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-wfbk3xwjuv4kralw5urigcnvyms2xvov/lib:\
/daq/software/spack_packages/artdaq-core-demo/v1_11_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-inxqmzn3ydwmbuwzeferdqldvdzzsztk/lib:\
/daq/software/spack_packages/artdaq/v3_13_02/linux-almalinux9-x86_64_v2-gcc-13.1.0-zk2lhujfdiwwk2tw3elrgcn5ybrocj23/lib:\
/daq/software/spack_packages/artdaq-epics-plugin/v1_06_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-av7zve2api4t33psbpwc4cy6yjuyvphy/lib:\
/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-zs7ihueevgrxnikftyivcoa43lvxdlxl/lib:\
/daq/software/spack_packages/artdaq-utilities/v1_09_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-yzrw7xxezfdr3o5hn53pxxf6aph6i7ac/lib:\
/daq/software/spack_packages/artdaq-core/v3_10_02/linux-almalinux9-x86_64_v2-gcc-13.1.0-fjcovpezavvdbrvaimpi3sgq5vjwaf7u/lib:\
/daq/software/spack_packages/trace/v3_17_11/linux-almalinux9-x86_64_v2-gcc-13.1.0-qy3ojfdrazdfx6c6efdqybo35ih3272x/lib:\
/daq/software/spack_packages/art-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-13.1.0-jv5taeiuqk6ohar4voxtyxarpc3ceynj/lib:\
/daq/software/spack_packages/art/3.14.04/linux-almalinux9-x86_64_v2-gcc-13.1.0-q4tayb4ish2njkc5grre4tseolpjqaek/lib:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-almalinux9-x86_64_v2-gcc-13.1.0-l33fs7oihd3dhw54affujyi2gclwtyjl/lib

export CLING_STANDARD_PCH="none"

export CMAKE_PREFIX_PATH=/daq/software/spack_packages/sbndaq-suite/v2_02_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-wkl7e6s4uhqd573fg3n36pk3ah3evtwz:\
/daq/software/spack_packages/artdaq-runcontrol-gui/v1_03_06/linux-almalinux9-x86_64_v2-gcc-13.1.0-33lewgj4opxnnoiatl7x4jsiowiek3rf:\
/daq/software/spack_packages/artdaq-suite/v3_13_02/linux-almalinux9-x86_64_v2-gcc-13.1.0-jae3aop63jgh2d33irclljuqxooq7sgz:\
/daq/software/spack_packages/sbndaq/v2_02_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-ntjklrs7cc3t7kicaq3ndcpy4umv5yjt:\
/daq/software/spack_packages/artdaq-daqinterface/v4_06_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-w4enww3ege4rds327duyqzbl7r6hiakq:\
/daq/software/spack_packages/artdaq-database/v3_05_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-pjiwolgbux6zqlxclakar6mkawk4pdo2:\
/daq/software/spack_packages/artdaq-demo/v3_13_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-n6nbgfxwkuak3loo3zomewiju6onhv7x:\
/daq/software/spack_packages/sbndaq-artdaq/v2_02_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-wfbk3xwjuv4kralw5urigcnvyms2xvov:\
/daq/software/spack_packages/artdaq-core-demo/v1_11_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-inxqmzn3ydwmbuwzeferdqldvdzzsztk:\
/daq/software/spack_packages/artdaq/v3_13_02/linux-almalinux9-x86_64_v2-gcc-13.1.0-zk2lhujfdiwwk2tw3elrgcn5ybrocj23:\
/daq/software/spack_packages/artdaq-epics-plugin/v1_06_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-av7zve2api4t33psbpwc4cy6yjuyvphy:\
/daq/software/spack_packages/caendigitizer/2.17.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-a3bqsjnmbypjuv52bnjvfxo7dkw7hxsz:\
/daq/software/spack_packages/cppzmq/4.10.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-24dx7utl7rcqcsolsleufozj5numiowe:\
/daq/software/spack_packages/hiredis/1.1.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-4lnepeq24z22llycggvaolo2dzlnba55:\
/daq/software/spack_packages/jsoncpp/1.9.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-elivv26k454cfirocgskzrffm5r6uz7e:\
/daq/software/spack_packages/libpqxx/7.10.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-7435uyulbkxwktp6sf5ysp6tqhajrv5z:\
/daq/software/spack_packages/redis/7.4.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-ru3c2nhcuevnmopejyridyyuuxxhvrvu:\
/daq/software/spack_packages/sbndaq-artdaq-core/v2_02_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-aindlkuu2rgl3wja4eoicv7obbbisw3x:\
/daq/software/spack_packages/wibtools/v2_02_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-46y63burlpqe7qbbj7tr3edzc7jwhtvh:\
/daq/software/spack_packages/windriver/v16_06_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-i22hrolklcou6qpskgsuyed6g453x555:\
/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-zs7ihueevgrxnikftyivcoa43lvxdlxl:\
/daq/software/spack_packages/xmlrpc-c/1.51.06/linux-almalinux9-x86_64_v2-gcc-13.1.0-uzm6f4ybn324xpevfkfy3csmr3vqx26n:\
/daq/software/spack_packages/artdaq-utilities/v1_09_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-yzrw7xxezfdr3o5hn53pxxf6aph6i7ac:\
/daq/software/spack_packages/epics-base/7.0.6.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-od2x65glvkbjoy7oq66vrwtxbaqrlheb:\
/daq/software/spack_packages/caencomm/1.7.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-7676i2cya6t4oekvk3ed45tz4gdved7e:\
/daq/software/spack_packages/libzmq/4.3.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-pl527gkazn3nmf5cxbs6psnxvzupuvgj:\
/daq/software/spack_packages/artdaq-core/v3_10_02/linux-almalinux9-x86_64_v2-gcc-13.1.0-fjcovpezavvdbrvaimpi3sgq5vjwaf7u:\
/daq/software/spack_packages/librdkafka/2.8.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-q4jytq4rt2zacvqqtwsyo3wz6l7b4hjp:\
/daq/software/spack_packages/qt/5.15.16/linux-almalinux9-x86_64_v2-gcc-13.1.0-qztr3g6cmgfbuaq3iuwq75ele4mwgbua:\
/daq/software/spack_packages/py-plotext/5.2.8/linux-almalinux9-x86_64_v2-gcc-13.1.0-bv7tagvi7qp72hl777gax5lu77qgoboz:\
/daq/software/spack_packages/py-plotly/2.2.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-4vo7cpu2s3fz3se32kc7fwdqhypbxtca:\
/daq/software/spack_packages/caenvmelib/4.0.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-pspfuxfzbkxjh22rphz442qytcfwecsb:\
/daq/software/spack_packages/libsodium/1.0.20/linux-almalinux9-x86_64_v2-gcc-13.1.0-qi3s37lfbqtluif2qvw5ndll3oddajsz:\
/daq/software/spack_packages/art-suite/s131/linux-almalinux9-x86_64_v2-gcc-13.1.0-fkll2llcrty6qk4se6xlk543na7l3x5a:\
/daq/software/spack_packages/trace/v3_17_11/linux-almalinux9-x86_64_v2-gcc-13.1.0-qy3ojfdrazdfx6c6efdqybo35ih3272x:\
/daq/software/spack_packages/zlib/1.3.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-oswrerxnndcpid4jnjjfk6pwvcyw2kuy:\
/daq/software/spack_packages/double-conversion/3.3.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-rfpx4fdp5d7m65ug65mi56rwbibu7rq7:\
/daq/software/spack_packages/harfbuzz/10.2.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-jzr2ilfyyfxqhl6cjrychxtmwlzk6ybr:\
/daq/software/spack_packages/libmng/2.0.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-lwd44avhr2hlupa3j4zlnth6npn3sqlc:\
/daq/software/spack_packages/libxkbcommon/1.7.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-dbvge25nx56cpdjzgidl63wz2boo4i26:\
/daq/software/spack_packages/xcb-util-image/0.4.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-gokl3xam7tvpgolscbgfr4f3jix3is3d:\
/daq/software/spack_packages/xcb-util-keysyms/0.4.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-3ion3ql2dx7kmfmeu6ka3zdmpwxch7ol:\
/daq/software/spack_packages/xcb-util-renderutil/0.3.10/linux-almalinux9-x86_64_v2-gcc-13.1.0-q4zftu6vbdu7kkbwayyikrlf54ztxugb:\
/daq/software/spack_packages/xcb-util-wm/0.4.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-pqgebdfeuvmcgjqay3f5vstzowc4rnso:\
/daq/software/spack_packages/py-decorator/5.1.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-5lnusqrairvypwf4bazib55yc4lqc3yt:\
/daq/software/spack_packages/py-nbformat/5.8.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-wwpurv7n6dvbmihl2pffq6y6lovgi3je:\
/daq/software/spack_packages/py-pytz/2024.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-vgwkd6ye6f24yl5xwhl6l2qgjchq7qr6:\
/daq/software/spack_packages/py-requests/2.32.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-66rgcw5razumjp33ta3cau5hek5nuiqh:\
/daq/software/spack_packages/py-six/1.17.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-jb4drmjy2j5g3zmh2yqhr5tvevm2eozv:\
/daq/software/spack_packages/libusb/1.0.27/linux-almalinux9-x86_64_v2-gcc-13.1.0-anvdi4xgcctvj55575r3cdhnwidwksrp:\
/daq/software/spack_packages/art-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-13.1.0-jv5taeiuqk6ohar4voxtyxarpc3ceynj:\
/daq/software/spack_packages/cetmodules/3.24.01/linux-almalinux9-x86_64_v2-gcc-13.1.0-koqaikknwkufcftwpwny4b4b7a5yceza:\
/daq/software/spack_packages/fftw/3.3.10/linux-almalinux9-x86_64_v2-gcc-13.1.0-lanfdap7qlbmvtyrajkb74syr7xerkr2:\
/daq/software/spack_packages/postgresql/15.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-phjhf36knogadcgxcpgahbmfrzkeby2a:\
/daq/software/spack_packages/py-numpy/1.24.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-wpje67v5vxoj7xoptu2pbhbse3llt4iu:\
/daq/software/spack_packages/py-pybind11/2.10.4/linux-almalinux9-x86_64_v2-gcc-13.1.0-t7esm3jqvihk54jpfgdsf4ovcggwlnum:\
/daq/software/spack_packages/pythia6/6.4.28/linux-almalinux9-x86_64_v2-gcc-13.1.0-ha4puasdoxr4hzdcbz4vrhbkyjbpgkne:\
/daq/software/spack_packages/xrootd/5.5.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-b272p35gctgekau7wy4owl4pjsdl2gum:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-5tgat3csunsxm5aphdburaweuoa7x7ix:\
/daq/software/spack_packages/lcms/2.16/linux-almalinux9-x86_64_v2-gcc-13.1.0-amicpd4ovpjmx6ovane4r26qbus4rh3z:\
/daq/software/spack_packages/util-macros/1.20.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-x5vvnxgca6zobpx54okm5s5mjovme35g:\
/daq/software/spack_packages/xkeyboard-config/2.34/linux-almalinux9-x86_64_v2-gcc-13.1.0-u2fahbtkc26wptsrgtpuppxigvogt7i2:\
/daq/software/spack_packages/xcb-util/0.4.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-eljlhiotvtpkljivjc5fpcttjottebmz:\
/daq/software/spack_packages/py-fastjsonschema/2.21.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-hybgrp77xtwlph27ky2zag55bvbgzslv:\
/daq/software/spack_packages/py-jsonschema/4.22.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-nr2gyaihkmto5fh6ckl7xhht7wdzjuav:\
/daq/software/spack_packages/py-jupyter-core/5.3.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-iqpux4fu2z6cwnigaeyp47jvx7jzsblt:\
/daq/software/spack_packages/py-certifi/2023.7.22/linux-almalinux9-x86_64_v2-gcc-13.1.0-z6borxossofhuwc6wk4bs4ybfwg6ucnd:\
/daq/software/spack_packages/py-charset-normalizer/3.3.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-ci3x5u2kfzskhbuptsgfpzamoj5ksn57:\
/daq/software/spack_packages/py-idna/3.4/linux-almalinux9-x86_64_v2-gcc-13.1.0-thf2i3iqv3wbclgj7cxocqt2kyf5ic65:\
/daq/software/spack_packages/py-urllib3/2.1.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-6rjxl2kqb6hs5qm465umutspmeblhcw5:\
/daq/software/spack_packages/art/3.14.04/linux-almalinux9-x86_64_v2-gcc-13.1.0-q4tayb4ish2njkc5grre4tseolpjqaek:\
/daq/software/spack_packages/canvas-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-13.1.0-lccceebb3isiyjfequwnyw5ca3elodt2:\
/daq/software/spack_packages/cmake/3.27.9/linux-almalinux9-x86_64_v2-gcc-13.1.0-ioahe2goqgadrph3coqe26g2sgx4b6eq:\
/daq/software/spack_packages/openmpi/5.0.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-7737yvjujgzn3d4yxxdicslgyuyy5tie:\
/daq/software/spack_packages/openblas/0.3.23/linux-almalinux9-x86_64_v2-gcc-13.1.0-ifzupnpqljwdvbnyi7262fij4p4occob:\
/daq/software/spack_packages/py-setuptools/63.4.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-dr2diisxdetolxe6ia3t7jte6ngblabm:\
/daq/software/spack_packages/json-c/0.18/linux-almalinux9-x86_64_v2-gcc-13.1.0-4cztye4qu3otadrafqj47sj5tv3spqji:\
/daq/software/spack_packages/cairo/1.18.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-jb35ohr7ahxp4kqsh4b3ejbyne4lr46n:\
/daq/software/spack_packages/libtiff/4.7.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-nfudpojkscmyzys4fuaym3ifabtlsqk7:\
/daq/software/spack_packages/py-jsonschema-specifications/2023.12.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-do2m2j3c4iy3ptdabld356g4rvzwpwf2:\
/daq/software/spack_packages/py-platformdirs/3.10.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-g4xsro7rhdv4qynqutfpnkjnkqioqbuz:\
/daq/software/spack_packages/py-traitlets/5.14.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-utkp6xa3sw2xz3tbk5hdbebqdbovw47q:\
/daq/software/spack_packages/canvas/3.16.04/linux-almalinux9-x86_64_v2-gcc-13.1.0-z7iju3vsppxsvb2msp2jea5mwsfs5z35:\
/daq/software/spack_packages/hep-concurrency/1.09.02/linux-almalinux9-x86_64_v2-gcc-13.1.0-nt46i2hz3fxi4ueuxz7m7rqnbertwg4n:\
/daq/software/spack_packages/root/6.28.12/linux-almalinux9-x86_64_v2-gcc-13.1.0-5shq26yritc6jl6k3mv3f7bsuxvmy6um:\
/daq/software/spack_packages/gmake/4.4.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-uau636nzu6rrtcedparpiaqhyebnkz2s:\
/daq/software/spack_packages/numactl/2.0.18/linux-almalinux9-x86_64_v2-gcc-13.1.0-llbm2gh4ewv7hqyrvy34syiu3gozu3c2:\
/daq/software/spack_packages/openssh/9.9p1/linux-almalinux9-x86_64_v2-gcc-13.1.0-ukplop5ltmeryqin4mdj2n7x4tfbhvmj:\
/daq/software/spack_packages/pmix/5.0.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-i7wtvqry2igoxglh33oiz5cbpkrovyqf:\
/daq/software/spack_packages/glib/2.82.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-y5epzuut6splj2kc5pzmjjsq5wlhpvhd:\
/daq/software/spack_packages/lzo/2.10/linux-almalinux9-x86_64_v2-gcc-13.1.0-lknje6jmxrfjvw3z4eneu5su2z5t5olb:\
/daq/software/spack_packages/pixman/0.44.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-2lxpdcrj62qwz6lsbjif7wq736tkvuew:\
/daq/software/spack_packages/py-referencing/0.35.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-xrbbpp3po75giudbaurhhwkqrmireuso:\
/daq/software/spack_packages/clhep/2.4.7.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-2b5rhsanhlnjbniocix6gnflc2jnk46w:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-almalinux9-x86_64_v2-gcc-13.1.0-l33fs7oihd3dhw54affujyi2gclwtyjl:\
/daq/software/spack_packages/range-v3/0.12.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-mtbjbjk4kijeztfooslswhpbaliz25lx:\
/daq/software/spack_packages/davix/0.8.10/linux-almalinux9-x86_64_v2-gcc-13.1.0-5zvirpg72ceb5qevfwqozeaez6xo4ewb:\
/daq/software/spack_packages/ftgl/2.4.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-cvwf3kiijij2uxutxabgjoy5ev5zer6w:\
/daq/software/spack_packages/gl2ps/1.4.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-nceyjskq2dsajxf53kg7rhootjyuorz2:\
/daq/software/spack_packages/glew/2.2.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-vbdpcucf6l4o64o2kclsfwmcy74bket6:\
/daq/software/spack_packages/gsl/2.7.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-6btdzhwfcn7dtkqah6x3uf7vv4kp67bu:\
/daq/software/spack_packages/libjpeg-turbo/3.0.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-v4ziplwqb22ov45iq632jhudafp72x6d:\
/daq/software/spack_packages/libxft/2.3.8/linux-almalinux9-x86_64_v2-gcc-13.1.0-i2ly4xs3rnwgsyl7dg5oqsprn2f4ymlr:\
/daq/software/spack_packages/libxpm/3.5.17/linux-almalinux9-x86_64_v2-gcc-13.1.0-5cn3agb32w7ff3kiygjlenlb6ryn7mse:\
/daq/software/spack_packages/lz4/1.10.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-mvvbsow3x43cyphe5aa3qiazn5m7o3t3:\
/daq/software/spack_packages/nlohmann-json/3.11.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-awbzegmcplb5dzrndze33jxnxj3r7zf2:\
/daq/software/spack_packages/unuran/1.8.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-gjnoxu6gsnlbd6mqtdycky7buxu47xce:\
/daq/software/spack_packages/vdt/0.4.4/linux-almalinux9-x86_64_v2-gcc-13.1.0-yuni7cum5sex7tnqq5ovqian6b6tggrh:\
/daq/software/spack_packages/xxhash/0.8.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-f5kw4fe7odwmilaickdqkleacph7lh37:\
/daq/software/spack_packages/krb5/1.21.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-wqvuvqerp6bfpkmgctx6vs73mgnr6reo:\
/daq/software/spack_packages/libevent/2.1.12/linux-almalinux9-x86_64_v2-gcc-13.1.0-yz55fz75sifdx7svuhe5o47hmtn745pe:\
/daq/software/spack_packages/elfutils/0.192/linux-almalinux9-x86_64_v2-gcc-13.1.0-47g56z22iywgcmvnalfcb3zzvywzibs4:\
/daq/software/spack_packages/py-attrs/23.1.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-ir4zwbtua7qxiqjy6qce4yqcpi7e7vlx:\
/daq/software/spack_packages/py-rpds-py/0.20.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-jx73gmbncg6kovhs7y6awtloju7dhubl:\
/daq/software/spack_packages/catch2/3.3.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-5twgsrezhrrsztvlq4gc5r7tkctwrrt2:\
/daq/software/spack_packages/fhicl-cpp/4.18.04/linux-almalinux9-x86_64_v2-gcc-13.1.0-yxcz73yuisol5paq4iyhxhtpp6crkfvn:\
/daq/software/spack_packages/rapidjson/1.2.0-2024-08-16/linux-almalinux9-x86_64_v2-gcc-13.1.0-kslid5r77wf2mo45ashs3souuiok2jnw:\
/daq/software/spack_packages/mesa-glu/9.0.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-tixkotyxfmdqan6tbhco4cnm7rnwwlva:\
/daq/software/spack_packages/fontconfig/2.15.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-6zinqo6sb2otqdtu7g4u7qskvahc4s56:\
/daq/software/spack_packages/rngstreams/1.0.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-b6ti4hx2podwxghti4hq53hwotvsmwty:\
/daq/software/spack_packages/pkg-config/0.29.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-7ts6z5tdvtiw33mxlloy4iqkl3ehgq3t:\
/daq/software/spack_packages/python-venv/1.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-i25w6hbjs5gvjumvxhkzfua556ucgrui:\
/daq/software/spack_packages/rust/1.83.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-zsspzp5a6r2247c7d7nsfnmxzb7dc6au:\
/daq/software/spack_packages/cetlib/3.18.02/linux-almalinux9-x86_64_v2-gcc-13.1.0-5yyfdv6yf4hayqecl3kcd66iukuz5iim:\
/daq/software/spack_packages/intel-tbb-oneapi/2021.9.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-7jfp34ifkisohmp4g2tursbgykyzitwy:\
/daq/software/spack_packages/glx/1.4/linux-almalinux9-x86_64_v2-gcc-13.1.0-k3lk53gnfnl5goyy6fyem4u7yrkuyeg2:\
/daq/software/spack_packages/font-util/1.4.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-m5t3h7vwu42duszrjo7tjynnbpyvaizt:\
/daq/software/spack_packages/freetype/2.13.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-oponq7mqewibzrqh3u4fu3i4zbeawlki:\
/daq/software/spack_packages/python/3.9.15/linux-almalinux9-x86_64_v2-gcc-13.1.0-j7lvwbrkmk3yihnkcz57ggzdicnlpipd:\
/daq/software/spack_packages/libgit2/1.8.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-6q3edwcrdf2qzrykkbbtv6dzgvyeb3fa:\
/daq/software/spack_packages/boost/1.82.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-4gdnpdmrennhvsuy3z4b73f5vp3ohzrn:\
/daq/software/spack_packages/cetlib-except/1.09.01/linux-almalinux9-x86_64_v2-gcc-13.1.0-kgu4yisvpftot46wvabfmg6dhwothhbp:\
/daq/software/spack_packages/perl/5.40.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-4xhrko4atkor44fpxodfqmskjufrhl3i:\
/daq/software/spack_packages/mesa/23.3.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-kkdqmft2byawveqfo5frsefkol3dbybs:\
/daq/software/spack_packages/libpng/1.6.39/linux-almalinux9-x86_64_v2-gcc-13.1.0-nxwr22y4f52fw7ftctnxqo5nhjajexkt:\
/daq/software/spack_packages/gettext/0.22.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-rfwcs5nlupprna7s2qgltzuyd4mw3yvs:\
/daq/software/spack_packages/libxcrypt/4.4.35/linux-almalinux9-x86_64_v2-gcc-13.1.0-zqlbtwpfhw2rql7kb3oadufb5yrpmxca:\
/daq/software/spack_packages/sqlite/3.40.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-z54v4i44atkoci2geqehxyn6jq32sxgd:\
/daq/software/spack_packages/libssh2/1.11.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-x4t5zcy7uoykq5q743uudohvh2oncb2p:\
/daq/software/spack_packages/pcre/8.45/linux-almalinux9-x86_64_v2-gcc-13.1.0-ojebsh3q46y6jgt6wbgdxhezoyifrjfj:\
/daq/software/spack_packages/icu4c/74.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-zo6zv3qbhzgitoxcqbqagphk7txvjnte:\
/daq/software/spack_packages/berkeley-db/18.1.40/linux-almalinux9-x86_64_v2-gcc-13.1.0-gcpg3p2bwz62yukf5tx7tdeolyv65nau:\
/daq/software/spack_packages/gdbm/1.23/linux-almalinux9-x86_64_v2-gcc-13.1.0-lgkk4s46dxb6wwrdfpsbaqu25ogffxyj:\
/daq/software/spack_packages/expat/2.6.4/linux-almalinux9-x86_64_v2-gcc-13.1.0-wd2vu7yebknp3qad3f5eksxdjz4uj5nx:\
/daq/software/spack_packages/glproto/1.4.17/linux-almalinux9-x86_64_v2-gcc-13.1.0-jp67725it63wp6gthmxz5cvo4rb3fe7w:\
/daq/software/spack_packages/libunwind/1.8.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-7ir6p2rwvijxqh5jhgmg47inucfzuqgz:\
/daq/software/spack_packages/libxt/1.3.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-fjry6onuaslhthc3y6n7zdmc2azpbv6s:\
/daq/software/spack_packages/llvm/17.0.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-q7cxacolietx7cwnliirvqwcm4szctzd:\
/daq/software/spack_packages/xrandr/1.5.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-piss3rnfuayomnizwizv6cddr2dnysa3:\
/daq/software/spack_packages/tar/1.35/linux-almalinux9-x86_64_v2-gcc-13.1.0-xxpy3mvyh4s7iqtrm24tux2yfsyy3bwi:\
/daq/software/spack_packages/libsm/1.2.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-35qnbcu52pkk4ux7l4soqpnyscb3lqez:\
/daq/software/spack_packages/binutils/2.43.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-old5p3oopkqvek4ujp6ikanl67bbjc5h:\
/daq/software/spack_packages/hwloc/2.11.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-ujaqkz3c2wwazpralknoihgsymhw2wxe:\
/daq/software/spack_packages/libedit/3.1-20240808/linux-almalinux9-x86_64_v2-gcc-13.1.0-cugnevuppchlpid67y5k4d27i7wbjkly:\
/daq/software/spack_packages/libffi/3.4.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-k3frxfy7e7y3ybvecwwk5t4624tevhbn:\
/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-aloyucg4wl2xehvgnkxmzrjxovigcbes:\
/daq/software/spack_packages/swig/4.1.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-7qidliy5hy3ey34sxuxztdxuszhcz37g:\
/daq/software/spack_packages/libxrandr/1.5.4/linux-almalinux9-x86_64_v2-gcc-13.1.0-jqwc6o5dpkm74vht26kcsrpvabga6gsu:\
/daq/software/spack_packages/bzip2/1.0.8/linux-almalinux9-x86_64_v2-gcc-13.1.0-kuf3k2jf5cztkzpto5lnoxdzsk5b6ud3:\
/daq/software/spack_packages/pigz/2.8/linux-almalinux9-x86_64_v2-gcc-13.1.0-qjfp3det2e7oxbtqkottkfgzlv4e2vk7:\
/daq/software/spack_packages/libice/1.1.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-cupfv5u7d32zwzdtz4vmnktdoccwfwoi:\
/daq/software/spack_packages/libuuid/1.0.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-f2ulfrstfdlq664gny7mrsqefg5z34ld:\
/daq/software/spack_packages/zstd/1.5.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-hv6hea2lsivg4cromjay5gikqx57gvfw:\
/daq/software/spack_packages/libpciaccess/0.17/linux-almalinux9-x86_64_v2-gcc-13.1.0-uiznzhuljfddl7ka5iqrikalhviudvju:\
/daq/software/spack_packages/libxml2/2.9.12/linux-almalinux9-x86_64_v2-gcc-13.1.0-xwk566phmltx6ni7hajwzppegelvp3u6:\
/daq/software/spack_packages/curl/8.11.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-6sd43ofni4xsm4dovxazlsqgwkbli3re:\
/daq/software/spack_packages/readline/8.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-t7ouo4k2auozroxv4ri2kjerznxbs65w:\
/daq/software/spack_packages/unzip/6.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-hqbpdqt4nvsokwwkmolvjfyqqgmhohhe:\
/daq/software/spack_packages/pcre2/10.44/linux-almalinux9-x86_64_v2-gcc-13.1.0-h2pknkctevop25sisa6c5za5dhbvo2ud:\
/daq/software/spack_packages/libxext/1.3.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-mir2brhlz7mwc7r5indvvoy7ulilnpsu:\
/daq/software/spack_packages/libxrender/0.9.11/linux-almalinux9-x86_64_v2-gcc-13.1.0-zclx46zafzc4nbs3ge6nbw524vfpoiuw:\
/daq/software/spack_packages/randrproto/1.5.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-q5ytncezw2xg5zwtukqs65gujnrelita:\
/daq/software/spack_packages/xz/5.4.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-cqcfhk7vboytfj2esd3y53mrhxxtqbaz:\
/daq/software/spack_packages/nghttp2/1.64.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-7pg4cqjmr47jp2qjx63pehbbtkeqztxc:\
/daq/software/spack_packages/openssl/3.4.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-uxuhpv7ewvcgz6dezq5s6qqojos2ojkp:\
/daq/software/spack_packages/ncurses/6.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-nobfqgirlxndnujn2ed77exqtomthz3e:\
/daq/software/spack_packages/xextproto/7.3.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-ta4qmra7775es2eo6dukj4lvnhn7vrq4:\
/daq/software/spack_packages/libx11/1.8.10/linux-almalinux9-x86_64_v2-gcc-13.1.0-56wui3itis6q6uklvci3ueekt3o3i5pv:\
/daq/software/spack_packages/renderproto/0.11.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-h4jgpf5eep6c2ecznuutoty6q7rw5hvz:\
/daq/software/spack_packages/zlib-ng/2.2.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-xjk5rdwll5wuqai4zwiylezfztjjhlb7:\
/daq/software/spack_packages/kbproto/1.0.7/linux-almalinux9-x86_64_v2-gcc-13.1.0-dxuprotuzmggc4yb2vwrufppbsjw3avl:\
/daq/software/spack_packages/libxcb/1.17.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-mqafnxzwn3hpddx5evba4uaqnscylr3z:\
/daq/software/spack_packages/xtrans/1.5.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-npnqtn5vf7hq7cuamse7eywmcwlteeu5:\
/daq/software/spack_packages/libpthread-stubs/0.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-dqdkh23il2fjmkulfeie6eqbelcrq4sf:\
/daq/software/spack_packages/libxau/1.0.12/linux-almalinux9-x86_64_v2-gcc-13.1.0-4rrf5hfqie6jm5mplwzgjw4oaixqnx4r:\
/daq/software/spack_packages/libxdmcp/1.1.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-4jkmyhzkwmryillypnhvqr7qnyagrluf:\
/daq/software/spack_packages/libbsd/0.12.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-bwgfgz5m6u7rw6jzesztsjtwvjok7tcn:\
/daq/software/spack_packages/xproto/7.0.31/linux-almalinux9-x86_64_v2-gcc-13.1.0-n47nt3tp6ydm6ikheovl7ghzuwd3sqo3:\
/daq/software/spack_packages/libmd/1.0.4/linux-almalinux9-x86_64_v2-gcc-13.1.0-zk365rvde3z7mxyskvnh72f7my6jxfln:\
/daq/software/spack_packages/gcc-runtime/13.1.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-gvqla437weejy7ohjtesa75uxougga7a:\
/daq/software/spack_packages/diffutils/3.10/linux-almalinux9-x86_64_v2-gcc-13.1.0-xb6hnui24cbv4zhyplz7jl5beb55ycfk:\
/daq/software/spack_packages/py-maturin/1.8.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-mkhq7gaagtk73alsjduuiz5trxc7m333:\
/daq/software/spack_packages/py-pip/24.3.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-bzth5oe6jrwjaibml2uxndwumzs5yxnb:\
/daq/software/spack_packages/py-wheel/0.41.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-y7mttt3y6umgt5ss2whe3h73e6jo5rcp:\
/daq/software/spack_packages/py-hatch-fancy-pypi-readme/23.1.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-r47jev5gxrjmushkrcrcgibq7jv6xbv4:\
/daq/software/spack_packages/py-hatch-vcs/0.4.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-rnvzngksaec3vftpvotykrsuv3w47czl:\
/daq/software/spack_packages/py-hatchling/1.25.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-qldpaefapps3uuglagiwtx4wwdyeqhyf:\
/daq/software/spack_packages/py-flit-core/3.10.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-dwbmu5gr5kkm5dodtowkre54itx2puig:\
/daq/software/spack_packages/py-hatch-nodejs-version/0.3.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-asa5py77r2k35dauh6ye2qflctv722y5

export CPPYY_API_PATH="none"

export CPPYY_BACKEND_LIBRARY="/daq/software/spack_packages/root/6.28.12/linux-almalinux9-x86_64_v2-gcc-13.1.0-5shq26yritc6jl6k3mv3f7bsuxvmy6um/lib/root/libcppyy_backend"

export CXX="/daq/software/spack_packages/llvm/17.0.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-q7cxacolietx7cwnliirvqwcm4szctzd/bin/clang++"

export DAQINTERFACE_CONFIGURE_STATUS_CHECK_QUIET_TIME="60"

export DAQ_SETUP_SCRIPT="/home/nfs/icarus/DAQ_SPACK_ProdAreas/DAQ_2026-06-18_GAL_v2_02_00/srcs/sbndaq/sbn-fd/DAQInterface2/setup_sbn_artdaq.sh"

export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/52361/bus"

export DEBUGINFOD_IMA_CERT_PATH="/etc/keys/ima:"

export DEBUGINFOD_URLS="ima:enforcing https://debuginfod.centos.org/ ima:ignore %{dist_debuginfod_url} ima:enforcing https://debuginfod.fedoraproject.org/ ima:ignore"

export EPICS_BASE="/daq/software/spack_packages/epics-base/7.0.6.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-od2x65glvkbjoy7oq66vrwtxbaqrlheb"

export EPICS_HOST_ARCH="linux-x86_64"

export EPOCHREALTIME="1782255791.342164"

export EPOCHSECONDS="1782255791"

export FHICL_FILE_PATH=/daq/software/spack_packages/sbndaq/v2_02_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-ntjklrs7cc3t7kicaq3ndcpy4umv5yjt/fcl:\
/daq/software/spack_packages/artdaq-demo/v3_13_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-n6nbgfxwkuak3loo3zomewiju6onhv7x/fcl:\
/daq/software/spack_packages/sbndaq-artdaq/v2_02_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-wfbk3xwjuv4kralw5urigcnvyms2xvov/fcl:\
/daq/software/spack_packages/artdaq-core-demo/v1_11_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-inxqmzn3ydwmbuwzeferdqldvdzzsztk/fcl:\
/daq/software/spack_packages/artdaq/v3_13_02/linux-almalinux9-x86_64_v2-gcc-13.1.0-zk2lhujfdiwwk2tw3elrgcn5ybrocj23/fcl:\
/daq/software/spack_packages/artdaq-epics-plugin/v1_06_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-av7zve2api4t33psbpwc4cy6yjuyvphy/fcl:\
/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-zs7ihueevgrxnikftyivcoa43lvxdlxl/fcl:\
/daq/software/spack_packages/artdaq-utilities/v1_09_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-yzrw7xxezfdr3o5hn53pxxf6aph6i7ac/fcl:\
/daq/software/spack_packages/artdaq-core/v3_10_02/linux-almalinux9-x86_64_v2-gcc-13.1.0-fjcovpezavvdbrvaimpi3sgq5vjwaf7u/fcl

export FUNCNAME="export_environment_vars"

export GI_TYPELIB_PATH=/daq/software/spack_packages/harfbuzz/10.2.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-jzr2ilfyyfxqhl6cjrychxtmwlzk6ybr/lib/girepository-1.0:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-5tgat3csunsxm5aphdburaweuoa7x7ix/lib/girepository-1.0

export GSL_ROOT_DIR="/daq/software/spack_packages/gsl/2.7.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-6btdzhwfcn7dtkqah6x3uf7vv4kp67bu"

export HISTIGNORE="history:[bf]g:exit:logout:clear:pwd:ls"

export HISTTIMEFORMAT="%Y-%m-%d-%T"

export LANGUAGE="en_US.UTF-8"

export LC_ALL="en_US.UTF-8"

export LDSHARED

export LD_LIBRARY_PATH="/daq/software/spack_packages/canvas-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-13.1.0-lccceebb3isiyjfequwnyw5ca3elodt2/lib"

export LIBRARY_PATH

export LOADEDMODULES

export LUA_CPATH="/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-aloyucg4wl2xehvgnkxmzrjxovigcbes/lib/lua/5.3/?.so"

export LUA_PATH="/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-aloyucg4wl2xehvgnkxmzrjxovigcbes/lib/lua/5.3/?/init.lua;/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-aloyucg4wl2xehvgnkxmzrjxovigcbes/lib/lua/5.3/?.lua;/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-aloyucg4wl2xehvgnkxmzrjxovigcbes/share/lua/5.3/?/init.lua;/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-aloyucg4wl2xehvgnkxmzrjxovigcbes/share/lua/5.3/?.lua"

export MANPATH=

export MODULEPATH="/etc/scl/modulefiles:/etc/scl/modulefiles:/usr/share/Modules/modulefiles:/etc/modulefiles:/usr/share/modulefiles"

export MODULESHOME="/usr/share/Modules"

export MODULES_CMD="/usr/share/Modules/libexec/modulecmd.tcl"

export MODULES_RUN_QUARANTINE="LD_LIBRARY_PATH LD_PRELOAD"

export MOTD_SHOWN="pam"

export MPICC="/daq/software/spack_packages/openmpi/5.0.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-7737yvjujgzn3d4yxxdicslgyuyy5tie/bin/mpicc"

export MPICXX="/daq/software/spack_packages/openmpi/5.0.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-7737yvjujgzn3d4yxxdicslgyuyy5tie/bin/mpic++"

export MPIF77="/daq/software/spack_packages/openmpi/5.0.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-7737yvjujgzn3d4yxxdicslgyuyy5tie/bin/mpif77"

export MPIF90="/daq/software/spack_packages/openmpi/5.0.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-7737yvjujgzn3d4yxxdicslgyuyy5tie/bin/mpif90"

export MPIFC="/daq/software/spack_packages/openmpi/5.0.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-7737yvjujgzn3d4yxxdicslgyuyy5tie/bin/mpifort"

export MRB_QUALS="both"

export MULTICAST_INTERFACE_IP_TO_USE="192.168.191.0"

export OLDPWD="/home/nfs/icarus"

export OS_NAME="almalinux9"

export PATH=/daq/software/spack_packages/epics-base/7.0.6.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-od2x65glvkbjoy7oq66vrwtxbaqrlheb/bin/linux-x86_64:\
/daq/software/spack_packages/py-plotext/5.2.8/linux-almalinux9-x86_64_v2-gcc-13.1.0-bv7tagvi7qp72hl777gax5lu77qgoboz/bin:\
/daq/software/spack_packages/trace/v3_17_11/linux-almalinux9-x86_64_v2-gcc-13.1.0-qy3ojfdrazdfx6c6efdqybo35ih3272x/bin:\
/daq/software/spack_packages/py-nbformat/5.8.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-wwpurv7n6dvbmihl2pffq6y6lovgi3je/bin:\
/daq/software/spack_packages/py-jsonschema/4.22.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-nr2gyaihkmto5fh6ckl7xhht7wdzjuav/bin:\
/daq/software/spack_packages/py-jupyter-core/5.3.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-iqpux4fu2z6cwnigaeyp47jvx7jzsblt/bin:\
/daq/software/spack_packages/py-charset-normalizer/3.3.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-ci3x5u2kfzskhbuptsgfpzamoj5ksn57/bin:\
/daq/software/spack_packages/cmake/3.27.9/linux-almalinux9-x86_64_v2-gcc-13.1.0-ioahe2goqgadrph3coqe26g2sgx4b6eq/bin:\
/daq/software/spack_packages/gmake/4.4.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-uau636nzu6rrtcedparpiaqhyebnkz2s/bin:\
/daq/software/spack_packages/openssh/9.9p1/linux-almalinux9-x86_64_v2-gcc-13.1.0-ukplop5ltmeryqin4mdj2n7x4tfbhvmj/bin:\
/daq/software/spack_packages/py-numpy/1.24.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-wpje67v5vxoj7xoptu2pbhbse3llt4iu/bin:\
/daq/software/spack_packages/py-pybind11/2.10.4/linux-almalinux9-x86_64_v2-gcc-13.1.0-t7esm3jqvihk54jpfgdsf4ovcggwlnum/bin:\
/daq/software/spack_packages/python-venv/1.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-i25w6hbjs5gvjumvxhkzfua556ucgrui/bin:\
/daq/software/spack_packages/python/3.9.15/linux-almalinux9-x86_64_v2-gcc-13.1.0-j7lvwbrkmk3yihnkcz57ggzdicnlpipd/bin:\
/daq/software/spack_packages/perl/5.40.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-4xhrko4atkor44fpxodfqmskjufrhl3i/bin:\
/daq/software/spack_packages/sqlite/3.40.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-z54v4i44atkoci2geqehxyn6jq32sxgd/bin:\
/daq/software/spack_packages/tar/1.35/linux-almalinux9-x86_64_v2-gcc-13.1.0-xxpy3mvyh4s7iqtrm24tux2yfsyy3bwi/bin:\
/daq/software/spack_packages/bzip2/1.0.8/linux-almalinux9-x86_64_v2-gcc-13.1.0-kuf3k2jf5cztkzpto5lnoxdzsk5b6ud3/bin:\
/daq/software/spack_packages/pigz/2.8/linux-almalinux9-x86_64_v2-gcc-13.1.0-qjfp3det2e7oxbtqkottkfgzlv4e2vk7/bin:\
/daq/software/spack_packages/zstd/1.5.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-hv6hea2lsivg4cromjay5gikqx57gvfw/bin:\
/daq/software/spack_packages/curl/8.11.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-6sd43ofni4xsm4dovxazlsqgwkbli3re/bin:\
/daq/software/spack_packages/unzip/6.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-hqbpdqt4nvsokwwkmolvjfyqqgmhohhe/bin:\
/daq/software/spack_packages/xz/5.4.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-cqcfhk7vboytfj2esd3y53mrhxxtqbaz/bin:\
/daq/software/spack_packages/artdaq-runcontrol-gui/v1_03_06/linux-almalinux9-x86_64_v2-gcc-13.1.0-33lewgj4opxnnoiatl7x4jsiowiek3rf/bin:\
/daq/software/spack_packages/sbndaq/v2_02_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-ntjklrs7cc3t7kicaq3ndcpy4umv5yjt/bin:\
/daq/software/spack_packages/artdaq-daqinterface/v4_06_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-w4enww3ege4rds327duyqzbl7r6hiakq/bin:\
/daq/software/spack_packages/artdaq-database/v3_05_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-pjiwolgbux6zqlxclakar6mkawk4pdo2/bin:\
/daq/software/spack_packages/artdaq-demo/v3_13_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-n6nbgfxwkuak3loo3zomewiju6onhv7x/bin:\
/daq/software/spack_packages/sbndaq-artdaq/v2_02_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-wfbk3xwjuv4kralw5urigcnvyms2xvov/bin:\
/daq/software/spack_packages/artdaq/v3_13_02/linux-almalinux9-x86_64_v2-gcc-13.1.0-zk2lhujfdiwwk2tw3elrgcn5ybrocj23/bin:\
/daq/software/spack_packages/artdaq-epics-plugin/v1_06_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-av7zve2api4t33psbpwc4cy6yjuyvphy/bin:\
/daq/software/spack_packages/redis/7.4.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-ru3c2nhcuevnmopejyridyyuuxxhvrvu/bin:\
/daq/software/spack_packages/wibtools/v2_02_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-46y63burlpqe7qbbj7tr3edzc7jwhtvh/bin:\
/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-zs7ihueevgrxnikftyivcoa43lvxdlxl/bin:\
/daq/software/spack_packages/xmlrpc-c/1.51.06/linux-almalinux9-x86_64_v2-gcc-13.1.0-uzm6f4ybn324xpevfkfy3csmr3vqx26n/bin:\
/daq/software/spack_packages/artdaq-utilities/v1_09_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-yzrw7xxezfdr3o5hn53pxxf6aph6i7ac/bin:\
/daq/software/spack_packages/epics-base/7.0.6.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-od2x65glvkbjoy7oq66vrwtxbaqrlheb/bin:\
/daq/software/spack_packages/libzmq/4.3.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-pl527gkazn3nmf5cxbs6psnxvzupuvgj/bin:\
/daq/software/spack_packages/qt/5.15.16/linux-almalinux9-x86_64_v2-gcc-13.1.0-qztr3g6cmgfbuaq3iuwq75ele4mwgbua/bin:\
/daq/software/spack_packages/harfbuzz/10.2.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-jzr2ilfyyfxqhl6cjrychxtmwlzk6ybr/bin:\
/daq/software/spack_packages/libxkbcommon/1.7.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-dbvge25nx56cpdjzgidl63wz2boo4i26/bin:\
/daq/software/spack_packages/art-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-13.1.0-jv5taeiuqk6ohar4voxtyxarpc3ceynj/bin:\
/daq/software/spack_packages/cetmodules/3.24.01/linux-almalinux9-x86_64_v2-gcc-13.1.0-koqaikknwkufcftwpwny4b4b7a5yceza/bin:\
/daq/software/spack_packages/fftw/3.3.10/linux-almalinux9-x86_64_v2-gcc-13.1.0-lanfdap7qlbmvtyrajkb74syr7xerkr2/bin:\
/daq/software/spack_packages/postgresql/15.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-phjhf36knogadcgxcpgahbmfrzkeby2a/bin:\
/daq/software/spack_packages/xrootd/5.5.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-b272p35gctgekau7wy4owl4pjsdl2gum/bin:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-5tgat3csunsxm5aphdburaweuoa7x7ix/bin:\
/daq/software/spack_packages/lcms/2.16/linux-almalinux9-x86_64_v2-gcc-13.1.0-amicpd4ovpjmx6ovane4r26qbus4rh3z/bin:\
/daq/software/spack_packages/art/3.14.04/linux-almalinux9-x86_64_v2-gcc-13.1.0-q4tayb4ish2njkc5grre4tseolpjqaek/bin:\
/daq/software/spack_packages/openmpi/5.0.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-7737yvjujgzn3d4yxxdicslgyuyy5tie/bin:\
/daq/software/spack_packages/openblas/0.3.23/linux-almalinux9-x86_64_v2-gcc-13.1.0-ifzupnpqljwdvbnyi7262fij4p4occob/bin:\
/daq/software/spack_packages/cairo/1.18.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-jb35ohr7ahxp4kqsh4b3ejbyne4lr46n/bin:\
/daq/software/spack_packages/libtiff/4.7.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-nfudpojkscmyzys4fuaym3ifabtlsqk7/bin:\
/daq/software/spack_packages/root/6.28.12/linux-almalinux9-x86_64_v2-gcc-13.1.0-5shq26yritc6jl6k3mv3f7bsuxvmy6um/bin:\
/daq/software/spack_packages/numactl/2.0.18/linux-almalinux9-x86_64_v2-gcc-13.1.0-llbm2gh4ewv7hqyrvy34syiu3gozu3c2/bin:\
/daq/software/spack_packages/pmix/5.0.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-i7wtvqry2igoxglh33oiz5cbpkrovyqf/bin:\
/daq/software/spack_packages/glib/2.82.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-y5epzuut6splj2kc5pzmjjsq5wlhpvhd/bin:\
/daq/software/spack_packages/clhep/2.4.7.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-2b5rhsanhlnjbniocix6gnflc2jnk46w/bin:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-almalinux9-x86_64_v2-gcc-13.1.0-l33fs7oihd3dhw54affujyi2gclwtyjl/bin:\
/daq/software/spack_packages/davix/0.8.10/linux-almalinux9-x86_64_v2-gcc-13.1.0-5zvirpg72ceb5qevfwqozeaez6xo4ewb/bin:\
/daq/software/spack_packages/glew/2.2.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-vbdpcucf6l4o64o2kclsfwmcy74bket6/bin:\
/daq/software/spack_packages/gsl/2.7.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-6btdzhwfcn7dtkqah6x3uf7vv4kp67bu/bin:\
/daq/software/spack_packages/libjpeg-turbo/3.0.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-v4ziplwqb22ov45iq632jhudafp72x6d/bin:\
/daq/software/spack_packages/libxpm/3.5.17/linux-almalinux9-x86_64_v2-gcc-13.1.0-5cn3agb32w7ff3kiygjlenlb6ryn7mse/bin:\
/daq/software/spack_packages/lz4/1.10.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-mvvbsow3x43cyphe5aa3qiazn5m7o3t3/bin:\
/daq/software/spack_packages/xxhash/0.8.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-f5kw4fe7odwmilaickdqkleacph7lh37/bin:\
/daq/software/spack_packages/krb5/1.21.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-wqvuvqerp6bfpkmgctx6vs73mgnr6reo/bin:\
/daq/software/spack_packages/libevent/2.1.12/linux-almalinux9-x86_64_v2-gcc-13.1.0-yz55fz75sifdx7svuhe5o47hmtn745pe/bin:\
/daq/software/spack_packages/elfutils/0.192/linux-almalinux9-x86_64_v2-gcc-13.1.0-47g56z22iywgcmvnalfcb3zzvywzibs4/bin:\
/daq/software/spack_packages/fhicl-cpp/4.18.04/linux-almalinux9-x86_64_v2-gcc-13.1.0-yxcz73yuisol5paq4iyhxhtpp6crkfvn/bin:\
/daq/software/spack_packages/fontconfig/2.15.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-6zinqo6sb2otqdtu7g4u7qskvahc4s56/bin:\
/daq/software/spack_packages/pkg-config/0.29.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-7ts6z5tdvtiw33mxlloy4iqkl3ehgq3t/bin:\
/daq/software/spack_packages/rust/1.83.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-zsspzp5a6r2247c7d7nsfnmxzb7dc6au/bin:\
/daq/software/spack_packages/cetlib/3.18.02/linux-almalinux9-x86_64_v2-gcc-13.1.0-5yyfdv6yf4hayqecl3kcd66iukuz5iim/bin:\
/daq/software/spack_packages/font-util/1.4.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-m5t3h7vwu42duszrjo7tjynnbpyvaizt/bin:\
/daq/software/spack_packages/freetype/2.13.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-oponq7mqewibzrqh3u4fu3i4zbeawlki/bin:\
/daq/software/spack_packages/libgit2/1.8.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-6q3edwcrdf2qzrykkbbtv6dzgvyeb3fa/bin:\
/daq/software/spack_packages/libpng/1.6.39/linux-almalinux9-x86_64_v2-gcc-13.1.0-nxwr22y4f52fw7ftctnxqo5nhjajexkt/bin:\
/daq/software/spack_packages/gettext/0.22.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-rfwcs5nlupprna7s2qgltzuyd4mw3yvs/bin:\
/daq/software/spack_packages/pcre/8.45/linux-almalinux9-x86_64_v2-gcc-13.1.0-ojebsh3q46y6jgt6wbgdxhezoyifrjfj/bin:\
/daq/software/spack_packages/icu4c/74.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-zo6zv3qbhzgitoxcqbqagphk7txvjnte/bin:\
/daq/software/spack_packages/berkeley-db/18.1.40/linux-almalinux9-x86_64_v2-gcc-13.1.0-gcpg3p2bwz62yukf5tx7tdeolyv65nau/bin:\
/daq/software/spack_packages/gdbm/1.23/linux-almalinux9-x86_64_v2-gcc-13.1.0-lgkk4s46dxb6wwrdfpsbaqu25ogffxyj/bin:\
/daq/software/spack_packages/expat/2.6.4/linux-almalinux9-x86_64_v2-gcc-13.1.0-wd2vu7yebknp3qad3f5eksxdjz4uj5nx/bin:\
/daq/software/spack_packages/llvm/17.0.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-q7cxacolietx7cwnliirvqwcm4szctzd/bin:\
/daq/software/spack_packages/xrandr/1.5.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-piss3rnfuayomnizwizv6cddr2dnysa3/bin:\
/daq/software/spack_packages/binutils/2.43.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-old5p3oopkqvek4ujp6ikanl67bbjc5h/bin:\
/daq/software/spack_packages/hwloc/2.11.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-ujaqkz3c2wwazpralknoihgsymhw2wxe/bin:\
/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-aloyucg4wl2xehvgnkxmzrjxovigcbes/bin:\
/daq/software/spack_packages/swig/4.1.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-7qidliy5hy3ey34sxuxztdxuszhcz37g/bin:\
/daq/software/spack_packages/libxml2/2.9.12/linux-almalinux9-x86_64_v2-gcc-13.1.0-xwk566phmltx6ni7hajwzppegelvp3u6/bin:\
/daq/software/spack_packages/readline/8.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-t7ouo4k2auozroxv4ri2kjerznxbs65w/bin:\
/daq/software/spack_packages/pcre2/10.44/linux-almalinux9-x86_64_v2-gcc-13.1.0-h2pknkctevop25sisa6c5za5dhbvo2ud/bin:\
/daq/software/spack_packages/nghttp2/1.64.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-7pg4cqjmr47jp2qjx63pehbbtkeqztxc/bin:\
/daq/software/spack_packages/openssl/3.4.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-uxuhpv7ewvcgz6dezq5s6qqojos2ojkp/bin:\
/daq/software/spack_packages/ncurses/6.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-nobfqgirlxndnujn2ed77exqtomthz3e/bin:\
/daq/software/spack_packages/spack/current/NULL/bin:\
/usr/kerberos/sbin:\
/usr/kerberos/bin:\
/usr/local/sbin:\
/usr/sbin:\
/sbin:\
/usr/local/bin:\
/usr/bin:\
/bin

export PERL5LIB=/daq/software/spack_packages/trace/v3_17_11/linux-almalinux9-x86_64_v2-gcc-13.1.0-qy3ojfdrazdfx6c6efdqybo35ih3272x/perllib:\
/daq/software/spack_packages/art/3.14.04/linux-almalinux9-x86_64_v2-gcc-13.1.0-q4tayb4ish2njkc5grre4tseolpjqaek/perllib:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-almalinux9-x86_64_v2-gcc-13.1.0-l33fs7oihd3dhw54affujyi2gclwtyjl/perllib:\
/daq/software/spack_packages/cetlib/3.18.02/linux-almalinux9-x86_64_v2-gcc-13.1.0-5yyfdv6yf4hayqecl3kcd66iukuz5iim/perllib

export PKG_CONFIG_PATH=/daq/software/spack_packages/cppzmq/4.10.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-24dx7utl7rcqcsolsleufozj5numiowe/lib64/pkgconfig:\
/daq/software/spack_packages/hiredis/1.1.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-4lnepeq24z22llycggvaolo2dzlnba55/lib64/pkgconfig:\
/daq/software/spack_packages/jsoncpp/1.9.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-elivv26k454cfirocgskzrffm5r6uz7e/lib64/pkgconfig:\
/daq/software/spack_packages/libpqxx/7.10.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-7435uyulbkxwktp6sf5ysp6tqhajrv5z/lib64/pkgconfig:\
/daq/software/spack_packages/xmlrpc-c/1.51.06/linux-almalinux9-x86_64_v2-gcc-13.1.0-uzm6f4ybn324xpevfkfy3csmr3vqx26n/lib/pkgconfig:\
/daq/software/spack_packages/epics-base/7.0.6.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-od2x65glvkbjoy7oq66vrwtxbaqrlheb/lib/pkgconfig:\
/daq/software/spack_packages/libzmq/4.3.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-pl527gkazn3nmf5cxbs6psnxvzupuvgj/lib/pkgconfig:\
/daq/software/spack_packages/librdkafka/2.8.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-q4jytq4rt2zacvqqtwsyo3wz6l7b4hjp/lib/pkgconfig:\
/daq/software/spack_packages/qt/5.15.16/linux-almalinux9-x86_64_v2-gcc-13.1.0-qztr3g6cmgfbuaq3iuwq75ele4mwgbua/lib/pkgconfig:\
/daq/software/spack_packages/libsodium/1.0.20/linux-almalinux9-x86_64_v2-gcc-13.1.0-qi3s37lfbqtluif2qvw5ndll3oddajsz/lib/pkgconfig:\
/daq/software/spack_packages/zlib/1.3.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-oswrerxnndcpid4jnjjfk6pwvcyw2kuy/lib/pkgconfig:\
/daq/software/spack_packages/harfbuzz/10.2.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-jzr2ilfyyfxqhl6cjrychxtmwlzk6ybr/lib/pkgconfig:\
/daq/software/spack_packages/libmng/2.0.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-lwd44avhr2hlupa3j4zlnth6npn3sqlc/lib64/pkgconfig:\
/daq/software/spack_packages/libxkbcommon/1.7.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-dbvge25nx56cpdjzgidl63wz2boo4i26/lib/pkgconfig:\
/daq/software/spack_packages/xcb-util-image/0.4.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-gokl3xam7tvpgolscbgfr4f3jix3is3d/lib/pkgconfig:\
/daq/software/spack_packages/xcb-util-keysyms/0.4.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-3ion3ql2dx7kmfmeu6ka3zdmpwxch7ol/lib/pkgconfig:\
/daq/software/spack_packages/xcb-util-renderutil/0.3.10/linux-almalinux9-x86_64_v2-gcc-13.1.0-q4zftu6vbdu7kkbwayyikrlf54ztxugb/lib/pkgconfig:\
/daq/software/spack_packages/xcb-util-wm/0.4.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-pqgebdfeuvmcgjqay3f5vstzowc4rnso/lib/pkgconfig:\
/daq/software/spack_packages/libusb/1.0.27/linux-almalinux9-x86_64_v2-gcc-13.1.0-anvdi4xgcctvj55575r3cdhnwidwksrp/lib/pkgconfig:\
/daq/software/spack_packages/fftw/3.3.10/linux-almalinux9-x86_64_v2-gcc-13.1.0-lanfdap7qlbmvtyrajkb74syr7xerkr2/lib/pkgconfig:\
/daq/software/spack_packages/postgresql/15.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-phjhf36knogadcgxcpgahbmfrzkeby2a/lib/pkgconfig:\
/daq/software/spack_packages/py-pybind11/2.10.4/linux-almalinux9-x86_64_v2-gcc-13.1.0-t7esm3jqvihk54jpfgdsf4ovcggwlnum/share/pkgconfig:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-5tgat3csunsxm5aphdburaweuoa7x7ix/lib/pkgconfig:\
/daq/software/spack_packages/lcms/2.16/linux-almalinux9-x86_64_v2-gcc-13.1.0-amicpd4ovpjmx6ovane4r26qbus4rh3z/lib/pkgconfig:\
/daq/software/spack_packages/util-macros/1.20.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-x5vvnxgca6zobpx54okm5s5mjovme35g/share/pkgconfig:\
/daq/software/spack_packages/xkeyboard-config/2.34/linux-almalinux9-x86_64_v2-gcc-13.1.0-u2fahbtkc26wptsrgtpuppxigvogt7i2/share/pkgconfig:\
/daq/software/spack_packages/xcb-util/0.4.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-eljlhiotvtpkljivjc5fpcttjottebmz/lib/pkgconfig:\
/daq/software/spack_packages/openmpi/5.0.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-7737yvjujgzn3d4yxxdicslgyuyy5tie/lib/pkgconfig:\
/daq/software/spack_packages/openblas/0.3.23/linux-almalinux9-x86_64_v2-gcc-13.1.0-ifzupnpqljwdvbnyi7262fij4p4occob/lib/pkgconfig:\
/daq/software/spack_packages/json-c/0.18/linux-almalinux9-x86_64_v2-gcc-13.1.0-4cztye4qu3otadrafqj47sj5tv3spqji/lib64/pkgconfig:\
/daq/software/spack_packages/cairo/1.18.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-jb35ohr7ahxp4kqsh4b3ejbyne4lr46n/lib/pkgconfig:\
/daq/software/spack_packages/libtiff/4.7.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-nfudpojkscmyzys4fuaym3ifabtlsqk7/lib64/pkgconfig:\
/daq/software/spack_packages/numactl/2.0.18/linux-almalinux9-x86_64_v2-gcc-13.1.0-llbm2gh4ewv7hqyrvy34syiu3gozu3c2/lib/pkgconfig:\
/daq/software/spack_packages/pmix/5.0.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-i7wtvqry2igoxglh33oiz5cbpkrovyqf/lib/pkgconfig:\
/daq/software/spack_packages/glib/2.82.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-y5epzuut6splj2kc5pzmjjsq5wlhpvhd/lib/pkgconfig:\
/daq/software/spack_packages/lzo/2.10/linux-almalinux9-x86_64_v2-gcc-13.1.0-lknje6jmxrfjvw3z4eneu5su2z5t5olb/lib/pkgconfig:\
/daq/software/spack_packages/pixman/0.44.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-2lxpdcrj62qwz6lsbjif7wq736tkvuew/lib/pkgconfig:\
/daq/software/spack_packages/clhep/2.4.7.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-2b5rhsanhlnjbniocix6gnflc2jnk46w/lib/pkgconfig:\
/daq/software/spack_packages/davix/0.8.10/linux-almalinux9-x86_64_v2-gcc-13.1.0-5zvirpg72ceb5qevfwqozeaez6xo4ewb/lib64/pkgconfig:\
/daq/software/spack_packages/glew/2.2.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-vbdpcucf6l4o64o2kclsfwmcy74bket6/lib64/pkgconfig:\
/daq/software/spack_packages/gsl/2.7.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-6btdzhwfcn7dtkqah6x3uf7vv4kp67bu/lib/pkgconfig:\
/daq/software/spack_packages/libjpeg-turbo/3.0.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-v4ziplwqb22ov45iq632jhudafp72x6d/lib64/pkgconfig:\
/daq/software/spack_packages/libxft/2.3.8/linux-almalinux9-x86_64_v2-gcc-13.1.0-i2ly4xs3rnwgsyl7dg5oqsprn2f4ymlr/lib/pkgconfig:\
/daq/software/spack_packages/libxpm/3.5.17/linux-almalinux9-x86_64_v2-gcc-13.1.0-5cn3agb32w7ff3kiygjlenlb6ryn7mse/lib/pkgconfig:\
/daq/software/spack_packages/lz4/1.10.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-mvvbsow3x43cyphe5aa3qiazn5m7o3t3/lib/pkgconfig:\
/daq/software/spack_packages/nlohmann-json/3.11.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-awbzegmcplb5dzrndze33jxnxj3r7zf2/share/pkgconfig:\
/daq/software/spack_packages/xxhash/0.8.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-f5kw4fe7odwmilaickdqkleacph7lh37/lib/pkgconfig:\
/daq/software/spack_packages/krb5/1.21.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-wqvuvqerp6bfpkmgctx6vs73mgnr6reo/lib/pkgconfig:\
/daq/software/spack_packages/libevent/2.1.12/linux-almalinux9-x86_64_v2-gcc-13.1.0-yz55fz75sifdx7svuhe5o47hmtn745pe/lib/pkgconfig:\
/daq/software/spack_packages/elfutils/0.192/linux-almalinux9-x86_64_v2-gcc-13.1.0-47g56z22iywgcmvnalfcb3zzvywzibs4/lib/pkgconfig:\
/daq/software/spack_packages/catch2/3.3.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-5twgsrezhrrsztvlq4gc5r7tkctwrrt2/share/pkgconfig:\
/daq/software/spack_packages/rapidjson/1.2.0-2024-08-16/linux-almalinux9-x86_64_v2-gcc-13.1.0-kslid5r77wf2mo45ashs3souuiok2jnw/lib/pkgconfig:\
/daq/software/spack_packages/mesa-glu/9.0.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-tixkotyxfmdqan6tbhco4cnm7rnwwlva/lib/pkgconfig:\
/daq/software/spack_packages/fontconfig/2.15.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-6zinqo6sb2otqdtu7g4u7qskvahc4s56/lib/pkgconfig:\
/daq/software/spack_packages/intel-tbb-oneapi/2021.9.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-7jfp34ifkisohmp4g2tursbgykyzitwy/lib64/pkgconfig:\
/daq/software/spack_packages/font-util/1.4.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-m5t3h7vwu42duszrjo7tjynnbpyvaizt/lib/pkgconfig:\
/daq/software/spack_packages/freetype/2.13.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-oponq7mqewibzrqh3u4fu3i4zbeawlki/lib/pkgconfig:\
/daq/software/spack_packages/python/3.9.15/linux-almalinux9-x86_64_v2-gcc-13.1.0-j7lvwbrkmk3yihnkcz57ggzdicnlpipd/lib/pkgconfig:\
/daq/software/spack_packages/libgit2/1.8.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-6q3edwcrdf2qzrykkbbtv6dzgvyeb3fa/lib64/pkgconfig:\
/daq/software/spack_packages/mesa/23.3.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-kkdqmft2byawveqfo5frsefkol3dbybs/lib/pkgconfig:\
/daq/software/spack_packages/libpng/1.6.39/linux-almalinux9-x86_64_v2-gcc-13.1.0-nxwr22y4f52fw7ftctnxqo5nhjajexkt/lib64/pkgconfig:\
/daq/software/spack_packages/libxcrypt/4.4.35/linux-almalinux9-x86_64_v2-gcc-13.1.0-zqlbtwpfhw2rql7kb3oadufb5yrpmxca/lib/pkgconfig:\
/daq/software/spack_packages/sqlite/3.40.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-z54v4i44atkoci2geqehxyn6jq32sxgd/lib/pkgconfig:\
/daq/software/spack_packages/libssh2/1.11.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-x4t5zcy7uoykq5q743uudohvh2oncb2p/lib/pkgconfig:\
/daq/software/spack_packages/pcre/8.45/linux-almalinux9-x86_64_v2-gcc-13.1.0-ojebsh3q46y6jgt6wbgdxhezoyifrjfj/lib/pkgconfig:\
/daq/software/spack_packages/icu4c/74.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-zo6zv3qbhzgitoxcqbqagphk7txvjnte/lib/pkgconfig:\
/daq/software/spack_packages/expat/2.6.4/linux-almalinux9-x86_64_v2-gcc-13.1.0-wd2vu7yebknp3qad3f5eksxdjz4uj5nx/lib/pkgconfig:\
/daq/software/spack_packages/glproto/1.4.17/linux-almalinux9-x86_64_v2-gcc-13.1.0-jp67725it63wp6gthmxz5cvo4rb3fe7w/lib/pkgconfig:\
/daq/software/spack_packages/libunwind/1.8.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-7ir6p2rwvijxqh5jhgmg47inucfzuqgz/lib/pkgconfig:\
/daq/software/spack_packages/libxt/1.3.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-fjry6onuaslhthc3y6n7zdmc2azpbv6s/lib/pkgconfig:\
/daq/software/spack_packages/libsm/1.2.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-35qnbcu52pkk4ux7l4soqpnyscb3lqez/lib/pkgconfig:\
/daq/software/spack_packages/hwloc/2.11.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-ujaqkz3c2wwazpralknoihgsymhw2wxe/lib/pkgconfig:\
/daq/software/spack_packages/libedit/3.1-20240808/linux-almalinux9-x86_64_v2-gcc-13.1.0-cugnevuppchlpid67y5k4d27i7wbjkly/lib/pkgconfig:\
/daq/software/spack_packages/libffi/3.4.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-k3frxfy7e7y3ybvecwwk5t4624tevhbn/lib/pkgconfig:\
/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-aloyucg4wl2xehvgnkxmzrjxovigcbes/lib/pkgconfig:\
/daq/software/spack_packages/libxrandr/1.5.4/linux-almalinux9-x86_64_v2-gcc-13.1.0-jqwc6o5dpkm74vht26kcsrpvabga6gsu/lib/pkgconfig:\
/daq/software/spack_packages/bzip2/1.0.8/linux-almalinux9-x86_64_v2-gcc-13.1.0-kuf3k2jf5cztkzpto5lnoxdzsk5b6ud3/lib/pkgconfig:\
/daq/software/spack_packages/libice/1.1.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-cupfv5u7d32zwzdtz4vmnktdoccwfwoi/lib/pkgconfig:\
/daq/software/spack_packages/libuuid/1.0.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-f2ulfrstfdlq664gny7mrsqefg5z34ld/lib/pkgconfig:\
/daq/software/spack_packages/zstd/1.5.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-hv6hea2lsivg4cromjay5gikqx57gvfw/lib/pkgconfig:\
/daq/software/spack_packages/libpciaccess/0.17/linux-almalinux9-x86_64_v2-gcc-13.1.0-uiznzhuljfddl7ka5iqrikalhviudvju/lib/pkgconfig:\
/daq/software/spack_packages/libxml2/2.9.12/linux-almalinux9-x86_64_v2-gcc-13.1.0-xwk566phmltx6ni7hajwzppegelvp3u6/lib/pkgconfig:\
/daq/software/spack_packages/curl/8.11.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-6sd43ofni4xsm4dovxazlsqgwkbli3re/lib/pkgconfig:\
/daq/software/spack_packages/readline/8.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-t7ouo4k2auozroxv4ri2kjerznxbs65w/lib/pkgconfig:\
/daq/software/spack_packages/pcre2/10.44/linux-almalinux9-x86_64_v2-gcc-13.1.0-h2pknkctevop25sisa6c5za5dhbvo2ud/lib/pkgconfig:\
/daq/software/spack_packages/libxext/1.3.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-mir2brhlz7mwc7r5indvvoy7ulilnpsu/lib/pkgconfig:\
/daq/software/spack_packages/libxrender/0.9.11/linux-almalinux9-x86_64_v2-gcc-13.1.0-zclx46zafzc4nbs3ge6nbw524vfpoiuw/lib/pkgconfig:\
/daq/software/spack_packages/randrproto/1.5.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-q5ytncezw2xg5zwtukqs65gujnrelita/lib/pkgconfig:\
/daq/software/spack_packages/xz/5.4.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-cqcfhk7vboytfj2esd3y53mrhxxtqbaz/lib/pkgconfig:\
/daq/software/spack_packages/nghttp2/1.64.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-7pg4cqjmr47jp2qjx63pehbbtkeqztxc/lib/pkgconfig:\
/daq/software/spack_packages/openssl/3.4.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-uxuhpv7ewvcgz6dezq5s6qqojos2ojkp/lib64/pkgconfig:\
/daq/software/spack_packages/ncurses/6.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-nobfqgirlxndnujn2ed77exqtomthz3e/lib/pkgconfig:\
/daq/software/spack_packages/xextproto/7.3.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-ta4qmra7775es2eo6dukj4lvnhn7vrq4/lib/pkgconfig:\
/daq/software/spack_packages/libx11/1.8.10/linux-almalinux9-x86_64_v2-gcc-13.1.0-56wui3itis6q6uklvci3ueekt3o3i5pv/lib/pkgconfig:\
/daq/software/spack_packages/renderproto/0.11.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-h4jgpf5eep6c2ecznuutoty6q7rw5hvz/lib/pkgconfig:\
/daq/software/spack_packages/zlib-ng/2.2.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-xjk5rdwll5wuqai4zwiylezfztjjhlb7/lib/pkgconfig:\
/daq/software/spack_packages/kbproto/1.0.7/linux-almalinux9-x86_64_v2-gcc-13.1.0-dxuprotuzmggc4yb2vwrufppbsjw3avl/lib/pkgconfig:\
/daq/software/spack_packages/libxcb/1.17.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-mqafnxzwn3hpddx5evba4uaqnscylr3z/lib/pkgconfig:\
/daq/software/spack_packages/xtrans/1.5.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-npnqtn5vf7hq7cuamse7eywmcwlteeu5/share/pkgconfig:\
/daq/software/spack_packages/libpthread-stubs/0.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-dqdkh23il2fjmkulfeie6eqbelcrq4sf/lib/pkgconfig:\
/daq/software/spack_packages/libxau/1.0.12/linux-almalinux9-x86_64_v2-gcc-13.1.0-4rrf5hfqie6jm5mplwzgjw4oaixqnx4r/lib/pkgconfig:\
/daq/software/spack_packages/libxdmcp/1.1.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-4jkmyhzkwmryillypnhvqr7qnyagrluf/lib/pkgconfig:\
/daq/software/spack_packages/libbsd/0.12.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-bwgfgz5m6u7rw6jzesztsjtwvjok7tcn/lib/pkgconfig:\
/daq/software/spack_packages/xproto/7.0.31/linux-almalinux9-x86_64_v2-gcc-13.1.0-n47nt3tp6ydm6ikheovl7ghzuwd3sqo3/lib/pkgconfig:\
/daq/software/spack_packages/libmd/1.0.4/linux-almalinux9-x86_64_v2-gcc-13.1.0-zk365rvde3z7mxyskvnh72f7my6jxfln/lib/pkgconfig:\
/usr/share/pkgconfig:\
/usr/lib64/pkgconfig

export PYTHONPATH=/daq/software/spack_packages/root/6.28.12/linux-almalinux9-x86_64_v2-gcc-13.1.0-5shq26yritc6jl6k3mv3f7bsuxvmy6um/lib/root:\
/daq/software/spack_packages/py-plotly/2.2.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-4vo7cpu2s3fz3se32kc7fwdqhypbxtca/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-nbformat/5.8.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-wwpurv7n6dvbmihl2pffq6y6lovgi3je/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-jsonschema/4.22.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-nr2gyaihkmto5fh6ckl7xhht7wdzjuav/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-jsonschema-specifications/2023.12.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-do2m2j3c4iy3ptdabld356g4rvzwpwf2/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-referencing/0.35.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-xrbbpp3po75giudbaurhhwkqrmireuso/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-rpds-py/0.20.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-jx73gmbncg6kovhs7y6awtloju7dhubl/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-jupyter-core/5.3.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-iqpux4fu2z6cwnigaeyp47jvx7jzsblt/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-attrs/23.1.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-ir4zwbtua7qxiqjy6qce4yqcpi7e7vlx/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-requests/2.32.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-66rgcw5razumjp33ta3cau5hek5nuiqh/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-platformdirs/3.10.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-g4xsro7rhdv4qynqutfpnkjnkqioqbuz/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-traitlets/5.14.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-utkp6xa3sw2xz3tbk5hdbebqdbovw47q/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-urllib3/2.1.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-6rjxl2kqb6hs5qm465umutspmeblhcw5/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-idna/3.4/linux-almalinux9-x86_64_v2-gcc-13.1.0-thf2i3iqv3wbclgj7cxocqt2kyf5ic65/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-certifi/2023.7.22/linux-almalinux9-x86_64_v2-gcc-13.1.0-z6borxossofhuwc6wk4bs4ybfwg6ucnd/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-six/1.17.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-jb4drmjy2j5g3zmh2yqhr5tvevm2eozv/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-decorator/5.1.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-5lnusqrairvypwf4bazib55yc4lqc3yt/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-fastjsonschema/2.21.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-hybgrp77xtwlph27ky2zag55bvbgzslv/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-plotext/5.2.8/linux-almalinux9-x86_64_v2-gcc-13.1.0-bv7tagvi7qp72hl777gax5lu77qgoboz/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-charset-normalizer/3.3.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-ci3x5u2kfzskhbuptsgfpzamoj5ksn57/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-pytz/2024.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-vgwkd6ye6f24yl5xwhl6l2qgjchq7qr6/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-numpy/1.24.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-wpje67v5vxoj7xoptu2pbhbse3llt4iu/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-pybind11/2.10.4/linux-almalinux9-x86_64_v2-gcc-13.1.0-t7esm3jqvihk54jpfgdsf4ovcggwlnum/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-setuptools/63.4.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-dr2diisxdetolxe6ia3t7jte6ngblabm/lib/python3.9/site-packages:\
/daq/software/spack_packages/python-venv/1.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-i25w6hbjs5gvjumvxhkzfua556ucgrui/lib/python3.9/site-packages

export QTDIR="/daq/software/spack_packages/qt/5.15.16/linux-almalinux9-x86_64_v2-gcc-13.1.0-qztr3g6cmgfbuaq3iuwq75ele4mwgbua"

export QTINC="/daq/software/spack_packages/qt/5.15.16/linux-almalinux9-x86_64_v2-gcc-13.1.0-qztr3g6cmgfbuaq3iuwq75ele4mwgbua/inc"

export QTLIB="/daq/software/spack_packages/qt/5.15.16/linux-almalinux9-x86_64_v2-gcc-13.1.0-qztr3g6cmgfbuaq3iuwq75ele4mwgbua/lib"

export QT_PLUGIN_PATH="/daq/software/spack_packages/qt/5.15.16/linux-almalinux9-x86_64_v2-gcc-13.1.0-qztr3g6cmgfbuaq3iuwq75ele4mwgbua/plugins"

export ROOTSYS="/daq/software/spack_packages/root/6.28.12/linux-almalinux9-x86_64_v2-gcc-13.1.0-5shq26yritc6jl6k3mv3f7bsuxvmy6um"

export ROOT_INCLUDE_PATH=/daq/software/spack_packages/canvas-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-13.1.0-lccceebb3isiyjfequwnyw5ca3elodt2/include:\
/daq/software/spack_packages/root/6.28.12/linux-almalinux9-x86_64_v2-gcc-13.1.0-5shq26yritc6jl6k3mv3f7bsuxvmy6um/include:\
/daq/software/spack_packages/xxhash/0.8.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-f5kw4fe7odwmilaickdqkleacph7lh37/include:\
/daq/software/spack_packages/vdt/0.4.4/linux-almalinux9-x86_64_v2-gcc-13.1.0-yuni7cum5sex7tnqq5ovqian6b6tggrh/include:\
/daq/software/spack_packages/unuran/1.8.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-gjnoxu6gsnlbd6mqtdycky7buxu47xce/include:\
/daq/software/spack_packages/rngstreams/1.0.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-b6ti4hx2podwxghti4hq53hwotvsmwty/include:\
/daq/software/spack_packages/pcre/8.45/linux-almalinux9-x86_64_v2-gcc-13.1.0-ojebsh3q46y6jgt6wbgdxhezoyifrjfj/include:\
/daq/software/spack_packages/nlohmann-json/3.11.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-awbzegmcplb5dzrndze33jxnxj3r7zf2/include:\
/daq/software/spack_packages/lz4/1.10.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-mvvbsow3x43cyphe5aa3qiazn5m7o3t3/include:\
/daq/software/spack_packages/libxpm/3.5.17/linux-almalinux9-x86_64_v2-gcc-13.1.0-5cn3agb32w7ff3kiygjlenlb6ryn7mse/include:\
/daq/software/spack_packages/libxft/2.3.8/linux-almalinux9-x86_64_v2-gcc-13.1.0-i2ly4xs3rnwgsyl7dg5oqsprn2f4ymlr/include:\
/daq/software/spack_packages/fontconfig/2.15.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-6zinqo6sb2otqdtu7g4u7qskvahc4s56/include:\
/daq/software/spack_packages/font-util/1.4.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-m5t3h7vwu42duszrjo7tjynnbpyvaizt/include:\
/daq/software/spack_packages/libjpeg-turbo/3.0.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-v4ziplwqb22ov45iq632jhudafp72x6d/include:\
/daq/software/spack_packages/gsl/2.7.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-6btdzhwfcn7dtkqah6x3uf7vv4kp67bu/include:\
/daq/software/spack_packages/glew/2.2.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-vbdpcucf6l4o64o2kclsfwmcy74bket6/include:\
/daq/software/spack_packages/gl2ps/1.4.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-nceyjskq2dsajxf53kg7rhootjyuorz2/include:\
/daq/software/spack_packages/ftgl/2.4.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-cvwf3kiijij2uxutxabgjoy5ev5zer6w/include:\
/daq/software/spack_packages/mesa-glu/9.0.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-tixkotyxfmdqan6tbhco4cnm7rnwwlva/include:\
/daq/software/spack_packages/glx/1.4/linux-almalinux9-x86_64_v2-gcc-13.1.0-k3lk53gnfnl5goyy6fyem4u7yrkuyeg2/include:\
/daq/software/spack_packages/mesa/23.3.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-kkdqmft2byawveqfo5frsefkol3dbybs/include:\
/daq/software/spack_packages/xrandr/1.5.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-piss3rnfuayomnizwizv6cddr2dnysa3/include:\
/daq/software/spack_packages/libxrandr/1.5.4/linux-almalinux9-x86_64_v2-gcc-13.1.0-jqwc6o5dpkm74vht26kcsrpvabga6gsu/include:\
/daq/software/spack_packages/randrproto/1.5.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-q5ytncezw2xg5zwtukqs65gujnrelita/include:\
/daq/software/spack_packages/libxrender/0.9.11/linux-almalinux9-x86_64_v2-gcc-13.1.0-zclx46zafzc4nbs3ge6nbw524vfpoiuw/include:\
/daq/software/spack_packages/renderproto/0.11.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-h4jgpf5eep6c2ecznuutoty6q7rw5hvz/include:\
/daq/software/spack_packages/llvm/17.0.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-q7cxacolietx7cwnliirvqwcm4szctzd/include:\
/daq/software/spack_packages/swig/4.1.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-7qidliy5hy3ey34sxuxztdxuszhcz37g/include:\
/daq/software/spack_packages/pcre2/10.44/linux-almalinux9-x86_64_v2-gcc-13.1.0-h2pknkctevop25sisa6c5za5dhbvo2ud/include:\
/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-aloyucg4wl2xehvgnkxmzrjxovigcbes/include:\
/daq/software/spack_packages/libedit/3.1-20240808/linux-almalinux9-x86_64_v2-gcc-13.1.0-cugnevuppchlpid67y5k4d27i7wbjkly/include:\
/daq/software/spack_packages/binutils/2.43.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-old5p3oopkqvek4ujp6ikanl67bbjc5h/include:\
/daq/software/spack_packages/libxt/1.3.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-fjry6onuaslhthc3y6n7zdmc2azpbv6s/include:\
/daq/software/spack_packages/libsm/1.2.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-35qnbcu52pkk4ux7l4soqpnyscb3lqez/include:\
/daq/software/spack_packages/libice/1.1.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-cupfv5u7d32zwzdtz4vmnktdoccwfwoi/include:\
/daq/software/spack_packages/libxext/1.3.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-mir2brhlz7mwc7r5indvvoy7ulilnpsu/include:\
/daq/software/spack_packages/xextproto/7.3.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-ta4qmra7775es2eo6dukj4lvnhn7vrq4/include:\
/daq/software/spack_packages/libx11/1.8.10/linux-almalinux9-x86_64_v2-gcc-13.1.0-56wui3itis6q6uklvci3ueekt3o3i5pv/include:\
/daq/software/spack_packages/xtrans/1.5.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-npnqtn5vf7hq7cuamse7eywmcwlteeu5/include:\
/daq/software/spack_packages/libxcb/1.17.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-mqafnxzwn3hpddx5evba4uaqnscylr3z/include:\
/daq/software/spack_packages/libxdmcp/1.1.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-4jkmyhzkwmryillypnhvqr7qnyagrluf/include:\
/daq/software/spack_packages/libxau/1.0.12/linux-almalinux9-x86_64_v2-gcc-13.1.0-4rrf5hfqie6jm5mplwzgjw4oaixqnx4r/include:\
/daq/software/spack_packages/xproto/7.0.31/linux-almalinux9-x86_64_v2-gcc-13.1.0-n47nt3tp6ydm6ikheovl7ghzuwd3sqo3/include:\
/daq/software/spack_packages/libpthread-stubs/0.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-dqdkh23il2fjmkulfeie6eqbelcrq4sf/include:\
/daq/software/spack_packages/kbproto/1.0.7/linux-almalinux9-x86_64_v2-gcc-13.1.0-dxuprotuzmggc4yb2vwrufppbsjw3avl/include:\
/daq/software/spack_packages/libunwind/1.8.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-7ir6p2rwvijxqh5jhgmg47inucfzuqgz/include:\
/daq/software/spack_packages/glproto/1.4.17/linux-almalinux9-x86_64_v2-gcc-13.1.0-jp67725it63wp6gthmxz5cvo4rb3fe7w/include:\
/daq/software/spack_packages/freetype/2.13.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-oponq7mqewibzrqh3u4fu3i4zbeawlki/include:\
/daq/software/spack_packages/libpng/1.6.39/linux-almalinux9-x86_64_v2-gcc-13.1.0-nxwr22y4f52fw7ftctnxqo5nhjajexkt/include:\
/daq/software/spack_packages/davix/0.8.10/linux-almalinux9-x86_64_v2-gcc-13.1.0-5zvirpg72ceb5qevfwqozeaez6xo4ewb/include:\
/daq/software/spack_packages/rapidjson/1.2.0-2024-08-16/linux-almalinux9-x86_64_v2-gcc-13.1.0-kslid5r77wf2mo45ashs3souuiok2jnw/include:\
/daq/software/spack_packages/curl/8.11.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-6sd43ofni4xsm4dovxazlsqgwkbli3re/include:\
/daq/software/spack_packages/nghttp2/1.64.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-7pg4cqjmr47jp2qjx63pehbbtkeqztxc/include:\
/daq/software/spack_packages/hep-concurrency/1.09.02/linux-almalinux9-x86_64_v2-gcc-13.1.0-nt46i2hz3fxi4ueuxz7m7rqnbertwg4n/include:\
/daq/software/spack_packages/canvas/3.16.04/linux-almalinux9-x86_64_v2-gcc-13.1.0-z7iju3vsppxsvb2msp2jea5mwsfs5z35/include:\
/daq/software/spack_packages/range-v3/0.12.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-mtbjbjk4kijeztfooslswhpbaliz25lx/include:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-almalinux9-x86_64_v2-gcc-13.1.0-l33fs7oihd3dhw54affujyi2gclwtyjl/include:\
/daq/software/spack_packages/catch2/3.3.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-5twgsrezhrrsztvlq4gc5r7tkctwrrt2/include:\
/daq/software/spack_packages/fhicl-cpp/4.18.04/linux-almalinux9-x86_64_v2-gcc-13.1.0-yxcz73yuisol5paq4iyhxhtpp6crkfvn/include:\
/daq/software/spack_packages/python/3.9.15/linux-almalinux9-x86_64_v2-gcc-13.1.0-j7lvwbrkmk3yihnkcz57ggzdicnlpipd/include:\
/daq/software/spack_packages/libxcrypt/4.4.35/linux-almalinux9-x86_64_v2-gcc-13.1.0-zqlbtwpfhw2rql7kb3oadufb5yrpmxca/include:\
/daq/software/spack_packages/libuuid/1.0.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-f2ulfrstfdlq664gny7mrsqefg5z34ld/include:\
/daq/software/spack_packages/libffi/3.4.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-k3frxfy7e7y3ybvecwwk5t4624tevhbn/include:\
/daq/software/spack_packages/gettext/0.22.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-rfwcs5nlupprna7s2qgltzuyd4mw3yvs/include:\
/daq/software/spack_packages/gdbm/1.23/linux-almalinux9-x86_64_v2-gcc-13.1.0-lgkk4s46dxb6wwrdfpsbaqu25ogffxyj/include:\
/daq/software/spack_packages/expat/2.6.4/linux-almalinux9-x86_64_v2-gcc-13.1.0-wd2vu7yebknp3qad3f5eksxdjz4uj5nx/include:\
/daq/software/spack_packages/libbsd/0.12.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-bwgfgz5m6u7rw6jzesztsjtwvjok7tcn/include:\
/daq/software/spack_packages/libmd/1.0.4/linux-almalinux9-x86_64_v2-gcc-13.1.0-zk365rvde3z7mxyskvnh72f7my6jxfln/include:\
/daq/software/spack_packages/intel-tbb-oneapi/2021.9.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-7jfp34ifkisohmp4g2tursbgykyzitwy/include:\
/daq/software/spack_packages/hwloc/2.11.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-ujaqkz3c2wwazpralknoihgsymhw2wxe/include:\
/daq/software/spack_packages/libxml2/2.9.12/linux-almalinux9-x86_64_v2-gcc-13.1.0-xwk566phmltx6ni7hajwzppegelvp3u6/include:\
/daq/software/spack_packages/libpciaccess/0.17/linux-almalinux9-x86_64_v2-gcc-13.1.0-uiznzhuljfddl7ka5iqrikalhviudvju/include:\
/daq/software/spack_packages/clhep/2.4.7.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-2b5rhsanhlnjbniocix6gnflc2jnk46w/include:\
/daq/software/spack_packages/cetlib/3.18.02/linux-almalinux9-x86_64_v2-gcc-13.1.0-5yyfdv6yf4hayqecl3kcd66iukuz5iim/include:\
/daq/software/spack_packages/sqlite/3.40.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-z54v4i44atkoci2geqehxyn6jq32sxgd/include:\
/daq/software/spack_packages/readline/8.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-t7ouo4k2auozroxv4ri2kjerznxbs65w/include:\
/daq/software/spack_packages/ncurses/6.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-nobfqgirlxndnujn2ed77exqtomthz3e/include:\
/daq/software/spack_packages/openssl/3.4.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-uxuhpv7ewvcgz6dezq5s6qqojos2ojkp/include:\
/daq/software/spack_packages/cetlib-except/1.09.01/linux-almalinux9-x86_64_v2-gcc-13.1.0-kgu4yisvpftot46wvabfmg6dhwothhbp/include:\
/daq/software/spack_packages/boost/1.82.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-4gdnpdmrennhvsuy3z4b73f5vp3ohzrn/include:\
/daq/software/spack_packages/zstd/1.5.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-hv6hea2lsivg4cromjay5gikqx57gvfw/include:\
/daq/software/spack_packages/zlib-ng/2.2.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-xjk5rdwll5wuqai4zwiylezfztjjhlb7/include:\
/daq/software/spack_packages/xz/5.4.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-cqcfhk7vboytfj2esd3y53mrhxxtqbaz/include:\
/daq/software/spack_packages/icu4c/74.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-zo6zv3qbhzgitoxcqbqagphk7txvjnte/include:\
/daq/software/spack_packages/bzip2/1.0.8/linux-almalinux9-x86_64_v2-gcc-13.1.0-kuf3k2jf5cztkzpto5lnoxdzsk5b6ud3/include:\
/daq/software/spack_packages/gcc-runtime/13.1.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-gvqla437weejy7ohjtesa75uxougga7a/include:\
/daq/software/spack_packages/art-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-13.1.0-jv5taeiuqk6ohar4voxtyxarpc3ceynj/include:\
/daq/software/spack_packages/art-suite/s131/linux-almalinux9-x86_64_v2-gcc-13.1.0-fkll2llcrty6qk4se6xlk543na7l3x5a/include:\
/daq/software/spack_packages/sbndaq-suite/v2_02_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-wkl7e6s4uhqd573fg3n36pk3ah3evtwz/include:\
/usr/include

export ROOT_LIBRARY_PATH=/daq/software/spack_packages/art-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-13.1.0-jv5taeiuqk6ohar4voxtyxarpc3ceynj/lib:\
/daq/software/spack_packages/canvas-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-13.1.0-lccceebb3isiyjfequwnyw5ca3elodt2/lib

export ROOT_VERSION="v6"

export SBNDAQ_VERSION="v2_02_00"

export SETUP_ARTDAQ_MFEXTENSIONS="spack load artdaq-mfextensions"

export SPACK_ALIASES="concretise:concretize;containerise:containerize;rm:remove"

export SPACK_ARCH="linux-almalinux9-x86_64_v2"

export SPACK_DISABLE_LOCAL_CONFIG="true"

export SPACK_ENV_SCRIPT="/daq/software/spack_packages/spack/current/NULL/share/spack/setup-env.sh"

export SPACK_INSTALL_DIR="/daq/software/spack_packages/spack/current/NULL"

export SPACK_LOADED_HASHES="wkl7e6s4uhqd573fg3n36pk3ah3evtwz"

export SPACK_PYTHON="/usr/bin/python3"

export SPACK_ROOT="/daq/software/spack_packages/spack/current/NULL"

export SPACK_USER_CONFIG_PATH="/home/nfs/icarus/DAQ_SPACK_ProdAreas/DAQ_2026-06-18_GAL_v2_02_00/srcs/sbndaq/sbn-fd/DAQInterface2/overrides/spack"

export SPACK_VERSION="current"

export SRANDOM="3937042802"

export S_COLORS="auto"

export TBB_INC="/daq/software/spack_packages/intel-tbb-oneapi/2021.9.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-7jfp34ifkisohmp4g2tursbgykyzitwy/include"

export THIS_SBN_DAQ_DAQINTERFACE_DIR="/home/nfs/icarus/DAQ_SPACK_ProdAreas/DAQ_2026-06-18_GAL_v2_02_00/srcs/sbndaq/sbn-fd/DAQInterface2"

export USE_CACHED_BASH_ENV="True"

export WIBTOOLS_BIN="/daq/software/spack_packages/wibtools/v2_02_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-46y63burlpqe7qbbj7tr3edzc7jwhtvh/bin"

export WIB_ADDRESS_TABLE_PATH="/daq/software/spack_packages/wibtools/v2_02_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-46y63burlpqe7qbbj7tr3edzc7jwhtvh/tables"

export WIB_CONFIG_PATH="/daq/software/spack_packages/wibtools/v2_02_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-46y63burlpqe7qbbj7tr3edzc7jwhtvh/config"

export XDG_SESSION_CLASS="user"

export XDG_SESSION_TYPE="tty"

export XKB_CONFIG_ROOT="/daq/software/spack_packages/xkeyboard-config/2.34/linux-almalinux9-x86_64_v2-gcc-13.1.0-u2fahbtkc26wptsrgtpuppxigvogt7i2/share/X11/xkb"

export XLOCALEDIR=/daq/software/spack_packages/libx11/1.8.10/linux-almalinux9-x86_64_v2-gcc-13.1.0-56wui3itis6q6uklvci3ueekt3o3i5pv/share/X11/locale

export __MODULES_LMINIT="module use --append /usr/share/Modules/modulefiles:module use --append /etc/modulefiles:module use --append /usr/share/modulefiles"

export _a="sbndaq-suite@v2_02_00%gcc@13.1.0 arch=linux-almalinux9-x86_64_v2 /wkl7e6s"

export _backup_glob="boot_Calibrations.new~ boot_Physics.new~"

export _pa_canonical="/etc/scl/modulefiles:/etc/scl/modulefiles:/usr/share/Modules/modulefiles:/etc/modulefiles:/usr/share/modulefiles:"

export _pa_new_path="/daq/software/spack_packages/spack/v1.0.1.sbnd/NULL/share/spack/modules/linux-almalinux9-x86_64"

export _pa_oldvalue="/etc/scl/modulefiles:/etc/scl/modulefiles:/usr/share/Modules/modulefiles:/etc/modulefiles:/usr/share/modulefiles"

export _pa_varname="MODULEPATH"

export _rbd_commands

export _rbd_global_options

export _sp_compatible_sys_types="linux-almalinux9-zen3:linux-almalinux9-zen2:linux-almalinux9-zen:linux-almalinux9-x86_64_v3:linux-almalinux9-x86_64_v2:linux-almalinux9-x86_64"

export _sp_flags

export _sp_lmod_roots="/daq/software/spack_packages/spack/v1.0.1.sbnd/NULL/share/spack/lmod"

export _sp_prefix="/daq/software/spack_packages/spack/current/NULL"

export _sp_share_dir="/daq/software/spack_packages/spack/current/NULL/share/spack"

export _sp_shell="bash"

export _sp_source_file="/daq/software/spack_packages/spack/current/NULL/share/spack/setup-env.sh"

export _sp_subcommand="load"

export _sp_sys_type="linux-almalinux9-zen3"

export _sp_tcl_roots="/daq/software/spack_packages/spack/v1.0.1.sbnd/NULL/share/spack/modules"

export _xspecs

export build_hash_map

export cmd="/usr/bin/python3"

export colors="/home/nfs/icarus/.dircolors"

export i="1"

export need_module="no"

export new_dirs

export pth="/daq/software/spack_packages/spack/v1.0.1.sbnd/NULL/share/spack/modules"

export shell="bash"

export summary_file="/opt/puppetlabs/puppet/public/last_run_summary.yaml"

export systype="linux-almalinux9-x86_64"

export which_declare="declare -f"

export which_opt="-f"

#Functions
__expand_tilde_by_ref () 
{ 
    if [[ ${!1-} == \~* ]]; then
        eval $1="$(printf ~%q "${!1#\~}")";
    fi
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

__python_argcomplete_expand_tilde_by_ref () 
{ 
    if [ "${!1:0:1}" = "~" ]; then
        if [ "${!1}" != "${!1//\/}" ]; then
            eval $1="${!1/%\/*}"/'${!1#*/}';
        else
            eval $1="${!1}";
        fi;
    fi
}

__python_argcomplete_run () 
{ 
    if [[ -z "$ARGCOMPLETE_USE_TEMPFILES" ]]; then
        __python_argcomplete_run_inner "$@";
        return;
    fi;
    local tmpfile="$(mktemp)";
    _ARGCOMPLETE_STDOUT_FILENAME="$tmpfile" __python_argcomplete_run_inner "$@";
    local code=$?;
    cat "$tmpfile";
    rm "$tmpfile";
    return $code
}

__python_argcomplete_run_inner () 
{ 
    if [[ -z "$_ARC_DEBUG" ]]; then
        "$@" 8>&1 9>&2 > /dev/null 2>&1;
    else
        "$@" 8>&1 9>&2 1>&9 2>&1;
    fi
}

__python_argcomplete_scan_head () 
{ 
    read -s -r ${3:--N} 1024 < "$1";
    [[ "$REPLY" =~ ${2:-PYTHON_ARGCOMPLETE_OK} ]]
}

__python_argcomplete_scan_head_noerr () 
{ 
    __python_argcomplete_scan_head "$@" 2> /dev/null
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

_bpftool () 
{ 
    local cur prev words cword comp_args;
    local json=0;
    _init_completion -- "$@" || return;
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
    local i pprev;
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
    local object=${words[1]};
    if [[ -z $object || $cword -eq 1 ]]; then
        case $cur in 
            *)
                COMPREPLY=($( compgen -W "$( bpftool help 2>&1 |                     command sed                     -e '/OBJECT := /!d'                     -e 's/.*{//'                     -e 's/}.*//'                     -e 's/|//g' )" -- "$cur" ));
                COMPREPLY+=($( compgen -W 'batch help' -- "$cur" ));
                return 0
            ;;
        esac;
    fi;
    local command=${words[2]};
    [[ $command == help ]] && return 0;
    local MAP_TYPE='id pinned name';
    local PROG_TYPE='id pinned tag name';
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
                        COMPREPLY=($( compgen -W "$MAP_TYPE" -- "$cur" ));
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
                                lwt_seg6local sockops sk_skb sk_msg lirc_mode2 \
                                cgroup/bind4 cgroup/bind6 \
                                cgroup/connect4 cgroup/connect6 cgroup/connect_unix \
                                cgroup/getpeername4 cgroup/getpeername6 cgroup/getpeername_unix \
                                cgroup/getsockname4 cgroup/getsockname6 cgroup/getsockname_unix \
                                cgroup/sendmsg4 cgroup/sendmsg6 cgroup/sendmsg_unix \
                                cgroup/recvmsg4 cgroup/recvmsg6 cgroup/recvmsg_unix \
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
                        *)
                            [[ $prev == duration ]] && return 0;
                            _bpftool_once_attr "$METRIC_TYPE";
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
                    [[ $prev == $command ]] && _filedir;
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
                        map)
                            _bpftool_one_of_list $MAP_TYPE
                        ;;
                        *)
                            _bpftool_once_attr 'map'
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
                                    COMPREPLY+=($( compgen -W "$MAP_TYPE"                                         -- "$cur" ));
                                    return 0
                                ;;
                                prog_array)
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
                            local UPDATE_FLAGS='any exist noexist' idx;
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
                        c)
                            COMPREPLY=($( compgen -W "unsorted" -- "$cur" ))
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
                        if [[ $pprev == "$command" ]]; then
                            _filedir;
                        fi;
                    fi;
                    return 0
                ;;
                *)
                    [[ $prev == $object ]] && COMPREPLY=($( compgen -W 'help pin detach show list' -- "$cur" ))
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
    local obj nmaps;
    obj=$1;
    nmaps=$(objdump -j maps -t $obj 2>/dev/null | grep -c 'g     . maps');
    COMPREPLY+=($( compgen -W "$(seq 0 $((nmaps - 1)))" -- "$cur" ))
}

_bpftool_get_obj_map_names () 
{ 
    local obj maps;
    obj=$1;
    maps=$(objdump -j .maps -t $obj 2>/dev/null |         command awk '/g     . .maps/ {print $NF}');
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
    local keyword idx ref="";
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
    local cur="${COMP_WORDS[COMP_CWORD]}";
    local prev="${COMP_WORDS[COMP_CWORD-1]}";
    local opts="--check-config --check-path --check-status --check-trustdb                 --check-watch_fs --delete-db --dump-db                 --file --ftype --help --list --update --reload-rules";
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

_python_argcomplete () 
{ 
    local IFS='';
    local SUPPRESS_SPACE=0;
    if compopt +o nospace 2> /dev/null; then
        SUPPRESS_SPACE=1;
    fi;
    COMPREPLY=($(IFS="$IFS"                   COMP_LINE="$COMP_LINE"                   COMP_POINT="$COMP_POINT"                   COMP_TYPE="$COMP_TYPE"                   _ARGCOMPLETE_COMP_WORDBREAKS="$COMP_WORDBREAKS"                   _ARGCOMPLETE=1                   _ARGCOMPLETE_SUPPRESS_SPACE=$SUPPRESS_SPACE                   __python_argcomplete_run "$1"));
    if [[ $? != 0 ]]; then
        unset COMPREPLY;
    else
        if [[ $SUPPRESS_SPACE == 1 ]] && [[ "$COMPREPLY" =~ [=/:]$ ]]; then
            compopt -o nospace;
        fi;
    fi
}

_python_argcomplete_global () 
{ 
    local executable=$1;
    __python_argcomplete_expand_tilde_by_ref executable;
    local ARGCOMPLETE=0;
    if [[ "$executable" == python* ]] || [[ "$executable" == pypy* ]]; then
        if [[ "${COMP_WORDS[1]}" == -m ]]; then
            if __python_argcomplete_run "$executable" -m argcomplete._check_module "${COMP_WORDS[2]}"; then
                ARGCOMPLETE=3;
            else
                return;
            fi;
        else
            if [[ -f "${COMP_WORDS[1]}" ]] && __python_argcomplete_scan_head_noerr "${COMP_WORDS[1]}"; then
                local ARGCOMPLETE=2;
            else
                return;
            fi;
        fi;
    else
        if type -P "$executable" > /dev/null 2>&1; then
            local SCRIPT_NAME=$(type -P "$executable");
            if ( type -t pyenv && [[ "$SCRIPT_NAME" = $(pyenv root)/shims/* ]] ) > /dev/null 2>&1; then
                local SCRIPT_NAME=$(pyenv which "$executable");
            fi;
            if __python_argcomplete_scan_head_noerr "$SCRIPT_NAME"; then
                local ARGCOMPLETE=1;
            else
                if __python_argcomplete_scan_head_noerr "$SCRIPT_NAME" '^#!(.*)$' -n && [[ "${BASH_REMATCH[1]}" =~ ^.*(python|pypy)[0-9\.]*$ ]]; then
                    local interpreter="$BASH_REMATCH";
                    if ( __python_argcomplete_scan_head_noerr "$SCRIPT_NAME" "(PBR Generated)|(EASY-INSTALL-(SCRIPT|ENTRY-SCRIPT|DEV-SCRIPT))" && "$interpreter" "$(type -P python-argcomplete-check-easy-install-script)" "$SCRIPT_NAME" ) > /dev/null 2>&1; then
                        local ARGCOMPLETE=1;
                    else
                        if __python_argcomplete_run "$interpreter" -m argcomplete._check_console_script "$SCRIPT_NAME"; then
                            local ARGCOMPLETE=1;
                        fi;
                    fi;
                fi;
            fi;
        fi;
    fi;
    if [[ $ARGCOMPLETE != 0 ]]; then
        local IFS=$(echo -e '\v');
        COMPREPLY=($(_ARGCOMPLETE_IFS="$IFS"             COMP_LINE="$COMP_LINE"             COMP_POINT="$COMP_POINT"             COMP_TYPE="$COMP_TYPE"             _ARGCOMPLETE_COMP_WORDBREAKS="$COMP_WORDBREAKS"             _ARGCOMPLETE=$ARGCOMPLETE             _ARGCOMPLETE_SUPPRESS_SPACE=1             __python_argcomplete_run "$executable" "${COMP_WORDS[@]:1:ARGCOMPLETE-1}"));
        if [[ $? != 0 ]]; then
            unset COMPREPLY;
        else
            if [[ "$COMPREPLY" =~ [=/:]$ ]]; then
                compopt -o nospace;
            fi;
        fi;
    else
        type -t _completion_loader | grep -q 'function' && _completion_loader "$@";
    fi
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
        SPACK_COMPREPLY="-h --help -H --all-help --color -c --config -C --config-scope -d --debug --timestamp --pdb -e --env -D --env-dir -E --no-env --use-env-repo -k --insecure -l --enable-locks -L --disable-locks -m --mock -b --bootstrap -p --profile --sorted-profile --lines -v --verbose --stacktrace -t --backtrace -V --version --print-shell-vars";
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
    SPACK_COMPREPLY="-h --help -g --generic-target --known-targets --family --generic -p --platform -o --operating-system -t --target -f --frontend -b --backend"
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
    SPACK_COMPREPLY="-h --help --output-file --prune-dag --no-prune-dag --prune-externals --no-prune-externals --check-index-only --artifacts-root -U --fresh --reuse --fresh-roots --reuse-deps --deprecated -j --jobs"
}

_spack_ci_rebuild () 
{ 
    SPACK_COMPREPLY="-h --help -t --tests --fail-fast -j --jobs"
}

_spack_ci_rebuild_index () 
{ 
    SPACK_COMPREPLY="-h --help"
}

_spack_ci_reproduce_build () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --runtime --working-dir -s --autostart --use-local-head --gpg-file --gpg-url";
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
        SPACK_COMPREPLY="report";
    fi
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
        SPACK_COMPREPLY="activate deactivate create remove rm rename mv list ls status st loads view update revert depfile track untrack";
    fi
}

_spack_env_activate () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --sh --csh --fish --bat --pwsh -v --with-view -V --without-view -p --prompt --temp --create --envfile --keep-relative -d --dir";
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

_spack_env_track () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -n --name -y --yes-to-all";
    else
        SPACK_COMPREPLY="";
    fi
}

_spack_env_untrack () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help -f --force -y --yes-to-all";
    else
        _environments;
    fi
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
        SPACK_COMPREPLY="-h --help --format -H --hashes --json -I --install-status -d --deps -p --paths --groups --no-groups -l --long -L --very-long -t --tag -N --namespaces -r --only-roots -c --show-concretized -f --show-flags --show-full-compiler -x --explicit -X --implicit -u --unknown -m --missing -v --variants --loaded -M --only-missing --only-deprecated --deprecated --install-tree --start-date --end-date";
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
        SPACK_COMPREPLY="list-files verify";
    fi
}

_spack_license_list_files () 
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
        SPACK_COMPREPLY="-h --help --scope --type --autopush --unsigned --signed --s3-access-key-id --s3-access-key-id-variable --s3-access-key-secret --s3-access-key-secret-variable --s3-access-token --s3-access-token-variable --s3-profile --s3-endpoint-url --oci-username --oci-username-variable --oci-password --oci-password-variable";
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
        SPACK_COMPREPLY="-h --help --push --fetch --type --url --autopush --no-autopush --unsigned --signed --scope --s3-access-key-id --s3-access-key-id-variable --s3-access-key-secret --s3-access-key-secret-variable --s3-access-token --s3-access-token-variable --s3-profile --s3-endpoint-url --oci-username --oci-username-variable --oci-password --oci-password-variable";
    else
        _mirrors;
    fi
}

_spack_mirror_set_url () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help --push --fetch --scope --s3-access-key-id --s3-access-key-id-variable --s3-access-key-secret --s3-access-key-secret-variable --s3-access-token --s3-access-token-variable --s3-profile --s3-endpoint-url --oci-username --oci-username-variable --oci-password --oci-password-variable";
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
        SPACK_COMPREPLY="-h --help --show --timers --stats -l --long -L --very-long -N --namespaces -I --install-status --no-install-status -y --yaml -j --json --format -c --cover -t --types -U --fresh --reuse --fresh-roots --reuse-deps --deprecated";
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
        SPACK_COMPREPLY="-h --help -n --no-checksum -p --path -e --exclude -s --skip-installed -U --fresh --reuse --fresh-roots --reuse-deps --deprecated";
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
        SPACK_COMPREPLY="-h --help";
    else
        SPACK_COMPREPLY="manifest libraries";
    fi
}

_spack_verify_libraries () 
{ 
    if $list_options; then
        SPACK_COMPREPLY="-h --help";
    else
        _installed_packages;
    fi
}

_spack_verify_manifest () 
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

_veeamconfig () 
{ 
    IFS='
';
    COMPREPLY=();
    lastArg="${COMP_WORDS[*]: -1}";
    completedArgs="$(VEEAM_BASH_COMPLETION=yes ${COMP_WORDS[@]} 2>&1)";
    completedArgs_result=$?;
    if [[ ${completedArgs_result} -gt 0 ]]; then
        return 0;
    fi;
    IFS='
' COMPREPLY=($(echo "${completedArgs}"));
    if [[ ! -z $lastArg && ${#COMPREPLY[*]} > 0 ]]; then
        lastArg_lc="`echo \"${lastArg}\" | sed -e 's/\(.*\)/\L\1/'`";
        lastArg_lc="`echo \"${lastArg_lc}\" | sed -e 's/\\\//g'`";
        complArg_lc="`echo \"${COMPREPLY[0]}\" | sed -e 's/\(.*\)/\L\1/'`";
        complArg_lc="`echo \"${complArg_lc}\" | sed -e 's/\\\//g'`";
        if [[ "${complArg_lc}" != "${lastArg_lc}"* ]]; then
            COMPREPLY=("${lastArg}");
        fi;
    fi;
    return 0
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

dequote () 
{ 
    eval printf %s "$1" 2> /dev/null
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

