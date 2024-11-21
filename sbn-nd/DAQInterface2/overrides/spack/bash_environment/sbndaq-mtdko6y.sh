#!/usr/bin/env bash
# Captured environment: 20240930_191645

[[ "$0" != "${BASH_SOURCE}" ]] || { echo "The script $(basename ${BASH_SOURCE}) should be sourced!"; exit 1; }
#Environment variables
export ACLOCAL_PATH=/daq/software/spack_packages/cmake/3.27.9/linux-scientific7-x86_64_v2-gcc-12.1.0-nxm7c3jbyrknp6oqgk4dhzclq6q2g4cm/share/aclocal:\
/daq/software/spack_packages/gsl/2.7.1/linux-scientific7-x86_64_v2-gcc-12.1.0-qpbgmwp3lzazgbgq4ybzvphwtjhrujnw/share/aclocal:\
/daq/software/spack_packages/curl/8.7.1/linux-scientific7-x86_64_v2-gcc-12.1.0-w22cuyquh3xignaei3l5p2ww7dbepbe5/share/aclocal:\
/daq/software/spack_packages/util-macros/1.20.1/linux-scientific7-x86_64_v2-gcc-12.1.0-bgpgnvoabiikjfr6hjf34cvr4oj6x5b5/share/aclocal:\
/daq/software/spack_packages/xtrans/1.5.0/linux-scientific7-x86_64_v2-gcc-12.1.0-qr5uiimh3xomqxnee4tzjc65vqome64j/share/aclocal:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-scientific7-x86_64_v2-gcc-12.1.0-tle2t4rpgum5grwhxxay34bhavx4enjt/share/aclocal:\
/daq/software/spack_packages/glib/2.78.3/linux-scientific7-x86_64_v2-gcc-12.1.0-nydu3n5a7glusbazzxxrnups5pg5n3jc/share/aclocal:\
/daq/software/spack_packages/pkgconf/2.2.0/linux-scientific7-x86_64_v2-gcc-12.1.0-wgg5tbq4iqvgirxis52tkpuphalafqys/share/aclocal:\
/daq/software/spack_packages/gettext/0.22.5/linux-scientific7-x86_64_v2-gcc-12.1.0-w4xo5yhez3g37rgjw2uwb3luvtm6mn6r/share/aclocal:\
/daq/software/spack_packages/libxml2/2.9.12/linux-scientific7-x86_64_v2-gcc-12.1.0-af5cu7dmlj7zwl6nfj7fl5qpbsbwx6p3/share/aclocal:\
/daq/software/spack_packages/freetype/2.13.2/linux-scientific7-x86_64_v2-gcc-12.1.0-kz6dxksefzz6yxfyywg2cq6rnt6lgm5r/share/aclocal:\
/daq/software/spack_packages/font-util/1.4.1/linux-scientific7-x86_64_v2-gcc-12.1.0-z77drk3wiokdbereiqxgucmemazbd6yj/share/aclocal:\
/usr/share/aclocal

export ARTDAQ_DAQINTERFACE_DIR="/daq/software/spack_packages/artdaq-daqinterface/v3_14_00/linux-scientific7-x86_64_v2-gcc-12.1.0-zkfx2cp4neg5swa2534yua4u53qmg3v5"

export ARTDAQ_DAQINTERFACE_VERSION="SPACK"

export ARTDAQ_MFEXTENSIONS_DIR="/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-scientific7-x86_64_v2-gcc-12.1.0-deqdsonhl2xdzwrnepaln4bvs6lkeppa"

export BOOST_ROOT="/daq/software/spack_packages/boost/1.82.0/linux-scientific7-x86_64_v2-gcc-12.1.0-dp5ltsu7g7orpjgd5vfpv3oghdmtevgf"

export BUILD_HASH="/mtdko6y"

export BUILD_VARIANT="gcc@12.1.0"

export CC="/daq/software/spack_packages/llvm/17.0.6/linux-scientific7-x86_64_v2-gcc-12.1.0-cxiefdsy6tgjwnvratpxwnydfl3mgtid/bin/clang"

export CET_PLUGIN_PATH=/daq/software/spack_packages/sbndaq/v1_10_02/linux-scientific7-x86_64_v2-gcc-12.1.0-j7n3ntis4g3rld4uwzc5kc5rrsgwwvw5/lib:\
/daq/software/spack_packages/sbndaq-artdaq/v1_10_02/linux-scientific7-x86_64_v2-gcc-12.1.0-5ip7ufm375t5nceuowi7zjdgwidxw4mj/lib:\
/daq/software/spack_packages/artdaq-epics-plugin/v1_06_00/linux-scientific7-x86_64_v2-gcc-12.1.0-ucdbmchqivtxs5gkcuftoyoj4i2hr2lz/lib:\
/daq/software/spack_packages/artdaq-demo/v3_13_00/linux-scientific7-x86_64_v2-gcc-12.1.0-k7b6uwrt6inosl7ngyuy24dnwmhikhdg/lib:\
/daq/software/spack_packages/artdaq-core-demo/v1_11_00/linux-scientific7-x86_64_v2-gcc-12.1.0-wdm56kqxcs7bazfmmeszlzpjao4avi54/lib:\
/daq/software/spack_packages/artdaq/v3_13_02/linux-scientific7-x86_64_v2-gcc-12.1.0-zytmanutaxka3u3cpw23zyfzmpduir6m/lib:\
/daq/software/spack_packages/artdaq-utilities/v1_09_00/linux-scientific7-x86_64_v2-gcc-12.1.0-2cvjojbzfj3pkdnztuoglxvtd7ykrqc4/lib:\
/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-scientific7-x86_64_v2-gcc-12.1.0-deqdsonhl2xdzwrnepaln4bvs6lkeppa/lib:\
/daq/software/spack_packages/artdaq-core/v3_10_02/linux-scientific7-x86_64_v2-gcc-12.1.0-llry6efh7vsrn3bkgyvs7jq7pujxy6vo/lib:\
/daq/software/spack_packages/trace/v3_17_11/linux-scientific7-x86_64_v2-gcc-12.1.0-p4ksodlm3w4vvcg4x2rvyfgo5sbktdk5/lib:\
/daq/software/spack_packages/art-root-io/1.13.06/linux-scientific7-x86_64_v2-gcc-12.1.0-mbefczr5drn3dqzk2xhbctrc5bayzari/lib:\
/daq/software/spack_packages/art/3.14.04/linux-scientific7-x86_64_v2-gcc-12.1.0-d2yhoezbdyj4zxgu4um6kgtgxgrsgrdl/lib:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-scientific7-x86_64_v2-gcc-12.1.0-ttyj6yn4dn7x6dqq64akxvvaf6glmchn/lib

export CLING_STANDARD_PCH="none"

