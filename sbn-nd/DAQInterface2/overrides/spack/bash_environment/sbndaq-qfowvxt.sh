#!/usr/bin/env bash
# Captured environment: 20260629_132813

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

export ARTDAQ_MFEXTENSIONS_DIR="/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-ds2scqo6k3kuabjhdkxnlkrubetrp5tl"

export BASH_ARGV0="/usr/bin/bash"

export BOOST_ROOT="/daq/software/spack_packages/boost/1.82.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-4gdnpdmrennhvsuy3z4b73f5vp3ohzrn"

export BUILD_HASH="/qfowvxt"

export BUILD_VARIANT="gcc@13.1.0"

export CC="/daq/software/spack_packages/llvm/17.0.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-q7cxacolietx7cwnliirvqwcm4szctzd/bin/clang"

export CET_PLUGIN_PATH=/daq/software/spack_packages/sbndaq/v2_03_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-la3z4z3p53ir3taolp7vyyjb22pes7xo/lib:\
/daq/software/spack_packages/artdaq-demo/v3_13_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-vouk5uuidlu7vel6gyoxfxmt5ibedrpr/lib:\
/daq/software/spack_packages/sbndaq-artdaq/v2_03_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-ermnh2sl6wtvwujrqzkmzid6fhlwbe3w/lib:\
/daq/software/spack_packages/artdaq-core-demo/v1_11_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-faqnpgsc4rdbzvoxrpf3r4eorfm6sqhl/lib:\
/daq/software/spack_packages/artdaq/v3_13_02/linux-almalinux9-x86_64_v2-gcc-13.1.0-pgge5qxwxwbiqrggnseputvrc6ersdnm/lib:\
/daq/software/spack_packages/artdaq-epics-plugin/v1_06_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-ybzxi6pmamcs7bxb5bhpb3tbjtypczpd/lib:\
/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-ds2scqo6k3kuabjhdkxnlkrubetrp5tl/lib:\
/daq/software/spack_packages/artdaq-utilities/v1_09_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-tejhxy2jb2mdykfbnxwrewn645w56lci/lib:\
/daq/software/spack_packages/artdaq-core/v3_10_02/linux-almalinux9-x86_64_v2-gcc-13.1.0-ivqu3wi6qehg2v6ydgyvaxgpuot5bj7t/lib:\
/daq/software/spack_packages/trace/v3_17_11/linux-almalinux9-x86_64_v2-gcc-13.1.0-zl5scrhcsy26xr3sbypxqnc7oph4bjng/lib:\
/daq/software/spack_packages/art-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-13.1.0-obf62fo4tu5z6cee5wej7gnaikub4vvi/lib:\
/daq/software/spack_packages/art/3.14.04/linux-almalinux9-x86_64_v2-gcc-13.1.0-yrb6bp3wkxpsp6ebgkamdhhhk3ybrzro/lib:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-almalinux9-x86_64_v2-gcc-13.1.0-dpgzmfowgggvmo36kgklu7rp7542umos/lib

export CLING_STANDARD_PCH="none"

export CMAKE_PREFIX_PATH=/daq/software/spack_packages/sbndaq-suite/v2_03_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-qfowvxtix246id36ze2dnmc2xtregxsy:\
/daq/software/spack_packages/artdaq-runcontrol-gui/v1_03_06/linux-almalinux9-x86_64_v2-gcc-13.1.0-33lewgj4opxnnoiatl7x4jsiowiek3rf:\
/daq/software/spack_packages/artdaq-suite/v3_13_02/linux-almalinux9-x86_64_v2-gcc-13.1.0-4ooq3tyjgfedipiqbks7t2jl7l4vsiqd:\
/daq/software/spack_packages/sbndaq/v2_03_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-la3z4z3p53ir3taolp7vyyjb22pes7xo:\
/daq/software/spack_packages/artdaq-daqinterface/v4_06_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-w4enww3ege4rds327duyqzbl7r6hiakq:\
/daq/software/spack_packages/artdaq-database/v3_05_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-pslhqpgu5bseigckw3occn7kfhladro4:\
/daq/software/spack_packages/artdaq-demo/v3_13_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-vouk5uuidlu7vel6gyoxfxmt5ibedrpr:\
/daq/software/spack_packages/sbndaq-artdaq/v2_03_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-ermnh2sl6wtvwujrqzkmzid6fhlwbe3w:\
/daq/software/spack_packages/artdaq-core-demo/v1_11_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-faqnpgsc4rdbzvoxrpf3r4eorfm6sqhl:\
/daq/software/spack_packages/artdaq/v3_13_02/linux-almalinux9-x86_64_v2-gcc-13.1.0-pgge5qxwxwbiqrggnseputvrc6ersdnm:\
/daq/software/spack_packages/artdaq-epics-plugin/v1_06_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-ybzxi6pmamcs7bxb5bhpb3tbjtypczpd:\
/daq/software/spack_packages/caendigitizer/2.17.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-a3bqsjnmbypjuv52bnjvfxo7dkw7hxsz:\
/daq/software/spack_packages/cppzmq/4.10.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-24dx7utl7rcqcsolsleufozj5numiowe:\
/daq/software/spack_packages/hiredis/1.1.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-4lnepeq24z22llycggvaolo2dzlnba55:\
/daq/software/spack_packages/jsoncpp/1.9.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-elivv26k454cfirocgskzrffm5r6uz7e:\
/daq/software/spack_packages/libpqxx/7.10.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-7435uyulbkxwktp6sf5ysp6tqhajrv5z:\
/daq/software/spack_packages/redis/7.4.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-ru3c2nhcuevnmopejyridyyuuxxhvrvu:\
/daq/software/spack_packages/sbndaq-artdaq-core/v2_03_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-4hdshlkbr2tfyceftw7rdaexvbm4z6tw:\
/daq/software/spack_packages/wibtools/v2_03_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-mmtxgbjqjsffi62oheyahl2h7l6j62td:\
/daq/software/spack_packages/windriver/v16_06_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-i22hrolklcou6qpskgsuyed6g453x555:\
/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-ds2scqo6k3kuabjhdkxnlkrubetrp5tl:\
/daq/software/spack_packages/xmlrpc-c/1.51.06/linux-almalinux9-x86_64_v2-gcc-13.1.0-uzm6f4ybn324xpevfkfy3csmr3vqx26n:\
/daq/software/spack_packages/artdaq-utilities/v1_09_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-tejhxy2jb2mdykfbnxwrewn645w56lci:\
/daq/software/spack_packages/epics-base/7.0.6.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-od2x65glvkbjoy7oq66vrwtxbaqrlheb:\
/daq/software/spack_packages/caencomm/1.7.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-7676i2cya6t4oekvk3ed45tz4gdved7e:\
/daq/software/spack_packages/libzmq/4.3.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-pl527gkazn3nmf5cxbs6psnxvzupuvgj:\
/daq/software/spack_packages/artdaq-core/v3_10_02/linux-almalinux9-x86_64_v2-gcc-13.1.0-ivqu3wi6qehg2v6ydgyvaxgpuot5bj7t:\
/daq/software/spack_packages/librdkafka/2.8.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-q4jytq4rt2zacvqqtwsyo3wz6l7b4hjp:\
/daq/software/spack_packages/qt/5.15.16/linux-almalinux9-x86_64_v2-gcc-13.1.0-qztr3g6cmgfbuaq3iuwq75ele4mwgbua:\
/daq/software/spack_packages/py-plotext/5.2.8/linux-almalinux9-x86_64_v2-gcc-13.1.0-bv7tagvi7qp72hl777gax5lu77qgoboz:\
/daq/software/spack_packages/py-plotly/2.2.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-74gaqr6uqv6mb4mofdvacp3figo7qxb3:\
/daq/software/spack_packages/caenvmelib/4.0.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-pspfuxfzbkxjh22rphz442qytcfwecsb:\
/daq/software/spack_packages/libsodium/1.0.20/linux-almalinux9-x86_64_v2-gcc-13.1.0-qi3s37lfbqtluif2qvw5ndll3oddajsz:\
/daq/software/spack_packages/art-suite/s131/linux-almalinux9-x86_64_v2-gcc-13.1.0-gdtirtq2lqp2lt5ejizawgq6b2ldmuhp:\
/daq/software/spack_packages/trace/v3_17_11/linux-almalinux9-x86_64_v2-gcc-13.1.0-zl5scrhcsy26xr3sbypxqnc7oph4bjng:\
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
/daq/software/spack_packages/py-nbformat/5.8.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-e2n66gxvxxf6gaghthbebdjwrlyk4kxa:\
/daq/software/spack_packages/py-pytz/2024.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-vgwkd6ye6f24yl5xwhl6l2qgjchq7qr6:\
/daq/software/spack_packages/py-requests/2.32.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-65a6cpoao442gw4zgc757t4fcyv3q6nb:\
/daq/software/spack_packages/py-six/1.17.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-jb4drmjy2j5g3zmh2yqhr5tvevm2eozv:\
/daq/software/spack_packages/libusb/1.0.27/linux-almalinux9-x86_64_v2-gcc-13.1.0-anvdi4xgcctvj55575r3cdhnwidwksrp:\
/daq/software/spack_packages/art-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-13.1.0-obf62fo4tu5z6cee5wej7gnaikub4vvi:\
/daq/software/spack_packages/cetmodules/3.24.01/linux-almalinux9-x86_64_v2-gcc-13.1.0-koqaikknwkufcftwpwny4b4b7a5yceza:\
/daq/software/spack_packages/fftw/3.3.10/linux-almalinux9-x86_64_v2-gcc-13.1.0-fg66icjzxbtom7xalavhv52h2xy2qrfg:\
/daq/software/spack_packages/postgresql/15.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-phjhf36knogadcgxcpgahbmfrzkeby2a:\
/daq/software/spack_packages/py-numpy/1.24.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-wpje67v5vxoj7xoptu2pbhbse3llt4iu:\
/daq/software/spack_packages/py-pybind11/2.10.4/linux-almalinux9-x86_64_v2-gcc-13.1.0-owso2kkohekjstx6qaysjwbhaatiot2r:\
/daq/software/spack_packages/pythia6/6.4.28/linux-almalinux9-x86_64_v2-gcc-13.1.0-6f533motwkrxfhzyuxwneyytinthzrfc:\
/daq/software/spack_packages/xrootd/5.5.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-b272p35gctgekau7wy4owl4pjsdl2gum:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-5tgat3csunsxm5aphdburaweuoa7x7ix:\
/daq/software/spack_packages/lcms/2.16/linux-almalinux9-x86_64_v2-gcc-13.1.0-amicpd4ovpjmx6ovane4r26qbus4rh3z:\
/daq/software/spack_packages/util-macros/1.20.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-x5vvnxgca6zobpx54okm5s5mjovme35g:\
/daq/software/spack_packages/xkeyboard-config/2.34/linux-almalinux9-x86_64_v2-gcc-13.1.0-u2fahbtkc26wptsrgtpuppxigvogt7i2:\
/daq/software/spack_packages/xcb-util/0.4.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-eljlhiotvtpkljivjc5fpcttjottebmz:\
/daq/software/spack_packages/py-fastjsonschema/2.21.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-hybgrp77xtwlph27ky2zag55bvbgzslv:\
/daq/software/spack_packages/py-jsonschema/4.22.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-obzynsesktaetl43nnyxclqor5u6tmlh:\
/daq/software/spack_packages/py-jupyter-core/5.3.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-66qlzpo6rj6rufxccpl637zmawcu7xex:\
/daq/software/spack_packages/py-certifi/2023.7.22/linux-almalinux9-x86_64_v2-gcc-13.1.0-z6borxossofhuwc6wk4bs4ybfwg6ucnd:\
/daq/software/spack_packages/py-charset-normalizer/3.3.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-ci3x5u2kfzskhbuptsgfpzamoj5ksn57:\
/daq/software/spack_packages/py-idna/3.4/linux-almalinux9-x86_64_v2-gcc-13.1.0-thf2i3iqv3wbclgj7cxocqt2kyf5ic65:\
/daq/software/spack_packages/py-urllib3/2.1.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-am37s7bp37cgrhmuaoazjltsjy2jjpp5:\
/daq/software/spack_packages/art/3.14.04/linux-almalinux9-x86_64_v2-gcc-13.1.0-yrb6bp3wkxpsp6ebgkamdhhhk3ybrzro:\
/daq/software/spack_packages/canvas-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-13.1.0-22ufnjcylceer6vvmutiybptujitfyu2:\
/daq/software/spack_packages/cmake/3.27.9/linux-almalinux9-x86_64_v2-gcc-13.1.0-ioahe2goqgadrph3coqe26g2sgx4b6eq:\
/daq/software/spack_packages/openmpi/5.0.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-gjhgykoknlr4kp4iu5tustfless5bva6:\
/daq/software/spack_packages/openblas/0.3.23/linux-almalinux9-x86_64_v2-gcc-13.1.0-ifzupnpqljwdvbnyi7262fij4p4occob:\
/daq/software/spack_packages/py-setuptools/63.4.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-dr2diisxdetolxe6ia3t7jte6ngblabm:\
/daq/software/spack_packages/json-c/0.18/linux-almalinux9-x86_64_v2-gcc-13.1.0-4cztye4qu3otadrafqj47sj5tv3spqji:\
/daq/software/spack_packages/cairo/1.18.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-jb35ohr7ahxp4kqsh4b3ejbyne4lr46n:\
/daq/software/spack_packages/libtiff/4.7.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-nfudpojkscmyzys4fuaym3ifabtlsqk7:\
/daq/software/spack_packages/py-jsonschema-specifications/2023.12.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-nq7ifz3esnt6ht35xxq3s4iif6tz6xt7:\
/daq/software/spack_packages/py-platformdirs/3.10.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-jefsbysuur6cf6bdu2me6ujym2pcodoe:\
/daq/software/spack_packages/py-traitlets/5.14.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-yzfgiyrqkgibzdcy47276lkgq26j6zxa:\
/daq/software/spack_packages/canvas/3.16.04/linux-almalinux9-x86_64_v2-gcc-13.1.0-mxhhe7w7ah2ztau5slr3ufpcppi2yigd:\
/daq/software/spack_packages/hep-concurrency/1.09.02/linux-almalinux9-x86_64_v2-gcc-13.1.0-2wx6ixanyrotsbuqzrzd42rvkfrhfgcm:\
/daq/software/spack_packages/root/6.28.12/linux-almalinux9-x86_64_v2-gcc-13.1.0-5shq26yritc6jl6k3mv3f7bsuxvmy6um:\
/daq/software/spack_packages/gmake/4.4.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-uau636nzu6rrtcedparpiaqhyebnkz2s:\
/daq/software/spack_packages/numactl/2.0.18/linux-almalinux9-x86_64_v2-gcc-13.1.0-a5kjmewgbaj2chjxusc3yedcuytunyv4:\
/daq/software/spack_packages/openssh/9.9p1/linux-almalinux9-x86_64_v2-gcc-13.1.0-khpjm6klms34liertgy4dh6bfayaqp5o:\
/daq/software/spack_packages/pmix/5.0.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-i7wtvqry2igoxglh33oiz5cbpkrovyqf:\
/daq/software/spack_packages/glib/2.82.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-y5epzuut6splj2kc5pzmjjsq5wlhpvhd:\
/daq/software/spack_packages/lzo/2.10/linux-almalinux9-x86_64_v2-gcc-13.1.0-lknje6jmxrfjvw3z4eneu5su2z5t5olb:\
/daq/software/spack_packages/pixman/0.44.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-2lxpdcrj62qwz6lsbjif7wq736tkvuew:\
/daq/software/spack_packages/py-referencing/0.35.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-sufbwuepq7qodfetdbr2c3yeh6eciihr:\
/daq/software/spack_packages/clhep/2.4.7.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-2b5rhsanhlnjbniocix6gnflc2jnk46w:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-almalinux9-x86_64_v2-gcc-13.1.0-dpgzmfowgggvmo36kgklu7rp7542umos:\
/daq/software/spack_packages/range-v3/0.12.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-pkd4ck7ospguer3bf6d7gxrrpp3h2263:\
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
/daq/software/spack_packages/krb5/1.21.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-dm7pdjc5vgix2ed72pwov4xojqiwecr3:\
/daq/software/spack_packages/libevent/2.1.12/linux-almalinux9-x86_64_v2-gcc-13.1.0-yz55fz75sifdx7svuhe5o47hmtn745pe:\
/daq/software/spack_packages/elfutils/0.192/linux-almalinux9-x86_64_v2-gcc-13.1.0-47g56z22iywgcmvnalfcb3zzvywzibs4:\
/daq/software/spack_packages/py-attrs/23.1.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-t5g22rhsmbdlwllgjwqen7ub23o3mvau:\
/daq/software/spack_packages/py-rpds-py/0.20.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-cqrbhrlxkaqkt5bbwugxtc4yw2pfcno5:\
/daq/software/spack_packages/catch2/3.3.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-5twgsrezhrrsztvlq4gc5r7tkctwrrt2:\
/daq/software/spack_packages/fhicl-cpp/4.18.04/linux-almalinux9-x86_64_v2-gcc-13.1.0-xaiclaqd53j25u4pe5fl2qnwtoinkvda:\
/daq/software/spack_packages/rapidjson/1.2.0-2024-08-16/linux-almalinux9-x86_64_v2-gcc-13.1.0-kslid5r77wf2mo45ashs3souuiok2jnw:\
/daq/software/spack_packages/mesa-glu/9.0.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-tixkotyxfmdqan6tbhco4cnm7rnwwlva:\
/daq/software/spack_packages/fontconfig/2.15.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-6zinqo6sb2otqdtu7g4u7qskvahc4s56:\
/daq/software/spack_packages/rngstreams/1.0.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-b6ti4hx2podwxghti4hq53hwotvsmwty:\
/daq/software/spack_packages/pkg-config/0.29.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-7ts6z5tdvtiw33mxlloy4iqkl3ehgq3t:\
/daq/software/spack_packages/python-venv/1.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-i25w6hbjs5gvjumvxhkzfua556ucgrui:\
/daq/software/spack_packages/rust/1.83.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-5rapd56dta7bsnao6r5pvq4h7nlilrnq:\
/daq/software/spack_packages/cetlib/3.18.02/linux-almalinux9-x86_64_v2-gcc-13.1.0-5yyfdv6yf4hayqecl3kcd66iukuz5iim:\
/daq/software/spack_packages/intel-tbb-oneapi/2021.9.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-7jfp34ifkisohmp4g2tursbgykyzitwy:\
/daq/software/spack_packages/glx/1.4/linux-almalinux9-x86_64_v2-gcc-13.1.0-k3lk53gnfnl5goyy6fyem4u7yrkuyeg2:\
/daq/software/spack_packages/font-util/1.4.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-m5t3h7vwu42duszrjo7tjynnbpyvaizt:\
/daq/software/spack_packages/freetype/2.13.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-oponq7mqewibzrqh3u4fu3i4zbeawlki:\
/daq/software/spack_packages/python/3.9.15/linux-almalinux9-x86_64_v2-gcc-13.1.0-j7lvwbrkmk3yihnkcz57ggzdicnlpipd:\
/daq/software/spack_packages/libgit2/1.8.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-jqp4oomzkqojq5ahya5ia5hih3qhlipc:\
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
/daq/software/spack_packages/py-maturin/1.8.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-rboxpel3si7mi2ka2xdg4hfbodnignv3:\
/daq/software/spack_packages/py-pip/24.3.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-bzth5oe6jrwjaibml2uxndwumzs5yxnb:\
/daq/software/spack_packages/py-wheel/0.41.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-y7mttt3y6umgt5ss2whe3h73e6jo5rcp:\
/daq/software/spack_packages/py-hatch-fancy-pypi-readme/23.1.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-7n4rnw47zazuafigvftmwifd2xcwkkwd:\
/daq/software/spack_packages/py-hatch-vcs/0.4.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-sqqphk7wjf45dw2hrk6p3o67htde2gbo:\
/daq/software/spack_packages/py-hatchling/1.25.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-ptls4zwdsgb2u6ouu5h3qojamcpoqqmk:\
/daq/software/spack_packages/py-flit-core/3.10.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-dwbmu5gr5kkm5dodtowkre54itx2puig:\
/daq/software/spack_packages/py-hatch-nodejs-version/0.3.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-4tkjslxionxx3cdz5wwzpkadnslvaerk