export CMAKE_PREFIX_PATH=/daq/software/spack_packages/sbndaq-suite/v1_10_02/linux-scientific7-x86_64_v2-gcc-12.1.0-mtdko6yfsrk2roge5trpwc47g6ggfftv:\
/daq/software/spack_packages/sbndaq/v1_10_02/linux-scientific7-x86_64_v2-gcc-12.1.0-j7n3ntis4g3rld4uwzc5kc5rrsgwwvw5:\
/daq/software/spack_packages/sbndaq-artdaq/v1_10_02/linux-scientific7-x86_64_v2-gcc-12.1.0-5ip7ufm375t5nceuowi7zjdgwidxw4mj:\
/daq/software/spack_packages/windriver/v12_06_00/linux-scientific7-x86_64_v2-gcc-12.1.0-kwkgb3djemip5uhmlgpabhbp4f2au6c7:\
/daq/software/spack_packages/wibtools/v1_10_02/linux-scientific7-x86_64_v2-gcc-12.1.0-4aoqas6ds4fztr6hvgkdsw5q54jejw2w:\
/daq/software/spack_packages/sbndaq-artdaq-core/v1_10_02/linux-scientific7-x86_64_v2-gcc-12.1.0-rsiojwkkslij6rf2qduyysaoc5apdsfm:\
/daq/software/spack_packages/redis/7.0.5/linux-scientific7-x86_64_v2-gcc-12.1.0-4upkrlnhprbjbi3tl4iyazvz3j3zhieh:\
/daq/software/spack_packages/libpqxx/7.6.0/linux-scientific7-x86_64_v2-gcc-12.1.0-cugqcnob2who6p3mt3uoljfxulrweidb:\
/daq/software/spack_packages/jsoncpp/1.9.5/linux-scientific7-x86_64_v2-gcc-12.1.0-touqunzsbrejo5bkcgd5tlffcnt54g2h:\
/daq/software/spack_packages/hiredis/1.1.0/linux-scientific7-x86_64_v2-gcc-12.1.0-bzojtnqbopxtj2ar4ejwtcjclm7kmawo:\
/daq/software/spack_packages/cppzmq/4.10.0/linux-scientific7-x86_64_v2-gcc-12.1.0-rqzdtnlug62azwd3p6rjdp3jgokbpyja:\
/daq/software/spack_packages/libzmq/4.3.5/linux-scientific7-x86_64_v2-gcc-12.1.0-riyrk4qj5ht2gdifl2z4drqxqpqcws4a:\
/daq/software/spack_packages/libsodium/1.0.19/linux-scientific7-x86_64_v2-gcc-12.1.0-atfcpmjkf5pprmcinsy7xe4ct5zkywji:\
/daq/software/spack_packages/caendigitizer/2.17.3/linux-scientific7-x86_64_v2-gcc-12.1.0-3wphtqnxxt45zxcwr7euwqzpti23ghy7:\
/daq/software/spack_packages/caencomm/1.7.0/linux-scientific7-x86_64_v2-gcc-12.1.0-ichi6z6rzqah6vxnxwcfyueqjvx5wdew:\
/daq/software/spack_packages/caenvmelib/4.0.1/linux-scientific7-x86_64_v2-gcc-12.1.0-frx5xfyem7nnlwdpmpju6sdklmxvoxbd:\
/daq/software/spack_packages/libusb/1.0.22/linux-scientific7-x86_64_v2-gcc-12.1.0-64k2zfhkurfr2sbnm4ocoh6eb5tkv7ma:\
/daq/software/spack_packages/gdb/14.2/linux-scientific7-x86_64_v2-gcc-12.1.0-n3m5lfs3o3ovdu7fi6yips46elt2znwn:\
/daq/software/spack_packages/source-highlight/3.1.9/linux-scientific7-x86_64_v2-gcc-12.1.0-3hqmtivuvqhvynrv7zvmg6hvgc63wf2m:\
/daq/software/spack_packages/mpfr/4.2.1/linux-scientific7-x86_64_v2-gcc-12.1.0-rnybyn7ldskgjaccnwlszb3n5mljcpxi:\
/daq/software/spack_packages/gmp/6.3.0/linux-scientific7-x86_64_v2-gcc-12.1.0-zbafjs6xcxlsuybdhwdpcljna62uxnj3:\
/daq/software/spack_packages/artdaq-suite/v3_13_02/linux-scientific7-x86_64_v2-gcc-12.1.0-wqpjx4hojsufkezsduh6t44gh4nffqlz:\
/daq/software/spack_packages/artdaq-epics-plugin/v1_06_00/linux-scientific7-x86_64_v2-gcc-12.1.0-ucdbmchqivtxs5gkcuftoyoj4i2hr2lz:\
/daq/software/spack_packages/epics-base/7.0.6.1/linux-scientific7-x86_64_v2-gcc-12.1.0-im4exal6z2e6zc7qlqnpp5vitzxp6zfx:\
/daq/software/spack_packages/artdaq-demo/v3_13_00/linux-scientific7-x86_64_v2-gcc-12.1.0-k7b6uwrt6inosl7ngyuy24dnwmhikhdg:\
/daq/software/spack_packages/artdaq-database/v1_10_00/linux-scientific7-x86_64_v2-gcc-12.1.0-ms2w47ygha7hepadfyzpzpid5j2z5jhv:\
/daq/software/spack_packages/artdaq-daqinterface/v3_14_00/linux-scientific7-x86_64_v2-gcc-12.1.0-zkfx2cp4neg5swa2534yua4u53qmg3v5:\
/daq/software/spack_packages/artdaq-core-demo/v1_11_00/linux-scientific7-x86_64_v2-gcc-12.1.0-wdm56kqxcs7bazfmmeszlzpjao4avi54:\
/daq/software/spack_packages/artdaq/v3_13_02/linux-scientific7-x86_64_v2-gcc-12.1.0-zytmanutaxka3u3cpw23zyfzmpduir6m:\
/daq/software/spack_packages/artdaq-utilities/v1_09_00/linux-scientific7-x86_64_v2-gcc-12.1.0-2cvjojbzfj3pkdnztuoglxvtd7ykrqc4:\
/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-scientific7-x86_64_v2-gcc-12.1.0-deqdsonhl2xdzwrnepaln4bvs6lkeppa:\
/daq/software/spack_packages/artdaq-core/v3_10_02/linux-scientific7-x86_64_v2-gcc-12.1.0-llry6efh7vsrn3bkgyvs7jq7pujxy6vo:\
/daq/software/spack_packages/trace/v3_17_11/linux-scientific7-x86_64_v2-gcc-12.1.0-p4ksodlm3w4vvcg4x2rvyfgo5sbktdk5:\
/daq/software/spack_packages/art-suite/s131/linux-scientific7-x86_64_v2-gcc-12.1.0-i55h3z2c2dlv2wqx5xvnte3277h64nhi:\
/daq/software/spack_packages/xrootd/5.5.5/linux-scientific7-x86_64_v2-gcc-12.1.0-auonbdoya6gkyswt7rvj4nmv52hxjrq6:\
/daq/software/spack_packages/json-c/0.16/linux-scientific7-x86_64_v2-gcc-12.1.0-5hsad4e5ylei5yqqe6tramufnatbtdij:\
/daq/software/spack_packages/pythia6/6.4.28/linux-scientific7-x86_64_v2-gcc-12.1.0-bmbhqdl6msjnjkijseiyw5sfxdol65xc:\
/daq/software/spack_packages/py-pybind11/2.10.4/linux-scientific7-x86_64_v2-gcc-12.1.0-hhvtlfrefnbbpl7nzp5mlisu2tawigj4:\
/daq/software/spack_packages/py-numpy/1.24.3/linux-scientific7-x86_64_v2-gcc-12.1.0-morbaimpqj36xaigrhjdw2rahsnwf2dd:\
/daq/software/spack_packages/py-setuptools/63.4.3/linux-scientific7-x86_64_v2-gcc-12.1.0-vhtmvdffpxe2nsb3qodvi5umsdmoq2rq:\
/daq/software/spack_packages/python-venv/1.0/linux-scientific7-x86_64_v2-gcc-12.1.0-mucja7ecrznkasf3oilxawysnzlorlfs:\
/daq/software/spack_packages/postgresql/15.2/linux-scientific7-x86_64_v2-gcc-12.1.0-b4hnwkxeumg5oroehbv32o55vuown25n:\
/daq/software/spack_packages/openblas/0.3.23/linux-scientific7-x86_64_v2-gcc-12.1.0-qz4k5sfkgceie7ptzt6haom52byndxje:\
/daq/software/spack_packages/fftw/3.3.10/linux-scientific7-x86_64_v2-gcc-12.1.0-ocfksiocx4zzddoue5qmkukpe5qz3622:\
/daq/software/spack_packages/openmpi/5.0.5/linux-scientific7-x86_64_v2-gcc-12.1.0-qakw2u6sdwwi5rqxxw4z2b2vraa336mt:\
/daq/software/spack_packages/pmix/5.0.2/linux-scientific7-x86_64_v2-gcc-12.1.0-22zvw7a5dm6nilylyu4slgpknjdh5cmb:\
/daq/software/spack_packages/openssh/9.8p1/linux-scientific7-x86_64_v2-gcc-12.1.0-26kep2mffyu2zdc5b5sba7jse563e2iz:\
/daq/software/spack_packages/krb5/1.21.2/linux-scientific7-x86_64_v2-gcc-12.1.0-em6zlxaf2kve67crubvsvkuipl4qu77d:\
/daq/software/spack_packages/numactl/2.0.14/linux-scientific7-x86_64_v2-gcc-12.1.0-7nphbr6jy2hnsffgh2fh7fgvzf6nvljl:\
/daq/software/spack_packages/libevent/2.1.12/linux-scientific7-x86_64_v2-gcc-12.1.0-wyqmp6srjnwc3lgmw3v4pbfiw6kaeoui:\
/daq/software/spack_packages/cetmodules/3.24.01/linux-scientific7-x86_64_v2-gcc-12.1.0-hjojlmt347ctmtissdmk4gpyzqqfjr4n:\
/daq/software/spack_packages/cmake/3.27.9/linux-scientific7-x86_64_v2-gcc-12.1.0-nxm7c3jbyrknp6oqgk4dhzclq6q2g4cm:\
/daq/software/spack_packages/gmake/4.4.1/linux-scientific7-x86_64_v2-gcc-12.1.0-dr5y72h5jk2nqboh5nzmwgjtah2es3wv:\
/daq/software/spack_packages/art-root-io/1.13.06/linux-scientific7-x86_64_v2-gcc-12.1.0-mbefczr5drn3dqzk2xhbctrc5bayzari:\
/daq/software/spack_packages/canvas-root-io/1.13.06/linux-scientific7-x86_64_v2-gcc-12.1.0-ywkp2yxsxeh2cd4szgtidobstxkyfcv3:\
/daq/software/spack_packages/root/6.28.12/linux-scientific7-x86_64_v2-gcc-12.1.0-swmoonki5hkyarfdpnfnvbhlfjhogqmk:\
/daq/software/spack_packages/xxhash/0.8.2/linux-scientific7-x86_64_v2-gcc-12.1.0-xxyiytvxl7yflvrfqhzhnvhwyymixquf:\
/daq/software/spack_packages/vdt/0.4.4/linux-scientific7-x86_64_v2-gcc-12.1.0-krnlfhjdqcx3idv6ivnrgliiqzuo7h2a:\
/daq/software/spack_packages/unuran/1.8.1/linux-scientific7-x86_64_v2-gcc-12.1.0-of72ar4ywp2a632md7d4n7ktqoiqsm6r:\
/daq/software/spack_packages/rngstreams/1.0.1/linux-scientific7-x86_64_v2-gcc-12.1.0-4dsvxeoocyadx7umrr6sn2ppnlefvbye:\
/daq/software/spack_packages/pcre/8.45/linux-scientific7-x86_64_v2-gcc-12.1.0-6kic36gnromxnxheawdfbqsa7z6pxndn:\
/daq/software/spack_packages/nlohmann-json/3.11.3/linux-scientific7-x86_64_v2-gcc-12.1.0-oxvqkrqa7o7km4vwo2fx4adexdb774vn:\
/daq/software/spack_packages/lz4/1.9.4/linux-scientific7-x86_64_v2-gcc-12.1.0-msa7bsz46xgfqlyumce736k2d7zymp6v:\
/daq/software/spack_packages/libxpm/3.5.17/linux-scientific7-x86_64_v2-gcc-12.1.0-7mewccckwey7tc6gazlpnl4dak6ocqx4:\
/daq/software/spack_packages/libxft/2.3.8/linux-scientific7-x86_64_v2-gcc-12.1.0-7ivjc5ytdmbgymmrwiyk7wcxjgrcemmi:\
/daq/software/spack_packages/gsl/2.7.1/linux-scientific7-x86_64_v2-gcc-12.1.0-qpbgmwp3lzazgbgq4ybzvphwtjhrujnw:\
/daq/software/spack_packages/glew/2.2.0/linux-scientific7-x86_64_v2-gcc-12.1.0-mbekx4eh3ibrjj5cpfhk67kbcf3doouk:\
/daq/software/spack_packages/gl2ps/1.4.2/linux-scientific7-x86_64_v2-gcc-12.1.0-qmzb2rapcaluwgggguq2rmn7bg6zt2op:\
/daq/software/spack_packages/ftgl/2.4.0/linux-scientific7-x86_64_v2-gcc-12.1.0-yvb6k3cv5p7sklsssyb3t2ejdhrcy3y5:\
/daq/software/spack_packages/mesa-glu/9.0.2/linux-scientific7-x86_64_v2-gcc-12.1.0-6iz5nlqxeyfgxwqrdfkaiewxexodkf37:\
/daq/software/spack_packages/glx/1.4/linux-scientific7-x86_64_v2-gcc-12.1.0-733etvtvxcjwzr3ub27xuzpjum2exysh:\
/daq/software/spack_packages/mesa/23.3.6/linux-scientific7-x86_64_v2-gcc-12.1.0-64ibmypaxhuk5vir3q4ym5uc4wqjjx5i:\
/daq/software/spack_packages/xrandr/1.5.2/linux-scientific7-x86_64_v2-gcc-12.1.0-tha3krd365ywswawslbg2ifwito42n4u:\
/daq/software/spack_packages/libxrandr/1.5.4/linux-scientific7-x86_64_v2-gcc-12.1.0-5gmtcevhmfpx36f74mdedc2zte7yvtek:\
/daq/software/spack_packages/randrproto/1.5.0/linux-scientific7-x86_64_v2-gcc-12.1.0-thzikeaxc2hhu6hjqravmmzxylsnpovw:\
/daq/software/spack_packages/llvm/17.0.6/linux-scientific7-x86_64_v2-gcc-12.1.0-cxiefdsy6tgjwnvratpxwnydfl3mgtid:\
/daq/software/spack_packages/swig/4.1.1/linux-scientific7-x86_64_v2-gcc-12.1.0-h67gbpa2esdn2u7w52xde7r7p6qxlf5y:\
/daq/software/spack_packages/lua/5.3.6/linux-scientific7-x86_64_v2-gcc-12.1.0-w4nr7su5egy34us3o2lnrpmb4nuyama5:\
/daq/software/spack_packages/unzip/6.0/linux-scientific7-x86_64_v2-gcc-12.1.0-jina5yavrgl6z7pxfdxeel2ijabtpbun:\
/daq/software/spack_packages/libedit/3.1-20230828/linux-scientific7-x86_64_v2-gcc-12.1.0-6dg26eh5ifkanboo4fyaspwazy3urgha:\
/daq/software/spack_packages/binutils/2.43.1/linux-scientific7-x86_64_v2-gcc-12.1.0-gcvuauajvm444ye4uknljw7rygj4ym3m:\
/daq/software/spack_packages/libxt/1.3.0/linux-scientific7-x86_64_v2-gcc-12.1.0-smwsco3o4wtbrmqiy2wdiaevjenqspfn:\
/daq/software/spack_packages/libunwind/1.6.2/linux-scientific7-x86_64_v2-gcc-12.1.0-ihnpmx3tq3sazabihb3hcurcqvtd63fc:\
/daq/software/spack_packages/glproto/1.4.17/linux-scientific7-x86_64_v2-gcc-12.1.0-okecztudxgb2dyn562xkdxr36odpv7ty:\
/daq/software/spack_packages/davix/0.8.1/linux-scientific7-x86_64_v2-gcc-12.1.0-bnlw5q2tixsqplp2y5a6ng7lbb2ljnua:\
/daq/software/spack_packages/art/3.14.04/linux-scientific7-x86_64_v2-gcc-12.1.0-d2yhoezbdyj4zxgu4um6kgtgxgrsgrdl:\
/daq/software/spack_packages/hep-concurrency/1.09.02/linux-scientific7-x86_64_v2-gcc-12.1.0-oqgze2jnpkagcrzjajs46yhmt62wzl42:\
/daq/software/spack_packages/canvas/3.16.04/linux-scientific7-x86_64_v2-gcc-12.1.0-cvj33ful4uwwrhqq5vst3srav73cuwo6:\
/daq/software/spack_packages/range-v3/0.12.0/linux-scientific7-x86_64_v2-gcc-12.1.0-okev72rqgkjxxf7w37azxhylynkbfsnx:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-scientific7-x86_64_v2-gcc-12.1.0-ttyj6yn4dn7x6dqq64akxvvaf6glmchn:\
/daq/software/spack_packages/catch2/3.3.2/linux-scientific7-x86_64_v2-gcc-12.1.0-dkuobbwoqp3infn7cujlmxrhpkr7rhnj:\
/daq/software/spack_packages/fhicl-cpp/4.18.04/linux-scientific7-x86_64_v2-gcc-12.1.0-yzixjcupgvc2ljr2swnwtiwljxushpfw:\
/daq/software/spack_packages/intel-tbb/2021.12.0/linux-scientific7-x86_64_v2-gcc-12.1.0-jlg6zlheamrqc5ab3hrivigj6vw3cuxb:\
/daq/software/spack_packages/hwloc/2.11.1/linux-scientific7-x86_64_v2-gcc-12.1.0-zh4kzgb3fbqwoezkb4c5whhscijryok2:\
/daq/software/spack_packages/libpciaccess/0.17/linux-scientific7-x86_64_v2-gcc-12.1.0-aiv4cjqed2p6gyqcqzzfr5gnxt5zcwbk:\
/daq/software/spack_packages/clhep/2.4.7.1/linux-scientific7-x86_64_v2-gcc-12.1.0-cuhwvj6hq2vygf3mony4nvugyqoh2scw:\
/daq/software/spack_packages/cetlib/3.18.02/linux-scientific7-x86_64_v2-gcc-12.1.0-4woz3e6trjkhdaljkmlsg2dbbewz2ejk:\
/daq/software/spack_packages/cetlib-except/1.09.01/linux-scientific7-x86_64_v2-gcc-12.1.0-67it2qhr7ckh443iq56w4qelsb5d2frj:\
/daq/software/spack_packages/boost/1.82.0/linux-scientific7-x86_64_v2-gcc-12.1.0-dp5ltsu7g7orpjgd5vfpv3oghdmtevgf:\
/daq/software/spack_packages/artdaq-runcontrol-gui/v1_03_05/linux-scientific7-x86_64_v2-gcc-12.1.0-ultmkhedtadfwwju37i5vq4bg24evu3l:\
/daq/software/spack_packages/xmlrpc-c/1.51.06/linux-scientific7-x86_64_v2-gcc-12.1.0-a2fiqh4pqa2l5klt5fimzzesmqtiisxd:\
/daq/software/spack_packages/curl/8.7.1/linux-scientific7-x86_64_v2-gcc-12.1.0-w22cuyquh3xignaei3l5p2ww7dbepbe5:\
/daq/software/spack_packages/nghttp2/1.62.0/linux-scientific7-x86_64_v2-gcc-12.1.0-cfuvxslmivkgbdn24ecolcxmfn5htiwl:\
/daq/software/spack_packages/qt/5.15.14/linux-scientific7-x86_64_v2-gcc-12.1.0-daowpwpvj6lxsodcfndi2ztkia7uhwy7:\
/daq/software/spack_packages/xcb-util-wm/0.4.2/linux-scientific7-x86_64_v2-gcc-12.1.0-gfkerzpo4qn3keo54y2oyh6j5kvdzwig:\
/daq/software/spack_packages/xcb-util-renderutil/0.3.10/linux-scientific7-x86_64_v2-gcc-12.1.0-f7mvx6u2iexpl3aqbupzt3besijm6q3j:\
/daq/software/spack_packages/xcb-util-keysyms/0.4.1/linux-scientific7-x86_64_v2-gcc-12.1.0-eqzkhyuegw3hvteo6bryj6jkswccmtbn:\
/daq/software/spack_packages/xcb-util-image/0.4.1/linux-scientific7-x86_64_v2-gcc-12.1.0-tuivhpngmoenlxug7h6bo7btcnnjrybr:\
/daq/software/spack_packages/xcb-util/0.4.1/linux-scientific7-x86_64_v2-gcc-12.1.0-7rc6rfvulolpbaachhl74pqhc5udwklc:\
/daq/software/spack_packages/libxrender/0.9.11/linux-scientific7-x86_64_v2-gcc-12.1.0-dvtw7rdfaus4syqrksgiw64desgfx4tc:\
/daq/software/spack_packages/renderproto/0.11.1/linux-scientific7-x86_64_v2-gcc-12.1.0-pwkmoamcq6bz7zen3k2tgflenze2wvk5:\
/daq/software/spack_packages/libxkbcommon/1.7.0/linux-scientific7-x86_64_v2-gcc-12.1.0-rgcosjxvya2yxwrgg4lgbvhopcgitkr4:\
/daq/software/spack_packages/xkbdata/1.0.1/linux-scientific7-x86_64_v2-gcc-12.1.0-4mpw4wexmh6pltg3ox73le5ipdivjvtu:\
/daq/software/spack_packages/util-macros/1.20.1/linux-scientific7-x86_64_v2-gcc-12.1.0-bgpgnvoabiikjfr6hjf34cvr4oj6x5b5:\
/daq/software/spack_packages/libxext/1.3.6/linux-scientific7-x86_64_v2-gcc-12.1.0-f564ksslagnfq3f2fucg3a3lcn5ha7wz:\
/daq/software/spack_packages/xextproto/7.3.0/linux-scientific7-x86_64_v2-gcc-12.1.0-y5bjckzsmi56ijewszfiiu4fs3jpxmyq:\
/daq/software/spack_packages/libx11/1.8.10/linux-scientific7-x86_64_v2-gcc-12.1.0-aa7aeodujtslhhjy7mdvllk33rm46n7q:\
/daq/software/spack_packages/libxcb/1.17.0/linux-scientific7-x86_64_v2-gcc-12.1.0-lsjskst5ntllcz7j6tykzsr7bjiru6rm:\
/daq/software/spack_packages/libxdmcp/1.1.5/linux-scientific7-x86_64_v2-gcc-12.1.0-xbkcmoxyyevels5kmzd44ouaixlfxpvb:\
/daq/software/spack_packages/libxau/1.0.11/linux-scientific7-x86_64_v2-gcc-12.1.0-sysciliizhsh5s5dq3legxyud6cf4qqs:\
/daq/software/spack_packages/libpthread-stubs/0.5/linux-scientific7-x86_64_v2-gcc-12.1.0-o62e4bthko45oy6qwaiohkga3tulpxss:\
/daq/software/spack_packages/kbproto/1.0.7/linux-scientific7-x86_64_v2-gcc-12.1.0-y6rzgxbr43nnqhu5ittkfj7465o2zhag:\
/daq/software/spack_packages/libsm/1.2.4/linux-scientific7-x86_64_v2-gcc-12.1.0-znvvt53tyskfuqeiwbqqi5ccz44ly65p:\
/daq/software/spack_packages/libice/1.1.1/linux-scientific7-x86_64_v2-gcc-12.1.0-s5b4nv7ac5ufujlewvpjugvcwrg5ltkn:\
/daq/software/spack_packages/xtrans/1.5.0/linux-scientific7-x86_64_v2-gcc-12.1.0-qr5uiimh3xomqxnee4tzjc65vqome64j:\
/daq/software/spack_packages/xproto/7.0.31/linux-scientific7-x86_64_v2-gcc-12.1.0-4hjuj4hygt3fe7pqfluqp7bcchyktjci:\
/daq/software/spack_packages/libmng/2.0.3/linux-scientific7-x86_64_v2-gcc-12.1.0-mhlhxa4bggncdmx5czxgtmkgalx352pu:\
/daq/software/spack_packages/lcms/2.16/linux-scientific7-x86_64_v2-gcc-12.1.0-3tnghqflbac5bodu6422k5jlmfo63ycj:\
/daq/software/spack_packages/libtiff/4.6.0/linux-scientific7-x86_64_v2-gcc-12.1.0-xc5mt4a25rz2oyyeiwnp6na6nosefb7a:\
/daq/software/spack_packages/libjpeg-turbo/3.0.3/linux-scientific7-x86_64_v2-gcc-12.1.0-ge6enkjwaglhemmd23suolifo6ft7jar:\
/daq/software/spack_packages/harfbuzz/9.0.0/linux-scientific7-x86_64_v2-gcc-12.1.0-nqgmjyna63gii2seser5cfrt3tcwelzw:\
/daq/software/spack_packages/icu4c/74.2/linux-scientific7-x86_64_v2-gcc-12.1.0-hx7xcu5eqd43rvql5pyivoqpzmyv553m:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-scientific7-x86_64_v2-gcc-12.1.0-tle2t4rpgum5grwhxxay34bhavx4enjt:\
/daq/software/spack_packages/cairo/1.16.0/linux-scientific7-x86_64_v2-gcc-12.1.0-eoa53pyovfxfesbgzsn6d6xbc2mbjhhy:\
/daq/software/spack_packages/pixman/0.42.2/linux-scientific7-x86_64_v2-gcc-12.1.0-ybaek5tpzwow4e2csud76cjbe7ueg6dq:\
/daq/software/spack_packages/glib/2.78.3/linux-scientific7-x86_64_v2-gcc-12.1.0-nydu3n5a7glusbazzxxrnups5pg5n3jc:\
/daq/software/spack_packages/python/3.9.15/linux-scientific7-x86_64_v2-gcc-12.1.0-yd3fzeinnf4dwx4qs5p6repjisdan3na:\
/daq/software/spack_packages/sqlite/3.40.1/linux-scientific7-x86_64_v2-gcc-12.1.0-jesi6midoxbzx6gzau73k5gw3ezipkqa:\
/daq/software/spack_packages/openssl/3.3.1/linux-scientific7-x86_64_v2-gcc-12.1.0-pnahsndzw3tng5h3e7sfxbotx4qojrmt:\
/daq/software/spack_packages/libxcrypt/4.4.35/linux-scientific7-x86_64_v2-gcc-12.1.0-spihkzwv5jfstgm5rtms5ptsscdkbezs:\
/daq/software/spack_packages/expat/2.6.2/linux-scientific7-x86_64_v2-gcc-12.1.0-z46oyt6spm4aav5ki7lszlk2uzdqbb2m:\
/daq/software/spack_packages/libbsd/0.12.2/linux-scientific7-x86_64_v2-gcc-12.1.0-a3ehnhixspxyphyctrhbg5v2rfek6pht:\
/daq/software/spack_packages/libmd/1.0.4/linux-scientific7-x86_64_v2-gcc-12.1.0-sn4b7oxrjxha7qqkizakpcdblddcik6k:\
/daq/software/spack_packages/perl/5.40.0/linux-scientific7-x86_64_v2-gcc-12.1.0-3hwqigpviek3jksk3rpgju2sxhgxgnr6:\
/daq/software/spack_packages/gdbm/1.23/linux-scientific7-x86_64_v2-gcc-12.1.0-bo3tsl2eogjombpbnnjesfdfkd344vxx:\
/daq/software/spack_packages/readline/8.2/linux-scientific7-x86_64_v2-gcc-12.1.0-iillh2ypzrvu4c3nefwel43mfb4ipzh2:\
/daq/software/spack_packages/berkeley-db/18.1.40/linux-scientific7-x86_64_v2-gcc-12.1.0-njklv32wsqg5adjkaz7rfwauhcklnol6:\
/daq/software/spack_packages/pcre2/10.43/linux-scientific7-x86_64_v2-gcc-12.1.0-x2g2zlo5iuodwlpy5ek76yze6qx23ike:\
/daq/software/spack_packages/libffi/3.4.6/linux-scientific7-x86_64_v2-gcc-12.1.0-vxupfcievnuhitsrfwtywyjtvja4xr7u:\
/daq/software/spack_packages/elfutils/0.191/linux-scientific7-x86_64_v2-gcc-12.1.0-c54axozvxrmtt42niydfdu77fs4chqcx:\
/daq/software/spack_packages/pkgconf/2.2.0/linux-scientific7-x86_64_v2-gcc-12.1.0-wgg5tbq4iqvgirxis52tkpuphalafqys:\
/daq/software/spack_packages/gettext/0.22.5/linux-scientific7-x86_64_v2-gcc-12.1.0-w4xo5yhez3g37rgjw2uwb3luvtm6mn6r:\
/daq/software/spack_packages/tar/1.34/linux-scientific7-x86_64_v2-gcc-12.1.0-e7supzf7yrivdejh37ohg3xmcai5pzn4:\
/daq/software/spack_packages/zstd/1.5.6/linux-scientific7-x86_64_v2-gcc-12.1.0-ltt2cbcwus2nwcyikb34oocgdn5gbay7:\
/daq/software/spack_packages/pigz/2.8/linux-scientific7-x86_64_v2-gcc-12.1.0-wjfsbc3sbgsvxwr5iajmmtblgajssu2k:\
/daq/software/spack_packages/ncurses/6.5/linux-scientific7-x86_64_v2-gcc-12.1.0-xkjsxxs2wu5m7gropdpr4hh5ptbdsmlw:\
/daq/software/spack_packages/fontconfig/2.15.0/linux-scientific7-x86_64_v2-gcc-12.1.0-gndwf3jaxsha77cau56jurmrk5fubabc:\
/daq/software/spack_packages/util-linux-uuid/2.40.2/linux-scientific7-x86_64_v2-gcc-12.1.0-cmghxau3amtlkosc2x5kpbnxrkplyul5:\
/daq/software/spack_packages/libxml2/2.9.12/linux-scientific7-x86_64_v2-gcc-12.1.0-af5cu7dmlj7zwl6nfj7fl5qpbsbwx6p3:\
/daq/software/spack_packages/xz/5.4.6/linux-scientific7-x86_64_v2-gcc-12.1.0-63uqskev6ph3q52qegolmbx44i5ixlzo:\
/daq/software/spack_packages/libiconv/1.17/linux-scientific7-x86_64_v2-gcc-12.1.0-caxm2klmmdcajkpgs2yokym2uzjfzj7d:\
/daq/software/spack_packages/freetype/2.13.2/linux-scientific7-x86_64_v2-gcc-12.1.0-kz6dxksefzz6yxfyywg2cq6rnt6lgm5r:\
/daq/software/spack_packages/libpng/1.6.39/linux-scientific7-x86_64_v2-gcc-12.1.0-wwu7hhl4lxdtmq5e2f2eimx2glha7vjg:\
/daq/software/spack_packages/zlib-ng/2.2.1/linux-scientific7-x86_64_v2-gcc-12.1.0-cn5n7kablf3hidmdmafspn3sikft2nem:\
/daq/software/spack_packages/bzip2/1.0.8/linux-scientific7-x86_64_v2-gcc-12.1.0-qrfia4en6qnnqqzbtped72hd35v7wj3o:\
/daq/software/spack_packages/font-util/1.4.1/linux-scientific7-x86_64_v2-gcc-12.1.0-z77drk3wiokdbereiqxgucmemazbd6yj:\
/daq/software/spack_packages/double-conversion/3.3.0/linux-scientific7-x86_64_v2-gcc-12.1.0-w7lkimegfp2pazhphf3aodpxtnwdkhl6:\
/daq/software/spack_packages/gcc-runtime/12.1.0/linux-scientific7-x86_64_v2-gcc-12.1.0-5q6qhr6zztifbsml5e6xqm6fpjnnsm5g

export CPPYY_API_PATH="none"

export CXX="/daq/software/spack_packages/llvm/17.0.6/linux-scientific7-x86_64_v2-gcc-12.1.0-cxiefdsy6tgjwnvratpxwnydfl3mgtid/bin/clang++"

export DAQINTERFACE_CONFIGURE_STATUS_CHECK_QUIET_TIME="60"

export DAQ_SETUP_SCRIPT="/home/nfs/sbnd/DAQ_SPACK_DevAreas/DAQ_2024-09-30_GAL_v1_10_02/srcs/sbndaq/sbn-fd/DAQInterface2/setup_sbn_artdaq.sh"

export DISABLE_SPACK_SETUP="True"

export EIB_CONFIG_PATH="/daq/software/spack_packages/wibtools/v1_10_02/linux-scientific7-x86_64_v2-gcc-12.1.0-4aoqas6ds4fztr6hvgkdsw5q54jejw2w/config"

export EPICS_BASE="/daq/software/spack_packages/epics-base/7.0.6.1/linux-scientific7-x86_64_v2-gcc-12.1.0-im4exal6z2e6zc7qlqnpp5vitzxp6zfx"

export EPICS_HOST_ARCH="linux-x86_64"

export FHICL_FILE_PATH=/daq/software/spack_packages/sbndaq/v1_10_02/linux-scientific7-x86_64_v2-gcc-12.1.0-j7n3ntis4g3rld4uwzc5kc5rrsgwwvw5/fcl:\
/daq/software/spack_packages/sbndaq-artdaq/v1_10_02/linux-scientific7-x86_64_v2-gcc-12.1.0-5ip7ufm375t5nceuowi7zjdgwidxw4mj/fcl:\
/daq/software/spack_packages/artdaq-epics-plugin/v1_06_00/linux-scientific7-x86_64_v2-gcc-12.1.0-ucdbmchqivtxs5gkcuftoyoj4i2hr2lz/fcl:\
/daq/software/spack_packages/artdaq-demo/v3_13_00/linux-scientific7-x86_64_v2-gcc-12.1.0-k7b6uwrt6inosl7ngyuy24dnwmhikhdg/fcl:\
/daq/software/spack_packages/artdaq-core-demo/v1_11_00/linux-scientific7-x86_64_v2-gcc-12.1.0-wdm56kqxcs7bazfmmeszlzpjao4avi54/fcl:\
/daq/software/spack_packages/artdaq/v3_13_02/linux-scientific7-x86_64_v2-gcc-12.1.0-zytmanutaxka3u3cpw23zyfzmpduir6m/fcl:\
/daq/software/spack_packages/artdaq-utilities/v1_09_00/linux-scientific7-x86_64_v2-gcc-12.1.0-2cvjojbzfj3pkdnztuoglxvtd7ykrqc4/fcl:\
/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-scientific7-x86_64_v2-gcc-12.1.0-deqdsonhl2xdzwrnepaln4bvs6lkeppa/fcl:\
/daq/software/spack_packages/artdaq-core/v3_10_02/linux-scientific7-x86_64_v2-gcc-12.1.0-llry6efh7vsrn3bkgyvs7jq7pujxy6vo/fcl

export FUNCNAME="export_environment_vars"

export GI_TYPELIB_PATH=/daq/software/spack_packages/harfbuzz/9.0.0/linux-scientific7-x86_64_v2-gcc-12.1.0-nqgmjyna63gii2seser5cfrt3tcwelzw/lib/girepository-1.0:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-scientific7-x86_64_v2-gcc-12.1.0-tle2t4rpgum5grwhxxay34bhavx4enjt/lib/girepository-1.0

export GSL_ROOT_DIR="/daq/software/spack_packages/gsl/2.7.1/linux-scientific7-x86_64_v2-gcc-12.1.0-qpbgmwp3lzazgbgq4ybzvphwtjhrujnw"

export LDSHARED

export LD_LIBRARY_PATH="/daq/software/spack_packages/canvas-root-io/1.13.06/linux-scientific7-x86_64_v2-gcc-12.1.0-ywkp2yxsxeh2cd4szgtidobstxkyfcv3/lib"

export LIBRARY_PATH

export LUA_CPATH="/daq/software/spack_packages/lua/5.3.6/linux-scientific7-x86_64_v2-gcc-12.1.0-w4nr7su5egy34us3o2lnrpmb4nuyama5/lib/lua/5.3/?.so"

export LUA_PATH="/daq/software/spack_packages/lua/5.3.6/linux-scientific7-x86_64_v2-gcc-12.1.0-w4nr7su5egy34us3o2lnrpmb4nuyama5/lib/lua/5.3/?/init.lua;/daq/software/spack_packages/lua/5.3.6/linux-scientific7-x86_64_v2-gcc-12.1.0-w4nr7su5egy34us3o2lnrpmb4nuyama5/lib/lua/5.3/?.lua;/daq/software/spack_packages/lua/5.3.6/linux-scientific7-x86_64_v2-gcc-12.1.0-w4nr7su5egy34us3o2lnrpmb4nuyama5/share/lua/5.3/?/init.lua;/daq/software/spack_packages/lua/5.3.6/linux-scientific7-x86_64_v2-gcc-12.1.0-w4nr7su5egy34us3o2lnrpmb4nuyama5/share/lua/5.3/?.lua"