export CPPYY_API_PATH="none"

export CPPYY_BACKEND_LIBRARY="/daq/software/spack_packages/root/6.28.12/linux-almalinux9-x86_64_v2-gcc-13.1.0-5shq26yritc6jl6k3mv3f7bsuxvmy6um/lib/root/libcppyy_backend"

export CXX="/daq/software/spack_packages/llvm/17.0.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-q7cxacolietx7cwnliirvqwcm4szctzd/bin/clang++"

export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/51307/bus"

export EPICS_BASE="/daq/software/spack_packages/epics-base/7.0.6.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-od2x65glvkbjoy7oq66vrwtxbaqrlheb"

export EPICS_HOST_ARCH="linux-x86_64"

export EPOCHREALTIME="1782757693.200315"

export EPOCHSECONDS="1782757693"

export FHICL_FILE_PATH=/daq/software/spack_packages/sbndaq/v2_03_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-la3z4z3p53ir3taolp7vyyjb22pes7xo/fcl:\
/daq/software/spack_packages/artdaq-demo/v3_13_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-vouk5uuidlu7vel6gyoxfxmt5ibedrpr/fcl:\
/daq/software/spack_packages/sbndaq-artdaq/v2_03_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-ermnh2sl6wtvwujrqzkmzid6fhlwbe3w/fcl:\
/daq/software/spack_packages/artdaq-core-demo/v1_11_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-faqnpgsc4rdbzvoxrpf3r4eorfm6sqhl/fcl:\
/daq/software/spack_packages/artdaq/v3_13_02/linux-almalinux9-x86_64_v2-gcc-13.1.0-pgge5qxwxwbiqrggnseputvrc6ersdnm/fcl:\
/daq/software/spack_packages/artdaq-epics-plugin/v1_06_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-ybzxi6pmamcs7bxb5bhpb3tbjtypczpd/fcl:\
/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-ds2scqo6k3kuabjhdkxnlkrubetrp5tl/fcl:\
/daq/software/spack_packages/artdaq-utilities/v1_09_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-tejhxy2jb2mdykfbnxwrewn645w56lci/fcl:\
/daq/software/spack_packages/artdaq-core/v3_10_02/linux-almalinux9-x86_64_v2-gcc-13.1.0-ivqu3wi6qehg2v6ydgyvaxgpuot5bj7t/fcl