export MANPATH=/daq/software/spack_packages/gdb/14.2/linux-scientific7-x86_64_v2-gcc-12.1.0-n3m5lfs3o3ovdu7fi6yips46elt2znwn/share/man:\
/daq/software/spack_packages/source-highlight/3.1.9/linux-scientific7-x86_64_v2-gcc-12.1.0-3hqmtivuvqhvynrv7zvmg6hvgc63wf2m/share/man:\
/daq/software/spack_packages/artdaq-epics-plugin/v1_06_00/linux-scientific7-x86_64_v2-gcc-12.1.0-ucdbmchqivtxs5gkcuftoyoj4i2hr2lz/share/man:\
/daq/software/spack_packages/artdaq-demo/v3_13_00/linux-scientific7-x86_64_v2-gcc-12.1.0-k7b6uwrt6inosl7ngyuy24dnwmhikhdg/share/man:\
/daq/software/spack_packages/artdaq-core-demo/v1_11_00/linux-scientific7-x86_64_v2-gcc-12.1.0-wdm56kqxcs7bazfmmeszlzpjao4avi54/share/man:\
/daq/software/spack_packages/artdaq/v3_13_02/linux-scientific7-x86_64_v2-gcc-12.1.0-zytmanutaxka3u3cpw23zyfzmpduir6m/share/man:\
/daq/software/spack_packages/artdaq-utilities/v1_09_00/linux-scientific7-x86_64_v2-gcc-12.1.0-2cvjojbzfj3pkdnztuoglxvtd7ykrqc4/share/man:\
/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-scientific7-x86_64_v2-gcc-12.1.0-deqdsonhl2xdzwrnepaln4bvs6lkeppa/share/man:\
/daq/software/spack_packages/xrootd/5.5.5/linux-scientific7-x86_64_v2-gcc-12.1.0-auonbdoya6gkyswt7rvj4nmv52hxjrq6/share/man:\
/daq/software/spack_packages/fftw/3.3.10/linux-scientific7-x86_64_v2-gcc-12.1.0-ocfksiocx4zzddoue5qmkukpe5qz3622/share/man:\
/daq/software/spack_packages/openmpi/5.0.5/linux-scientific7-x86_64_v2-gcc-12.1.0-qakw2u6sdwwi5rqxxw4z2b2vraa336mt/share/man:\
/daq/software/spack_packages/pmix/5.0.2/linux-scientific7-x86_64_v2-gcc-12.1.0-22zvw7a5dm6nilylyu4slgpknjdh5cmb/share/man:\
/daq/software/spack_packages/openssh/9.8p1/linux-scientific7-x86_64_v2-gcc-12.1.0-26kep2mffyu2zdc5b5sba7jse563e2iz/share/man:\
/daq/software/spack_packages/krb5/1.21.2/linux-scientific7-x86_64_v2-gcc-12.1.0-em6zlxaf2kve67crubvsvkuipl4qu77d/share/man:\
/daq/software/spack_packages/numactl/2.0.14/linux-scientific7-x86_64_v2-gcc-12.1.0-7nphbr6jy2hnsffgh2fh7fgvzf6nvljl/share/man:\
/daq/software/spack_packages/root/6.28.12/linux-scientific7-x86_64_v2-gcc-12.1.0-swmoonki5hkyarfdpnfnvbhlfjhogqmk/share/man:\
/daq/software/spack_packages/xxhash/0.8.2/linux-scientific7-x86_64_v2-gcc-12.1.0-xxyiytvxl7yflvrfqhzhnvhwyymixquf/share/man:\
/daq/software/spack_packages/pcre/8.45/linux-scientific7-x86_64_v2-gcc-12.1.0-6kic36gnromxnxheawdfbqsa7z6pxndn/share/man:\
/daq/software/spack_packages/lz4/1.9.4/linux-scientific7-x86_64_v2-gcc-12.1.0-msa7bsz46xgfqlyumce736k2d7zymp6v/share/man:\
/daq/software/spack_packages/libxpm/3.5.17/linux-scientific7-x86_64_v2-gcc-12.1.0-7mewccckwey7tc6gazlpnl4dak6ocqx4/share/man:\
/daq/software/spack_packages/libxft/2.3.8/linux-scientific7-x86_64_v2-gcc-12.1.0-7ivjc5ytdmbgymmrwiyk7wcxjgrcemmi/share/man:\
/daq/software/spack_packages/gsl/2.7.1/linux-scientific7-x86_64_v2-gcc-12.1.0-qpbgmwp3lzazgbgq4ybzvphwtjhrujnw/share/man:\
/daq/software/spack_packages/xrandr/1.5.2/linux-scientific7-x86_64_v2-gcc-12.1.0-tha3krd365ywswawslbg2ifwito42n4u/share/man:\
/daq/software/spack_packages/libxrandr/1.5.4/linux-scientific7-x86_64_v2-gcc-12.1.0-5gmtcevhmfpx36f74mdedc2zte7yvtek/share/man:\
/daq/software/spack_packages/llvm/17.0.6/linux-scientific7-x86_64_v2-gcc-12.1.0-cxiefdsy6tgjwnvratpxwnydfl3mgtid/share/man:\
/daq/software/spack_packages/lua/5.3.6/linux-scientific7-x86_64_v2-gcc-12.1.0-w4nr7su5egy34us3o2lnrpmb4nuyama5/man:\
/daq/software/spack_packages/unzip/6.0/linux-scientific7-x86_64_v2-gcc-12.1.0-jina5yavrgl6z7pxfdxeel2ijabtpbun/man:\
/daq/software/spack_packages/libedit/3.1-20230828/linux-scientific7-x86_64_v2-gcc-12.1.0-6dg26eh5ifkanboo4fyaspwazy3urgha/share/man:\
/daq/software/spack_packages/binutils/2.43.1/linux-scientific7-x86_64_v2-gcc-12.1.0-gcvuauajvm444ye4uknljw7rygj4ym3m/share/man:\
/daq/software/spack_packages/libxt/1.3.0/linux-scientific7-x86_64_v2-gcc-12.1.0-smwsco3o4wtbrmqiy2wdiaevjenqspfn/share/man:\
/daq/software/spack_packages/davix/0.8.1/linux-scientific7-x86_64_v2-gcc-12.1.0-bnlw5q2tixsqplp2y5a6ng7lbb2ljnua/share/man:\
/daq/software/spack_packages/hwloc/2.11.1/linux-scientific7-x86_64_v2-gcc-12.1.0-zh4kzgb3fbqwoezkb4c5whhscijryok2/share/man:\
/daq/software/spack_packages/xmlrpc-c/1.51.06/linux-scientific7-x86_64_v2-gcc-12.1.0-a2fiqh4pqa2l5klt5fimzzesmqtiisxd/share/man:\
/daq/software/spack_packages/curl/8.7.1/linux-scientific7-x86_64_v2-gcc-12.1.0-w22cuyquh3xignaei3l5p2ww7dbepbe5/share/man:\
/daq/software/spack_packages/nghttp2/1.62.0/linux-scientific7-x86_64_v2-gcc-12.1.0-cfuvxslmivkgbdn24ecolcxmfn5htiwl/share/man:\
/daq/software/spack_packages/libxkbcommon/1.7.0/linux-scientific7-x86_64_v2-gcc-12.1.0-rgcosjxvya2yxwrgg4lgbvhopcgitkr4/share/man:\
/daq/software/spack_packages/libxext/1.3.6/linux-scientific7-x86_64_v2-gcc-12.1.0-f564ksslagnfq3f2fucg3a3lcn5ha7wz/share/man:\
/daq/software/spack_packages/libx11/1.8.10/linux-scientific7-x86_64_v2-gcc-12.1.0-aa7aeodujtslhhjy7mdvllk33rm46n7q/share/man:\
/daq/software/spack_packages/libxcb/1.17.0/linux-scientific7-x86_64_v2-gcc-12.1.0-lsjskst5ntllcz7j6tykzsr7bjiru6rm/share/man:\
/daq/software/spack_packages/libxau/1.0.11/linux-scientific7-x86_64_v2-gcc-12.1.0-sysciliizhsh5s5dq3legxyud6cf4qqs/share/man:\
/daq/software/spack_packages/lcms/2.16/linux-scientific7-x86_64_v2-gcc-12.1.0-3tnghqflbac5bodu6422k5jlmfo63ycj/share/man:\
/daq/software/spack_packages/libjpeg-turbo/3.0.3/linux-scientific7-x86_64_v2-gcc-12.1.0-ge6enkjwaglhemmd23suolifo6ft7jar/share/man:\
/daq/software/spack_packages/icu4c/74.2/linux-scientific7-x86_64_v2-gcc-12.1.0-hx7xcu5eqd43rvql5pyivoqpzmyv553m/share/man:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-scientific7-x86_64_v2-gcc-12.1.0-tle2t4rpgum5grwhxxay34bhavx4enjt/share/man:\
/daq/software/spack_packages/python/3.9.15/linux-scientific7-x86_64_v2-gcc-12.1.0-yd3fzeinnf4dwx4qs5p6repjisdan3na/share/man:\
/daq/software/spack_packages/sqlite/3.40.1/linux-scientific7-x86_64_v2-gcc-12.1.0-jesi6midoxbzx6gzau73k5gw3ezipkqa/share/man:\
/daq/software/spack_packages/libxcrypt/4.4.35/linux-scientific7-x86_64_v2-gcc-12.1.0-spihkzwv5jfstgm5rtms5ptsscdkbezs/share/man:\
/daq/software/spack_packages/expat/2.6.2/linux-scientific7-x86_64_v2-gcc-12.1.0-z46oyt6spm4aav5ki7lszlk2uzdqbb2m/share/man:\
/daq/software/spack_packages/libbsd/0.12.2/linux-scientific7-x86_64_v2-gcc-12.1.0-a3ehnhixspxyphyctrhbg5v2rfek6pht/share/man:\
/daq/software/spack_packages/libmd/1.0.4/linux-scientific7-x86_64_v2-gcc-12.1.0-sn4b7oxrjxha7qqkizakpcdblddcik6k/share/man:\
/daq/software/spack_packages/perl/5.40.0/linux-scientific7-x86_64_v2-gcc-12.1.0-3hwqigpviek3jksk3rpgju2sxhgxgnr6/man:\
/daq/software/spack_packages/gdbm/1.23/linux-scientific7-x86_64_v2-gcc-12.1.0-bo3tsl2eogjombpbnnjesfdfkd344vxx/share/man:\
/daq/software/spack_packages/readline/8.2/linux-scientific7-x86_64_v2-gcc-12.1.0-iillh2ypzrvu4c3nefwel43mfb4ipzh2/share/man:\
/daq/software/spack_packages/pcre2/10.43/linux-scientific7-x86_64_v2-gcc-12.1.0-x2g2zlo5iuodwlpy5ek76yze6qx23ike/share/man:\
/daq/software/spack_packages/libffi/3.4.6/linux-scientific7-x86_64_v2-gcc-12.1.0-vxupfcievnuhitsrfwtywyjtvja4xr7u/share/man:\
/daq/software/spack_packages/elfutils/0.191/linux-scientific7-x86_64_v2-gcc-12.1.0-c54axozvxrmtt42niydfdu77fs4chqcx/share/man:\
/daq/software/spack_packages/pkgconf/2.2.0/linux-scientific7-x86_64_v2-gcc-12.1.0-wgg5tbq4iqvgirxis52tkpuphalafqys/share/man:\
/daq/software/spack_packages/gettext/0.22.5/linux-scientific7-x86_64_v2-gcc-12.1.0-w4xo5yhez3g37rgjw2uwb3luvtm6mn6r/share/man:\
/daq/software/spack_packages/tar/1.34/linux-scientific7-x86_64_v2-gcc-12.1.0-e7supzf7yrivdejh37ohg3xmcai5pzn4/share/man:\
/daq/software/spack_packages/zstd/1.5.6/linux-scientific7-x86_64_v2-gcc-12.1.0-ltt2cbcwus2nwcyikb34oocgdn5gbay7/share/man:\
/daq/software/spack_packages/pigz/2.8/linux-scientific7-x86_64_v2-gcc-12.1.0-wjfsbc3sbgsvxwr5iajmmtblgajssu2k/man:\
/daq/software/spack_packages/util-linux-uuid/2.40.2/linux-scientific7-x86_64_v2-gcc-12.1.0-cmghxau3amtlkosc2x5kpbnxrkplyul5/share/man:\
/daq/software/spack_packages/libxml2/2.9.12/linux-scientific7-x86_64_v2-gcc-12.1.0-af5cu7dmlj7zwl6nfj7fl5qpbsbwx6p3/share/man:\
/daq/software/spack_packages/xz/5.4.6/linux-scientific7-x86_64_v2-gcc-12.1.0-63uqskev6ph3q52qegolmbx44i5ixlzo/share/man:\
/daq/software/spack_packages/libiconv/1.17/linux-scientific7-x86_64_v2-gcc-12.1.0-caxm2klmmdcajkpgs2yokym2uzjfzj7d/share/man:\
/daq/software/spack_packages/freetype/2.13.2/linux-scientific7-x86_64_v2-gcc-12.1.0-kz6dxksefzz6yxfyywg2cq6rnt6lgm5r/share/man:\
/daq/software/spack_packages/libpng/1.6.39/linux-scientific7-x86_64_v2-gcc-12.1.0-wwu7hhl4lxdtmq5e2f2eimx2glha7vjg/share/man:\
/daq/software/spack_packages/zlib-ng/2.2.1/linux-scientific7-x86_64_v2-gcc-12.1.0-cn5n7kablf3hidmdmafspn3sikft2nem/share/man:\
/daq/software/spack_packages/bzip2/1.0.8/linux-scientific7-x86_64_v2-gcc-12.1.0-qrfia4en6qnnqqzbtped72hd35v7wj3o/man:\
/daq/software/spack_packages/font-util/1.4.1/linux-scientific7-x86_64_v2-gcc-12.1.0-z77drk3wiokdbereiqxgucmemazbd6yj/share/man:\
/usr/share/man:\
/usr/man

export MPICC="/daq/software/spack_packages/openmpi/5.0.5/linux-scientific7-x86_64_v2-gcc-12.1.0-qakw2u6sdwwi5rqxxw4z2b2vraa336mt/bin/mpicc"

export MPICXX="/daq/software/spack_packages/openmpi/5.0.5/linux-scientific7-x86_64_v2-gcc-12.1.0-qakw2u6sdwwi5rqxxw4z2b2vraa336mt/bin/mpic++"

export MPIF77="/daq/software/spack_packages/openmpi/5.0.5/linux-scientific7-x86_64_v2-gcc-12.1.0-qakw2u6sdwwi5rqxxw4z2b2vraa336mt/bin/mpif77"

export MPIF90="/daq/software/spack_packages/openmpi/5.0.5/linux-scientific7-x86_64_v2-gcc-12.1.0-qakw2u6sdwwi5rqxxw4z2b2vraa336mt/bin/mpif90"

export MPIFC="/daq/software/spack_packages/openmpi/5.0.5/linux-scientific7-x86_64_v2-gcc-12.1.0-qakw2u6sdwwi5rqxxw4z2b2vraa336mt/bin/mpifort"

export MRB_QUALS="both"

export MULTICAST_INTERFACE_IP_TO_USE="192.168.191.0"

export OLDPWD="/home/nfs/sbnd"

export OS_NAME="scientific7"