export FUNCNAME="export_environment_vars"

export GI_TYPELIB_PATH=/daq/software/spack_packages/harfbuzz/10.2.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-jzr2ilfyyfxqhl6cjrychxtmwlzk6ybr/lib/girepository-1.0:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-5tgat3csunsxm5aphdburaweuoa7x7ix/lib/girepository-1.0

export GSL_ROOT_DIR="/daq/software/spack_packages/gsl/2.7.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-6btdzhwfcn7dtkqah6x3uf7vv4kp67bu"

export LANGUAGE="en_US.UTF-8"

export LC_ALL="en_US.UTF-8"

export LDSHARED

export LD_LIBRARY_PATH="/daq/software/spack_packages/canvas-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-13.1.0-22ufnjcylceer6vvmutiybptujitfyu2/lib"

export LIBRARY_PATH

export LUA_CPATH="/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-aloyucg4wl2xehvgnkxmzrjxovigcbes/lib/lua/5.3/?.so"

export LUA_PATH="/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-aloyucg4wl2xehvgnkxmzrjxovigcbes/lib/lua/5.3/?/init.lua;/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-aloyucg4wl2xehvgnkxmzrjxovigcbes/lib/lua/5.3/?.lua;/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-aloyucg4wl2xehvgnkxmzrjxovigcbes/share/lua/5.3/?/init.lua;/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-aloyucg4wl2xehvgnkxmzrjxovigcbes/share/lua/5.3/?.lua"

export MANPATH=/daq/software/spack_packages/xmlrpc-c/1.51.06/linux-almalinux9-x86_64_v2-gcc-13.1.0-uzm6f4ybn324xpevfkfy3csmr3vqx26n/share/man:\
/daq/software/spack_packages/zlib/1.3.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-oswrerxnndcpid4jnjjfk6pwvcyw2kuy/share/man:\
/daq/software/spack_packages/libxkbcommon/1.7.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-dbvge25nx56cpdjzgidl63wz2boo4i26/share/man:\
/daq/software/spack_packages/fftw/3.3.10/linux-almalinux9-x86_64_v2-gcc-13.1.0-fg66icjzxbtom7xalavhv52h2xy2qrfg/share/man:\
/daq/software/spack_packages/xrootd/5.5.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-b272p35gctgekau7wy4owl4pjsdl2gum/share/man:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-5tgat3csunsxm5aphdburaweuoa7x7ix/share/man:\
/daq/software/spack_packages/lcms/2.16/linux-almalinux9-x86_64_v2-gcc-13.1.0-amicpd4ovpjmx6ovane4r26qbus4rh3z/share/man:\
/daq/software/spack_packages/xkeyboard-config/2.34/linux-almalinux9-x86_64_v2-gcc-13.1.0-u2fahbtkc26wptsrgtpuppxigvogt7i2/share/man:\
/daq/software/spack_packages/openmpi/5.0.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-gjhgykoknlr4kp4iu5tustfless5bva6/share/man:\
/daq/software/spack_packages/root/6.28.12/linux-almalinux9-x86_64_v2-gcc-13.1.0-5shq26yritc6jl6k3mv3f7bsuxvmy6um/share/man:\
/daq/software/spack_packages/numactl/2.0.18/linux-almalinux9-x86_64_v2-gcc-13.1.0-a5kjmewgbaj2chjxusc3yedcuytunyv4/share/man:\
/daq/software/spack_packages/openssh/9.9p1/linux-almalinux9-x86_64_v2-gcc-13.1.0-khpjm6klms34liertgy4dh6bfayaqp5o/share/man:\
/daq/software/spack_packages/pmix/5.0.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-i7wtvqry2igoxglh33oiz5cbpkrovyqf/share/man:\
/daq/software/spack_packages/davix/0.8.10/linux-almalinux9-x86_64_v2-gcc-13.1.0-5zvirpg72ceb5qevfwqozeaez6xo4ewb/share/man:\
/daq/software/spack_packages/gsl/2.7.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-6btdzhwfcn7dtkqah6x3uf7vv4kp67bu/share/man:\
/daq/software/spack_packages/libjpeg-turbo/3.0.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-v4ziplwqb22ov45iq632jhudafp72x6d/share/man:\
/daq/software/spack_packages/libxft/2.3.8/linux-almalinux9-x86_64_v2-gcc-13.1.0-i2ly4xs3rnwgsyl7dg5oqsprn2f4ymlr/share/man:\
/daq/software/spack_packages/libxpm/3.5.17/linux-almalinux9-x86_64_v2-gcc-13.1.0-5cn3agb32w7ff3kiygjlenlb6ryn7mse/share/man:\
/daq/software/spack_packages/lz4/1.10.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-mvvbsow3x43cyphe5aa3qiazn5m7o3t3/share/man:\
/daq/software/spack_packages/xxhash/0.8.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-f5kw4fe7odwmilaickdqkleacph7lh37/share/man:\
/daq/software/spack_packages/krb5/1.21.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-dm7pdjc5vgix2ed72pwov4xojqiwecr3/share/man:\
/daq/software/spack_packages/elfutils/0.192/linux-almalinux9-x86_64_v2-gcc-13.1.0-47g56z22iywgcmvnalfcb3zzvywzibs4/share/man:\
/daq/software/spack_packages/pkg-config/0.29.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-7ts6z5tdvtiw33mxlloy4iqkl3ehgq3t/share/man:\
/daq/software/spack_packages/rust/1.83.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-5rapd56dta7bsnao6r5pvq4h7nlilrnq/share/man:\
/daq/software/spack_packages/font-util/1.4.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-m5t3h7vwu42duszrjo7tjynnbpyvaizt/share/man:\
/daq/software/spack_packages/freetype/2.13.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-oponq7mqewibzrqh3u4fu3i4zbeawlki/share/man:\
/daq/software/spack_packages/python/3.9.15/linux-almalinux9-x86_64_v2-gcc-13.1.0-j7lvwbrkmk3yihnkcz57ggzdicnlpipd/share/man:\
/daq/software/spack_packages/perl/5.40.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-4xhrko4atkor44fpxodfqmskjufrhl3i/man:\
/daq/software/spack_packages/libpng/1.6.39/linux-almalinux9-x86_64_v2-gcc-13.1.0-nxwr22y4f52fw7ftctnxqo5nhjajexkt/share/man:\
/daq/software/spack_packages/gettext/0.22.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-rfwcs5nlupprna7s2qgltzuyd4mw3yvs/share/man:\
/daq/software/spack_packages/libxcrypt/4.4.35/linux-almalinux9-x86_64_v2-gcc-13.1.0-zqlbtwpfhw2rql7kb3oadufb5yrpmxca/share/man:\
/daq/software/spack_packages/sqlite/3.40.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-z54v4i44atkoci2geqehxyn6jq32sxgd/share/man:\
/daq/software/spack_packages/libssh2/1.11.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-x4t5zcy7uoykq5q743uudohvh2oncb2p/share/man:\
/daq/software/spack_packages/pcre/8.45/linux-almalinux9-x86_64_v2-gcc-13.1.0-ojebsh3q46y6jgt6wbgdxhezoyifrjfj/share/man:\
/daq/software/spack_packages/icu4c/74.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-zo6zv3qbhzgitoxcqbqagphk7txvjnte/share/man:\
/daq/software/spack_packages/gdbm/1.23/linux-almalinux9-x86_64_v2-gcc-13.1.0-lgkk4s46dxb6wwrdfpsbaqu25ogffxyj/share/man:\
/daq/software/spack_packages/expat/2.6.4/linux-almalinux9-x86_64_v2-gcc-13.1.0-wd2vu7yebknp3qad3f5eksxdjz4uj5nx/share/man:\
/daq/software/spack_packages/libxt/1.3.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-fjry6onuaslhthc3y6n7zdmc2azpbv6s/share/man:\
/daq/software/spack_packages/llvm/17.0.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-q7cxacolietx7cwnliirvqwcm4szctzd/share/man:\
/daq/software/spack_packages/xrandr/1.5.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-piss3rnfuayomnizwizv6cddr2dnysa3/share/man:\
/daq/software/spack_packages/tar/1.35/linux-almalinux9-x86_64_v2-gcc-13.1.0-xxpy3mvyh4s7iqtrm24tux2yfsyy3bwi/share/man:\
/daq/software/spack_packages/binutils/2.43.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-old5p3oopkqvek4ujp6ikanl67bbjc5h/share/man:\
/daq/software/spack_packages/hwloc/2.11.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-ujaqkz3c2wwazpralknoihgsymhw2wxe/share/man:\
/daq/software/spack_packages/libedit/3.1-20240808/linux-almalinux9-x86_64_v2-gcc-13.1.0-cugnevuppchlpid67y5k4d27i7wbjkly/share/man:\
/daq/software/spack_packages/libffi/3.4.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-k3frxfy7e7y3ybvecwwk5t4624tevhbn/share/man:\
/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-aloyucg4wl2xehvgnkxmzrjxovigcbes/man:\
/daq/software/spack_packages/libxrandr/1.5.4/linux-almalinux9-x86_64_v2-gcc-13.1.0-jqwc6o5dpkm74vht26kcsrpvabga6gsu/share/man:\
/daq/software/spack_packages/bzip2/1.0.8/linux-almalinux9-x86_64_v2-gcc-13.1.0-kuf3k2jf5cztkzpto5lnoxdzsk5b6ud3/man:\
/daq/software/spack_packages/pigz/2.8/linux-almalinux9-x86_64_v2-gcc-13.1.0-qjfp3det2e7oxbtqkottkfgzlv4e2vk7/man:\
/daq/software/spack_packages/zstd/1.5.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-hv6hea2lsivg4cromjay5gikqx57gvfw/share/man:\
/daq/software/spack_packages/libxml2/2.9.12/linux-almalinux9-x86_64_v2-gcc-13.1.0-xwk566phmltx6ni7hajwzppegelvp3u6/share/man:\
/daq/software/spack_packages/readline/8.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-t7ouo4k2auozroxv4ri2kjerznxbs65w/share/man:\
/daq/software/spack_packages/unzip/6.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-hqbpdqt4nvsokwwkmolvjfyqqgmhohhe/man:\
/daq/software/spack_packages/pcre2/10.44/linux-almalinux9-x86_64_v2-gcc-13.1.0-h2pknkctevop25sisa6c5za5dhbvo2ud/share/man:\
/daq/software/spack_packages/libxext/1.3.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-mir2brhlz7mwc7r5indvvoy7ulilnpsu/share/man:\
/daq/software/spack_packages/xz/5.4.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-cqcfhk7vboytfj2esd3y53mrhxxtqbaz/share/man:\
/daq/software/spack_packages/nghttp2/1.64.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-7pg4cqjmr47jp2qjx63pehbbtkeqztxc/share/man:\
/daq/software/spack_packages/libx11/1.8.10/linux-almalinux9-x86_64_v2-gcc-13.1.0-56wui3itis6q6uklvci3ueekt3o3i5pv/share/man:\
/daq/software/spack_packages/zlib-ng/2.2.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-xjk5rdwll5wuqai4zwiylezfztjjhlb7/share/man:\
/daq/software/spack_packages/libxcb/1.17.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-mqafnxzwn3hpddx5evba4uaqnscylr3z/share/man:\
/daq/software/spack_packages/libxau/1.0.12/linux-almalinux9-x86_64_v2-gcc-13.1.0-4rrf5hfqie6jm5mplwzgjw4oaixqnx4r/share/man:\
/daq/software/spack_packages/libbsd/0.12.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-bwgfgz5m6u7rw6jzesztsjtwvjok7tcn/share/man:\
/daq/software/spack_packages/libmd/1.0.4/linux-almalinux9-x86_64_v2-gcc-13.1.0-zk365rvde3z7mxyskvnh72f7my6jxfln/share/man:\
/usr/share/man

export MOTD_SHOWN="pam"

export MPICC="/daq/software/spack_packages/openmpi/5.0.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-gjhgykoknlr4kp4iu5tustfless5bva6/bin/mpicc"

export MPICXX="/daq/software/spack_packages/openmpi/5.0.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-gjhgykoknlr4kp4iu5tustfless5bva6/bin/mpic++"

export MPIF77="/daq/software/spack_packages/openmpi/5.0.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-gjhgykoknlr4kp4iu5tustfless5bva6/bin/mpif77"

export MPIF90="/daq/software/spack_packages/openmpi/5.0.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-gjhgykoknlr4kp4iu5tustfless5bva6/bin/mpif90"

export MPIFC="/daq/software/spack_packages/openmpi/5.0.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-gjhgykoknlr4kp4iu5tustfless5bva6/bin/mpifort"

export MRB_QUALS="both"

export OLDPWD="/home/nfs/sbnd"

export OS_NAME="almalinux9"

export PATH=/daq/software/spack_packages/epics-base/7.0.6.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-od2x65glvkbjoy7oq66vrwtxbaqrlheb/bin/linux-x86_64:\
/daq/software/spack_packages/py-plotext/5.2.8/linux-almalinux9-x86_64_v2-gcc-13.1.0-bv7tagvi7qp72hl777gax5lu77qgoboz/bin:\
/daq/software/spack_packages/trace/v3_17_11/linux-almalinux9-x86_64_v2-gcc-13.1.0-zl5scrhcsy26xr3sbypxqnc7oph4bjng/bin:\
/daq/software/spack_packages/py-nbformat/5.8.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-e2n66gxvxxf6gaghthbebdjwrlyk4kxa/bin:\
/daq/software/spack_packages/py-jsonschema/4.22.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-obzynsesktaetl43nnyxclqor5u6tmlh/bin:\
/daq/software/spack_packages/py-jupyter-core/5.3.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-66qlzpo6rj6rufxccpl637zmawcu7xex/bin:\
/daq/software/spack_packages/py-charset-normalizer/3.3.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-ci3x5u2kfzskhbuptsgfpzamoj5ksn57/bin:\
/daq/software/spack_packages/cmake/3.27.9/linux-almalinux9-x86_64_v2-gcc-13.1.0-ioahe2goqgadrph3coqe26g2sgx4b6eq/bin:\
/daq/software/spack_packages/gmake/4.4.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-uau636nzu6rrtcedparpiaqhyebnkz2s/bin:\
/daq/software/spack_packages/openssh/9.9p1/linux-almalinux9-x86_64_v2-gcc-13.1.0-khpjm6klms34liertgy4dh6bfayaqp5o/bin:\
/daq/software/spack_packages/py-numpy/1.24.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-wpje67v5vxoj7xoptu2pbhbse3llt4iu/bin:\
/daq/software/spack_packages/py-pybind11/2.10.4/linux-almalinux9-x86_64_v2-gcc-13.1.0-owso2kkohekjstx6qaysjwbhaatiot2r/bin:\
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
/daq/software/spack_packages/sbndaq/v2_03_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-la3z4z3p53ir3taolp7vyyjb22pes7xo/bin:\
/daq/software/spack_packages/artdaq-daqinterface/v4_06_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-w4enww3ege4rds327duyqzbl7r6hiakq/bin:\
/daq/software/spack_packages/artdaq-database/v3_05_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-pslhqpgu5bseigckw3occn7kfhladro4/bin:\
/daq/software/spack_packages/artdaq-demo/v3_13_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-vouk5uuidlu7vel6gyoxfxmt5ibedrpr/bin:\
/daq/software/spack_packages/sbndaq-artdaq/v2_03_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-ermnh2sl6wtvwujrqzkmzid6fhlwbe3w/bin:\
/daq/software/spack_packages/artdaq/v3_13_02/linux-almalinux9-x86_64_v2-gcc-13.1.0-pgge5qxwxwbiqrggnseputvrc6ersdnm/bin:\
/daq/software/spack_packages/artdaq-epics-plugin/v1_06_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-ybzxi6pmamcs7bxb5bhpb3tbjtypczpd/bin:\
/daq/software/spack_packages/redis/7.4.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-ru3c2nhcuevnmopejyridyyuuxxhvrvu/bin:\
/daq/software/spack_packages/wibtools/v2_03_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-mmtxgbjqjsffi62oheyahl2h7l6j62td/bin:\
/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-ds2scqo6k3kuabjhdkxnlkrubetrp5tl/bin:\
/daq/software/spack_packages/xmlrpc-c/1.51.06/linux-almalinux9-x86_64_v2-gcc-13.1.0-uzm6f4ybn324xpevfkfy3csmr3vqx26n/bin:\
/daq/software/spack_packages/artdaq-utilities/v1_09_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-tejhxy2jb2mdykfbnxwrewn645w56lci/bin:\
/daq/software/spack_packages/epics-base/7.0.6.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-od2x65glvkbjoy7oq66vrwtxbaqrlheb/bin:\
/daq/software/spack_packages/libzmq/4.3.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-pl527gkazn3nmf5cxbs6psnxvzupuvgj/bin:\
/daq/software/spack_packages/qt/5.15.16/linux-almalinux9-x86_64_v2-gcc-13.1.0-qztr3g6cmgfbuaq3iuwq75ele4mwgbua/bin:\
/daq/software/spack_packages/harfbuzz/10.2.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-jzr2ilfyyfxqhl6cjrychxtmwlzk6ybr/bin:\
/daq/software/spack_packages/libxkbcommon/1.7.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-dbvge25nx56cpdjzgidl63wz2boo4i26/bin:\
/daq/software/spack_packages/art-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-13.1.0-obf62fo4tu5z6cee5wej7gnaikub4vvi/bin:\
/daq/software/spack_packages/cetmodules/3.24.01/linux-almalinux9-x86_64_v2-gcc-13.1.0-koqaikknwkufcftwpwny4b4b7a5yceza/bin:\
/daq/software/spack_packages/fftw/3.3.10/linux-almalinux9-x86_64_v2-gcc-13.1.0-fg66icjzxbtom7xalavhv52h2xy2qrfg/bin:\
/daq/software/spack_packages/postgresql/15.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-phjhf36knogadcgxcpgahbmfrzkeby2a/bin:\
/daq/software/spack_packages/xrootd/5.5.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-b272p35gctgekau7wy4owl4pjsdl2gum/bin:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-5tgat3csunsxm5aphdburaweuoa7x7ix/bin:\
/daq/software/spack_packages/lcms/2.16/linux-almalinux9-x86_64_v2-gcc-13.1.0-amicpd4ovpjmx6ovane4r26qbus4rh3z/bin:\
/daq/software/spack_packages/art/3.14.04/linux-almalinux9-x86_64_v2-gcc-13.1.0-yrb6bp3wkxpsp6ebgkamdhhhk3ybrzro/bin:\
/daq/software/spack_packages/openmpi/5.0.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-gjhgykoknlr4kp4iu5tustfless5bva6/bin:\
/daq/software/spack_packages/openblas/0.3.23/linux-almalinux9-x86_64_v2-gcc-13.1.0-ifzupnpqljwdvbnyi7262fij4p4occob/bin:\
/daq/software/spack_packages/cairo/1.18.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-jb35ohr7ahxp4kqsh4b3ejbyne4lr46n/bin:\
/daq/software/spack_packages/libtiff/4.7.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-nfudpojkscmyzys4fuaym3ifabtlsqk7/bin:\
/daq/software/spack_packages/root/6.28.12/linux-almalinux9-x86_64_v2-gcc-13.1.0-5shq26yritc6jl6k3mv3f7bsuxvmy6um/bin:\
/daq/software/spack_packages/numactl/2.0.18/linux-almalinux9-x86_64_v2-gcc-13.1.0-a5kjmewgbaj2chjxusc3yedcuytunyv4/bin:\
/daq/software/spack_packages/pmix/5.0.5/linux-almalinux9-x86_64_v2-gcc-13.1.0-i7wtvqry2igoxglh33oiz5cbpkrovyqf/bin:\
/daq/software/spack_packages/glib/2.82.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-y5epzuut6splj2kc5pzmjjsq5wlhpvhd/bin:\
/daq/software/spack_packages/clhep/2.4.7.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-2b5rhsanhlnjbniocix6gnflc2jnk46w/bin:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-almalinux9-x86_64_v2-gcc-13.1.0-dpgzmfowgggvmo36kgklu7rp7542umos/bin:\
/daq/software/spack_packages/davix/0.8.10/linux-almalinux9-x86_64_v2-gcc-13.1.0-5zvirpg72ceb5qevfwqozeaez6xo4ewb/bin:\
/daq/software/spack_packages/glew/2.2.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-vbdpcucf6l4o64o2kclsfwmcy74bket6/bin:\
/daq/software/spack_packages/gsl/2.7.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-6btdzhwfcn7dtkqah6x3uf7vv4kp67bu/bin:\
/daq/software/spack_packages/libjpeg-turbo/3.0.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-v4ziplwqb22ov45iq632jhudafp72x6d/bin:\
/daq/software/spack_packages/libxpm/3.5.17/linux-almalinux9-x86_64_v2-gcc-13.1.0-5cn3agb32w7ff3kiygjlenlb6ryn7mse/bin:\
/daq/software/spack_packages/lz4/1.10.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-mvvbsow3x43cyphe5aa3qiazn5m7o3t3/bin:\
/daq/software/spack_packages/xxhash/0.8.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-f5kw4fe7odwmilaickdqkleacph7lh37/bin:\
/daq/software/spack_packages/krb5/1.21.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-dm7pdjc5vgix2ed72pwov4xojqiwecr3/bin:\
/daq/software/spack_packages/libevent/2.1.12/linux-almalinux9-x86_64_v2-gcc-13.1.0-yz55fz75sifdx7svuhe5o47hmtn745pe/bin:\
/daq/software/spack_packages/elfutils/0.192/linux-almalinux9-x86_64_v2-gcc-13.1.0-47g56z22iywgcmvnalfcb3zzvywzibs4/bin:\
/daq/software/spack_packages/fhicl-cpp/4.18.04/linux-almalinux9-x86_64_v2-gcc-13.1.0-xaiclaqd53j25u4pe5fl2qnwtoinkvda/bin:\
/daq/software/spack_packages/fontconfig/2.15.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-6zinqo6sb2otqdtu7g4u7qskvahc4s56/bin:\
/daq/software/spack_packages/pkg-config/0.29.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-7ts6z5tdvtiw33mxlloy4iqkl3ehgq3t/bin:\
/daq/software/spack_packages/rust/1.83.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-5rapd56dta7bsnao6r5pvq4h7nlilrnq/bin:\
/daq/software/spack_packages/cetlib/3.18.02/linux-almalinux9-x86_64_v2-gcc-13.1.0-5yyfdv6yf4hayqecl3kcd66iukuz5iim/bin:\
/daq/software/spack_packages/font-util/1.4.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-m5t3h7vwu42duszrjo7tjynnbpyvaizt/bin:\
/daq/software/spack_packages/freetype/2.13.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-oponq7mqewibzrqh3u4fu3i4zbeawlki/bin:\
/daq/software/spack_packages/libgit2/1.8.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-jqp4oomzkqojq5ahya5ia5hih3qhlipc/bin:\
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