export PATH=/daq/software/spack_packages/epics-base/7.0.6.1/linux-scientific7-x86_64_v2-gcc-12.1.0-im4exal6z2e6zc7qlqnpp5vitzxp6zfx/bin/linux-x86_64:\
/daq/software/spack_packages/trace/v3_17_11/linux-scientific7-x86_64_v2-gcc-12.1.0-p4ksodlm3w4vvcg4x2rvyfgo5sbktdk5/bin:\
/daq/software/spack_packages/python-venv/1.0/linux-scientific7-x86_64_v2-gcc-12.1.0-mucja7ecrznkasf3oilxawysnzlorlfs/bin:\
/daq/software/spack_packages/openssh/9.8p1/linux-scientific7-x86_64_v2-gcc-12.1.0-26kep2mffyu2zdc5b5sba7jse563e2iz/bin:\
/daq/software/spack_packages/cmake/3.27.9/linux-scientific7-x86_64_v2-gcc-12.1.0-nxm7c3jbyrknp6oqgk4dhzclq6q2g4cm/bin:\
/daq/software/spack_packages/unzip/6.0/linux-scientific7-x86_64_v2-gcc-12.1.0-jina5yavrgl6z7pxfdxeel2ijabtpbun/bin:\
/daq/software/spack_packages/curl/8.7.1/linux-scientific7-x86_64_v2-gcc-12.1.0-w22cuyquh3xignaei3l5p2ww7dbepbe5/bin:\
/daq/software/spack_packages/python/3.9.15/linux-scientific7-x86_64_v2-gcc-12.1.0-yd3fzeinnf4dwx4qs5p6repjisdan3na/bin:\
/daq/software/spack_packages/sqlite/3.40.1/linux-scientific7-x86_64_v2-gcc-12.1.0-jesi6midoxbzx6gzau73k5gw3ezipkqa/bin:\
/daq/software/spack_packages/perl/5.40.0/linux-scientific7-x86_64_v2-gcc-12.1.0-3hwqigpviek3jksk3rpgju2sxhgxgnr6/bin:\
/daq/software/spack_packages/tar/1.34/linux-scientific7-x86_64_v2-gcc-12.1.0-e7supzf7yrivdejh37ohg3xmcai5pzn4/bin:\
/daq/software/spack_packages/zstd/1.5.6/linux-scientific7-x86_64_v2-gcc-12.1.0-ltt2cbcwus2nwcyikb34oocgdn5gbay7/bin:\
/daq/software/spack_packages/pigz/2.8/linux-scientific7-x86_64_v2-gcc-12.1.0-wjfsbc3sbgsvxwr5iajmmtblgajssu2k/bin:\
/daq/software/spack_packages/xz/5.4.6/linux-scientific7-x86_64_v2-gcc-12.1.0-63uqskev6ph3q52qegolmbx44i5ixlzo/bin:\
/daq/software/spack_packages/bzip2/1.0.8/linux-scientific7-x86_64_v2-gcc-12.1.0-qrfia4en6qnnqqzbtped72hd35v7wj3o/bin:\
/daq/software/spack_packages/sbndaq/v1_10_02/linux-scientific7-x86_64_v2-gcc-12.1.0-j7n3ntis4g3rld4uwzc5kc5rrsgwwvw5/bin:\
/daq/software/spack_packages/sbndaq-artdaq/v1_10_02/linux-scientific7-x86_64_v2-gcc-12.1.0-5ip7ufm375t5nceuowi7zjdgwidxw4mj/bin:\
/daq/software/spack_packages/wibtools/v1_10_02/linux-scientific7-x86_64_v2-gcc-12.1.0-4aoqas6ds4fztr6hvgkdsw5q54jejw2w/bin:\
/daq/software/spack_packages/redis/7.0.5/linux-scientific7-x86_64_v2-gcc-12.1.0-4upkrlnhprbjbi3tl4iyazvz3j3zhieh/bin:\
/daq/software/spack_packages/libzmq/4.3.5/linux-scientific7-x86_64_v2-gcc-12.1.0-riyrk4qj5ht2gdifl2z4drqxqpqcws4a/bin:\
/daq/software/spack_packages/gdb/14.2/linux-scientific7-x86_64_v2-gcc-12.1.0-n3m5lfs3o3ovdu7fi6yips46elt2znwn/bin:\
/daq/software/spack_packages/source-highlight/3.1.9/linux-scientific7-x86_64_v2-gcc-12.1.0-3hqmtivuvqhvynrv7zvmg6hvgc63wf2m/bin:\
/daq/software/spack_packages/artdaq-epics-plugin/v1_06_00/linux-scientific7-x86_64_v2-gcc-12.1.0-ucdbmchqivtxs5gkcuftoyoj4i2hr2lz/bin:\
/daq/software/spack_packages/epics-base/7.0.6.1/linux-scientific7-x86_64_v2-gcc-12.1.0-im4exal6z2e6zc7qlqnpp5vitzxp6zfx/bin:\
/daq/software/spack_packages/artdaq-demo/v3_13_00/linux-scientific7-x86_64_v2-gcc-12.1.0-k7b6uwrt6inosl7ngyuy24dnwmhikhdg/bin:\
/daq/software/spack_packages/artdaq-database/v1_10_00/linux-scientific7-x86_64_v2-gcc-12.1.0-ms2w47ygha7hepadfyzpzpid5j2z5jhv/bin:\
/daq/software/spack_packages/artdaq-daqinterface/v3_14_00/linux-scientific7-x86_64_v2-gcc-12.1.0-zkfx2cp4neg5swa2534yua4u53qmg3v5/bin:\
/daq/software/spack_packages/artdaq/v3_13_02/linux-scientific7-x86_64_v2-gcc-12.1.0-zytmanutaxka3u3cpw23zyfzmpduir6m/bin:\
/daq/software/spack_packages/artdaq-utilities/v1_09_00/linux-scientific7-x86_64_v2-gcc-12.1.0-2cvjojbzfj3pkdnztuoglxvtd7ykrqc4/bin:\
/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-scientific7-x86_64_v2-gcc-12.1.0-deqdsonhl2xdzwrnepaln4bvs6lkeppa/bin:\
/daq/software/spack_packages/xrootd/5.5.5/linux-scientific7-x86_64_v2-gcc-12.1.0-auonbdoya6gkyswt7rvj4nmv52hxjrq6/bin:\
/daq/software/spack_packages/py-pybind11/2.10.4/linux-scientific7-x86_64_v2-gcc-12.1.0-hhvtlfrefnbbpl7nzp5mlisu2tawigj4/bin:\
/daq/software/spack_packages/py-numpy/1.24.3/linux-scientific7-x86_64_v2-gcc-12.1.0-morbaimpqj36xaigrhjdw2rahsnwf2dd/bin:\
/daq/software/spack_packages/postgresql/15.2/linux-scientific7-x86_64_v2-gcc-12.1.0-b4hnwkxeumg5oroehbv32o55vuown25n/bin:\
/daq/software/spack_packages/openblas/0.3.23/linux-scientific7-x86_64_v2-gcc-12.1.0-qz4k5sfkgceie7ptzt6haom52byndxje/bin:\
/daq/software/spack_packages/fftw/3.3.10/linux-scientific7-x86_64_v2-gcc-12.1.0-ocfksiocx4zzddoue5qmkukpe5qz3622/bin:\
/daq/software/spack_packages/openmpi/5.0.5/linux-scientific7-x86_64_v2-gcc-12.1.0-qakw2u6sdwwi5rqxxw4z2b2vraa336mt/bin:\
/daq/software/spack_packages/pmix/5.0.2/linux-scientific7-x86_64_v2-gcc-12.1.0-22zvw7a5dm6nilylyu4slgpknjdh5cmb/bin:\
/daq/software/spack_packages/krb5/1.21.2/linux-scientific7-x86_64_v2-gcc-12.1.0-em6zlxaf2kve67crubvsvkuipl4qu77d/bin:\
/daq/software/spack_packages/numactl/2.0.14/linux-scientific7-x86_64_v2-gcc-12.1.0-7nphbr6jy2hnsffgh2fh7fgvzf6nvljl/bin:\
/daq/software/spack_packages/libevent/2.1.12/linux-scientific7-x86_64_v2-gcc-12.1.0-wyqmp6srjnwc3lgmw3v4pbfiw6kaeoui/bin:\
/daq/software/spack_packages/cetmodules/3.24.01/linux-scientific7-x86_64_v2-gcc-12.1.0-hjojlmt347ctmtissdmk4gpyzqqfjr4n/bin:\
/daq/software/spack_packages/gmake/4.4.1/linux-scientific7-x86_64_v2-gcc-12.1.0-dr5y72h5jk2nqboh5nzmwgjtah2es3wv/bin:\
/daq/software/spack_packages/art-root-io/1.13.06/linux-scientific7-x86_64_v2-gcc-12.1.0-mbefczr5drn3dqzk2xhbctrc5bayzari/bin:\
/daq/software/spack_packages/root/6.28.12/linux-scientific7-x86_64_v2-gcc-12.1.0-swmoonki5hkyarfdpnfnvbhlfjhogqmk/bin:\
/daq/software/spack_packages/xxhash/0.8.2/linux-scientific7-x86_64_v2-gcc-12.1.0-xxyiytvxl7yflvrfqhzhnvhwyymixquf/bin:\
/daq/software/spack_packages/pcre/8.45/linux-scientific7-x86_64_v2-gcc-12.1.0-6kic36gnromxnxheawdfbqsa7z6pxndn/bin:\
/daq/software/spack_packages/lz4/1.9.4/linux-scientific7-x86_64_v2-gcc-12.1.0-msa7bsz46xgfqlyumce736k2d7zymp6v/bin:\
/daq/software/spack_packages/libxpm/3.5.17/linux-scientific7-x86_64_v2-gcc-12.1.0-7mewccckwey7tc6gazlpnl4dak6ocqx4/bin:\
/daq/software/spack_packages/gsl/2.7.1/linux-scientific7-x86_64_v2-gcc-12.1.0-qpbgmwp3lzazgbgq4ybzvphwtjhrujnw/bin:\
/daq/software/spack_packages/glew/2.2.0/linux-scientific7-x86_64_v2-gcc-12.1.0-mbekx4eh3ibrjj5cpfhk67kbcf3doouk/bin:\
/daq/software/spack_packages/xrandr/1.5.2/linux-scientific7-x86_64_v2-gcc-12.1.0-tha3krd365ywswawslbg2ifwito42n4u/bin:\
/daq/software/spack_packages/llvm/17.0.6/linux-scientific7-x86_64_v2-gcc-12.1.0-cxiefdsy6tgjwnvratpxwnydfl3mgtid/bin:\
/daq/software/spack_packages/swig/4.1.1/linux-scientific7-x86_64_v2-gcc-12.1.0-h67gbpa2esdn2u7w52xde7r7p6qxlf5y/bin:\
/daq/software/spack_packages/lua/5.3.6/linux-scientific7-x86_64_v2-gcc-12.1.0-w4nr7su5egy34us3o2lnrpmb4nuyama5/bin:\
/daq/software/spack_packages/binutils/2.43.1/linux-scientific7-x86_64_v2-gcc-12.1.0-gcvuauajvm444ye4uknljw7rygj4ym3m/bin:\
/daq/software/spack_packages/davix/0.8.1/linux-scientific7-x86_64_v2-gcc-12.1.0-bnlw5q2tixsqplp2y5a6ng7lbb2ljnua/bin:\
/daq/software/spack_packages/art/3.14.04/linux-scientific7-x86_64_v2-gcc-12.1.0-d2yhoezbdyj4zxgu4um6kgtgxgrsgrdl/bin:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-scientific7-x86_64_v2-gcc-12.1.0-ttyj6yn4dn7x6dqq64akxvvaf6glmchn/bin:\
/daq/software/spack_packages/fhicl-cpp/4.18.04/linux-scientific7-x86_64_v2-gcc-12.1.0-yzixjcupgvc2ljr2swnwtiwljxushpfw/bin:\
/daq/software/spack_packages/hwloc/2.11.1/linux-scientific7-x86_64_v2-gcc-12.1.0-zh4kzgb3fbqwoezkb4c5whhscijryok2/bin:\
/daq/software/spack_packages/clhep/2.4.7.1/linux-scientific7-x86_64_v2-gcc-12.1.0-cuhwvj6hq2vygf3mony4nvugyqoh2scw/bin:\
/daq/software/spack_packages/cetlib/3.18.02/linux-scientific7-x86_64_v2-gcc-12.1.0-4woz3e6trjkhdaljkmlsg2dbbewz2ejk/bin:\
/daq/software/spack_packages/artdaq-runcontrol-gui/v1_03_05/linux-scientific7-x86_64_v2-gcc-12.1.0-ultmkhedtadfwwju37i5vq4bg24evu3l/bin:\
/daq/software/spack_packages/xmlrpc-c/1.51.06/linux-scientific7-x86_64_v2-gcc-12.1.0-a2fiqh4pqa2l5klt5fimzzesmqtiisxd/bin:\
/daq/software/spack_packages/nghttp2/1.62.0/linux-scientific7-x86_64_v2-gcc-12.1.0-cfuvxslmivkgbdn24ecolcxmfn5htiwl/bin:\
/daq/software/spack_packages/qt/5.15.14/linux-scientific7-x86_64_v2-gcc-12.1.0-daowpwpvj6lxsodcfndi2ztkia7uhwy7/bin:\
/daq/software/spack_packages/libxkbcommon/1.7.0/linux-scientific7-x86_64_v2-gcc-12.1.0-rgcosjxvya2yxwrgg4lgbvhopcgitkr4/bin:\
/daq/software/spack_packages/lcms/2.16/linux-scientific7-x86_64_v2-gcc-12.1.0-3tnghqflbac5bodu6422k5jlmfo63ycj/bin:\
/daq/software/spack_packages/libtiff/4.6.0/linux-scientific7-x86_64_v2-gcc-12.1.0-xc5mt4a25rz2oyyeiwnp6na6nosefb7a/bin:\
/daq/software/spack_packages/libjpeg-turbo/3.0.3/linux-scientific7-x86_64_v2-gcc-12.1.0-ge6enkjwaglhemmd23suolifo6ft7jar/bin:\
/daq/software/spack_packages/harfbuzz/9.0.0/linux-scientific7-x86_64_v2-gcc-12.1.0-nqgmjyna63gii2seser5cfrt3tcwelzw/bin:\
/daq/software/spack_packages/icu4c/74.2/linux-scientific7-x86_64_v2-gcc-12.1.0-hx7xcu5eqd43rvql5pyivoqpzmyv553m/bin:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-scientific7-x86_64_v2-gcc-12.1.0-tle2t4rpgum5grwhxxay34bhavx4enjt/bin:\
/daq/software/spack_packages/cairo/1.16.0/linux-scientific7-x86_64_v2-gcc-12.1.0-eoa53pyovfxfesbgzsn6d6xbc2mbjhhy/bin:\
/daq/software/spack_packages/glib/2.78.3/linux-scientific7-x86_64_v2-gcc-12.1.0-nydu3n5a7glusbazzxxrnups5pg5n3jc/bin:\
/daq/software/spack_packages/openssl/3.3.1/linux-scientific7-x86_64_v2-gcc-12.1.0-pnahsndzw3tng5h3e7sfxbotx4qojrmt/bin:\
/daq/software/spack_packages/expat/2.6.2/linux-scientific7-x86_64_v2-gcc-12.1.0-z46oyt6spm4aav5ki7lszlk2uzdqbb2m/bin:\
/daq/software/spack_packages/gdbm/1.23/linux-scientific7-x86_64_v2-gcc-12.1.0-bo3tsl2eogjombpbnnjesfdfkd344vxx/bin:\
/daq/software/spack_packages/readline/8.2/linux-scientific7-x86_64_v2-gcc-12.1.0-iillh2ypzrvu4c3nefwel43mfb4ipzh2/bin:\
/daq/software/spack_packages/berkeley-db/18.1.40/linux-scientific7-x86_64_v2-gcc-12.1.0-njklv32wsqg5adjkaz7rfwauhcklnol6/bin:\
/daq/software/spack_packages/pcre2/10.43/linux-scientific7-x86_64_v2-gcc-12.1.0-x2g2zlo5iuodwlpy5ek76yze6qx23ike/bin:\
/daq/software/spack_packages/elfutils/0.191/linux-scientific7-x86_64_v2-gcc-12.1.0-c54axozvxrmtt42niydfdu77fs4chqcx/bin:\
/daq/software/spack_packages/pkgconf/2.2.0/linux-scientific7-x86_64_v2-gcc-12.1.0-wgg5tbq4iqvgirxis52tkpuphalafqys/bin:\
/daq/software/spack_packages/gettext/0.22.5/linux-scientific7-x86_64_v2-gcc-12.1.0-w4xo5yhez3g37rgjw2uwb3luvtm6mn6r/bin:\
/daq/software/spack_packages/ncurses/6.5/linux-scientific7-x86_64_v2-gcc-12.1.0-xkjsxxs2wu5m7gropdpr4hh5ptbdsmlw/bin:\
/daq/software/spack_packages/fontconfig/2.15.0/linux-scientific7-x86_64_v2-gcc-12.1.0-gndwf3jaxsha77cau56jurmrk5fubabc/bin:\
/daq/software/spack_packages/util-linux-uuid/2.40.2/linux-scientific7-x86_64_v2-gcc-12.1.0-cmghxau3amtlkosc2x5kpbnxrkplyul5/bin:\
/daq/software/spack_packages/libxml2/2.9.12/linux-scientific7-x86_64_v2-gcc-12.1.0-af5cu7dmlj7zwl6nfj7fl5qpbsbwx6p3/bin:\
/daq/software/spack_packages/libiconv/1.17/linux-scientific7-x86_64_v2-gcc-12.1.0-caxm2klmmdcajkpgs2yokym2uzjfzj7d/bin:\
/daq/software/spack_packages/freetype/2.13.2/linux-scientific7-x86_64_v2-gcc-12.1.0-kz6dxksefzz6yxfyywg2cq6rnt6lgm5r/bin:\
/daq/software/spack_packages/libpng/1.6.39/linux-scientific7-x86_64_v2-gcc-12.1.0-wwu7hhl4lxdtmq5e2f2eimx2glha7vjg/bin:\
/daq/software/spack_packages/font-util/1.4.1/linux-scientific7-x86_64_v2-gcc-12.1.0-z77drk3wiokdbereiqxgucmemazbd6yj/bin:\
/daq/software/spack_packages/spack/current/NULL/bin:\
/usr/lib64/qt-3.3/bin:\
/usr/kerberos/sbin:\
/usr/kerberos/bin:\
/usr/local/bin:\
/usr/bin

export PERL5LIB=/daq/software/spack_packages/trace/v3_17_11/linux-scientific7-x86_64_v2-gcc-12.1.0-p4ksodlm3w4vvcg4x2rvyfgo5sbktdk5/perllib:\
/daq/software/spack_packages/art/3.14.04/linux-scientific7-x86_64_v2-gcc-12.1.0-d2yhoezbdyj4zxgu4um6kgtgxgrsgrdl/perllib:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-scientific7-x86_64_v2-gcc-12.1.0-ttyj6yn4dn7x6dqq64akxvvaf6glmchn/perllib:\
/daq/software/spack_packages/cetlib/3.18.02/linux-scientific7-x86_64_v2-gcc-12.1.0-4woz3e6trjkhdaljkmlsg2dbbewz2ejk/perllib

export PKG_CONFIG_PATH=/daq/software/spack_packages/libpqxx/7.6.0/linux-scientific7-x86_64_v2-gcc-12.1.0-cugqcnob2who6p3mt3uoljfxulrweidb/lib64/pkgconfig:\
/daq/software/spack_packages/jsoncpp/1.9.5/linux-scientific7-x86_64_v2-gcc-12.1.0-touqunzsbrejo5bkcgd5tlffcnt54g2h/lib64/pkgconfig:\
/daq/software/spack_packages/hiredis/1.1.0/linux-scientific7-x86_64_v2-gcc-12.1.0-bzojtnqbopxtj2ar4ejwtcjclm7kmawo/lib64/pkgconfig:\
/daq/software/spack_packages/cppzmq/4.10.0/linux-scientific7-x86_64_v2-gcc-12.1.0-rqzdtnlug62azwd3p6rjdp3jgokbpyja/lib64/pkgconfig:\
/daq/software/spack_packages/libzmq/4.3.5/linux-scientific7-x86_64_v2-gcc-12.1.0-riyrk4qj5ht2gdifl2z4drqxqpqcws4a/lib/pkgconfig:\
/daq/software/spack_packages/libsodium/1.0.19/linux-scientific7-x86_64_v2-gcc-12.1.0-atfcpmjkf5pprmcinsy7xe4ct5zkywji/lib/pkgconfig:\
/daq/software/spack_packages/libusb/1.0.22/linux-scientific7-x86_64_v2-gcc-12.1.0-64k2zfhkurfr2sbnm4ocoh6eb5tkv7ma/lib/pkgconfig:\
/daq/software/spack_packages/source-highlight/3.1.9/linux-scientific7-x86_64_v2-gcc-12.1.0-3hqmtivuvqhvynrv7zvmg6hvgc63wf2m/lib/pkgconfig:\
/daq/software/spack_packages/mpfr/4.2.1/linux-scientific7-x86_64_v2-gcc-12.1.0-rnybyn7ldskgjaccnwlszb3n5mljcpxi/lib/pkgconfig:\
/daq/software/spack_packages/gmp/6.3.0/linux-scientific7-x86_64_v2-gcc-12.1.0-zbafjs6xcxlsuybdhwdpcljna62uxnj3/lib/pkgconfig:\
/daq/software/spack_packages/epics-base/7.0.6.1/linux-scientific7-x86_64_v2-gcc-12.1.0-im4exal6z2e6zc7qlqnpp5vitzxp6zfx/lib/pkgconfig:\
/daq/software/spack_packages/artdaq-database/v1_10_00/linux-scientific7-x86_64_v2-gcc-12.1.0-ms2w47ygha7hepadfyzpzpid5j2z5jhv/lib64/pkgconfig:\
/daq/software/spack_packages/json-c/0.16/linux-scientific7-x86_64_v2-gcc-12.1.0-5hsad4e5ylei5yqqe6tramufnatbtdij/lib64/pkgconfig:\
/daq/software/spack_packages/py-pybind11/2.10.4/linux-scientific7-x86_64_v2-gcc-12.1.0-hhvtlfrefnbbpl7nzp5mlisu2tawigj4/share/pkgconfig:\
/daq/software/spack_packages/postgresql/15.2/linux-scientific7-x86_64_v2-gcc-12.1.0-b4hnwkxeumg5oroehbv32o55vuown25n/lib/pkgconfig:\
/daq/software/spack_packages/openblas/0.3.23/linux-scientific7-x86_64_v2-gcc-12.1.0-qz4k5sfkgceie7ptzt6haom52byndxje/lib/pkgconfig:\
/daq/software/spack_packages/fftw/3.3.10/linux-scientific7-x86_64_v2-gcc-12.1.0-ocfksiocx4zzddoue5qmkukpe5qz3622/lib/pkgconfig:\
/daq/software/spack_packages/openmpi/5.0.5/linux-scientific7-x86_64_v2-gcc-12.1.0-qakw2u6sdwwi5rqxxw4z2b2vraa336mt/lib/pkgconfig:\
/daq/software/spack_packages/pmix/5.0.2/linux-scientific7-x86_64_v2-gcc-12.1.0-22zvw7a5dm6nilylyu4slgpknjdh5cmb/lib/pkgconfig:\
/daq/software/spack_packages/krb5/1.21.2/linux-scientific7-x86_64_v2-gcc-12.1.0-em6zlxaf2kve67crubvsvkuipl4qu77d/lib/pkgconfig:\
/daq/software/spack_packages/numactl/2.0.14/linux-scientific7-x86_64_v2-gcc-12.1.0-7nphbr6jy2hnsffgh2fh7fgvzf6nvljl/lib/pkgconfig:\
/daq/software/spack_packages/libevent/2.1.12/linux-scientific7-x86_64_v2-gcc-12.1.0-wyqmp6srjnwc3lgmw3v4pbfiw6kaeoui/lib/pkgconfig:\
/daq/software/spack_packages/xxhash/0.8.2/linux-scientific7-x86_64_v2-gcc-12.1.0-xxyiytvxl7yflvrfqhzhnvhwyymixquf/lib/pkgconfig:\
/daq/software/spack_packages/pcre/8.45/linux-scientific7-x86_64_v2-gcc-12.1.0-6kic36gnromxnxheawdfbqsa7z6pxndn/lib/pkgconfig:\
/daq/software/spack_packages/nlohmann-json/3.11.3/linux-scientific7-x86_64_v2-gcc-12.1.0-oxvqkrqa7o7km4vwo2fx4adexdb774vn/share/pkgconfig:\
/daq/software/spack_packages/lz4/1.9.4/linux-scientific7-x86_64_v2-gcc-12.1.0-msa7bsz46xgfqlyumce736k2d7zymp6v/lib/pkgconfig:\
/daq/software/spack_packages/libxpm/3.5.17/linux-scientific7-x86_64_v2-gcc-12.1.0-7mewccckwey7tc6gazlpnl4dak6ocqx4/lib/pkgconfig:\
/daq/software/spack_packages/libxft/2.3.8/linux-scientific7-x86_64_v2-gcc-12.1.0-7ivjc5ytdmbgymmrwiyk7wcxjgrcemmi/lib/pkgconfig:\
/daq/software/spack_packages/gsl/2.7.1/linux-scientific7-x86_64_v2-gcc-12.1.0-qpbgmwp3lzazgbgq4ybzvphwtjhrujnw/lib/pkgconfig:\
/daq/software/spack_packages/glew/2.2.0/linux-scientific7-x86_64_v2-gcc-12.1.0-mbekx4eh3ibrjj5cpfhk67kbcf3doouk/lib64/pkgconfig:\
/daq/software/spack_packages/mesa-glu/9.0.2/linux-scientific7-x86_64_v2-gcc-12.1.0-6iz5nlqxeyfgxwqrdfkaiewxexodkf37/lib/pkgconfig:\
/daq/software/spack_packages/mesa/23.3.6/linux-scientific7-x86_64_v2-gcc-12.1.0-64ibmypaxhuk5vir3q4ym5uc4wqjjx5i/lib/pkgconfig:\
/daq/software/spack_packages/libxrandr/1.5.4/linux-scientific7-x86_64_v2-gcc-12.1.0-5gmtcevhmfpx36f74mdedc2zte7yvtek/lib/pkgconfig:\
/daq/software/spack_packages/randrproto/1.5.0/linux-scientific7-x86_64_v2-gcc-12.1.0-thzikeaxc2hhu6hjqravmmzxylsnpovw/lib/pkgconfig:\
/daq/software/spack_packages/libedit/3.1-20230828/linux-scientific7-x86_64_v2-gcc-12.1.0-6dg26eh5ifkanboo4fyaspwazy3urgha/lib/pkgconfig:\
/daq/software/spack_packages/libxt/1.3.0/linux-scientific7-x86_64_v2-gcc-12.1.0-smwsco3o4wtbrmqiy2wdiaevjenqspfn/lib/pkgconfig:\
/daq/software/spack_packages/libunwind/1.6.2/linux-scientific7-x86_64_v2-gcc-12.1.0-ihnpmx3tq3sazabihb3hcurcqvtd63fc/lib/pkgconfig:\
/daq/software/spack_packages/glproto/1.4.17/linux-scientific7-x86_64_v2-gcc-12.1.0-okecztudxgb2dyn562xkdxr36odpv7ty/lib/pkgconfig:\
/daq/software/spack_packages/davix/0.8.1/linux-scientific7-x86_64_v2-gcc-12.1.0-bnlw5q2tixsqplp2y5a6ng7lbb2ljnua/lib64/pkgconfig:\
/daq/software/spack_packages/catch2/3.3.2/linux-scientific7-x86_64_v2-gcc-12.1.0-dkuobbwoqp3infn7cujlmxrhpkr7rhnj/share/pkgconfig:\
/daq/software/spack_packages/intel-tbb/2021.12.0/linux-scientific7-x86_64_v2-gcc-12.1.0-jlg6zlheamrqc5ab3hrivigj6vw3cuxb/lib64/pkgconfig:\
/daq/software/spack_packages/hwloc/2.11.1/linux-scientific7-x86_64_v2-gcc-12.1.0-zh4kzgb3fbqwoezkb4c5whhscijryok2/lib/pkgconfig:\
/daq/software/spack_packages/libpciaccess/0.17/linux-scientific7-x86_64_v2-gcc-12.1.0-aiv4cjqed2p6gyqcqzzfr5gnxt5zcwbk/lib/pkgconfig:\
/daq/software/spack_packages/clhep/2.4.7.1/linux-scientific7-x86_64_v2-gcc-12.1.0-cuhwvj6hq2vygf3mony4nvugyqoh2scw/lib/pkgconfig:\
/daq/software/spack_packages/xmlrpc-c/1.51.06/linux-scientific7-x86_64_v2-gcc-12.1.0-a2fiqh4pqa2l5klt5fimzzesmqtiisxd/lib/pkgconfig:\
/daq/software/spack_packages/curl/8.7.1/linux-scientific7-x86_64_v2-gcc-12.1.0-w22cuyquh3xignaei3l5p2ww7dbepbe5/lib/pkgconfig:\
/daq/software/spack_packages/nghttp2/1.62.0/linux-scientific7-x86_64_v2-gcc-12.1.0-cfuvxslmivkgbdn24ecolcxmfn5htiwl/lib/pkgconfig:\
/daq/software/spack_packages/qt/5.15.14/linux-scientific7-x86_64_v2-gcc-12.1.0-daowpwpvj6lxsodcfndi2ztkia7uhwy7/lib/pkgconfig:\
/daq/software/spack_packages/xcb-util-wm/0.4.2/linux-scientific7-x86_64_v2-gcc-12.1.0-gfkerzpo4qn3keo54y2oyh6j5kvdzwig/lib/pkgconfig:\
/daq/software/spack_packages/xcb-util-renderutil/0.3.10/linux-scientific7-x86_64_v2-gcc-12.1.0-f7mvx6u2iexpl3aqbupzt3besijm6q3j/lib/pkgconfig:\
/daq/software/spack_packages/xcb-util-keysyms/0.4.1/linux-scientific7-x86_64_v2-gcc-12.1.0-eqzkhyuegw3hvteo6bryj6jkswccmtbn/lib/pkgconfig:\
/daq/software/spack_packages/xcb-util-image/0.4.1/linux-scientific7-x86_64_v2-gcc-12.1.0-tuivhpngmoenlxug7h6bo7btcnnjrybr/lib/pkgconfig:\
/daq/software/spack_packages/xcb-util/0.4.1/linux-scientific7-x86_64_v2-gcc-12.1.0-7rc6rfvulolpbaachhl74pqhc5udwklc/lib/pkgconfig:\
/daq/software/spack_packages/libxrender/0.9.11/linux-scientific7-x86_64_v2-gcc-12.1.0-dvtw7rdfaus4syqrksgiw64desgfx4tc/lib/pkgconfig:\
/daq/software/spack_packages/renderproto/0.11.1/linux-scientific7-x86_64_v2-gcc-12.1.0-pwkmoamcq6bz7zen3k2tgflenze2wvk5/lib/pkgconfig:\
/daq/software/spack_packages/libxkbcommon/1.7.0/linux-scientific7-x86_64_v2-gcc-12.1.0-rgcosjxvya2yxwrgg4lgbvhopcgitkr4/lib/pkgconfig:\
/daq/software/spack_packages/util-macros/1.20.1/linux-scientific7-x86_64_v2-gcc-12.1.0-bgpgnvoabiikjfr6hjf34cvr4oj6x5b5/share/pkgconfig:\
/daq/software/spack_packages/libxext/1.3.6/linux-scientific7-x86_64_v2-gcc-12.1.0-f564ksslagnfq3f2fucg3a3lcn5ha7wz/lib/pkgconfig:\
/daq/software/spack_packages/xextproto/7.3.0/linux-scientific7-x86_64_v2-gcc-12.1.0-y5bjckzsmi56ijewszfiiu4fs3jpxmyq/lib/pkgconfig:\
/daq/software/spack_packages/libx11/1.8.10/linux-scientific7-x86_64_v2-gcc-12.1.0-aa7aeodujtslhhjy7mdvllk33rm46n7q/lib/pkgconfig:\
/daq/software/spack_packages/libxcb/1.17.0/linux-scientific7-x86_64_v2-gcc-12.1.0-lsjskst5ntllcz7j6tykzsr7bjiru6rm/lib/pkgconfig:\
/daq/software/spack_packages/libxdmcp/1.1.5/linux-scientific7-x86_64_v2-gcc-12.1.0-xbkcmoxyyevels5kmzd44ouaixlfxpvb/lib/pkgconfig:\
/daq/software/spack_packages/libxau/1.0.11/linux-scientific7-x86_64_v2-gcc-12.1.0-sysciliizhsh5s5dq3legxyud6cf4qqs/lib/pkgconfig:\
/daq/software/spack_packages/libpthread-stubs/0.5/linux-scientific7-x86_64_v2-gcc-12.1.0-o62e4bthko45oy6qwaiohkga3tulpxss/lib/pkgconfig:\
/daq/software/spack_packages/kbproto/1.0.7/linux-scientific7-x86_64_v2-gcc-12.1.0-y6rzgxbr43nnqhu5ittkfj7465o2zhag/lib/pkgconfig:\
/daq/software/spack_packages/libsm/1.2.4/linux-scientific7-x86_64_v2-gcc-12.1.0-znvvt53tyskfuqeiwbqqi5ccz44ly65p/lib/pkgconfig:\
/daq/software/spack_packages/libice/1.1.1/linux-scientific7-x86_64_v2-gcc-12.1.0-s5b4nv7ac5ufujlewvpjugvcwrg5ltkn/lib/pkgconfig:\
/daq/software/spack_packages/xtrans/1.5.0/linux-scientific7-x86_64_v2-gcc-12.1.0-qr5uiimh3xomqxnee4tzjc65vqome64j/share/pkgconfig:\
/daq/software/spack_packages/xproto/7.0.31/linux-scientific7-x86_64_v2-gcc-12.1.0-4hjuj4hygt3fe7pqfluqp7bcchyktjci/lib/pkgconfig:\
/daq/software/spack_packages/libmng/2.0.3/linux-scientific7-x86_64_v2-gcc-12.1.0-mhlhxa4bggncdmx5czxgtmkgalx352pu/lib64/pkgconfig:\
/daq/software/spack_packages/lcms/2.16/linux-scientific7-x86_64_v2-gcc-12.1.0-3tnghqflbac5bodu6422k5jlmfo63ycj/lib/pkgconfig:\
/daq/software/spack_packages/libtiff/4.6.0/linux-scientific7-x86_64_v2-gcc-12.1.0-xc5mt4a25rz2oyyeiwnp6na6nosefb7a/lib64/pkgconfig:\
/daq/software/spack_packages/libjpeg-turbo/3.0.3/linux-scientific7-x86_64_v2-gcc-12.1.0-ge6enkjwaglhemmd23suolifo6ft7jar/lib64/pkgconfig:\
/daq/software/spack_packages/harfbuzz/9.0.0/linux-scientific7-x86_64_v2-gcc-12.1.0-nqgmjyna63gii2seser5cfrt3tcwelzw/lib/pkgconfig:\
/daq/software/spack_packages/icu4c/74.2/linux-scientific7-x86_64_v2-gcc-12.1.0-hx7xcu5eqd43rvql5pyivoqpzmyv553m/lib/pkgconfig:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-scientific7-x86_64_v2-gcc-12.1.0-tle2t4rpgum5grwhxxay34bhavx4enjt/lib/pkgconfig:\
/daq/software/spack_packages/cairo/1.16.0/linux-scientific7-x86_64_v2-gcc-12.1.0-eoa53pyovfxfesbgzsn6d6xbc2mbjhhy/lib/pkgconfig:\
/daq/software/spack_packages/pixman/0.42.2/linux-scientific7-x86_64_v2-gcc-12.1.0-ybaek5tpzwow4e2csud76cjbe7ueg6dq/lib/pkgconfig:\
/daq/software/spack_packages/glib/2.78.3/linux-scientific7-x86_64_v2-gcc-12.1.0-nydu3n5a7glusbazzxxrnups5pg5n3jc/lib/pkgconfig:\
/daq/software/spack_packages/python/3.9.15/linux-scientific7-x86_64_v2-gcc-12.1.0-yd3fzeinnf4dwx4qs5p6repjisdan3na/lib/pkgconfig:\
/daq/software/spack_packages/sqlite/3.40.1/linux-scientific7-x86_64_v2-gcc-12.1.0-jesi6midoxbzx6gzau73k5gw3ezipkqa/lib/pkgconfig:\
/daq/software/spack_packages/openssl/3.3.1/linux-scientific7-x86_64_v2-gcc-12.1.0-pnahsndzw3tng5h3e7sfxbotx4qojrmt/lib64/pkgconfig:\
/daq/software/spack_packages/libxcrypt/4.4.35/linux-scientific7-x86_64_v2-gcc-12.1.0-spihkzwv5jfstgm5rtms5ptsscdkbezs/lib/pkgconfig:\
/daq/software/spack_packages/expat/2.6.2/linux-scientific7-x86_64_v2-gcc-12.1.0-z46oyt6spm4aav5ki7lszlk2uzdqbb2m/lib/pkgconfig:\
/daq/software/spack_packages/libbsd/0.12.2/linux-scientific7-x86_64_v2-gcc-12.1.0-a3ehnhixspxyphyctrhbg5v2rfek6pht/lib/pkgconfig:\
/daq/software/spack_packages/libmd/1.0.4/linux-scientific7-x86_64_v2-gcc-12.1.0-sn4b7oxrjxha7qqkizakpcdblddcik6k/lib/pkgconfig:\
/daq/software/spack_packages/readline/8.2/linux-scientific7-x86_64_v2-gcc-12.1.0-iillh2ypzrvu4c3nefwel43mfb4ipzh2/lib/pkgconfig:\
/daq/software/spack_packages/pcre2/10.43/linux-scientific7-x86_64_v2-gcc-12.1.0-x2g2zlo5iuodwlpy5ek76yze6qx23ike/lib/pkgconfig:\
/daq/software/spack_packages/libffi/3.4.6/linux-scientific7-x86_64_v2-gcc-12.1.0-vxupfcievnuhitsrfwtywyjtvja4xr7u/lib/pkgconfig:\
/daq/software/spack_packages/elfutils/0.191/linux-scientific7-x86_64_v2-gcc-12.1.0-c54axozvxrmtt42niydfdu77fs4chqcx/lib/pkgconfig:\
/daq/software/spack_packages/pkgconf/2.2.0/linux-scientific7-x86_64_v2-gcc-12.1.0-wgg5tbq4iqvgirxis52tkpuphalafqys/lib/pkgconfig:\
/daq/software/spack_packages/zstd/1.5.6/linux-scientific7-x86_64_v2-gcc-12.1.0-ltt2cbcwus2nwcyikb34oocgdn5gbay7/lib/pkgconfig:\
/daq/software/spack_packages/ncurses/6.5/linux-scientific7-x86_64_v2-gcc-12.1.0-xkjsxxs2wu5m7gropdpr4hh5ptbdsmlw/lib/pkgconfig:\
/daq/software/spack_packages/fontconfig/2.15.0/linux-scientific7-x86_64_v2-gcc-12.1.0-gndwf3jaxsha77cau56jurmrk5fubabc/lib/pkgconfig:\
/daq/software/spack_packages/util-linux-uuid/2.40.2/linux-scientific7-x86_64_v2-gcc-12.1.0-cmghxau3amtlkosc2x5kpbnxrkplyul5/lib/pkgconfig:\
/daq/software/spack_packages/libxml2/2.9.12/linux-scientific7-x86_64_v2-gcc-12.1.0-af5cu7dmlj7zwl6nfj7fl5qpbsbwx6p3/lib/pkgconfig:\
/daq/software/spack_packages/xz/5.4.6/linux-scientific7-x86_64_v2-gcc-12.1.0-63uqskev6ph3q52qegolmbx44i5ixlzo/lib/pkgconfig:\
/daq/software/spack_packages/freetype/2.13.2/linux-scientific7-x86_64_v2-gcc-12.1.0-kz6dxksefzz6yxfyywg2cq6rnt6lgm5r/lib/pkgconfig:\
/daq/software/spack_packages/libpng/1.6.39/linux-scientific7-x86_64_v2-gcc-12.1.0-wwu7hhl4lxdtmq5e2f2eimx2glha7vjg/lib64/pkgconfig:\
/daq/software/spack_packages/zlib-ng/2.2.1/linux-scientific7-x86_64_v2-gcc-12.1.0-cn5n7kablf3hidmdmafspn3sikft2nem/lib/pkgconfig:\
/daq/software/spack_packages/bzip2/1.0.8/linux-scientific7-x86_64_v2-gcc-12.1.0-qrfia4en6qnnqqzbtped72hd35v7wj3o/lib/pkgconfig:\
/daq/software/spack_packages/font-util/1.4.1/linux-scientific7-x86_64_v2-gcc-12.1.0-z77drk3wiokdbereiqxgucmemazbd6yj/lib/pkgconfig:\
/usr/share/pkgconfig:\
/usr/lib64/pkgconfig:\
/usr/lib/pkgconfig