export PERL5LIB=/daq/software/spack_packages/trace/v3_17_11/linux-almalinux9-x86_64_v2-gcc-13.1.0-zl5scrhcsy26xr3sbypxqnc7oph4bjng/perllib:\
/daq/software/spack_packages/art/3.14.04/linux-almalinux9-x86_64_v2-gcc-13.1.0-yrb6bp3wkxpsp6ebgkamdhhhk3ybrzro/perllib:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-almalinux9-x86_64_v2-gcc-13.1.0-dpgzmfowgggvmo36kgklu7rp7542umos/perllib:\
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
/daq/software/spack_packages/fftw/3.3.10/linux-almalinux9-x86_64_v2-gcc-13.1.0-fg66icjzxbtom7xalavhv52h2xy2qrfg/lib/pkgconfig:\
/daq/software/spack_packages/postgresql/15.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-phjhf36knogadcgxcpgahbmfrzkeby2a/lib/pkgconfig:\
/daq/software/spack_packages/py-pybind11/2.10.4/linux-almalinux9-x86_64_v2-gcc-13.1.0-owso2kkohekjstx6qaysjwbhaatiot2r/share/pkgconfig:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-5tgat3csunsxm5aphdburaweuoa7x7ix/lib/pkgconfig:\
/daq/software/spack_packages/lcms/2.16/linux-almalinux9-x86_64_v2-gcc-13.1.0-amicpd4ovpjmx6ovane4r26qbus4rh3z/lib/pkgconfig:\
/daq/software/spack_packages/util-macros/1.20.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-x5vvnxgca6zobpx54okm5s5mjovme35g/share/pkgconfig:\
/daq/software/spack_packages/xkeyboard-config/2.34/linux-almalinux9-x86_64_v2-gcc-13.1.0-u2fahbtkc26wptsrgtpuppxigvogt7i2/share/pkgconfig:\
/daq/software/spack_packages/xcb-util/0.4.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-eljlhiotvtpkljivjc5fpcttjottebmz/lib/pkgconfig:\
/daq/software/spack_packages/openmpi/5.0.6/linux-almalinux9-x86_64_v2-gcc-13.1.0-gjhgykoknlr4kp4iu5tustfless5bva6/lib/pkgconfig:\
/daq/software/spack_packages/openblas/0.3.23/linux-almalinux9-x86_64_v2-gcc-13.1.0-ifzupnpqljwdvbnyi7262fij4p4occob/lib/pkgconfig:\
/daq/software/spack_packages/json-c/0.18/linux-almalinux9-x86_64_v2-gcc-13.1.0-4cztye4qu3otadrafqj47sj5tv3spqji/lib64/pkgconfig:\
/daq/software/spack_packages/cairo/1.18.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-jb35ohr7ahxp4kqsh4b3ejbyne4lr46n/lib/pkgconfig:\
/daq/software/spack_packages/libtiff/4.7.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-nfudpojkscmyzys4fuaym3ifabtlsqk7/lib64/pkgconfig:\
/daq/software/spack_packages/numactl/2.0.18/linux-almalinux9-x86_64_v2-gcc-13.1.0-a5kjmewgbaj2chjxusc3yedcuytunyv4/lib/pkgconfig:\
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
/daq/software/spack_packages/krb5/1.21.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-dm7pdjc5vgix2ed72pwov4xojqiwecr3/lib/pkgconfig:\
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
/daq/software/spack_packages/libgit2/1.8.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-jqp4oomzkqojq5ahya5ia5hih3qhlipc/lib64/pkgconfig:\
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
/daq/software/spack_packages/py-plotly/2.2.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-74gaqr6uqv6mb4mofdvacp3figo7qxb3/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-nbformat/5.8.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-e2n66gxvxxf6gaghthbebdjwrlyk4kxa/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-jsonschema/4.22.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-obzynsesktaetl43nnyxclqor5u6tmlh/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-jsonschema-specifications/2023.12.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-nq7ifz3esnt6ht35xxq3s4iif6tz6xt7/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-referencing/0.35.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-sufbwuepq7qodfetdbr2c3yeh6eciihr/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-jupyter-core/5.3.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-66qlzpo6rj6rufxccpl637zmawcu7xex/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-requests/2.32.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-65a6cpoao442gw4zgc757t4fcyv3q6nb/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-attrs/23.1.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-t5g22rhsmbdlwllgjwqen7ub23o3mvau/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-platformdirs/3.10.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-jefsbysuur6cf6bdu2me6ujym2pcodoe/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-rpds-py/0.20.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-cqrbhrlxkaqkt5bbwugxtc4yw2pfcno5/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-traitlets/5.14.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-yzfgiyrqkgibzdcy47276lkgq26j6zxa/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-urllib3/2.1.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-am37s7bp37cgrhmuaoazjltsjy2jjpp5/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-idna/3.4/linux-almalinux9-x86_64_v2-gcc-13.1.0-thf2i3iqv3wbclgj7cxocqt2kyf5ic65/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-certifi/2023.7.22/linux-almalinux9-x86_64_v2-gcc-13.1.0-z6borxossofhuwc6wk4bs4ybfwg6ucnd/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-pytz/2024.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-vgwkd6ye6f24yl5xwhl6l2qgjchq7qr6/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-plotext/5.2.8/linux-almalinux9-x86_64_v2-gcc-13.1.0-bv7tagvi7qp72hl777gax5lu77qgoboz/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-decorator/5.1.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-5lnusqrairvypwf4bazib55yc4lqc3yt/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-six/1.17.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-jb4drmjy2j5g3zmh2yqhr5tvevm2eozv/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-charset-normalizer/3.3.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-ci3x5u2kfzskhbuptsgfpzamoj5ksn57/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-fastjsonschema/2.21.1/linux-almalinux9-x86_64_v2-gcc-13.1.0-hybgrp77xtwlph27ky2zag55bvbgzslv/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-numpy/1.24.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-wpje67v5vxoj7xoptu2pbhbse3llt4iu/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-pybind11/2.10.4/linux-almalinux9-x86_64_v2-gcc-13.1.0-owso2kkohekjstx6qaysjwbhaatiot2r/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-setuptools/63.4.3/linux-almalinux9-x86_64_v2-gcc-13.1.0-dr2diisxdetolxe6ia3t7jte6ngblabm/lib/python3.9/site-packages:\
/daq/software/spack_packages/python-venv/1.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-i25w6hbjs5gvjumvxhkzfua556ucgrui/lib/python3.9/site-packages