export PYTHONPATH=/daq/software/spack_packages/py-numpy/1.24.3/linux-scientific7-x86_64_v2-gcc-12.1.0-morbaimpqj36xaigrhjdw2rahsnwf2dd/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-pybind11/2.10.4/linux-scientific7-x86_64_v2-gcc-12.1.0-hhvtlfrefnbbpl7nzp5mlisu2tawigj4/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-setuptools/63.4.3/linux-scientific7-x86_64_v2-gcc-12.1.0-vhtmvdffpxe2nsb3qodvi5umsdmoq2rq/lib/python3.9/site-packages:\
/daq/software/spack_packages/root/6.28.12/linux-scientific7-x86_64_v2-gcc-12.1.0-swmoonki5hkyarfdpnfnvbhlfjhogqmk/lib/root:\
/daq/software/spack_packages/python-venv/1.0/linux-scientific7-x86_64_v2-gcc-12.1.0-mucja7ecrznkasf3oilxawysnzlorlfs/lib/python3.9/site-packages

export QTDIR="/daq/software/spack_packages/qt/5.15.14/linux-scientific7-x86_64_v2-gcc-12.1.0-daowpwpvj6lxsodcfndi2ztkia7uhwy7"

export QTINC="/daq/software/spack_packages/qt/5.15.14/linux-scientific7-x86_64_v2-gcc-12.1.0-daowpwpvj6lxsodcfndi2ztkia7uhwy7/inc"

export QTLIB="/daq/software/spack_packages/qt/5.15.14/linux-scientific7-x86_64_v2-gcc-12.1.0-daowpwpvj6lxsodcfndi2ztkia7uhwy7/lib"

export QT_GRAPHICSSYSTEM_CHECKED="1"

export QT_PLUGIN_PATH=/daq/software/spack_packages/qt/5.15.14/linux-scientific7-x86_64_v2-gcc-12.1.0-daowpwpvj6lxsodcfndi2ztkia7uhwy7/plugins:\
/usr/lib64/kde4/plugins:\
/usr/lib/kde4/plugins

export ROOTSYS="/daq/software/spack_packages/root/6.28.12/linux-scientific7-x86_64_v2-gcc-12.1.0-swmoonki5hkyarfdpnfnvbhlfjhogqmk"

export ROOT_INCLUDE_PATH=/daq/software/spack_packages/canvas-root-io/1.13.06/linux-scientific7-x86_64_v2-gcc-12.1.0-ywkp2yxsxeh2cd4szgtidobstxkyfcv3/include:\
/daq/software/spack_packages/root/6.28.12/linux-scientific7-x86_64_v2-gcc-12.1.0-swmoonki5hkyarfdpnfnvbhlfjhogqmk/include:\
/daq/software/spack_packages/xxhash/0.8.2/linux-scientific7-x86_64_v2-gcc-12.1.0-xxyiytvxl7yflvrfqhzhnvhwyymixquf/include:\
/daq/software/spack_packages/vdt/0.4.4/linux-scientific7-x86_64_v2-gcc-12.1.0-krnlfhjdqcx3idv6ivnrgliiqzuo7h2a/include:\
/daq/software/spack_packages/unuran/1.8.1/linux-scientific7-x86_64_v2-gcc-12.1.0-of72ar4ywp2a632md7d4n7ktqoiqsm6r/include:\
/daq/software/spack_packages/rngstreams/1.0.1/linux-scientific7-x86_64_v2-gcc-12.1.0-4dsvxeoocyadx7umrr6sn2ppnlefvbye/include:\
/daq/software/spack_packages/pcre/8.45/linux-scientific7-x86_64_v2-gcc-12.1.0-6kic36gnromxnxheawdfbqsa7z6pxndn/include:\
/daq/software/spack_packages/nlohmann-json/3.11.3/linux-scientific7-x86_64_v2-gcc-12.1.0-oxvqkrqa7o7km4vwo2fx4adexdb774vn/include:\
/daq/software/spack_packages/lz4/1.9.4/linux-scientific7-x86_64_v2-gcc-12.1.0-msa7bsz46xgfqlyumce736k2d7zymp6v/include:\
/daq/software/spack_packages/libxpm/3.5.17/linux-scientific7-x86_64_v2-gcc-12.1.0-7mewccckwey7tc6gazlpnl4dak6ocqx4/include:\
/daq/software/spack_packages/libxft/2.3.8/linux-scientific7-x86_64_v2-gcc-12.1.0-7ivjc5ytdmbgymmrwiyk7wcxjgrcemmi/include:\
/daq/software/spack_packages/fontconfig/2.15.0/linux-scientific7-x86_64_v2-gcc-12.1.0-gndwf3jaxsha77cau56jurmrk5fubabc/include:\
/daq/software/spack_packages/font-util/1.4.1/linux-scientific7-x86_64_v2-gcc-12.1.0-z77drk3wiokdbereiqxgucmemazbd6yj/include:\
/daq/software/spack_packages/libjpeg-turbo/3.0.3/linux-scientific7-x86_64_v2-gcc-12.1.0-ge6enkjwaglhemmd23suolifo6ft7jar/include:\
/daq/software/spack_packages/gsl/2.7.1/linux-scientific7-x86_64_v2-gcc-12.1.0-qpbgmwp3lzazgbgq4ybzvphwtjhrujnw/include:\
/daq/software/spack_packages/glew/2.2.0/linux-scientific7-x86_64_v2-gcc-12.1.0-mbekx4eh3ibrjj5cpfhk67kbcf3doouk/include:\
/daq/software/spack_packages/gl2ps/1.4.2/linux-scientific7-x86_64_v2-gcc-12.1.0-qmzb2rapcaluwgggguq2rmn7bg6zt2op/include:\
/daq/software/spack_packages/ftgl/2.4.0/linux-scientific7-x86_64_v2-gcc-12.1.0-yvb6k3cv5p7sklsssyb3t2ejdhrcy3y5/include:\
/daq/software/spack_packages/mesa-glu/9.0.2/linux-scientific7-x86_64_v2-gcc-12.1.0-6iz5nlqxeyfgxwqrdfkaiewxexodkf37/include:\
/daq/software/spack_packages/glx/1.4/linux-scientific7-x86_64_v2-gcc-12.1.0-733etvtvxcjwzr3ub27xuzpjum2exysh/include:\
/daq/software/spack_packages/mesa/23.3.6/linux-scientific7-x86_64_v2-gcc-12.1.0-64ibmypaxhuk5vir3q4ym5uc4wqjjx5i/include:\
/daq/software/spack_packages/xrandr/1.5.2/linux-scientific7-x86_64_v2-gcc-12.1.0-tha3krd365ywswawslbg2ifwito42n4u/include:\
/daq/software/spack_packages/libxrandr/1.5.4/linux-scientific7-x86_64_v2-gcc-12.1.0-5gmtcevhmfpx36f74mdedc2zte7yvtek/include:\
/daq/software/spack_packages/randrproto/1.5.0/linux-scientific7-x86_64_v2-gcc-12.1.0-thzikeaxc2hhu6hjqravmmzxylsnpovw/include:\
/daq/software/spack_packages/libxrender/0.9.11/linux-scientific7-x86_64_v2-gcc-12.1.0-dvtw7rdfaus4syqrksgiw64desgfx4tc/include:\
/daq/software/spack_packages/renderproto/0.11.1/linux-scientific7-x86_64_v2-gcc-12.1.0-pwkmoamcq6bz7zen3k2tgflenze2wvk5/include:\
/daq/software/spack_packages/llvm/17.0.6/linux-scientific7-x86_64_v2-gcc-12.1.0-cxiefdsy6tgjwnvratpxwnydfl3mgtid/include:\
/daq/software/spack_packages/swig/4.1.1/linux-scientific7-x86_64_v2-gcc-12.1.0-h67gbpa2esdn2u7w52xde7r7p6qxlf5y/include:\
/daq/software/spack_packages/pcre2/10.43/linux-scientific7-x86_64_v2-gcc-12.1.0-x2g2zlo5iuodwlpy5ek76yze6qx23ike/include:\
/daq/software/spack_packages/lua/5.3.6/linux-scientific7-x86_64_v2-gcc-12.1.0-w4nr7su5egy34us3o2lnrpmb4nuyama5/include:\
/daq/software/spack_packages/libedit/3.1-20230828/linux-scientific7-x86_64_v2-gcc-12.1.0-6dg26eh5ifkanboo4fyaspwazy3urgha/include:\
/daq/software/spack_packages/binutils/2.43.1/linux-scientific7-x86_64_v2-gcc-12.1.0-gcvuauajvm444ye4uknljw7rygj4ym3m/include:\
/daq/software/spack_packages/libxt/1.3.0/linux-scientific7-x86_64_v2-gcc-12.1.0-smwsco3o4wtbrmqiy2wdiaevjenqspfn/include:\
/daq/software/spack_packages/libsm/1.2.4/linux-scientific7-x86_64_v2-gcc-12.1.0-znvvt53tyskfuqeiwbqqi5ccz44ly65p/include:\
/daq/software/spack_packages/libice/1.1.1/linux-scientific7-x86_64_v2-gcc-12.1.0-s5b4nv7ac5ufujlewvpjugvcwrg5ltkn/include:\
/daq/software/spack_packages/libxext/1.3.6/linux-scientific7-x86_64_v2-gcc-12.1.0-f564ksslagnfq3f2fucg3a3lcn5ha7wz/include:\
/daq/software/spack_packages/xextproto/7.3.0/linux-scientific7-x86_64_v2-gcc-12.1.0-y5bjckzsmi56ijewszfiiu4fs3jpxmyq/include:\
/daq/software/spack_packages/libx11/1.8.10/linux-scientific7-x86_64_v2-gcc-12.1.0-aa7aeodujtslhhjy7mdvllk33rm46n7q/include:\
/daq/software/spack_packages/xtrans/1.5.0/linux-scientific7-x86_64_v2-gcc-12.1.0-qr5uiimh3xomqxnee4tzjc65vqome64j/include:\
/daq/software/spack_packages/libxcb/1.17.0/linux-scientific7-x86_64_v2-gcc-12.1.0-lsjskst5ntllcz7j6tykzsr7bjiru6rm/include:\
/daq/software/spack_packages/libxdmcp/1.1.5/linux-scientific7-x86_64_v2-gcc-12.1.0-xbkcmoxyyevels5kmzd44ouaixlfxpvb/include:\
/daq/software/spack_packages/libxau/1.0.11/linux-scientific7-x86_64_v2-gcc-12.1.0-sysciliizhsh5s5dq3legxyud6cf4qqs/include:\
/daq/software/spack_packages/xproto/7.0.31/linux-scientific7-x86_64_v2-gcc-12.1.0-4hjuj4hygt3fe7pqfluqp7bcchyktjci/include:\
/daq/software/spack_packages/libpthread-stubs/0.5/linux-scientific7-x86_64_v2-gcc-12.1.0-o62e4bthko45oy6qwaiohkga3tulpxss/include:\
/daq/software/spack_packages/kbproto/1.0.7/linux-scientific7-x86_64_v2-gcc-12.1.0-y6rzgxbr43nnqhu5ittkfj7465o2zhag/include:\
/daq/software/spack_packages/libunwind/1.6.2/linux-scientific7-x86_64_v2-gcc-12.1.0-ihnpmx3tq3sazabihb3hcurcqvtd63fc/include:\
/daq/software/spack_packages/glproto/1.4.17/linux-scientific7-x86_64_v2-gcc-12.1.0-okecztudxgb2dyn562xkdxr36odpv7ty/include:\
/daq/software/spack_packages/freetype/2.13.2/linux-scientific7-x86_64_v2-gcc-12.1.0-kz6dxksefzz6yxfyywg2cq6rnt6lgm5r/include:\
/daq/software/spack_packages/libpng/1.6.39/linux-scientific7-x86_64_v2-gcc-12.1.0-wwu7hhl4lxdtmq5e2f2eimx2glha7vjg/include:\
/daq/software/spack_packages/davix/0.8.1/linux-scientific7-x86_64_v2-gcc-12.1.0-bnlw5q2tixsqplp2y5a6ng7lbb2ljnua/include:\
/daq/software/spack_packages/hep-concurrency/1.09.02/linux-scientific7-x86_64_v2-gcc-12.1.0-oqgze2jnpkagcrzjajs46yhmt62wzl42/include:\
/daq/software/spack_packages/canvas/3.16.04/linux-scientific7-x86_64_v2-gcc-12.1.0-cvj33ful4uwwrhqq5vst3srav73cuwo6/include:\
/daq/software/spack_packages/range-v3/0.12.0/linux-scientific7-x86_64_v2-gcc-12.1.0-okev72rqgkjxxf7w37azxhylynkbfsnx/include:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-scientific7-x86_64_v2-gcc-12.1.0-ttyj6yn4dn7x6dqq64akxvvaf6glmchn/include:\
/daq/software/spack_packages/catch2/3.3.2/linux-scientific7-x86_64_v2-gcc-12.1.0-dkuobbwoqp3infn7cujlmxrhpkr7rhnj/include:\
/daq/software/spack_packages/fhicl-cpp/4.18.04/linux-scientific7-x86_64_v2-gcc-12.1.0-yzixjcupgvc2ljr2swnwtiwljxushpfw/include:\
/daq/software/spack_packages/python/3.9.15/linux-scientific7-x86_64_v2-gcc-12.1.0-yd3fzeinnf4dwx4qs5p6repjisdan3na/include:\
/daq/software/spack_packages/util-linux-uuid/2.40.2/linux-scientific7-x86_64_v2-gcc-12.1.0-cmghxau3amtlkosc2x5kpbnxrkplyul5/include:\
/daq/software/spack_packages/libxcrypt/4.4.35/linux-scientific7-x86_64_v2-gcc-12.1.0-spihkzwv5jfstgm5rtms5ptsscdkbezs/include:\
/daq/software/spack_packages/libffi/3.4.6/linux-scientific7-x86_64_v2-gcc-12.1.0-vxupfcievnuhitsrfwtywyjtvja4xr7u/include:\
/daq/software/spack_packages/gettext/0.22.5/linux-scientific7-x86_64_v2-gcc-12.1.0-w4xo5yhez3g37rgjw2uwb3luvtm6mn6r/include:\
/daq/software/spack_packages/gdbm/1.23/linux-scientific7-x86_64_v2-gcc-12.1.0-bo3tsl2eogjombpbnnjesfdfkd344vxx/include:\
/daq/software/spack_packages/expat/2.6.2/linux-scientific7-x86_64_v2-gcc-12.1.0-z46oyt6spm4aav5ki7lszlk2uzdqbb2m/include:\
/daq/software/spack_packages/libbsd/0.12.2/linux-scientific7-x86_64_v2-gcc-12.1.0-a3ehnhixspxyphyctrhbg5v2rfek6pht/include:\
/daq/software/spack_packages/libmd/1.0.4/linux-scientific7-x86_64_v2-gcc-12.1.0-sn4b7oxrjxha7qqkizakpcdblddcik6k/include:\
/daq/software/spack_packages/intel-tbb/2021.12.0/linux-scientific7-x86_64_v2-gcc-12.1.0-jlg6zlheamrqc5ab3hrivigj6vw3cuxb/include:\
/daq/software/spack_packages/hwloc/2.11.1/linux-scientific7-x86_64_v2-gcc-12.1.0-zh4kzgb3fbqwoezkb4c5whhscijryok2/include:\
/daq/software/spack_packages/libxml2/2.9.12/linux-scientific7-x86_64_v2-gcc-12.1.0-af5cu7dmlj7zwl6nfj7fl5qpbsbwx6p3/include:\
/daq/software/spack_packages/libiconv/1.17/linux-scientific7-x86_64_v2-gcc-12.1.0-caxm2klmmdcajkpgs2yokym2uzjfzj7d/include:\
/daq/software/spack_packages/libpciaccess/0.17/linux-scientific7-x86_64_v2-gcc-12.1.0-aiv4cjqed2p6gyqcqzzfr5gnxt5zcwbk/include:\
/daq/software/spack_packages/clhep/2.4.7.1/linux-scientific7-x86_64_v2-gcc-12.1.0-cuhwvj6hq2vygf3mony4nvugyqoh2scw/include:\
/daq/software/spack_packages/cetlib/3.18.02/linux-scientific7-x86_64_v2-gcc-12.1.0-4woz3e6trjkhdaljkmlsg2dbbewz2ejk/include:\
/daq/software/spack_packages/sqlite/3.40.1/linux-scientific7-x86_64_v2-gcc-12.1.0-jesi6midoxbzx6gzau73k5gw3ezipkqa/include:\
/daq/software/spack_packages/readline/8.2/linux-scientific7-x86_64_v2-gcc-12.1.0-iillh2ypzrvu4c3nefwel43mfb4ipzh2/include:\
/daq/software/spack_packages/ncurses/6.5/linux-scientific7-x86_64_v2-gcc-12.1.0-xkjsxxs2wu5m7gropdpr4hh5ptbdsmlw/include:\
/daq/software/spack_packages/openssl/3.3.1/linux-scientific7-x86_64_v2-gcc-12.1.0-pnahsndzw3tng5h3e7sfxbotx4qojrmt/include:\
/daq/software/spack_packages/cetlib-except/1.09.01/linux-scientific7-x86_64_v2-gcc-12.1.0-67it2qhr7ckh443iq56w4qelsb5d2frj/include:\
/daq/software/spack_packages/boost/1.82.0/linux-scientific7-x86_64_v2-gcc-12.1.0-dp5ltsu7g7orpjgd5vfpv3oghdmtevgf/include:\
/daq/software/spack_packages/zstd/1.5.6/linux-scientific7-x86_64_v2-gcc-12.1.0-ltt2cbcwus2nwcyikb34oocgdn5gbay7/include:\
/daq/software/spack_packages/zlib-ng/2.2.1/linux-scientific7-x86_64_v2-gcc-12.1.0-cn5n7kablf3hidmdmafspn3sikft2nem/include:\
/daq/software/spack_packages/xz/5.4.6/linux-scientific7-x86_64_v2-gcc-12.1.0-63uqskev6ph3q52qegolmbx44i5ixlzo/include:\
/daq/software/spack_packages/bzip2/1.0.8/linux-scientific7-x86_64_v2-gcc-12.1.0-qrfia4en6qnnqqzbtped72hd35v7wj3o/include:\
/daq/software/spack_packages/gcc-runtime/12.1.0/linux-scientific7-x86_64_v2-gcc-12.1.0-5q6qhr6zztifbsml5e6xqm6fpjnnsm5g/include:\
/daq/software/spack_packages/sbndaq-suite/v1_10_02/linux-scientific7-x86_64_v2-gcc-12.1.0-mtdko6yfsrk2roge5trpwc47g6ggfftv/include:\
/daq/software/spack_packages/art-suite/s131/linux-scientific7-x86_64_v2-gcc-12.1.0-i55h3z2c2dlv2wqx5xvnte3277h64nhi/include:\
/daq/software/spack_packages/art-root-io/1.13.06/linux-scientific7-x86_64_v2-gcc-12.1.0-mbefczr5drn3dqzk2xhbctrc5bayzari/include:\
/usr/include

export ROOT_LIBRARY_PATH=/daq/software/spack_packages/art-root-io/1.13.06/linux-scientific7-x86_64_v2-gcc-12.1.0-mbefczr5drn3dqzk2xhbctrc5bayzari/lib:\
/daq/software/spack_packages/canvas-root-io/1.13.06/linux-scientific7-x86_64_v2-gcc-12.1.0-ywkp2yxsxeh2cd4szgtidobstxkyfcv3/lib

export ROOT_VERSION="v6"

export SBNDAQ_VERSION="v1_10_02"

export SETUP_ARTDAQ_MFEXTENSIONS="spack load artdaq-mfextensions"

export SPACK_ALIASES="concretise:concretize;containerise:containerize;rm:remove"

export SPACK_ARCH="linux-scientific7-x86_64_v2"

export SPACK_DISABLE_LOCAL_CONFIG="true"

export SPACK_ENV_SCRIPT="/daq/software/spack_packages/spack/current/NULL/share/spack/setup-env.sh"

export SPACK_INSTALL_DIR="./overrides/spack"

export SPACK_LOADED_HASHES="mtdko6yfsrk2roge5trpwc47g6ggfftv"

export SPACK_PYTHON="/usr/bin/python3"

export SPACK_ROOT="/daq/software/spack_packages/spack/current/NULL"

export THIS_SBN_DAQ_DAQINTERFACE_DIR="/home/nfs/sbnd/DAQ_SPACK_DevAreas/DAQ_2024-09-30_GAL_v1_10_02/srcs/sbndaq/sbn-fd/DAQInterface2"

export WIBTOOLS_BIN="/daq/software/spack_packages/wibtools/v1_10_02/linux-scientific7-x86_64_v2-gcc-12.1.0-4aoqas6ds4fztr6hvgkdsw5q54jejw2w/bin"

export WIB_ADDRESS_TABLE_PATH="/daq/software/spack_packages/wibtools/v1_10_02/linux-scientific7-x86_64_v2-gcc-12.1.0-4aoqas6ds4fztr6hvgkdsw5q54jejw2w/tables"

export XLOCALEDIR=/daq/software/spack_packages/libx11/1.8.10/linux-scientific7-x86_64_v2-gcc-12.1.0-aa7aeodujtslhhjy7mdvllk33rm46n7q/share/X11/locale

export _a="sbndaq-suite@v1_10_02%gcc@12.1.0 arch=linux-scientific7-x86_64_v2 /mtdko6y"

export _pa_canonical=":"

export _pa_new_path="/daq/software/spack_packages/spack/v0.23.0.sbnd/NULL/share/spack/modules/linux-scientific7-x86_64"

export _pa_oldvalue

export _pa_varname="MODULEPATH"

export _sp_compatible_sys_types="linux-scientific7-skylake_avx512:linux-scientific7-skylake:linux-scientific7-x86_64_v4:linux-scientific7-broadwell:linux-scientific7-haswell:linux-scientific7-ivybridge:linux-scientific7-x86_64_v3:linux-scientific7-sandybridge:linux-scientific7-westmere:linux-scientific7-nehalem:linux-scientific7-core2:linux-scientific7-x86_64_v2:linux-scientific7-nocona:linux-scientific7-x86_64"

export _sp_flags

export _sp_lmod_roots="/daq/software/spack_packages/spack/v0.23.0.sbnd/NULL/share/spack/lmod"

export _sp_module_prefix="not_installed"

export _sp_prefix="/daq/software/spack_packages/spack/current/NULL"

export _sp_share_dir="/daq/software/spack_packages/spack/current/NULL/share/spack"

export _sp_shell="bash"

export _sp_source_file="/daq/software/spack_packages/spack/current/NULL/share/spack/setup-env.sh"

export _sp_subcommand="load"

export _sp_sys_type="linux-scientific7-skylake_avx512"

export _sp_tcl_roots="/daq/software/spack_packages/spack/v0.23.0.sbnd/NULL/share/spack/modules"

export build_hash_map

export cmd="python3"

export i="1"

export need_module="yes"

export pth="/daq/software/spack_packages/spack/v0.23.0.sbnd/NULL/share/spack/modules"

export systype="linux-scientific7-x86_64"

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
    SPACK_COMPREPLY="-h --help -E --except-any-environment -e --except-environment -b --keep-build-dependencies -y --yes-to-all"
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
        SPACK_COMPREPLY="-h --help -a --all --detectable --maintainers --no-dependencies --no-variants --no-versions --phases --tags --tests --virtuals --variants-by-name";
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