export QTDIR="/daq/software/spack_packages/qt/5.15.16/linux-almalinux9-x86_64_v2-gcc-13.1.0-qztr3g6cmgfbuaq3iuwq75ele4mwgbua"

export QTINC="/daq/software/spack_packages/qt/5.15.16/linux-almalinux9-x86_64_v2-gcc-13.1.0-qztr3g6cmgfbuaq3iuwq75ele4mwgbua/inc"

export QTLIB="/daq/software/spack_packages/qt/5.15.16/linux-almalinux9-x86_64_v2-gcc-13.1.0-qztr3g6cmgfbuaq3iuwq75ele4mwgbua/lib"

export QT_PLUGIN_PATH="/daq/software/spack_packages/qt/5.15.16/linux-almalinux9-x86_64_v2-gcc-13.1.0-qztr3g6cmgfbuaq3iuwq75ele4mwgbua/plugins"

export ROOTSYS="/daq/software/spack_packages/root/6.28.12/linux-almalinux9-x86_64_v2-gcc-13.1.0-5shq26yritc6jl6k3mv3f7bsuxvmy6um"

export ROOT_INCLUDE_PATH=/daq/software/spack_packages/canvas-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-13.1.0-22ufnjcylceer6vvmutiybptujitfyu2/include:\
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
/daq/software/spack_packages/hep-concurrency/1.09.02/linux-almalinux9-x86_64_v2-gcc-13.1.0-2wx6ixanyrotsbuqzrzd42rvkfrhfgcm/include:\
/daq/software/spack_packages/canvas/3.16.04/linux-almalinux9-x86_64_v2-gcc-13.1.0-mxhhe7w7ah2ztau5slr3ufpcppi2yigd/include:\
/daq/software/spack_packages/range-v3/0.12.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-pkd4ck7ospguer3bf6d7gxrrpp3h2263/include:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-almalinux9-x86_64_v2-gcc-13.1.0-dpgzmfowgggvmo36kgklu7rp7542umos/include:\
/daq/software/spack_packages/catch2/3.3.2/linux-almalinux9-x86_64_v2-gcc-13.1.0-5twgsrezhrrsztvlq4gc5r7tkctwrrt2/include:\
/daq/software/spack_packages/fhicl-cpp/4.18.04/linux-almalinux9-x86_64_v2-gcc-13.1.0-xaiclaqd53j25u4pe5fl2qnwtoinkvda/include:\
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
/daq/software/spack_packages/art-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-13.1.0-obf62fo4tu5z6cee5wej7gnaikub4vvi/include:\
/daq/software/spack_packages/art-suite/s131/linux-almalinux9-x86_64_v2-gcc-13.1.0-gdtirtq2lqp2lt5ejizawgq6b2ldmuhp/include:\
/daq/software/spack_packages/sbndaq-suite/v2_03_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-qfowvxtix246id36ze2dnmc2xtregxsy/include:\
/usr/include

export ROOT_LIBRARY_PATH=/daq/software/spack_packages/art-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-13.1.0-obf62fo4tu5z6cee5wej7gnaikub4vvi/lib:\
/daq/software/spack_packages/canvas-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-13.1.0-22ufnjcylceer6vvmutiybptujitfyu2/lib

export ROOT_VERSION="v6"

export SBNDAQ_VERSION="v2_03_00"

export SETUP_ARTDAQ_MFEXTENSIONS="spack load artdaq-mfextensions"

export SPACK_ALIASES="concretise:concretize;containerise:containerize;rm:remove"

export SPACK_ARCH="linux-almalinux9-x86_64_v2"

export SPACK_DISABLE_LOCAL_CONFIG="true"

export SPACK_ENV_SCRIPT="/daq/software/spack_packages/spack/current/NULL/share/spack/setup-env.sh"

export SPACK_INSTALL_DIR="/daq/software/spack_packages/spack/current/NULL"

export SPACK_LOADED_HASHES="qfowvxtix246id36ze2dnmc2xtregxsy"

export SPACK_PYTHON="/usr/bin/python3"

export SPACK_ROOT="/daq/software/spack_packages/spack/current/NULL"

export SPACK_USER_CONFIG_PATH="/home/nfs/sbnd/DAQ_SPACK_ProdAreas/DAQ_2026-06-18_GAL_v2_03_00/srcs/sbndaq/sbn-nd/DAQInterface2/overrides/spack"

export SRANDOM="40069728"

export TBB_INC="/daq/software/spack_packages/intel-tbb-oneapi/2021.9.0/linux-almalinux9-x86_64_v2-gcc-13.1.0-7jfp34ifkisohmp4g2tursbgykyzitwy/include"

export THIS_SBN_DAQ_DAQINTERFACE_DIR="/home/nfs/sbnd/DAQ_SPACK_ProdAreas/DAQ_2026-06-18_GAL_v2_03_00/srcs/sbndaq/sbn-nd/DAQInterface2"

export USE_CACHED_BASH_ENV="True"

export WIBTOOLS_BIN="/daq/software/spack_packages/wibtools/v2_03_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-mmtxgbjqjsffi62oheyahl2h7l6j62td/bin"

export WIB_ADDRESS_TABLE_PATH="/daq/software/spack_packages/wibtools/v2_03_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-mmtxgbjqjsffi62oheyahl2h7l6j62td/tables"

export WIB_CONFIG_PATH="/daq/software/spack_packages/wibtools/v2_03_00/linux-almalinux9-x86_64_v2-gcc-13.1.0-mmtxgbjqjsffi62oheyahl2h7l6j62td/config"

export XDG_SESSION_CLASS="user"

export XDG_SESSION_TYPE="tty"

export XKB_CONFIG_ROOT="/daq/software/spack_packages/xkeyboard-config/2.34/linux-almalinux9-x86_64_v2-gcc-13.1.0-u2fahbtkc26wptsrgtpuppxigvogt7i2/share/X11/xkb"

export XLOCALEDIR=/daq/software/spack_packages/libx11/1.8.10/linux-almalinux9-x86_64_v2-gcc-13.1.0-56wui3itis6q6uklvci3ueekt3o3i5pv/share/X11/locale

export _a="sbndaq-suite@v2_03_00%gcc@13.1.0 arch=linux-almalinux9-x86_64_v2 /qfowvxt"

export _pa_canonical=":"

export _pa_new_path="/daq/software/spack_packages/spack/v1.0.1.sbnd/NULL/share/spack/modules/linux-almalinux9-x86_64"

export _pa_oldvalue

export _pa_varname="MODULEPATH"

export _sp_compatible_sys_types="linux-almalinux9-zen4:linux-almalinux9-zen3:linux-almalinux9-x86_64_v4:linux-almalinux9-zen2:linux-almalinux9-zen:linux-almalinux9-x86_64_v3:linux-almalinux9-x86_64_v2:linux-almalinux9-x86_64"

export _sp_flags

export _sp_lmod_roots="/daq/software/spack_packages/spack/v1.0.1.sbnd/NULL/share/spack/lmod"

export _sp_module_prefix="not_installed"

export _sp_prefix="/daq/software/spack_packages/spack/current/NULL"

export _sp_share_dir="/daq/software/spack_packages/spack/current/NULL/share/spack"

export _sp_shell="bash"

export _sp_source_file="/daq/software/spack_packages/spack/current/NULL/share/spack/setup-env.sh"

export _sp_subcommand="load"

export _sp_sys_type="linux-almalinux9-zen4"

export _sp_tcl_roots="/daq/software/spack_packages/spack/v1.0.1.sbnd/NULL/share/spack/modules"

export build_hash_map

export cmd="python3"

export i="1"

export need_module="yes"

export pth="/daq/software/spack_packages/spack/v1.0.1.sbnd/NULL/share/spack/modules"

export systype="linux-almalinux9-x86_64"

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

