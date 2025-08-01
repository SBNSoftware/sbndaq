#!/usr/bin/env bash
# Captured environment: 20250726_125537

[[ "$0" != "${BASH_SOURCE}" ]] || { echo "The script $(basename ${BASH_SOURCE}) should be sourced!"; exit 1; }
shopt -s extglob
#Environment variables
export ACLOCAL_PATH=/daq/software/spack_packages/cmake/3.27.9/linux-scientific7-x86_64_v2-gcc-12.1.0-w7r2w2e46ym4wy2r3gv6wfldfjbrtjxm/share/aclocal:\
/daq/software/spack_packages/gsl/2.7.1/linux-scientific7-x86_64_v2-gcc-12.1.0-qpbgmwp3lzazgbgq4ybzvphwtjhrujnw/share/aclocal:\
/daq/software/spack_packages/curl/8.8.0/linux-scientific7-x86_64_v2-gcc-12.1.0-abai22j57nbgrejwqna4vmsss5jxttn2/share/aclocal:\
/daq/software/spack_packages/util-macros/1.20.1/linux-scientific7-x86_64_v2-gcc-12.1.0-bgpgnvoabiikjfr6hjf34cvr4oj6x5b5/share/aclocal:\
/daq/software/spack_packages/xtrans/1.5.0/linux-scientific7-x86_64_v2-gcc-12.1.0-qr5uiimh3xomqxnee4tzjc65vqome64j/share/aclocal:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-scientific7-x86_64_v2-gcc-12.1.0-bm3r5x6u4wv43ma6xhboihy54idhdgj3/share/aclocal:\
/daq/software/spack_packages/glib/2.78.3/linux-scientific7-x86_64_v2-gcc-12.1.0-j4tnel6pvt4yxjjipxyffiqvfbdr6zzw/share/aclocal:\
/daq/software/spack_packages/pkgconf/2.2.0/linux-scientific7-x86_64_v2-gcc-12.1.0-wgg5tbq4iqvgirxis52tkpuphalafqys/share/aclocal:\
/daq/software/spack_packages/gettext/0.22.5/linux-scientific7-x86_64_v2-gcc-12.1.0-2mpyicbdlhidfobaoah7esytbvlgnrt2/share/aclocal:\
/daq/software/spack_packages/libxml2/2.9.12/linux-scientific7-x86_64_v2-gcc-12.1.0-mvjb7eqiktjommr3qa6kv65rolrvgk4u/share/aclocal:\
/daq/software/spack_packages/freetype/2.13.3/linux-scientific7-x86_64_v2-gcc-12.1.0-wtdmflrac5uukkx3ys6wwdvuzwvk4arc/share/aclocal:\
/daq/software/spack_packages/font-util/1.4.1/linux-scientific7-x86_64_v2-gcc-12.1.0-b2okhvlvljnrcq7eitahdqbgpuojzo4k/share/aclocal:\
/usr/share/aclocal

export ARTDAQ_DAQINTERFACE_DIR="/daq/software/spack_packages/artdaq-daqinterface/v3_14_00/linux-scientific7-x86_64_v2-gcc-12.1.0-7ypm3cxultufs7itifvqowjgpwlw5dsr"

export ARTDAQ_DAQINTERFACE_VERSION="SPACK"

export ARTDAQ_MFEXTENSIONS_DIR="/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-scientific7-x86_64_v2-gcc-12.1.0-mkfwdocq6bhsye5oh3u7vktbr2nmznsw"

export BOOST_ROOT="/daq/software/spack_packages/boost/1.82.0/linux-scientific7-x86_64_v2-gcc-12.1.0-arw4js3gedhbkmgpu5jfungzppcsbd3w"

export BUILD_HASH="/gvo37in"

export BUILD_VARIANT="gcc@12.1.0"

export CC="/daq/software/spack_packages/llvm/17.0.6/linux-scientific7-x86_64_v2-gcc-12.1.0-oonxvbhjt3azge6lcczgucm5mtgayx6m/bin/clang"

export CET_PLUGIN_PATH=/daq/software/spack_packages/sbndaq/v1_10_07/linux-scientific7-x86_64_v2-gcc-12.1.0-q2tujlrnvsmd7if2smqsq2bfi5ocqptc/lib:\
/daq/software/spack_packages/sbndaq-artdaq/v1_10_07/linux-scientific7-x86_64_v2-gcc-12.1.0-gkwhxmojvrabmr33fv2igipfhjidokpr/lib:\
/daq/software/spack_packages/artdaq-epics-plugin/v1_06_00/linux-scientific7-x86_64_v2-gcc-12.1.0-xmvaow25gjkj6nfxdbnkcjxwsc2vkkol/lib:\
/daq/software/spack_packages/artdaq-demo/v3_13_00/linux-scientific7-x86_64_v2-gcc-12.1.0-vpt4jg3smyjezyrwi44nd6wlbdhdv2fj/lib:\
/daq/software/spack_packages/artdaq-core-demo/v1_11_00/linux-scientific7-x86_64_v2-gcc-12.1.0-4bg7xv76qybwrzezcjxpyh77v44diirc/lib:\
/daq/software/spack_packages/artdaq/v3_13_02/linux-scientific7-x86_64_v2-gcc-12.1.0-pohkoyxkeauyhfxpob2pkknxbdfn6gpu/lib:\
/daq/software/spack_packages/artdaq-utilities/v1_09_00/linux-scientific7-x86_64_v2-gcc-12.1.0-qgo7vaxjwkr6siqp7mzxpzvcftmdrosa/lib:\
/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-scientific7-x86_64_v2-gcc-12.1.0-mkfwdocq6bhsye5oh3u7vktbr2nmznsw/lib:\
/daq/software/spack_packages/artdaq-core/v3_10_02/linux-scientific7-x86_64_v2-gcc-12.1.0-ajiwgwaq2xolmwy7oj7vgccrwiz5cycd/lib:\
/daq/software/spack_packages/trace/v3_17_11/linux-scientific7-x86_64_v2-gcc-12.1.0-rg46htdwkdgm4tr7ut6v3bniu24yncfs/lib:\
/daq/software/spack_packages/art-root-io/1.13.06/linux-scientific7-x86_64_v2-gcc-12.1.0-jyefivtudqunnaayll7zoocpmgmyl6nc/lib:\
/daq/software/spack_packages/art/3.14.04/linux-scientific7-x86_64_v2-gcc-12.1.0-673iqpt3aiayu5spcq66cnekpqr5sxwt/lib:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-scientific7-x86_64_v2-gcc-12.1.0-zesi6i7qrw7tidja4swfoul245hvhmln/lib

export CLING_STANDARD_PCH="none"

export CMAKE_PREFIX_PATH=/daq/software/spack_packages/sbndaq-suite/v1_10_07/linux-scientific7-x86_64_v2-gcc-12.1.0-gvo37in7tsmcbv6a5ketfooccxa2wt2i:\
/daq/software/spack_packages/sbndaq/v1_10_07/linux-scientific7-x86_64_v2-gcc-12.1.0-q2tujlrnvsmd7if2smqsq2bfi5ocqptc:\
/daq/software/spack_packages/sbndaq-artdaq/v1_10_07/linux-scientific7-x86_64_v2-gcc-12.1.0-gkwhxmojvrabmr33fv2igipfhjidokpr:\
/daq/software/spack_packages/windriver/v12_06_00/linux-scientific7-x86_64_v2-gcc-12.1.0-nlnvgvxgr7ebxsacemw6mqqtnlrhexhf:\
/daq/software/spack_packages/wibtools/v1_10_06/linux-scientific7-x86_64_v2-gcc-12.1.0-xly3yu7icicnzfmecjvnrvv5jqkcswor:\
/daq/software/spack_packages/sbndaq-artdaq-core/v1_10_06/linux-scientific7-x86_64_v2-gcc-12.1.0-47spookdyiyyyxmlpgeqrze6u6uid4s6:\
/daq/software/spack_packages/redis/7.4.0/linux-scientific7-x86_64_v2-gcc-12.1.0-dviptxuagx5gpgws7hwz6ghl5rzqlugk:\
/daq/software/spack_packages/libpqxx/7.6.0/linux-scientific7-x86_64_v2-gcc-12.1.0-2ctctvsvovvny6xmlwiuv3so7feabpar:\
/daq/software/spack_packages/jsoncpp/1.9.5/linux-scientific7-x86_64_v2-gcc-12.1.0-fpgfhxe3jimlznefn6nqulh627t2sztc:\
/daq/software/spack_packages/hiredis/1.1.0/linux-scientific7-x86_64_v2-gcc-12.1.0-co2zelvfo2fh4olkylqgsley3ffxxata:\
/daq/software/spack_packages/cppzmq/4.10.0/linux-scientific7-x86_64_v2-gcc-12.1.0-rufphh2tnz52lvus43ytnrygetlceajp:\
/daq/software/spack_packages/libzmq/4.3.5/linux-scientific7-x86_64_v2-gcc-12.1.0-r52bwahrrxw7w6dc6mmqy6cdpnhlic3t:\
/daq/software/spack_packages/libsodium/1.0.20/linux-scientific7-x86_64_v2-gcc-12.1.0-wxmf4uwhnotlsww5sk2bd4obuvsgslog:\
/daq/software/spack_packages/caendigitizer/2.17.3/linux-scientific7-x86_64_v2-gcc-12.1.0-5c33l6k4j63cnldnw7a4ukh4n5kxjrj7:\
/daq/software/spack_packages/caencomm/1.7.0/linux-scientific7-x86_64_v2-gcc-12.1.0-frc3py34uinjt52xturusdmyf5stlofr:\
/daq/software/spack_packages/caenvmelib/4.0.2/linux-scientific7-x86_64_v2-gcc-12.1.0-vicopu43wnnfyqziem3zrkvoz7jzuchh:\
/daq/software/spack_packages/libusb/1.0.22/linux-scientific7-x86_64_v2-gcc-12.1.0-64k2zfhkurfr2sbnm4ocoh6eb5tkv7ma:\
/daq/software/spack_packages/artdaq-suite/v3_13_02/linux-scientific7-x86_64_v2-gcc-12.1.0-x4x35pzvcn6uwuvo27jjqq2rfcfmo5wf:\
/daq/software/spack_packages/artdaq-epics-plugin/v1_06_00/linux-scientific7-x86_64_v2-gcc-12.1.0-xmvaow25gjkj6nfxdbnkcjxwsc2vkkol:\
/daq/software/spack_packages/epics-base/7.0.6.1/linux-scientific7-x86_64_v2-gcc-12.1.0-m36qtuhsbvfsptbpvizhpuhgwv5sjuci:\
/daq/software/spack_packages/artdaq-demo/v3_13_00/linux-scientific7-x86_64_v2-gcc-12.1.0-vpt4jg3smyjezyrwi44nd6wlbdhdv2fj:\
/daq/software/spack_packages/artdaq-database/v1_10_00/linux-scientific7-x86_64_v2-gcc-12.1.0-q7egx2nlrzxrxeiobko3zn4ipr6bvtwy:\
/daq/software/spack_packages/artdaq-daqinterface/v3_14_00/linux-scientific7-x86_64_v2-gcc-12.1.0-7ypm3cxultufs7itifvqowjgpwlw5dsr:\
/daq/software/spack_packages/artdaq-core-demo/v1_11_00/linux-scientific7-x86_64_v2-gcc-12.1.0-4bg7xv76qybwrzezcjxpyh77v44diirc:\
/daq/software/spack_packages/artdaq/v3_13_02/linux-scientific7-x86_64_v2-gcc-12.1.0-pohkoyxkeauyhfxpob2pkknxbdfn6gpu:\
/daq/software/spack_packages/artdaq-utilities/v1_09_00/linux-scientific7-x86_64_v2-gcc-12.1.0-qgo7vaxjwkr6siqp7mzxpzvcftmdrosa:\
/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-scientific7-x86_64_v2-gcc-12.1.0-mkfwdocq6bhsye5oh3u7vktbr2nmznsw:\
/daq/software/spack_packages/artdaq-core/v3_10_02/linux-scientific7-x86_64_v2-gcc-12.1.0-ajiwgwaq2xolmwy7oj7vgccrwiz5cycd:\
/daq/software/spack_packages/trace/v3_17_11/linux-scientific7-x86_64_v2-gcc-12.1.0-rg46htdwkdgm4tr7ut6v3bniu24yncfs:\
/daq/software/spack_packages/art-suite/s131/linux-scientific7-x86_64_v2-gcc-12.1.0-ls76stzmrxghqsbh3n2qd2oj7uonucod:\
/daq/software/spack_packages/xrootd/5.5.5/linux-scientific7-x86_64_v2-gcc-12.1.0-btqxqqdbmz7uevm7wvjye5bhppme5jyq:\
/daq/software/spack_packages/json-c/0.16/linux-scientific7-x86_64_v2-gcc-12.1.0-uof7ain42e374ebddbtjn3mqnnplbuo5:\
/daq/software/spack_packages/pythia6/6.4.28/linux-scientific7-x86_64_v2-gcc-12.1.0-ahspgu6ag7cm4nf34vbd3r7uldkcsqdh:\
/daq/software/spack_packages/py-pybind11/2.10.4/linux-scientific7-x86_64_v2-gcc-12.1.0-wvqnyzq2rvsiwtfkbluvb6lxiom3qikp:\
/daq/software/spack_packages/py-numpy/1.24.3/linux-scientific7-x86_64_v2-gcc-12.1.0-zmj2kuhh5fvbkk3flvzoevn6sf4eyn3o:\
/daq/software/spack_packages/py-setuptools/63.4.3/linux-scientific7-x86_64_v2-gcc-12.1.0-xj4dsmvtekh622gvexxj5u2sqgxk2w7h:\
/daq/software/spack_packages/python-venv/1.0/linux-scientific7-x86_64_v2-gcc-12.1.0-qgncjibkf6rj5o34zlm7tyiojmscackp:\
/daq/software/spack_packages/postgresql/15.2/linux-scientific7-x86_64_v2-gcc-12.1.0-sgzf3o4trwv5esptsqzirlfxzbejrpkn:\
/daq/software/spack_packages/openblas/0.3.23/linux-scientific7-x86_64_v2-gcc-12.1.0-xh5p66vbvpkgh3km4xa5y54cm3nbsluz:\
/daq/software/spack_packages/fftw/3.3.10/linux-scientific7-x86_64_v2-gcc-12.1.0-evxhmqsyanrttt4wring5plqbplfknfp:\
/daq/software/spack_packages/openmpi/5.0.5/linux-scientific7-x86_64_v2-gcc-12.1.0-bqu6nrjuyd7bw5ntibseofrxdkyrw24l:\
/daq/software/spack_packages/pmix/5.0.3/linux-scientific7-x86_64_v2-gcc-12.1.0-dnesjqn7qrhepl3qzsdmrp6eyma3fccg:\
/daq/software/spack_packages/openssh/9.8p1/linux-scientific7-x86_64_v2-gcc-12.1.0-mjyuwtcfwlltfv5wiigwmzgixd47vtb5:\
/daq/software/spack_packages/krb5/1.21.3/linux-scientific7-x86_64_v2-gcc-12.1.0-smtl77no5jhvbzkzeq7g4ufxtss7th4v:\
/daq/software/spack_packages/numactl/2.0.18/linux-scientific7-x86_64_v2-gcc-12.1.0-52sdemk6hhsmogdjqklopdnyoqskel75:\
/daq/software/spack_packages/libevent/2.1.12/linux-scientific7-x86_64_v2-gcc-12.1.0-utdkwskbbmum7exkcxplbdldlqoiwxok:\
/daq/software/spack_packages/cetmodules/3.24.01/linux-scientific7-x86_64_v2-gcc-12.1.0-iptdaeexlyev7krnwhswelpxaev3aeeg:\
/daq/software/spack_packages/cmake/3.27.9/linux-scientific7-x86_64_v2-gcc-12.1.0-w7r2w2e46ym4wy2r3gv6wfldfjbrtjxm:\
/daq/software/spack_packages/gmake/4.4.1/linux-scientific7-x86_64_v2-gcc-12.1.0-dr5y72h5jk2nqboh5nzmwgjtah2es3wv:\
/daq/software/spack_packages/art-root-io/1.13.06/linux-scientific7-x86_64_v2-gcc-12.1.0-jyefivtudqunnaayll7zoocpmgmyl6nc:\
/daq/software/spack_packages/canvas-root-io/1.13.06/linux-scientific7-x86_64_v2-gcc-12.1.0-v43hqo4caywke2tmr22khvhjhfwplbkj:\
/daq/software/spack_packages/root/6.28.12/linux-scientific7-x86_64_v2-gcc-12.1.0-qds7rrehskeatmynw6dl56633gp6jlna:\
/daq/software/spack_packages/xxhash/0.8.2/linux-scientific7-x86_64_v2-gcc-12.1.0-xxyiytvxl7yflvrfqhzhnvhwyymixquf:\
/daq/software/spack_packages/vdt/0.4.4/linux-scientific7-x86_64_v2-gcc-12.1.0-ovbtgbr3mnizyrwil2uyafakjlmqhmzn:\
/daq/software/spack_packages/unuran/1.8.1/linux-scientific7-x86_64_v2-gcc-12.1.0-of72ar4ywp2a632md7d4n7ktqoiqsm6r:\
/daq/software/spack_packages/rngstreams/1.0.1/linux-scientific7-x86_64_v2-gcc-12.1.0-4dsvxeoocyadx7umrr6sn2ppnlefvbye:\
/daq/software/spack_packages/pcre/8.45/linux-scientific7-x86_64_v2-gcc-12.1.0-6kic36gnromxnxheawdfbqsa7z6pxndn:\
/daq/software/spack_packages/nlohmann-json/3.11.3/linux-scientific7-x86_64_v2-gcc-12.1.0-ng74lromyojfouichoelmhstihdxk6be:\
/daq/software/spack_packages/lz4/1.10.0/linux-scientific7-x86_64_v2-gcc-12.1.0-2ngm7dq6vh7fqlup7kzprkswnhpdx27j:\
/daq/software/spack_packages/libxpm/3.5.17/linux-scientific7-x86_64_v2-gcc-12.1.0-54ljpwtfwgmzgqgixb7qnzuhqk4unvcw:\
/daq/software/spack_packages/libxft/2.3.8/linux-scientific7-x86_64_v2-gcc-12.1.0-5apo376fx7pwvlyuowzsyveykcq7bdtw:\
/daq/software/spack_packages/gsl/2.7.1/linux-scientific7-x86_64_v2-gcc-12.1.0-qpbgmwp3lzazgbgq4ybzvphwtjhrujnw:\
/daq/software/spack_packages/glew/2.2.0/linux-scientific7-x86_64_v2-gcc-12.1.0-ugid4brjilnedja2n5k43gzt3kg5fyo5:\
/daq/software/spack_packages/gl2ps/1.4.2/linux-scientific7-x86_64_v2-gcc-12.1.0-qkuwebsdlpnmysxhkoifq3z6ypnqy6uu:\
/daq/software/spack_packages/ftgl/2.4.0/linux-scientific7-x86_64_v2-gcc-12.1.0-bdch4jxjfpgmghriiblt6merxsuyif3h:\
/daq/software/spack_packages/mesa-glu/9.0.2/linux-scientific7-x86_64_v2-gcc-12.1.0-ehuxz5bunbjehf45qywxjvz4w57qzn3i:\
/daq/software/spack_packages/glx/1.4/linux-scientific7-x86_64_v2-gcc-12.1.0-iwtfyhty7ra5fbxqm2kt3e6buduvqect:\
/daq/software/spack_packages/mesa/23.3.6/linux-scientific7-x86_64_v2-gcc-12.1.0-dieogogchcmenrubcckojlfzcsma4k5x:\
/daq/software/spack_packages/xrandr/1.5.2/linux-scientific7-x86_64_v2-gcc-12.1.0-5e6jmtwxqrjkojqsvu7xllhubi5nn6o5:\
/daq/software/spack_packages/libxrandr/1.5.4/linux-scientific7-x86_64_v2-gcc-12.1.0-mki3m2hktjb33blienvo5z7n5mreezvx:\
/daq/software/spack_packages/randrproto/1.5.0/linux-scientific7-x86_64_v2-gcc-12.1.0-thzikeaxc2hhu6hjqravmmzxylsnpovw:\
/daq/software/spack_packages/llvm/17.0.6/linux-scientific7-x86_64_v2-gcc-12.1.0-oonxvbhjt3azge6lcczgucm5mtgayx6m:\
/daq/software/spack_packages/swig/4.1.1/linux-scientific7-x86_64_v2-gcc-12.1.0-twffq6ibkccuiaafhqqdtwteqb7win3h:\
/daq/software/spack_packages/lua/5.3.6/linux-scientific7-x86_64_v2-gcc-12.1.0-g52bpuntt37myiw6rtr23l3xnopnn2vs:\
/daq/software/spack_packages/unzip/6.0/linux-scientific7-x86_64_v2-gcc-12.1.0-sfuje2ux57y4eex2r4h6ltclbrvotoyk:\
/daq/software/spack_packages/libedit/3.1-20240808/linux-scientific7-x86_64_v2-gcc-12.1.0-ez7k7bzagxw6hh6zq24v7srq3a3rckpy:\
/daq/software/spack_packages/binutils/2.43.1/linux-scientific7-x86_64_v2-gcc-12.1.0-sh7pfe76fvh6pnmqcbldqhx74o5yneys:\
/daq/software/spack_packages/libxt/1.3.0/linux-scientific7-x86_64_v2-gcc-12.1.0-nbuh2whsoajqcwzv7elf3ycwh6ovjqss:\
/daq/software/spack_packages/libunwind/1.6.2/linux-scientific7-x86_64_v2-gcc-12.1.0-ynwondarg3654iwbknk7uabxwxkszi26:\
/daq/software/spack_packages/glproto/1.4.17/linux-scientific7-x86_64_v2-gcc-12.1.0-okecztudxgb2dyn562xkdxr36odpv7ty:\
/daq/software/spack_packages/davix/0.8.7/linux-scientific7-x86_64_v2-gcc-12.1.0-uf6wyx3mdkg5xztecxhte2vmfgsfwoim:\
/daq/software/spack_packages/rapidjson/1.2.0-2024-08-16/linux-scientific7-x86_64_v2-gcc-12.1.0-xcu7vhyffgqj4obcwuf2b4pktn5up4w6:\
/daq/software/spack_packages/art/3.14.04/linux-scientific7-x86_64_v2-gcc-12.1.0-673iqpt3aiayu5spcq66cnekpqr5sxwt:\
/daq/software/spack_packages/hep-concurrency/1.09.02/linux-scientific7-x86_64_v2-gcc-12.1.0-plzhakwxyr34w4b72nrszc6fogk5g4ms:\
/daq/software/spack_packages/canvas/3.16.04/linux-scientific7-x86_64_v2-gcc-12.1.0-nghndp52twnnyb6doopehblysskomq57:\
/daq/software/spack_packages/range-v3/0.12.0/linux-scientific7-x86_64_v2-gcc-12.1.0-736lwhu2i5uj74jrxaur46uh3hr54dma:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-scientific7-x86_64_v2-gcc-12.1.0-zesi6i7qrw7tidja4swfoul245hvhmln:\
/daq/software/spack_packages/catch2/3.3.2/linux-scientific7-x86_64_v2-gcc-12.1.0-4nmcsdbj6o5dbwxpktrn4gmllyayv5g2:\
/daq/software/spack_packages/fhicl-cpp/4.18.04/linux-scientific7-x86_64_v2-gcc-12.1.0-xgfwmiubujvze3iahzwr7iq3iszg2svg:\
/daq/software/spack_packages/intel-tbb/2021.12.0/linux-scientific7-x86_64_v2-gcc-12.1.0-lakjaspivfkf4nk7ttemijhqz4s5kjzf:\
/daq/software/spack_packages/hwloc/2.11.1/linux-scientific7-x86_64_v2-gcc-12.1.0-42rrawqd22xlucciyqjvveaged6modfw:\
/daq/software/spack_packages/libpciaccess/0.17/linux-scientific7-x86_64_v2-gcc-12.1.0-tyogvliqmlqpaycug3qrworlnkmbhoj7:\
/daq/software/spack_packages/clhep/2.4.7.1/linux-scientific7-x86_64_v2-gcc-12.1.0-vx5syhryunoc2omslhbwz2wqdtazsnos:\
/daq/software/spack_packages/cetlib/3.18.02/linux-scientific7-x86_64_v2-gcc-12.1.0-ksueu4az34yru2xjnfcousnzhvwtatfv:\
/daq/software/spack_packages/cetlib-except/1.09.01/linux-scientific7-x86_64_v2-gcc-12.1.0-4xpkccndizziwe6x27g6x35qufvmfc3s:\
/daq/software/spack_packages/boost/1.82.0/linux-scientific7-x86_64_v2-gcc-12.1.0-arw4js3gedhbkmgpu5jfungzppcsbd3w:\
/daq/software/spack_packages/artdaq-runcontrol-gui/v1_03_06/linux-scientific7-x86_64_v2-gcc-12.1.0-bkz2gfugex5aptnvvgk47q5exp5aew4l:\
/daq/software/spack_packages/xmlrpc-c/1.51.06/linux-scientific7-x86_64_v2-gcc-12.1.0-wui73zcb742xdkayb64mpdircygfpwrb:\
/daq/software/spack_packages/curl/8.8.0/linux-scientific7-x86_64_v2-gcc-12.1.0-abai22j57nbgrejwqna4vmsss5jxttn2:\
/daq/software/spack_packages/nghttp2/1.63.0/linux-scientific7-x86_64_v2-gcc-12.1.0-u5enmkbawgclkyb5dvmkxlmu24rtvhgz:\
/daq/software/spack_packages/qt/5.15.15/linux-scientific7-x86_64_v2-gcc-12.1.0-ecpnt64sxclskwhetqg2c7n2ewcyvg3h:\
/daq/software/spack_packages/xcb-util-wm/0.4.2/linux-scientific7-x86_64_v2-gcc-12.1.0-ferkrgusea6yjvgt4szw72urlamdiou5:\
/daq/software/spack_packages/xcb-util-renderutil/0.3.10/linux-scientific7-x86_64_v2-gcc-12.1.0-vzvmi6b6qudg2e3xpqbcdnzkknsn2xbw:\
/daq/software/spack_packages/xcb-util-keysyms/0.4.1/linux-scientific7-x86_64_v2-gcc-12.1.0-e5xy7smfggl4try57bjyveagvdsueira:\
/daq/software/spack_packages/xcb-util-image/0.4.1/linux-scientific7-x86_64_v2-gcc-12.1.0-un7vxydadwfkrpv7e2toqylfa42nzofq:\
/daq/software/spack_packages/xcb-util/0.4.1/linux-scientific7-x86_64_v2-gcc-12.1.0-2ybjswdf65dqw767qcuw2fdahviezb2v:\
/daq/software/spack_packages/libxrender/0.9.11/linux-scientific7-x86_64_v2-gcc-12.1.0-z5duuosxndjzjfsey6dw2yd67toblx4u:\
/daq/software/spack_packages/renderproto/0.11.1/linux-scientific7-x86_64_v2-gcc-12.1.0-pwkmoamcq6bz7zen3k2tgflenze2wvk5:\
/daq/software/spack_packages/libxkbcommon/1.7.0/linux-scientific7-x86_64_v2-gcc-12.1.0-suobanewktt26sfkbbt4xhyx37zjw466:\
/daq/software/spack_packages/xkbdata/1.0.1/linux-scientific7-x86_64_v2-gcc-12.1.0-5nvzncjgvach55hmwr3b5h43tfcz4wxt:\
/daq/software/spack_packages/util-macros/1.20.1/linux-scientific7-x86_64_v2-gcc-12.1.0-bgpgnvoabiikjfr6hjf34cvr4oj6x5b5:\
/daq/software/spack_packages/libxext/1.3.6/linux-scientific7-x86_64_v2-gcc-12.1.0-pzl5hc5jtsbgynqcmm5dxamei2sok23w:\
/daq/software/spack_packages/xextproto/7.3.0/linux-scientific7-x86_64_v2-gcc-12.1.0-y5bjckzsmi56ijewszfiiu4fs3jpxmyq:\
/daq/software/spack_packages/libx11/1.8.10/linux-scientific7-x86_64_v2-gcc-12.1.0-q2wzgxhmzzbyiljdkvzdgj2xgydymzum:\
/daq/software/spack_packages/libxcb/1.17.0/linux-scientific7-x86_64_v2-gcc-12.1.0-vr7v6qbfqwfocnug4uom3sdo4bnqwra6:\
/daq/software/spack_packages/libxdmcp/1.1.5/linux-scientific7-x86_64_v2-gcc-12.1.0-xbkcmoxyyevels5kmzd44ouaixlfxpvb:\
/daq/software/spack_packages/libxau/1.0.11/linux-scientific7-x86_64_v2-gcc-12.1.0-sysciliizhsh5s5dq3legxyud6cf4qqs:\
/daq/software/spack_packages/libpthread-stubs/0.5/linux-scientific7-x86_64_v2-gcc-12.1.0-o62e4bthko45oy6qwaiohkga3tulpxss:\
/daq/software/spack_packages/kbproto/1.0.7/linux-scientific7-x86_64_v2-gcc-12.1.0-y6rzgxbr43nnqhu5ittkfj7465o2zhag:\
/daq/software/spack_packages/libsm/1.2.4/linux-scientific7-x86_64_v2-gcc-12.1.0-znvvt53tyskfuqeiwbqqi5ccz44ly65p:\
/daq/software/spack_packages/libice/1.1.1/linux-scientific7-x86_64_v2-gcc-12.1.0-s5b4nv7ac5ufujlewvpjugvcwrg5ltkn:\
/daq/software/spack_packages/xtrans/1.5.0/linux-scientific7-x86_64_v2-gcc-12.1.0-qr5uiimh3xomqxnee4tzjc65vqome64j:\
/daq/software/spack_packages/xproto/7.0.31/linux-scientific7-x86_64_v2-gcc-12.1.0-4hjuj4hygt3fe7pqfluqp7bcchyktjci:\
/daq/software/spack_packages/libmng/2.0.3/linux-scientific7-x86_64_v2-gcc-12.1.0-dp5iuuspvh52tbgtbgfgfenvfqulhibc:\
/daq/software/spack_packages/lcms/2.16/linux-scientific7-x86_64_v2-gcc-12.1.0-o6dcf4qqweq6sfbtg7tid2lygamjqoda:\
/daq/software/spack_packages/libtiff/4.7.0/linux-scientific7-x86_64_v2-gcc-12.1.0-6melb22vv3hm74e35izgfmtzd6ofhxho:\
/daq/software/spack_packages/libjpeg-turbo/3.0.3/linux-scientific7-x86_64_v2-gcc-12.1.0-copnoe3uxvpwslwhesvti7tc4o7z3bnf:\
/daq/software/spack_packages/harfbuzz/10.0.1/linux-scientific7-x86_64_v2-gcc-12.1.0-htotx2wdxkvqzgcupnivzkkyg5c3qgc3:\
/daq/software/spack_packages/icu4c/74.2/linux-scientific7-x86_64_v2-gcc-12.1.0-fs47wx5rmvvp7u4swqcjxtpehvf6rvpj:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-scientific7-x86_64_v2-gcc-12.1.0-bm3r5x6u4wv43ma6xhboihy54idhdgj3:\
/daq/software/spack_packages/cairo/1.16.0/linux-scientific7-x86_64_v2-gcc-12.1.0-qqlch5vapwnuyrkttnjiz6eglwpenpb5:\
/daq/software/spack_packages/pixman/0.42.2/linux-scientific7-x86_64_v2-gcc-12.1.0-62tucvx3fgueti2rfkkkybolep3is37h:\
/daq/software/spack_packages/glib/2.78.3/linux-scientific7-x86_64_v2-gcc-12.1.0-j4tnel6pvt4yxjjipxyffiqvfbdr6zzw:\
/daq/software/spack_packages/python/3.9.15/linux-scientific7-x86_64_v2-gcc-12.1.0-neuzvj3gpdpezzr3lmen554oo6pfsw7k:\
/daq/software/spack_packages/sqlite/3.40.1/linux-scientific7-x86_64_v2-gcc-12.1.0-7do3q3hlyc2yog3knvhpyru3fr3syqkx:\
/daq/software/spack_packages/openssl/3.3.1/linux-scientific7-x86_64_v2-gcc-12.1.0-gtpsn2exm3nc5jrrlrhhf4ogi3n72yxg:\
/daq/software/spack_packages/libxcrypt/4.4.35/linux-scientific7-x86_64_v2-gcc-12.1.0-jl2c3c5t6qii3x54rvb3x5nzicw3i3gk:\
/daq/software/spack_packages/expat/2.6.3/linux-scientific7-x86_64_v2-gcc-12.1.0-67ri5mycrfnuxn2fe2gfkryycsfqdx5x:\
/daq/software/spack_packages/libbsd/0.12.2/linux-scientific7-x86_64_v2-gcc-12.1.0-a3ehnhixspxyphyctrhbg5v2rfek6pht:\
/daq/software/spack_packages/libmd/1.0.4/linux-scientific7-x86_64_v2-gcc-12.1.0-sn4b7oxrjxha7qqkizakpcdblddcik6k:\
/daq/software/spack_packages/perl/5.40.0/linux-scientific7-x86_64_v2-gcc-12.1.0-nhaepfqjfdvgzff6kwwbbbnkzewvnk6f:\
/daq/software/spack_packages/gdbm/1.23/linux-scientific7-x86_64_v2-gcc-12.1.0-bo3tsl2eogjombpbnnjesfdfkd344vxx:\
/daq/software/spack_packages/readline/8.2/linux-scientific7-x86_64_v2-gcc-12.1.0-iillh2ypzrvu4c3nefwel43mfb4ipzh2:\
/daq/software/spack_packages/berkeley-db/18.1.40/linux-scientific7-x86_64_v2-gcc-12.1.0-njklv32wsqg5adjkaz7rfwauhcklnol6:\
/daq/software/spack_packages/pcre2/10.44/linux-scientific7-x86_64_v2-gcc-12.1.0-uuq57i44lhnnq2ehid733etkx5menvbc:\
/daq/software/spack_packages/libffi/3.4.6/linux-scientific7-x86_64_v2-gcc-12.1.0-vxupfcievnuhitsrfwtywyjtvja4xr7u:\
/daq/software/spack_packages/elfutils/0.191/linux-scientific7-x86_64_v2-gcc-12.1.0-g2lwzqiyruym2mtqxg2eh5gs6md4py2u:\
/daq/software/spack_packages/pkgconf/2.2.0/linux-scientific7-x86_64_v2-gcc-12.1.0-wgg5tbq4iqvgirxis52tkpuphalafqys:\
/daq/software/spack_packages/gettext/0.22.5/linux-scientific7-x86_64_v2-gcc-12.1.0-2mpyicbdlhidfobaoah7esytbvlgnrt2:\
/daq/software/spack_packages/tar/1.34/linux-scientific7-x86_64_v2-gcc-12.1.0-rdvbw2a4usbmz77tstgmekcmv7ihh2um:\
/daq/software/spack_packages/zstd/1.5.6/linux-scientific7-x86_64_v2-gcc-12.1.0-ltt2cbcwus2nwcyikb34oocgdn5gbay7:\
/daq/software/spack_packages/pigz/2.8/linux-scientific7-x86_64_v2-gcc-12.1.0-ec4dpneqrgtje6sdkbhgd3sb7vw724fk:\
/daq/software/spack_packages/ncurses/6.5/linux-scientific7-x86_64_v2-gcc-12.1.0-xkjsxxs2wu5m7gropdpr4hh5ptbdsmlw:\
/daq/software/spack_packages/fontconfig/2.15.0/linux-scientific7-x86_64_v2-gcc-12.1.0-4cx7hur2t47kx5udlconuzrgeyazx7jy:\
/daq/software/spack_packages/util-linux-uuid/2.40.2/linux-scientific7-x86_64_v2-gcc-12.1.0-cmghxau3amtlkosc2x5kpbnxrkplyul5:\
/daq/software/spack_packages/libxml2/2.9.12/linux-scientific7-x86_64_v2-gcc-12.1.0-mvjb7eqiktjommr3qa6kv65rolrvgk4u:\
/daq/software/spack_packages/xz/5.4.6/linux-scientific7-x86_64_v2-gcc-12.1.0-63uqskev6ph3q52qegolmbx44i5ixlzo:\
/daq/software/spack_packages/libiconv/1.17/linux-scientific7-x86_64_v2-gcc-12.1.0-kgsg5yd7h7g3e5je42iriel32qddytie:\
/daq/software/spack_packages/freetype/2.13.3/linux-scientific7-x86_64_v2-gcc-12.1.0-wtdmflrac5uukkx3ys6wwdvuzwvk4arc:\
/daq/software/spack_packages/libpng/1.6.39/linux-scientific7-x86_64_v2-gcc-12.1.0-suxjfnj6b4jkqy3ysdc3z3ee65v7d4hr:\
/daq/software/spack_packages/zlib-ng/2.2.1/linux-scientific7-x86_64_v2-gcc-12.1.0-sxdpvxtolijkcollh2p52tgzjfqyzccs:\
/daq/software/spack_packages/bzip2/1.0.8/linux-scientific7-x86_64_v2-gcc-12.1.0-zthfzpjwlediwy2c47oubz7cisknp2ne:\
/daq/software/spack_packages/font-util/1.4.1/linux-scientific7-x86_64_v2-gcc-12.1.0-b2okhvlvljnrcq7eitahdqbgpuojzo4k:\
/daq/software/spack_packages/double-conversion/3.3.0/linux-scientific7-x86_64_v2-gcc-12.1.0-zazryktu3mleimylok4yy76rov3lsbbz:\
/daq/software/spack_packages/gcc-runtime/12.1.0/linux-scientific7-x86_64_v2-gcc-12.1.0-5q6qhr6zztifbsml5e6xqm6fpjnnsm5g

export COLORTERM="truecolor"

export CPPYY_API_PATH="none"

export CXX="/daq/software/spack_packages/llvm/17.0.6/linux-scientific7-x86_64_v2-gcc-12.1.0-oonxvbhjt3azge6lcczgucm5mtgayx6m/bin/clang++"

export DAQINTERFACE_CONFIGURE_STATUS_CHECK_QUIET_TIME="60"

export DAQ_SETUP_SCRIPT="/home/nfs/icarus/DAQ_SPACK_ProdAreas/DAQ_2025-04-07_GAL_v1_10_07/srcs/sbndaq/sbn-fd/DAQInterface2/setup_sbn_artdaq.sh"

export DBUS_SESSION_BUS_ADDRESS="unix:abstract=/tmp/dbus-dPscCbOFSh,guid=b452a24e826eee04ef12b8cc67ca62dd;unix:abstract=/tmp/dbus-xXGVfnCSdE,guid=a08e27d116b2e2216ad3611867ca62dd"

export DISPLAY=":1"

export EPICS_BASE="/daq/software/spack_packages/epics-base/7.0.6.1/linux-scientific7-x86_64_v2-gcc-12.1.0-m36qtuhsbvfsptbpvizhpuhgwv5sjuci"

export EPICS_HOST_ARCH="linux-x86_64"

export FHICL_FILE_PATH=/daq/software/spack_packages/sbndaq/v1_10_07/linux-scientific7-x86_64_v2-gcc-12.1.0-q2tujlrnvsmd7if2smqsq2bfi5ocqptc/fcl:\
/daq/software/spack_packages/sbndaq-artdaq/v1_10_07/linux-scientific7-x86_64_v2-gcc-12.1.0-gkwhxmojvrabmr33fv2igipfhjidokpr/fcl:\
/daq/software/spack_packages/artdaq-epics-plugin/v1_06_00/linux-scientific7-x86_64_v2-gcc-12.1.0-xmvaow25gjkj6nfxdbnkcjxwsc2vkkol/fcl:\
/daq/software/spack_packages/artdaq-demo/v3_13_00/linux-scientific7-x86_64_v2-gcc-12.1.0-vpt4jg3smyjezyrwi44nd6wlbdhdv2fj/fcl:\
/daq/software/spack_packages/artdaq-core-demo/v1_11_00/linux-scientific7-x86_64_v2-gcc-12.1.0-4bg7xv76qybwrzezcjxpyh77v44diirc/fcl:\
/daq/software/spack_packages/artdaq/v3_13_02/linux-scientific7-x86_64_v2-gcc-12.1.0-pohkoyxkeauyhfxpob2pkknxbdfn6gpu/fcl:\
/daq/software/spack_packages/artdaq-utilities/v1_09_00/linux-scientific7-x86_64_v2-gcc-12.1.0-qgo7vaxjwkr6siqp7mzxpzvcftmdrosa/fcl:\
/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-scientific7-x86_64_v2-gcc-12.1.0-mkfwdocq6bhsye5oh3u7vktbr2nmznsw/fcl:\
/daq/software/spack_packages/artdaq-core/v3_10_02/linux-scientific7-x86_64_v2-gcc-12.1.0-ajiwgwaq2xolmwy7oj7vgccrwiz5cycd/fcl

export FUNCNAME="export_environment_vars"

export GI_TYPELIB_PATH=/daq/software/spack_packages/harfbuzz/10.0.1/linux-scientific7-x86_64_v2-gcc-12.1.0-htotx2wdxkvqzgcupnivzkkyg5c3qgc3/lib/girepository-1.0:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-scientific7-x86_64_v2-gcc-12.1.0-bm3r5x6u4wv43ma6xhboihy54idhdgj3/lib/girepository-1.0

export GNOME_TERMINAL_SCREEN="/org/gnome/Terminal/screen/749b92c6_afcb_4316_9203_e3fba91d5ed7"

export GNOME_TERMINAL_SERVICE=":1.216"

export GSL_ROOT_DIR="/daq/software/spack_packages/gsl/2.7.1/linux-scientific7-x86_64_v2-gcc-12.1.0-qpbgmwp3lzazgbgq4ybzvphwtjhrujnw"

export LDSHARED

export LD_LIBRARY_PATH="/daq/software/spack_packages/canvas-root-io/1.13.06/linux-scientific7-x86_64_v2-gcc-12.1.0-v43hqo4caywke2tmr22khvhjhfwplbkj/lib"

export LIBRARY_PATH

export LUA_CPATH="/daq/software/spack_packages/lua/5.3.6/linux-scientific7-x86_64_v2-gcc-12.1.0-g52bpuntt37myiw6rtr23l3xnopnn2vs/lib/lua/5.3/?.so"

export LUA_PATH="/daq/software/spack_packages/lua/5.3.6/linux-scientific7-x86_64_v2-gcc-12.1.0-g52bpuntt37myiw6rtr23l3xnopnn2vs/lib/lua/5.3/?/init.lua;/daq/software/spack_packages/lua/5.3.6/linux-scientific7-x86_64_v2-gcc-12.1.0-g52bpuntt37myiw6rtr23l3xnopnn2vs/lib/lua/5.3/?.lua;/daq/software/spack_packages/lua/5.3.6/linux-scientific7-x86_64_v2-gcc-12.1.0-g52bpuntt37myiw6rtr23l3xnopnn2vs/share/lua/5.3/?/init.lua;/daq/software/spack_packages/lua/5.3.6/linux-scientific7-x86_64_v2-gcc-12.1.0-g52bpuntt37myiw6rtr23l3xnopnn2vs/share/lua/5.3/?.lua"

export MANPATH=/daq/software/spack_packages/artdaq-epics-plugin/v1_06_00/linux-scientific7-x86_64_v2-gcc-12.1.0-xmvaow25gjkj6nfxdbnkcjxwsc2vkkol/share/man:\
/daq/software/spack_packages/artdaq-demo/v3_13_00/linux-scientific7-x86_64_v2-gcc-12.1.0-vpt4jg3smyjezyrwi44nd6wlbdhdv2fj/share/man:\
/daq/software/spack_packages/artdaq-core-demo/v1_11_00/linux-scientific7-x86_64_v2-gcc-12.1.0-4bg7xv76qybwrzezcjxpyh77v44diirc/share/man:\
/daq/software/spack_packages/artdaq/v3_13_02/linux-scientific7-x86_64_v2-gcc-12.1.0-pohkoyxkeauyhfxpob2pkknxbdfn6gpu/share/man:\
/daq/software/spack_packages/artdaq-utilities/v1_09_00/linux-scientific7-x86_64_v2-gcc-12.1.0-qgo7vaxjwkr6siqp7mzxpzvcftmdrosa/share/man:\
/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-scientific7-x86_64_v2-gcc-12.1.0-mkfwdocq6bhsye5oh3u7vktbr2nmznsw/share/man:\
/daq/software/spack_packages/xrootd/5.5.5/linux-scientific7-x86_64_v2-gcc-12.1.0-btqxqqdbmz7uevm7wvjye5bhppme5jyq/share/man:\
/daq/software/spack_packages/fftw/3.3.10/linux-scientific7-x86_64_v2-gcc-12.1.0-evxhmqsyanrttt4wring5plqbplfknfp/share/man:\
/daq/software/spack_packages/openmpi/5.0.5/linux-scientific7-x86_64_v2-gcc-12.1.0-bqu6nrjuyd7bw5ntibseofrxdkyrw24l/share/man:\
/daq/software/spack_packages/pmix/5.0.3/linux-scientific7-x86_64_v2-gcc-12.1.0-dnesjqn7qrhepl3qzsdmrp6eyma3fccg/share/man:\
/daq/software/spack_packages/openssh/9.8p1/linux-scientific7-x86_64_v2-gcc-12.1.0-mjyuwtcfwlltfv5wiigwmzgixd47vtb5/share/man:\
/daq/software/spack_packages/krb5/1.21.3/linux-scientific7-x86_64_v2-gcc-12.1.0-smtl77no5jhvbzkzeq7g4ufxtss7th4v/share/man:\
/daq/software/spack_packages/numactl/2.0.18/linux-scientific7-x86_64_v2-gcc-12.1.0-52sdemk6hhsmogdjqklopdnyoqskel75/share/man:\
/daq/software/spack_packages/root/6.28.12/linux-scientific7-x86_64_v2-gcc-12.1.0-qds7rrehskeatmynw6dl56633gp6jlna/share/man:\
/daq/software/spack_packages/xxhash/0.8.2/linux-scientific7-x86_64_v2-gcc-12.1.0-xxyiytvxl7yflvrfqhzhnvhwyymixquf/share/man:\
/daq/software/spack_packages/pcre/8.45/linux-scientific7-x86_64_v2-gcc-12.1.0-6kic36gnromxnxheawdfbqsa7z6pxndn/share/man:\
/daq/software/spack_packages/lz4/1.10.0/linux-scientific7-x86_64_v2-gcc-12.1.0-2ngm7dq6vh7fqlup7kzprkswnhpdx27j/share/man:\
/daq/software/spack_packages/libxpm/3.5.17/linux-scientific7-x86_64_v2-gcc-12.1.0-54ljpwtfwgmzgqgixb7qnzuhqk4unvcw/share/man:\
/daq/software/spack_packages/libxft/2.3.8/linux-scientific7-x86_64_v2-gcc-12.1.0-5apo376fx7pwvlyuowzsyveykcq7bdtw/share/man:\
/daq/software/spack_packages/gsl/2.7.1/linux-scientific7-x86_64_v2-gcc-12.1.0-qpbgmwp3lzazgbgq4ybzvphwtjhrujnw/share/man:\
/daq/software/spack_packages/xrandr/1.5.2/linux-scientific7-x86_64_v2-gcc-12.1.0-5e6jmtwxqrjkojqsvu7xllhubi5nn6o5/share/man:\
/daq/software/spack_packages/libxrandr/1.5.4/linux-scientific7-x86_64_v2-gcc-12.1.0-mki3m2hktjb33blienvo5z7n5mreezvx/share/man:\
/daq/software/spack_packages/llvm/17.0.6/linux-scientific7-x86_64_v2-gcc-12.1.0-oonxvbhjt3azge6lcczgucm5mtgayx6m/share/man:\
/daq/software/spack_packages/lua/5.3.6/linux-scientific7-x86_64_v2-gcc-12.1.0-g52bpuntt37myiw6rtr23l3xnopnn2vs/man:\
/daq/software/spack_packages/unzip/6.0/linux-scientific7-x86_64_v2-gcc-12.1.0-sfuje2ux57y4eex2r4h6ltclbrvotoyk/man:\
/daq/software/spack_packages/libedit/3.1-20240808/linux-scientific7-x86_64_v2-gcc-12.1.0-ez7k7bzagxw6hh6zq24v7srq3a3rckpy/share/man:\
/daq/software/spack_packages/binutils/2.43.1/linux-scientific7-x86_64_v2-gcc-12.1.0-sh7pfe76fvh6pnmqcbldqhx74o5yneys/share/man:\
/daq/software/spack_packages/libxt/1.3.0/linux-scientific7-x86_64_v2-gcc-12.1.0-nbuh2whsoajqcwzv7elf3ycwh6ovjqss/share/man:\
/daq/software/spack_packages/davix/0.8.7/linux-scientific7-x86_64_v2-gcc-12.1.0-uf6wyx3mdkg5xztecxhte2vmfgsfwoim/share/man:\
/daq/software/spack_packages/hwloc/2.11.1/linux-scientific7-x86_64_v2-gcc-12.1.0-42rrawqd22xlucciyqjvveaged6modfw/share/man:\
/daq/software/spack_packages/xmlrpc-c/1.51.06/linux-scientific7-x86_64_v2-gcc-12.1.0-wui73zcb742xdkayb64mpdircygfpwrb/share/man:\
/daq/software/spack_packages/curl/8.8.0/linux-scientific7-x86_64_v2-gcc-12.1.0-abai22j57nbgrejwqna4vmsss5jxttn2/share/man:\
/daq/software/spack_packages/nghttp2/1.63.0/linux-scientific7-x86_64_v2-gcc-12.1.0-u5enmkbawgclkyb5dvmkxlmu24rtvhgz/share/man:\
/daq/software/spack_packages/libxkbcommon/1.7.0/linux-scientific7-x86_64_v2-gcc-12.1.0-suobanewktt26sfkbbt4xhyx37zjw466/share/man:\
/daq/software/spack_packages/libxext/1.3.6/linux-scientific7-x86_64_v2-gcc-12.1.0-pzl5hc5jtsbgynqcmm5dxamei2sok23w/share/man:\
/daq/software/spack_packages/libx11/1.8.10/linux-scientific7-x86_64_v2-gcc-12.1.0-q2wzgxhmzzbyiljdkvzdgj2xgydymzum/share/man:\
/daq/software/spack_packages/libxcb/1.17.0/linux-scientific7-x86_64_v2-gcc-12.1.0-vr7v6qbfqwfocnug4uom3sdo4bnqwra6/share/man:\
/daq/software/spack_packages/libxau/1.0.11/linux-scientific7-x86_64_v2-gcc-12.1.0-sysciliizhsh5s5dq3legxyud6cf4qqs/share/man:\
/daq/software/spack_packages/lcms/2.16/linux-scientific7-x86_64_v2-gcc-12.1.0-o6dcf4qqweq6sfbtg7tid2lygamjqoda/share/man:\
/daq/software/spack_packages/libjpeg-turbo/3.0.3/linux-scientific7-x86_64_v2-gcc-12.1.0-copnoe3uxvpwslwhesvti7tc4o7z3bnf/share/man:\
/daq/software/spack_packages/icu4c/74.2/linux-scientific7-x86_64_v2-gcc-12.1.0-fs47wx5rmvvp7u4swqcjxtpehvf6rvpj/share/man:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-scientific7-x86_64_v2-gcc-12.1.0-bm3r5x6u4wv43ma6xhboihy54idhdgj3/share/man:\
/daq/software/spack_packages/python/3.9.15/linux-scientific7-x86_64_v2-gcc-12.1.0-neuzvj3gpdpezzr3lmen554oo6pfsw7k/share/man:\
/daq/software/spack_packages/sqlite/3.40.1/linux-scientific7-x86_64_v2-gcc-12.1.0-7do3q3hlyc2yog3knvhpyru3fr3syqkx/share/man:\
/daq/software/spack_packages/libxcrypt/4.4.35/linux-scientific7-x86_64_v2-gcc-12.1.0-jl2c3c5t6qii3x54rvb3x5nzicw3i3gk/share/man:\
/daq/software/spack_packages/expat/2.6.3/linux-scientific7-x86_64_v2-gcc-12.1.0-67ri5mycrfnuxn2fe2gfkryycsfqdx5x/share/man:\
/daq/software/spack_packages/libbsd/0.12.2/linux-scientific7-x86_64_v2-gcc-12.1.0-a3ehnhixspxyphyctrhbg5v2rfek6pht/share/man:\
/daq/software/spack_packages/libmd/1.0.4/linux-scientific7-x86_64_v2-gcc-12.1.0-sn4b7oxrjxha7qqkizakpcdblddcik6k/share/man:\
/daq/software/spack_packages/perl/5.40.0/linux-scientific7-x86_64_v2-gcc-12.1.0-nhaepfqjfdvgzff6kwwbbbnkzewvnk6f/man:\
/daq/software/spack_packages/gdbm/1.23/linux-scientific7-x86_64_v2-gcc-12.1.0-bo3tsl2eogjombpbnnjesfdfkd344vxx/share/man:\
/daq/software/spack_packages/readline/8.2/linux-scientific7-x86_64_v2-gcc-12.1.0-iillh2ypzrvu4c3nefwel43mfb4ipzh2/share/man:\
/daq/software/spack_packages/pcre2/10.44/linux-scientific7-x86_64_v2-gcc-12.1.0-uuq57i44lhnnq2ehid733etkx5menvbc/share/man:\
/daq/software/spack_packages/libffi/3.4.6/linux-scientific7-x86_64_v2-gcc-12.1.0-vxupfcievnuhitsrfwtywyjtvja4xr7u/share/man:\
/daq/software/spack_packages/elfutils/0.191/linux-scientific7-x86_64_v2-gcc-12.1.0-g2lwzqiyruym2mtqxg2eh5gs6md4py2u/share/man:\
/daq/software/spack_packages/pkgconf/2.2.0/linux-scientific7-x86_64_v2-gcc-12.1.0-wgg5tbq4iqvgirxis52tkpuphalafqys/share/man:\
/daq/software/spack_packages/gettext/0.22.5/linux-scientific7-x86_64_v2-gcc-12.1.0-2mpyicbdlhidfobaoah7esytbvlgnrt2/share/man:\
/daq/software/spack_packages/tar/1.34/linux-scientific7-x86_64_v2-gcc-12.1.0-rdvbw2a4usbmz77tstgmekcmv7ihh2um/share/man:\
/daq/software/spack_packages/zstd/1.5.6/linux-scientific7-x86_64_v2-gcc-12.1.0-ltt2cbcwus2nwcyikb34oocgdn5gbay7/share/man:\
/daq/software/spack_packages/pigz/2.8/linux-scientific7-x86_64_v2-gcc-12.1.0-ec4dpneqrgtje6sdkbhgd3sb7vw724fk/man:\
/daq/software/spack_packages/util-linux-uuid/2.40.2/linux-scientific7-x86_64_v2-gcc-12.1.0-cmghxau3amtlkosc2x5kpbnxrkplyul5/share/man:\
/daq/software/spack_packages/libxml2/2.9.12/linux-scientific7-x86_64_v2-gcc-12.1.0-mvjb7eqiktjommr3qa6kv65rolrvgk4u/share/man:\
/daq/software/spack_packages/xz/5.4.6/linux-scientific7-x86_64_v2-gcc-12.1.0-63uqskev6ph3q52qegolmbx44i5ixlzo/share/man:\
/daq/software/spack_packages/libiconv/1.17/linux-scientific7-x86_64_v2-gcc-12.1.0-kgsg5yd7h7g3e5je42iriel32qddytie/share/man:\
/daq/software/spack_packages/freetype/2.13.3/linux-scientific7-x86_64_v2-gcc-12.1.0-wtdmflrac5uukkx3ys6wwdvuzwvk4arc/share/man:\
/daq/software/spack_packages/libpng/1.6.39/linux-scientific7-x86_64_v2-gcc-12.1.0-suxjfnj6b4jkqy3ysdc3z3ee65v7d4hr/share/man:\
/daq/software/spack_packages/zlib-ng/2.2.1/linux-scientific7-x86_64_v2-gcc-12.1.0-sxdpvxtolijkcollh2p52tgzjfqyzccs/share/man:\
/daq/software/spack_packages/bzip2/1.0.8/linux-scientific7-x86_64_v2-gcc-12.1.0-zthfzpjwlediwy2c47oubz7cisknp2ne/man:\
/daq/software/spack_packages/font-util/1.4.1/linux-scientific7-x86_64_v2-gcc-12.1.0-b2okhvlvljnrcq7eitahdqbgpuojzo4k/share/man:\
/usr/share/man:\
/usr/man

export MPICC="/daq/software/spack_packages/openmpi/5.0.5/linux-scientific7-x86_64_v2-gcc-12.1.0-bqu6nrjuyd7bw5ntibseofrxdkyrw24l/bin/mpicc"

export MPICXX="/daq/software/spack_packages/openmpi/5.0.5/linux-scientific7-x86_64_v2-gcc-12.1.0-bqu6nrjuyd7bw5ntibseofrxdkyrw24l/bin/mpic++"

export MPIF77="/daq/software/spack_packages/openmpi/5.0.5/linux-scientific7-x86_64_v2-gcc-12.1.0-bqu6nrjuyd7bw5ntibseofrxdkyrw24l/bin/mpif77"

export MPIF90="/daq/software/spack_packages/openmpi/5.0.5/linux-scientific7-x86_64_v2-gcc-12.1.0-bqu6nrjuyd7bw5ntibseofrxdkyrw24l/bin/mpif90"

export MPIFC="/daq/software/spack_packages/openmpi/5.0.5/linux-scientific7-x86_64_v2-gcc-12.1.0-bqu6nrjuyd7bw5ntibseofrxdkyrw24l/bin/mpifort"

export MRB_QUALS="both"

export MULTICAST_INTERFACE_IP_TO_USE="192.168.191.0"

export OLDPWD="/"

export OS_NAME="scientific7"

export PATH=/daq/software/spack_packages/epics-base/7.0.6.1/linux-scientific7-x86_64_v2-gcc-12.1.0-m36qtuhsbvfsptbpvizhpuhgwv5sjuci/bin/linux-x86_64:\
/daq/software/spack_packages/trace/v3_17_11/linux-scientific7-x86_64_v2-gcc-12.1.0-rg46htdwkdgm4tr7ut6v3bniu24yncfs/bin:\
/daq/software/spack_packages/py-numpy/1.24.3/linux-scientific7-x86_64_v2-gcc-12.1.0-zmj2kuhh5fvbkk3flvzoevn6sf4eyn3o/bin:\
/daq/software/spack_packages/py-pybind11/2.10.4/linux-scientific7-x86_64_v2-gcc-12.1.0-wvqnyzq2rvsiwtfkbluvb6lxiom3qikp/bin:\
/daq/software/spack_packages/python-venv/1.0/linux-scientific7-x86_64_v2-gcc-12.1.0-qgncjibkf6rj5o34zlm7tyiojmscackp/bin:\
/daq/software/spack_packages/openssh/9.8p1/linux-scientific7-x86_64_v2-gcc-12.1.0-mjyuwtcfwlltfv5wiigwmzgixd47vtb5/bin:\
/daq/software/spack_packages/cmake/3.27.9/linux-scientific7-x86_64_v2-gcc-12.1.0-w7r2w2e46ym4wy2r3gv6wfldfjbrtjxm/bin:\
/daq/software/spack_packages/unzip/6.0/linux-scientific7-x86_64_v2-gcc-12.1.0-sfuje2ux57y4eex2r4h6ltclbrvotoyk/bin:\
/daq/software/spack_packages/curl/8.8.0/linux-scientific7-x86_64_v2-gcc-12.1.0-abai22j57nbgrejwqna4vmsss5jxttn2/bin:\
/daq/software/spack_packages/python/3.9.15/linux-scientific7-x86_64_v2-gcc-12.1.0-neuzvj3gpdpezzr3lmen554oo6pfsw7k/bin:\
/daq/software/spack_packages/sqlite/3.40.1/linux-scientific7-x86_64_v2-gcc-12.1.0-7do3q3hlyc2yog3knvhpyru3fr3syqkx/bin:\
/daq/software/spack_packages/perl/5.40.0/linux-scientific7-x86_64_v2-gcc-12.1.0-nhaepfqjfdvgzff6kwwbbbnkzewvnk6f/bin:\
/daq/software/spack_packages/tar/1.34/linux-scientific7-x86_64_v2-gcc-12.1.0-rdvbw2a4usbmz77tstgmekcmv7ihh2um/bin:\
/daq/software/spack_packages/zstd/1.5.6/linux-scientific7-x86_64_v2-gcc-12.1.0-ltt2cbcwus2nwcyikb34oocgdn5gbay7/bin:\
/daq/software/spack_packages/pigz/2.8/linux-scientific7-x86_64_v2-gcc-12.1.0-ec4dpneqrgtje6sdkbhgd3sb7vw724fk/bin:\
/daq/software/spack_packages/xz/5.4.6/linux-scientific7-x86_64_v2-gcc-12.1.0-63uqskev6ph3q52qegolmbx44i5ixlzo/bin:\
/daq/software/spack_packages/bzip2/1.0.8/linux-scientific7-x86_64_v2-gcc-12.1.0-zthfzpjwlediwy2c47oubz7cisknp2ne/bin:\
/daq/software/spack_packages/sbndaq/v1_10_07/linux-scientific7-x86_64_v2-gcc-12.1.0-q2tujlrnvsmd7if2smqsq2bfi5ocqptc/bin:\
/daq/software/spack_packages/sbndaq-artdaq/v1_10_07/linux-scientific7-x86_64_v2-gcc-12.1.0-gkwhxmojvrabmr33fv2igipfhjidokpr/bin:\
/daq/software/spack_packages/wibtools/v1_10_06/linux-scientific7-x86_64_v2-gcc-12.1.0-xly3yu7icicnzfmecjvnrvv5jqkcswor/bin:\
/daq/software/spack_packages/redis/7.4.0/linux-scientific7-x86_64_v2-gcc-12.1.0-dviptxuagx5gpgws7hwz6ghl5rzqlugk/bin:\
/daq/software/spack_packages/libzmq/4.3.5/linux-scientific7-x86_64_v2-gcc-12.1.0-r52bwahrrxw7w6dc6mmqy6cdpnhlic3t/bin:\
/daq/software/spack_packages/artdaq-epics-plugin/v1_06_00/linux-scientific7-x86_64_v2-gcc-12.1.0-xmvaow25gjkj6nfxdbnkcjxwsc2vkkol/bin:\
/daq/software/spack_packages/epics-base/7.0.6.1/linux-scientific7-x86_64_v2-gcc-12.1.0-m36qtuhsbvfsptbpvizhpuhgwv5sjuci/bin:\
/daq/software/spack_packages/artdaq-demo/v3_13_00/linux-scientific7-x86_64_v2-gcc-12.1.0-vpt4jg3smyjezyrwi44nd6wlbdhdv2fj/bin:\
/daq/software/spack_packages/artdaq-database/v1_10_00/linux-scientific7-x86_64_v2-gcc-12.1.0-q7egx2nlrzxrxeiobko3zn4ipr6bvtwy/bin:\
/daq/software/spack_packages/artdaq-daqinterface/v3_14_00/linux-scientific7-x86_64_v2-gcc-12.1.0-7ypm3cxultufs7itifvqowjgpwlw5dsr/bin:\
/daq/software/spack_packages/artdaq/v3_13_02/linux-scientific7-x86_64_v2-gcc-12.1.0-pohkoyxkeauyhfxpob2pkknxbdfn6gpu/bin:\
/daq/software/spack_packages/artdaq-utilities/v1_09_00/linux-scientific7-x86_64_v2-gcc-12.1.0-qgo7vaxjwkr6siqp7mzxpzvcftmdrosa/bin:\
/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-scientific7-x86_64_v2-gcc-12.1.0-mkfwdocq6bhsye5oh3u7vktbr2nmznsw/bin:\
/daq/software/spack_packages/xrootd/5.5.5/linux-scientific7-x86_64_v2-gcc-12.1.0-btqxqqdbmz7uevm7wvjye5bhppme5jyq/bin:\
/daq/software/spack_packages/postgresql/15.2/linux-scientific7-x86_64_v2-gcc-12.1.0-sgzf3o4trwv5esptsqzirlfxzbejrpkn/bin:\
/daq/software/spack_packages/openblas/0.3.23/linux-scientific7-x86_64_v2-gcc-12.1.0-xh5p66vbvpkgh3km4xa5y54cm3nbsluz/bin:\
/daq/software/spack_packages/fftw/3.3.10/linux-scientific7-x86_64_v2-gcc-12.1.0-evxhmqsyanrttt4wring5plqbplfknfp/bin:\
/daq/software/spack_packages/openmpi/5.0.5/linux-scientific7-x86_64_v2-gcc-12.1.0-bqu6nrjuyd7bw5ntibseofrxdkyrw24l/bin:\
/daq/software/spack_packages/pmix/5.0.3/linux-scientific7-x86_64_v2-gcc-12.1.0-dnesjqn7qrhepl3qzsdmrp6eyma3fccg/bin:\
/daq/software/spack_packages/krb5/1.21.3/linux-scientific7-x86_64_v2-gcc-12.1.0-smtl77no5jhvbzkzeq7g4ufxtss7th4v/bin:\
/daq/software/spack_packages/numactl/2.0.18/linux-scientific7-x86_64_v2-gcc-12.1.0-52sdemk6hhsmogdjqklopdnyoqskel75/bin:\
/daq/software/spack_packages/libevent/2.1.12/linux-scientific7-x86_64_v2-gcc-12.1.0-utdkwskbbmum7exkcxplbdldlqoiwxok/bin:\
/daq/software/spack_packages/cetmodules/3.24.01/linux-scientific7-x86_64_v2-gcc-12.1.0-iptdaeexlyev7krnwhswelpxaev3aeeg/bin:\
/daq/software/spack_packages/gmake/4.4.1/linux-scientific7-x86_64_v2-gcc-12.1.0-dr5y72h5jk2nqboh5nzmwgjtah2es3wv/bin:\
/daq/software/spack_packages/art-root-io/1.13.06/linux-scientific7-x86_64_v2-gcc-12.1.0-jyefivtudqunnaayll7zoocpmgmyl6nc/bin:\
/daq/software/spack_packages/root/6.28.12/linux-scientific7-x86_64_v2-gcc-12.1.0-qds7rrehskeatmynw6dl56633gp6jlna/bin:\
/daq/software/spack_packages/xxhash/0.8.2/linux-scientific7-x86_64_v2-gcc-12.1.0-xxyiytvxl7yflvrfqhzhnvhwyymixquf/bin:\
/daq/software/spack_packages/pcre/8.45/linux-scientific7-x86_64_v2-gcc-12.1.0-6kic36gnromxnxheawdfbqsa7z6pxndn/bin:\
/daq/software/spack_packages/lz4/1.10.0/linux-scientific7-x86_64_v2-gcc-12.1.0-2ngm7dq6vh7fqlup7kzprkswnhpdx27j/bin:\
/daq/software/spack_packages/libxpm/3.5.17/linux-scientific7-x86_64_v2-gcc-12.1.0-54ljpwtfwgmzgqgixb7qnzuhqk4unvcw/bin:\
/daq/software/spack_packages/gsl/2.7.1/linux-scientific7-x86_64_v2-gcc-12.1.0-qpbgmwp3lzazgbgq4ybzvphwtjhrujnw/bin:\
/daq/software/spack_packages/glew/2.2.0/linux-scientific7-x86_64_v2-gcc-12.1.0-ugid4brjilnedja2n5k43gzt3kg5fyo5/bin:\
/daq/software/spack_packages/xrandr/1.5.2/linux-scientific7-x86_64_v2-gcc-12.1.0-5e6jmtwxqrjkojqsvu7xllhubi5nn6o5/bin:\
/daq/software/spack_packages/llvm/17.0.6/linux-scientific7-x86_64_v2-gcc-12.1.0-oonxvbhjt3azge6lcczgucm5mtgayx6m/bin:\
/daq/software/spack_packages/swig/4.1.1/linux-scientific7-x86_64_v2-gcc-12.1.0-twffq6ibkccuiaafhqqdtwteqb7win3h/bin:\
/daq/software/spack_packages/lua/5.3.6/linux-scientific7-x86_64_v2-gcc-12.1.0-g52bpuntt37myiw6rtr23l3xnopnn2vs/bin:\
/daq/software/spack_packages/binutils/2.43.1/linux-scientific7-x86_64_v2-gcc-12.1.0-sh7pfe76fvh6pnmqcbldqhx74o5yneys/bin:\
/daq/software/spack_packages/davix/0.8.7/linux-scientific7-x86_64_v2-gcc-12.1.0-uf6wyx3mdkg5xztecxhte2vmfgsfwoim/bin:\
/daq/software/spack_packages/art/3.14.04/linux-scientific7-x86_64_v2-gcc-12.1.0-673iqpt3aiayu5spcq66cnekpqr5sxwt/bin:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-scientific7-x86_64_v2-gcc-12.1.0-zesi6i7qrw7tidja4swfoul245hvhmln/bin:\
/daq/software/spack_packages/fhicl-cpp/4.18.04/linux-scientific7-x86_64_v2-gcc-12.1.0-xgfwmiubujvze3iahzwr7iq3iszg2svg/bin:\
/daq/software/spack_packages/hwloc/2.11.1/linux-scientific7-x86_64_v2-gcc-12.1.0-42rrawqd22xlucciyqjvveaged6modfw/bin:\
/daq/software/spack_packages/clhep/2.4.7.1/linux-scientific7-x86_64_v2-gcc-12.1.0-vx5syhryunoc2omslhbwz2wqdtazsnos/bin:\
/daq/software/spack_packages/cetlib/3.18.02/linux-scientific7-x86_64_v2-gcc-12.1.0-ksueu4az34yru2xjnfcousnzhvwtatfv/bin:\
/daq/software/spack_packages/artdaq-runcontrol-gui/v1_03_06/linux-scientific7-x86_64_v2-gcc-12.1.0-bkz2gfugex5aptnvvgk47q5exp5aew4l/bin:\
/daq/software/spack_packages/xmlrpc-c/1.51.06/linux-scientific7-x86_64_v2-gcc-12.1.0-wui73zcb742xdkayb64mpdircygfpwrb/bin:\
/daq/software/spack_packages/nghttp2/1.63.0/linux-scientific7-x86_64_v2-gcc-12.1.0-u5enmkbawgclkyb5dvmkxlmu24rtvhgz/bin:\
/daq/software/spack_packages/qt/5.15.15/linux-scientific7-x86_64_v2-gcc-12.1.0-ecpnt64sxclskwhetqg2c7n2ewcyvg3h/bin:\
/daq/software/spack_packages/libxkbcommon/1.7.0/linux-scientific7-x86_64_v2-gcc-12.1.0-suobanewktt26sfkbbt4xhyx37zjw466/bin:\
/daq/software/spack_packages/lcms/2.16/linux-scientific7-x86_64_v2-gcc-12.1.0-o6dcf4qqweq6sfbtg7tid2lygamjqoda/bin:\
/daq/software/spack_packages/libtiff/4.7.0/linux-scientific7-x86_64_v2-gcc-12.1.0-6melb22vv3hm74e35izgfmtzd6ofhxho/bin:\
/daq/software/spack_packages/libjpeg-turbo/3.0.3/linux-scientific7-x86_64_v2-gcc-12.1.0-copnoe3uxvpwslwhesvti7tc4o7z3bnf/bin:\
/daq/software/spack_packages/harfbuzz/10.0.1/linux-scientific7-x86_64_v2-gcc-12.1.0-htotx2wdxkvqzgcupnivzkkyg5c3qgc3/bin:\
/daq/software/spack_packages/icu4c/74.2/linux-scientific7-x86_64_v2-gcc-12.1.0-fs47wx5rmvvp7u4swqcjxtpehvf6rvpj/bin:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-scientific7-x86_64_v2-gcc-12.1.0-bm3r5x6u4wv43ma6xhboihy54idhdgj3/bin:\
/daq/software/spack_packages/cairo/1.16.0/linux-scientific7-x86_64_v2-gcc-12.1.0-qqlch5vapwnuyrkttnjiz6eglwpenpb5/bin:\
/daq/software/spack_packages/glib/2.78.3/linux-scientific7-x86_64_v2-gcc-12.1.0-j4tnel6pvt4yxjjipxyffiqvfbdr6zzw/bin:\
/daq/software/spack_packages/openssl/3.3.1/linux-scientific7-x86_64_v2-gcc-12.1.0-gtpsn2exm3nc5jrrlrhhf4ogi3n72yxg/bin:\
/daq/software/spack_packages/expat/2.6.3/linux-scientific7-x86_64_v2-gcc-12.1.0-67ri5mycrfnuxn2fe2gfkryycsfqdx5x/bin:\
/daq/software/spack_packages/gdbm/1.23/linux-scientific7-x86_64_v2-gcc-12.1.0-bo3tsl2eogjombpbnnjesfdfkd344vxx/bin:\
/daq/software/spack_packages/readline/8.2/linux-scientific7-x86_64_v2-gcc-12.1.0-iillh2ypzrvu4c3nefwel43mfb4ipzh2/bin:\
/daq/software/spack_packages/berkeley-db/18.1.40/linux-scientific7-x86_64_v2-gcc-12.1.0-njklv32wsqg5adjkaz7rfwauhcklnol6/bin:\
/daq/software/spack_packages/pcre2/10.44/linux-scientific7-x86_64_v2-gcc-12.1.0-uuq57i44lhnnq2ehid733etkx5menvbc/bin:\
/daq/software/spack_packages/elfutils/0.191/linux-scientific7-x86_64_v2-gcc-12.1.0-g2lwzqiyruym2mtqxg2eh5gs6md4py2u/bin:\
/daq/software/spack_packages/pkgconf/2.2.0/linux-scientific7-x86_64_v2-gcc-12.1.0-wgg5tbq4iqvgirxis52tkpuphalafqys/bin:\
/daq/software/spack_packages/gettext/0.22.5/linux-scientific7-x86_64_v2-gcc-12.1.0-2mpyicbdlhidfobaoah7esytbvlgnrt2/bin:\
/daq/software/spack_packages/ncurses/6.5/linux-scientific7-x86_64_v2-gcc-12.1.0-xkjsxxs2wu5m7gropdpr4hh5ptbdsmlw/bin:\
/daq/software/spack_packages/fontconfig/2.15.0/linux-scientific7-x86_64_v2-gcc-12.1.0-4cx7hur2t47kx5udlconuzrgeyazx7jy/bin:\
/daq/software/spack_packages/util-linux-uuid/2.40.2/linux-scientific7-x86_64_v2-gcc-12.1.0-cmghxau3amtlkosc2x5kpbnxrkplyul5/bin:\
/daq/software/spack_packages/libxml2/2.9.12/linux-scientific7-x86_64_v2-gcc-12.1.0-mvjb7eqiktjommr3qa6kv65rolrvgk4u/bin:\
/daq/software/spack_packages/libiconv/1.17/linux-scientific7-x86_64_v2-gcc-12.1.0-kgsg5yd7h7g3e5je42iriel32qddytie/bin:\
/daq/software/spack_packages/freetype/2.13.3/linux-scientific7-x86_64_v2-gcc-12.1.0-wtdmflrac5uukkx3ys6wwdvuzwvk4arc/bin:\
/daq/software/spack_packages/libpng/1.6.39/linux-scientific7-x86_64_v2-gcc-12.1.0-suxjfnj6b4jkqy3ysdc3z3ee65v7d4hr/bin:\
/daq/software/spack_packages/font-util/1.4.1/linux-scientific7-x86_64_v2-gcc-12.1.0-b2okhvlvljnrcq7eitahdqbgpuojzo4k/bin:\
/daq/software/spack_packages/spack/current/NULL/bin:\
/home/nfs/icarus/.cargo/bin:\
/usr/local/sbin:\
/usr/sbin:\
/usr/local/bin:\
/usr/bin

export PERL5LIB=/daq/software/spack_packages/trace/v3_17_11/linux-scientific7-x86_64_v2-gcc-12.1.0-rg46htdwkdgm4tr7ut6v3bniu24yncfs/perllib:\
/daq/software/spack_packages/art/3.14.04/linux-scientific7-x86_64_v2-gcc-12.1.0-673iqpt3aiayu5spcq66cnekpqr5sxwt/perllib:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-scientific7-x86_64_v2-gcc-12.1.0-zesi6i7qrw7tidja4swfoul245hvhmln/perllib:\
/daq/software/spack_packages/cetlib/3.18.02/linux-scientific7-x86_64_v2-gcc-12.1.0-ksueu4az34yru2xjnfcousnzhvwtatfv/perllib

export PKG_CONFIG_PATH=/daq/software/spack_packages/libpqxx/7.6.0/linux-scientific7-x86_64_v2-gcc-12.1.0-2ctctvsvovvny6xmlwiuv3so7feabpar/lib64/pkgconfig:\
/daq/software/spack_packages/jsoncpp/1.9.5/linux-scientific7-x86_64_v2-gcc-12.1.0-fpgfhxe3jimlznefn6nqulh627t2sztc/lib64/pkgconfig:\
/daq/software/spack_packages/hiredis/1.1.0/linux-scientific7-x86_64_v2-gcc-12.1.0-co2zelvfo2fh4olkylqgsley3ffxxata/lib64/pkgconfig:\
/daq/software/spack_packages/cppzmq/4.10.0/linux-scientific7-x86_64_v2-gcc-12.1.0-rufphh2tnz52lvus43ytnrygetlceajp/lib64/pkgconfig:\
/daq/software/spack_packages/libzmq/4.3.5/linux-scientific7-x86_64_v2-gcc-12.1.0-r52bwahrrxw7w6dc6mmqy6cdpnhlic3t/lib/pkgconfig:\
/daq/software/spack_packages/libsodium/1.0.20/linux-scientific7-x86_64_v2-gcc-12.1.0-wxmf4uwhnotlsww5sk2bd4obuvsgslog/lib/pkgconfig:\
/daq/software/spack_packages/libusb/1.0.22/linux-scientific7-x86_64_v2-gcc-12.1.0-64k2zfhkurfr2sbnm4ocoh6eb5tkv7ma/lib/pkgconfig:\
/daq/software/spack_packages/epics-base/7.0.6.1/linux-scientific7-x86_64_v2-gcc-12.1.0-m36qtuhsbvfsptbpvizhpuhgwv5sjuci/lib/pkgconfig:\
/daq/software/spack_packages/artdaq-database/v1_10_00/linux-scientific7-x86_64_v2-gcc-12.1.0-q7egx2nlrzxrxeiobko3zn4ipr6bvtwy/lib64/pkgconfig:\
/daq/software/spack_packages/json-c/0.16/linux-scientific7-x86_64_v2-gcc-12.1.0-uof7ain42e374ebddbtjn3mqnnplbuo5/lib64/pkgconfig:\
/daq/software/spack_packages/py-pybind11/2.10.4/linux-scientific7-x86_64_v2-gcc-12.1.0-wvqnyzq2rvsiwtfkbluvb6lxiom3qikp/share/pkgconfig:\
/daq/software/spack_packages/postgresql/15.2/linux-scientific7-x86_64_v2-gcc-12.1.0-sgzf3o4trwv5esptsqzirlfxzbejrpkn/lib/pkgconfig:\
/daq/software/spack_packages/openblas/0.3.23/linux-scientific7-x86_64_v2-gcc-12.1.0-xh5p66vbvpkgh3km4xa5y54cm3nbsluz/lib/pkgconfig:\
/daq/software/spack_packages/fftw/3.3.10/linux-scientific7-x86_64_v2-gcc-12.1.0-evxhmqsyanrttt4wring5plqbplfknfp/lib/pkgconfig:\
/daq/software/spack_packages/openmpi/5.0.5/linux-scientific7-x86_64_v2-gcc-12.1.0-bqu6nrjuyd7bw5ntibseofrxdkyrw24l/lib/pkgconfig:\
/daq/software/spack_packages/pmix/5.0.3/linux-scientific7-x86_64_v2-gcc-12.1.0-dnesjqn7qrhepl3qzsdmrp6eyma3fccg/lib/pkgconfig:\
/daq/software/spack_packages/krb5/1.21.3/linux-scientific7-x86_64_v2-gcc-12.1.0-smtl77no5jhvbzkzeq7g4ufxtss7th4v/lib/pkgconfig:\
/daq/software/spack_packages/numactl/2.0.18/linux-scientific7-x86_64_v2-gcc-12.1.0-52sdemk6hhsmogdjqklopdnyoqskel75/lib/pkgconfig:\
/daq/software/spack_packages/libevent/2.1.12/linux-scientific7-x86_64_v2-gcc-12.1.0-utdkwskbbmum7exkcxplbdldlqoiwxok/lib/pkgconfig:\
/daq/software/spack_packages/xxhash/0.8.2/linux-scientific7-x86_64_v2-gcc-12.1.0-xxyiytvxl7yflvrfqhzhnvhwyymixquf/lib/pkgconfig:\
/daq/software/spack_packages/pcre/8.45/linux-scientific7-x86_64_v2-gcc-12.1.0-6kic36gnromxnxheawdfbqsa7z6pxndn/lib/pkgconfig:\
/daq/software/spack_packages/nlohmann-json/3.11.3/linux-scientific7-x86_64_v2-gcc-12.1.0-ng74lromyojfouichoelmhstihdxk6be/share/pkgconfig:\
/daq/software/spack_packages/lz4/1.10.0/linux-scientific7-x86_64_v2-gcc-12.1.0-2ngm7dq6vh7fqlup7kzprkswnhpdx27j/lib/pkgconfig:\
/daq/software/spack_packages/libxpm/3.5.17/linux-scientific7-x86_64_v2-gcc-12.1.0-54ljpwtfwgmzgqgixb7qnzuhqk4unvcw/lib/pkgconfig:\
/daq/software/spack_packages/libxft/2.3.8/linux-scientific7-x86_64_v2-gcc-12.1.0-5apo376fx7pwvlyuowzsyveykcq7bdtw/lib/pkgconfig:\
/daq/software/spack_packages/gsl/2.7.1/linux-scientific7-x86_64_v2-gcc-12.1.0-qpbgmwp3lzazgbgq4ybzvphwtjhrujnw/lib/pkgconfig:\
/daq/software/spack_packages/glew/2.2.0/linux-scientific7-x86_64_v2-gcc-12.1.0-ugid4brjilnedja2n5k43gzt3kg5fyo5/lib64/pkgconfig:\
/daq/software/spack_packages/mesa-glu/9.0.2/linux-scientific7-x86_64_v2-gcc-12.1.0-ehuxz5bunbjehf45qywxjvz4w57qzn3i/lib/pkgconfig:\
/daq/software/spack_packages/mesa/23.3.6/linux-scientific7-x86_64_v2-gcc-12.1.0-dieogogchcmenrubcckojlfzcsma4k5x/lib/pkgconfig:\
/daq/software/spack_packages/libxrandr/1.5.4/linux-scientific7-x86_64_v2-gcc-12.1.0-mki3m2hktjb33blienvo5z7n5mreezvx/lib/pkgconfig:\
/daq/software/spack_packages/randrproto/1.5.0/linux-scientific7-x86_64_v2-gcc-12.1.0-thzikeaxc2hhu6hjqravmmzxylsnpovw/lib/pkgconfig:\
/daq/software/spack_packages/libedit/3.1-20240808/linux-scientific7-x86_64_v2-gcc-12.1.0-ez7k7bzagxw6hh6zq24v7srq3a3rckpy/lib/pkgconfig:\
/daq/software/spack_packages/libxt/1.3.0/linux-scientific7-x86_64_v2-gcc-12.1.0-nbuh2whsoajqcwzv7elf3ycwh6ovjqss/lib/pkgconfig:\
/daq/software/spack_packages/libunwind/1.6.2/linux-scientific7-x86_64_v2-gcc-12.1.0-ynwondarg3654iwbknk7uabxwxkszi26/lib/pkgconfig:\
/daq/software/spack_packages/glproto/1.4.17/linux-scientific7-x86_64_v2-gcc-12.1.0-okecztudxgb2dyn562xkdxr36odpv7ty/lib/pkgconfig:\
/daq/software/spack_packages/davix/0.8.7/linux-scientific7-x86_64_v2-gcc-12.1.0-uf6wyx3mdkg5xztecxhte2vmfgsfwoim/lib64/pkgconfig:\
/daq/software/spack_packages/rapidjson/1.2.0-2024-08-16/linux-scientific7-x86_64_v2-gcc-12.1.0-xcu7vhyffgqj4obcwuf2b4pktn5up4w6/lib/pkgconfig:\
/daq/software/spack_packages/catch2/3.3.2/linux-scientific7-x86_64_v2-gcc-12.1.0-4nmcsdbj6o5dbwxpktrn4gmllyayv5g2/share/pkgconfig:\
/daq/software/spack_packages/intel-tbb/2021.12.0/linux-scientific7-x86_64_v2-gcc-12.1.0-lakjaspivfkf4nk7ttemijhqz4s5kjzf/lib64/pkgconfig:\
/daq/software/spack_packages/hwloc/2.11.1/linux-scientific7-x86_64_v2-gcc-12.1.0-42rrawqd22xlucciyqjvveaged6modfw/lib/pkgconfig:\
/daq/software/spack_packages/libpciaccess/0.17/linux-scientific7-x86_64_v2-gcc-12.1.0-tyogvliqmlqpaycug3qrworlnkmbhoj7/lib/pkgconfig:\
/daq/software/spack_packages/clhep/2.4.7.1/linux-scientific7-x86_64_v2-gcc-12.1.0-vx5syhryunoc2omslhbwz2wqdtazsnos/lib/pkgconfig:\
/daq/software/spack_packages/xmlrpc-c/1.51.06/linux-scientific7-x86_64_v2-gcc-12.1.0-wui73zcb742xdkayb64mpdircygfpwrb/lib/pkgconfig:\
/daq/software/spack_packages/curl/8.8.0/linux-scientific7-x86_64_v2-gcc-12.1.0-abai22j57nbgrejwqna4vmsss5jxttn2/lib/pkgconfig:\
/daq/software/spack_packages/nghttp2/1.63.0/linux-scientific7-x86_64_v2-gcc-12.1.0-u5enmkbawgclkyb5dvmkxlmu24rtvhgz/lib/pkgconfig:\
/daq/software/spack_packages/qt/5.15.15/linux-scientific7-x86_64_v2-gcc-12.1.0-ecpnt64sxclskwhetqg2c7n2ewcyvg3h/lib/pkgconfig:\
/daq/software/spack_packages/xcb-util-wm/0.4.2/linux-scientific7-x86_64_v2-gcc-12.1.0-ferkrgusea6yjvgt4szw72urlamdiou5/lib/pkgconfig:\
/daq/software/spack_packages/xcb-util-renderutil/0.3.10/linux-scientific7-x86_64_v2-gcc-12.1.0-vzvmi6b6qudg2e3xpqbcdnzkknsn2xbw/lib/pkgconfig:\
/daq/software/spack_packages/xcb-util-keysyms/0.4.1/linux-scientific7-x86_64_v2-gcc-12.1.0-e5xy7smfggl4try57bjyveagvdsueira/lib/pkgconfig:\
/daq/software/spack_packages/xcb-util-image/0.4.1/linux-scientific7-x86_64_v2-gcc-12.1.0-un7vxydadwfkrpv7e2toqylfa42nzofq/lib/pkgconfig:\
/daq/software/spack_packages/xcb-util/0.4.1/linux-scientific7-x86_64_v2-gcc-12.1.0-2ybjswdf65dqw767qcuw2fdahviezb2v/lib/pkgconfig:\
/daq/software/spack_packages/libxrender/0.9.11/linux-scientific7-x86_64_v2-gcc-12.1.0-z5duuosxndjzjfsey6dw2yd67toblx4u/lib/pkgconfig:\
/daq/software/spack_packages/renderproto/0.11.1/linux-scientific7-x86_64_v2-gcc-12.1.0-pwkmoamcq6bz7zen3k2tgflenze2wvk5/lib/pkgconfig:\
/daq/software/spack_packages/libxkbcommon/1.7.0/linux-scientific7-x86_64_v2-gcc-12.1.0-suobanewktt26sfkbbt4xhyx37zjw466/lib/pkgconfig:\
/daq/software/spack_packages/util-macros/1.20.1/linux-scientific7-x86_64_v2-gcc-12.1.0-bgpgnvoabiikjfr6hjf34cvr4oj6x5b5/share/pkgconfig:\
/daq/software/spack_packages/libxext/1.3.6/linux-scientific7-x86_64_v2-gcc-12.1.0-pzl5hc5jtsbgynqcmm5dxamei2sok23w/lib/pkgconfig:\
/daq/software/spack_packages/xextproto/7.3.0/linux-scientific7-x86_64_v2-gcc-12.1.0-y5bjckzsmi56ijewszfiiu4fs3jpxmyq/lib/pkgconfig:\
/daq/software/spack_packages/libx11/1.8.10/linux-scientific7-x86_64_v2-gcc-12.1.0-q2wzgxhmzzbyiljdkvzdgj2xgydymzum/lib/pkgconfig:\
/daq/software/spack_packages/libxcb/1.17.0/linux-scientific7-x86_64_v2-gcc-12.1.0-vr7v6qbfqwfocnug4uom3sdo4bnqwra6/lib/pkgconfig:\
/daq/software/spack_packages/libxdmcp/1.1.5/linux-scientific7-x86_64_v2-gcc-12.1.0-xbkcmoxyyevels5kmzd44ouaixlfxpvb/lib/pkgconfig:\
/daq/software/spack_packages/libxau/1.0.11/linux-scientific7-x86_64_v2-gcc-12.1.0-sysciliizhsh5s5dq3legxyud6cf4qqs/lib/pkgconfig:\
/daq/software/spack_packages/libpthread-stubs/0.5/linux-scientific7-x86_64_v2-gcc-12.1.0-o62e4bthko45oy6qwaiohkga3tulpxss/lib/pkgconfig:\
/daq/software/spack_packages/kbproto/1.0.7/linux-scientific7-x86_64_v2-gcc-12.1.0-y6rzgxbr43nnqhu5ittkfj7465o2zhag/lib/pkgconfig:\
/daq/software/spack_packages/libsm/1.2.4/linux-scientific7-x86_64_v2-gcc-12.1.0-znvvt53tyskfuqeiwbqqi5ccz44ly65p/lib/pkgconfig:\
/daq/software/spack_packages/libice/1.1.1/linux-scientific7-x86_64_v2-gcc-12.1.0-s5b4nv7ac5ufujlewvpjugvcwrg5ltkn/lib/pkgconfig:\
/daq/software/spack_packages/xtrans/1.5.0/linux-scientific7-x86_64_v2-gcc-12.1.0-qr5uiimh3xomqxnee4tzjc65vqome64j/share/pkgconfig:\
/daq/software/spack_packages/xproto/7.0.31/linux-scientific7-x86_64_v2-gcc-12.1.0-4hjuj4hygt3fe7pqfluqp7bcchyktjci/lib/pkgconfig:\
/daq/software/spack_packages/libmng/2.0.3/linux-scientific7-x86_64_v2-gcc-12.1.0-dp5iuuspvh52tbgtbgfgfenvfqulhibc/lib64/pkgconfig:\
/daq/software/spack_packages/lcms/2.16/linux-scientific7-x86_64_v2-gcc-12.1.0-o6dcf4qqweq6sfbtg7tid2lygamjqoda/lib/pkgconfig:\
/daq/software/spack_packages/libtiff/4.7.0/linux-scientific7-x86_64_v2-gcc-12.1.0-6melb22vv3hm74e35izgfmtzd6ofhxho/lib64/pkgconfig:\
/daq/software/spack_packages/libjpeg-turbo/3.0.3/linux-scientific7-x86_64_v2-gcc-12.1.0-copnoe3uxvpwslwhesvti7tc4o7z3bnf/lib64/pkgconfig:\
/daq/software/spack_packages/harfbuzz/10.0.1/linux-scientific7-x86_64_v2-gcc-12.1.0-htotx2wdxkvqzgcupnivzkkyg5c3qgc3/lib/pkgconfig:\
/daq/software/spack_packages/icu4c/74.2/linux-scientific7-x86_64_v2-gcc-12.1.0-fs47wx5rmvvp7u4swqcjxtpehvf6rvpj/lib/pkgconfig:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-scientific7-x86_64_v2-gcc-12.1.0-bm3r5x6u4wv43ma6xhboihy54idhdgj3/lib/pkgconfig:\
/daq/software/spack_packages/cairo/1.16.0/linux-scientific7-x86_64_v2-gcc-12.1.0-qqlch5vapwnuyrkttnjiz6eglwpenpb5/lib/pkgconfig:\
/daq/software/spack_packages/pixman/0.42.2/linux-scientific7-x86_64_v2-gcc-12.1.0-62tucvx3fgueti2rfkkkybolep3is37h/lib/pkgconfig:\
/daq/software/spack_packages/glib/2.78.3/linux-scientific7-x86_64_v2-gcc-12.1.0-j4tnel6pvt4yxjjipxyffiqvfbdr6zzw/lib/pkgconfig:\
/daq/software/spack_packages/python/3.9.15/linux-scientific7-x86_64_v2-gcc-12.1.0-neuzvj3gpdpezzr3lmen554oo6pfsw7k/lib/pkgconfig:\
/daq/software/spack_packages/sqlite/3.40.1/linux-scientific7-x86_64_v2-gcc-12.1.0-7do3q3hlyc2yog3knvhpyru3fr3syqkx/lib/pkgconfig:\
/daq/software/spack_packages/openssl/3.3.1/linux-scientific7-x86_64_v2-gcc-12.1.0-gtpsn2exm3nc5jrrlrhhf4ogi3n72yxg/lib64/pkgconfig:\
/daq/software/spack_packages/libxcrypt/4.4.35/linux-scientific7-x86_64_v2-gcc-12.1.0-jl2c3c5t6qii3x54rvb3x5nzicw3i3gk/lib/pkgconfig:\
/daq/software/spack_packages/expat/2.6.3/linux-scientific7-x86_64_v2-gcc-12.1.0-67ri5mycrfnuxn2fe2gfkryycsfqdx5x/lib/pkgconfig:\
/daq/software/spack_packages/libbsd/0.12.2/linux-scientific7-x86_64_v2-gcc-12.1.0-a3ehnhixspxyphyctrhbg5v2rfek6pht/lib/pkgconfig:\
/daq/software/spack_packages/libmd/1.0.4/linux-scientific7-x86_64_v2-gcc-12.1.0-sn4b7oxrjxha7qqkizakpcdblddcik6k/lib/pkgconfig:\
/daq/software/spack_packages/readline/8.2/linux-scientific7-x86_64_v2-gcc-12.1.0-iillh2ypzrvu4c3nefwel43mfb4ipzh2/lib/pkgconfig:\
/daq/software/spack_packages/pcre2/10.44/linux-scientific7-x86_64_v2-gcc-12.1.0-uuq57i44lhnnq2ehid733etkx5menvbc/lib/pkgconfig:\
/daq/software/spack_packages/libffi/3.4.6/linux-scientific7-x86_64_v2-gcc-12.1.0-vxupfcievnuhitsrfwtywyjtvja4xr7u/lib/pkgconfig:\
/daq/software/spack_packages/elfutils/0.191/linux-scientific7-x86_64_v2-gcc-12.1.0-g2lwzqiyruym2mtqxg2eh5gs6md4py2u/lib/pkgconfig:\
/daq/software/spack_packages/pkgconf/2.2.0/linux-scientific7-x86_64_v2-gcc-12.1.0-wgg5tbq4iqvgirxis52tkpuphalafqys/lib/pkgconfig:\
/daq/software/spack_packages/zstd/1.5.6/linux-scientific7-x86_64_v2-gcc-12.1.0-ltt2cbcwus2nwcyikb34oocgdn5gbay7/lib/pkgconfig:\
/daq/software/spack_packages/ncurses/6.5/linux-scientific7-x86_64_v2-gcc-12.1.0-xkjsxxs2wu5m7gropdpr4hh5ptbdsmlw/lib/pkgconfig:\
/daq/software/spack_packages/fontconfig/2.15.0/linux-scientific7-x86_64_v2-gcc-12.1.0-4cx7hur2t47kx5udlconuzrgeyazx7jy/lib/pkgconfig:\
/daq/software/spack_packages/util-linux-uuid/2.40.2/linux-scientific7-x86_64_v2-gcc-12.1.0-cmghxau3amtlkosc2x5kpbnxrkplyul5/lib/pkgconfig:\
/daq/software/spack_packages/libxml2/2.9.12/linux-scientific7-x86_64_v2-gcc-12.1.0-mvjb7eqiktjommr3qa6kv65rolrvgk4u/lib/pkgconfig:\
/daq/software/spack_packages/xz/5.4.6/linux-scientific7-x86_64_v2-gcc-12.1.0-63uqskev6ph3q52qegolmbx44i5ixlzo/lib/pkgconfig:\
/daq/software/spack_packages/freetype/2.13.3/linux-scientific7-x86_64_v2-gcc-12.1.0-wtdmflrac5uukkx3ys6wwdvuzwvk4arc/lib/pkgconfig:\
/daq/software/spack_packages/libpng/1.6.39/linux-scientific7-x86_64_v2-gcc-12.1.0-suxjfnj6b4jkqy3ysdc3z3ee65v7d4hr/lib64/pkgconfig:\
/daq/software/spack_packages/zlib-ng/2.2.1/linux-scientific7-x86_64_v2-gcc-12.1.0-sxdpvxtolijkcollh2p52tgzjfqyzccs/lib/pkgconfig:\
/daq/software/spack_packages/bzip2/1.0.8/linux-scientific7-x86_64_v2-gcc-12.1.0-zthfzpjwlediwy2c47oubz7cisknp2ne/lib/pkgconfig:\
/daq/software/spack_packages/font-util/1.4.1/linux-scientific7-x86_64_v2-gcc-12.1.0-b2okhvlvljnrcq7eitahdqbgpuojzo4k/lib/pkgconfig:\
/usr/share/pkgconfig:\
/usr/lib64/pkgconfig:\
/usr/lib/pkgconfig

export PYTHONPATH=/daq/software/spack_packages/py-numpy/1.24.3/linux-scientific7-x86_64_v2-gcc-12.1.0-zmj2kuhh5fvbkk3flvzoevn6sf4eyn3o/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-pybind11/2.10.4/linux-scientific7-x86_64_v2-gcc-12.1.0-wvqnyzq2rvsiwtfkbluvb6lxiom3qikp/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-setuptools/63.4.3/linux-scientific7-x86_64_v2-gcc-12.1.0-xj4dsmvtekh622gvexxj5u2sqgxk2w7h/lib/python3.9/site-packages:\
/daq/software/spack_packages/root/6.28.12/linux-scientific7-x86_64_v2-gcc-12.1.0-qds7rrehskeatmynw6dl56633gp6jlna/lib/root:\
/daq/software/spack_packages/python-venv/1.0/linux-scientific7-x86_64_v2-gcc-12.1.0-qgncjibkf6rj5o34zlm7tyiojmscackp/lib/python3.9/site-packages

export QTDIR="/daq/software/spack_packages/qt/5.15.15/linux-scientific7-x86_64_v2-gcc-12.1.0-ecpnt64sxclskwhetqg2c7n2ewcyvg3h"

export QTINC="/daq/software/spack_packages/qt/5.15.15/linux-scientific7-x86_64_v2-gcc-12.1.0-ecpnt64sxclskwhetqg2c7n2ewcyvg3h/inc"

export QTLIB="/daq/software/spack_packages/qt/5.15.15/linux-scientific7-x86_64_v2-gcc-12.1.0-ecpnt64sxclskwhetqg2c7n2ewcyvg3h/lib"

export QT_PLUGIN_PATH="/daq/software/spack_packages/qt/5.15.15/linux-scientific7-x86_64_v2-gcc-12.1.0-ecpnt64sxclskwhetqg2c7n2ewcyvg3h/plugins"

export ROOTSYS="/daq/software/spack_packages/root/6.28.12/linux-scientific7-x86_64_v2-gcc-12.1.0-qds7rrehskeatmynw6dl56633gp6jlna"

export ROOT_INCLUDE_PATH=/daq/software/spack_packages/canvas-root-io/1.13.06/linux-scientific7-x86_64_v2-gcc-12.1.0-v43hqo4caywke2tmr22khvhjhfwplbkj/include:\
/daq/software/spack_packages/root/6.28.12/linux-scientific7-x86_64_v2-gcc-12.1.0-qds7rrehskeatmynw6dl56633gp6jlna/include:\
/daq/software/spack_packages/xxhash/0.8.2/linux-scientific7-x86_64_v2-gcc-12.1.0-xxyiytvxl7yflvrfqhzhnvhwyymixquf/include:\
/daq/software/spack_packages/vdt/0.4.4/linux-scientific7-x86_64_v2-gcc-12.1.0-ovbtgbr3mnizyrwil2uyafakjlmqhmzn/include:\
/daq/software/spack_packages/unuran/1.8.1/linux-scientific7-x86_64_v2-gcc-12.1.0-of72ar4ywp2a632md7d4n7ktqoiqsm6r/include:\
/daq/software/spack_packages/rngstreams/1.0.1/linux-scientific7-x86_64_v2-gcc-12.1.0-4dsvxeoocyadx7umrr6sn2ppnlefvbye/include:\
/daq/software/spack_packages/pcre/8.45/linux-scientific7-x86_64_v2-gcc-12.1.0-6kic36gnromxnxheawdfbqsa7z6pxndn/include:\
/daq/software/spack_packages/nlohmann-json/3.11.3/linux-scientific7-x86_64_v2-gcc-12.1.0-ng74lromyojfouichoelmhstihdxk6be/include:\
/daq/software/spack_packages/lz4/1.10.0/linux-scientific7-x86_64_v2-gcc-12.1.0-2ngm7dq6vh7fqlup7kzprkswnhpdx27j/include:\
/daq/software/spack_packages/libxpm/3.5.17/linux-scientific7-x86_64_v2-gcc-12.1.0-54ljpwtfwgmzgqgixb7qnzuhqk4unvcw/include:\
/daq/software/spack_packages/libxft/2.3.8/linux-scientific7-x86_64_v2-gcc-12.1.0-5apo376fx7pwvlyuowzsyveykcq7bdtw/include:\
/daq/software/spack_packages/fontconfig/2.15.0/linux-scientific7-x86_64_v2-gcc-12.1.0-4cx7hur2t47kx5udlconuzrgeyazx7jy/include:\
/daq/software/spack_packages/font-util/1.4.1/linux-scientific7-x86_64_v2-gcc-12.1.0-b2okhvlvljnrcq7eitahdqbgpuojzo4k/include:\
/daq/software/spack_packages/libjpeg-turbo/3.0.3/linux-scientific7-x86_64_v2-gcc-12.1.0-copnoe3uxvpwslwhesvti7tc4o7z3bnf/include:\
/daq/software/spack_packages/gsl/2.7.1/linux-scientific7-x86_64_v2-gcc-12.1.0-qpbgmwp3lzazgbgq4ybzvphwtjhrujnw/include:\
/daq/software/spack_packages/glew/2.2.0/linux-scientific7-x86_64_v2-gcc-12.1.0-ugid4brjilnedja2n5k43gzt3kg5fyo5/include:\
/daq/software/spack_packages/gl2ps/1.4.2/linux-scientific7-x86_64_v2-gcc-12.1.0-qkuwebsdlpnmysxhkoifq3z6ypnqy6uu/include:\
/daq/software/spack_packages/ftgl/2.4.0/linux-scientific7-x86_64_v2-gcc-12.1.0-bdch4jxjfpgmghriiblt6merxsuyif3h/include:\
/daq/software/spack_packages/mesa-glu/9.0.2/linux-scientific7-x86_64_v2-gcc-12.1.0-ehuxz5bunbjehf45qywxjvz4w57qzn3i/include:\
/daq/software/spack_packages/glx/1.4/linux-scientific7-x86_64_v2-gcc-12.1.0-iwtfyhty7ra5fbxqm2kt3e6buduvqect/include:\
/daq/software/spack_packages/mesa/23.3.6/linux-scientific7-x86_64_v2-gcc-12.1.0-dieogogchcmenrubcckojlfzcsma4k5x/include:\
/daq/software/spack_packages/xrandr/1.5.2/linux-scientific7-x86_64_v2-gcc-12.1.0-5e6jmtwxqrjkojqsvu7xllhubi5nn6o5/include:\
/daq/software/spack_packages/libxrandr/1.5.4/linux-scientific7-x86_64_v2-gcc-12.1.0-mki3m2hktjb33blienvo5z7n5mreezvx/include:\
/daq/software/spack_packages/randrproto/1.5.0/linux-scientific7-x86_64_v2-gcc-12.1.0-thzikeaxc2hhu6hjqravmmzxylsnpovw/include:\
/daq/software/spack_packages/libxrender/0.9.11/linux-scientific7-x86_64_v2-gcc-12.1.0-z5duuosxndjzjfsey6dw2yd67toblx4u/include:\
/daq/software/spack_packages/renderproto/0.11.1/linux-scientific7-x86_64_v2-gcc-12.1.0-pwkmoamcq6bz7zen3k2tgflenze2wvk5/include:\
/daq/software/spack_packages/llvm/17.0.6/linux-scientific7-x86_64_v2-gcc-12.1.0-oonxvbhjt3azge6lcczgucm5mtgayx6m/include:\
/daq/software/spack_packages/swig/4.1.1/linux-scientific7-x86_64_v2-gcc-12.1.0-twffq6ibkccuiaafhqqdtwteqb7win3h/include:\
/daq/software/spack_packages/pcre2/10.44/linux-scientific7-x86_64_v2-gcc-12.1.0-uuq57i44lhnnq2ehid733etkx5menvbc/include:\
/daq/software/spack_packages/lua/5.3.6/linux-scientific7-x86_64_v2-gcc-12.1.0-g52bpuntt37myiw6rtr23l3xnopnn2vs/include:\
/daq/software/spack_packages/libedit/3.1-20240808/linux-scientific7-x86_64_v2-gcc-12.1.0-ez7k7bzagxw6hh6zq24v7srq3a3rckpy/include:\
/daq/software/spack_packages/binutils/2.43.1/linux-scientific7-x86_64_v2-gcc-12.1.0-sh7pfe76fvh6pnmqcbldqhx74o5yneys/include:\
/daq/software/spack_packages/libxt/1.3.0/linux-scientific7-x86_64_v2-gcc-12.1.0-nbuh2whsoajqcwzv7elf3ycwh6ovjqss/include:\
/daq/software/spack_packages/libsm/1.2.4/linux-scientific7-x86_64_v2-gcc-12.1.0-znvvt53tyskfuqeiwbqqi5ccz44ly65p/include:\
/daq/software/spack_packages/libice/1.1.1/linux-scientific7-x86_64_v2-gcc-12.1.0-s5b4nv7ac5ufujlewvpjugvcwrg5ltkn/include:\
/daq/software/spack_packages/libxext/1.3.6/linux-scientific7-x86_64_v2-gcc-12.1.0-pzl5hc5jtsbgynqcmm5dxamei2sok23w/include:\
/daq/software/spack_packages/xextproto/7.3.0/linux-scientific7-x86_64_v2-gcc-12.1.0-y5bjckzsmi56ijewszfiiu4fs3jpxmyq/include:\
/daq/software/spack_packages/libx11/1.8.10/linux-scientific7-x86_64_v2-gcc-12.1.0-q2wzgxhmzzbyiljdkvzdgj2xgydymzum/include:\
/daq/software/spack_packages/xtrans/1.5.0/linux-scientific7-x86_64_v2-gcc-12.1.0-qr5uiimh3xomqxnee4tzjc65vqome64j/include:\
/daq/software/spack_packages/libxcb/1.17.0/linux-scientific7-x86_64_v2-gcc-12.1.0-vr7v6qbfqwfocnug4uom3sdo4bnqwra6/include:\
/daq/software/spack_packages/libxdmcp/1.1.5/linux-scientific7-x86_64_v2-gcc-12.1.0-xbkcmoxyyevels5kmzd44ouaixlfxpvb/include:\
/daq/software/spack_packages/libxau/1.0.11/linux-scientific7-x86_64_v2-gcc-12.1.0-sysciliizhsh5s5dq3legxyud6cf4qqs/include:\
/daq/software/spack_packages/xproto/7.0.31/linux-scientific7-x86_64_v2-gcc-12.1.0-4hjuj4hygt3fe7pqfluqp7bcchyktjci/include:\
/daq/software/spack_packages/libpthread-stubs/0.5/linux-scientific7-x86_64_v2-gcc-12.1.0-o62e4bthko45oy6qwaiohkga3tulpxss/include:\
/daq/software/spack_packages/kbproto/1.0.7/linux-scientific7-x86_64_v2-gcc-12.1.0-y6rzgxbr43nnqhu5ittkfj7465o2zhag/include:\
/daq/software/spack_packages/libunwind/1.6.2/linux-scientific7-x86_64_v2-gcc-12.1.0-ynwondarg3654iwbknk7uabxwxkszi26/include:\
/daq/software/spack_packages/glproto/1.4.17/linux-scientific7-x86_64_v2-gcc-12.1.0-okecztudxgb2dyn562xkdxr36odpv7ty/include:\
/daq/software/spack_packages/freetype/2.13.3/linux-scientific7-x86_64_v2-gcc-12.1.0-wtdmflrac5uukkx3ys6wwdvuzwvk4arc/include:\
/daq/software/spack_packages/libpng/1.6.39/linux-scientific7-x86_64_v2-gcc-12.1.0-suxjfnj6b4jkqy3ysdc3z3ee65v7d4hr/include:\
/daq/software/spack_packages/davix/0.8.7/linux-scientific7-x86_64_v2-gcc-12.1.0-uf6wyx3mdkg5xztecxhte2vmfgsfwoim/include:\
/daq/software/spack_packages/rapidjson/1.2.0-2024-08-16/linux-scientific7-x86_64_v2-gcc-12.1.0-xcu7vhyffgqj4obcwuf2b4pktn5up4w6/include:\
/daq/software/spack_packages/curl/8.8.0/linux-scientific7-x86_64_v2-gcc-12.1.0-abai22j57nbgrejwqna4vmsss5jxttn2/include:\
/daq/software/spack_packages/nghttp2/1.63.0/linux-scientific7-x86_64_v2-gcc-12.1.0-u5enmkbawgclkyb5dvmkxlmu24rtvhgz/include:\
/daq/software/spack_packages/hep-concurrency/1.09.02/linux-scientific7-x86_64_v2-gcc-12.1.0-plzhakwxyr34w4b72nrszc6fogk5g4ms/include:\
/daq/software/spack_packages/canvas/3.16.04/linux-scientific7-x86_64_v2-gcc-12.1.0-nghndp52twnnyb6doopehblysskomq57/include:\
/daq/software/spack_packages/range-v3/0.12.0/linux-scientific7-x86_64_v2-gcc-12.1.0-736lwhu2i5uj74jrxaur46uh3hr54dma/include:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-scientific7-x86_64_v2-gcc-12.1.0-zesi6i7qrw7tidja4swfoul245hvhmln/include:\
/daq/software/spack_packages/catch2/3.3.2/linux-scientific7-x86_64_v2-gcc-12.1.0-4nmcsdbj6o5dbwxpktrn4gmllyayv5g2/include:\
/daq/software/spack_packages/fhicl-cpp/4.18.04/linux-scientific7-x86_64_v2-gcc-12.1.0-xgfwmiubujvze3iahzwr7iq3iszg2svg/include:\
/daq/software/spack_packages/python/3.9.15/linux-scientific7-x86_64_v2-gcc-12.1.0-neuzvj3gpdpezzr3lmen554oo6pfsw7k/include:\
/daq/software/spack_packages/util-linux-uuid/2.40.2/linux-scientific7-x86_64_v2-gcc-12.1.0-cmghxau3amtlkosc2x5kpbnxrkplyul5/include:\
/daq/software/spack_packages/libxcrypt/4.4.35/linux-scientific7-x86_64_v2-gcc-12.1.0-jl2c3c5t6qii3x54rvb3x5nzicw3i3gk/include:\
/daq/software/spack_packages/libffi/3.4.6/linux-scientific7-x86_64_v2-gcc-12.1.0-vxupfcievnuhitsrfwtywyjtvja4xr7u/include:\
/daq/software/spack_packages/gettext/0.22.5/linux-scientific7-x86_64_v2-gcc-12.1.0-2mpyicbdlhidfobaoah7esytbvlgnrt2/include:\
/daq/software/spack_packages/gdbm/1.23/linux-scientific7-x86_64_v2-gcc-12.1.0-bo3tsl2eogjombpbnnjesfdfkd344vxx/include:\
/daq/software/spack_packages/expat/2.6.3/linux-scientific7-x86_64_v2-gcc-12.1.0-67ri5mycrfnuxn2fe2gfkryycsfqdx5x/include:\
/daq/software/spack_packages/libbsd/0.12.2/linux-scientific7-x86_64_v2-gcc-12.1.0-a3ehnhixspxyphyctrhbg5v2rfek6pht/include:\
/daq/software/spack_packages/libmd/1.0.4/linux-scientific7-x86_64_v2-gcc-12.1.0-sn4b7oxrjxha7qqkizakpcdblddcik6k/include:\
/daq/software/spack_packages/intel-tbb/2021.12.0/linux-scientific7-x86_64_v2-gcc-12.1.0-lakjaspivfkf4nk7ttemijhqz4s5kjzf/include:\
/daq/software/spack_packages/hwloc/2.11.1/linux-scientific7-x86_64_v2-gcc-12.1.0-42rrawqd22xlucciyqjvveaged6modfw/include:\
/daq/software/spack_packages/libxml2/2.9.12/linux-scientific7-x86_64_v2-gcc-12.1.0-mvjb7eqiktjommr3qa6kv65rolrvgk4u/include:\
/daq/software/spack_packages/libiconv/1.17/linux-scientific7-x86_64_v2-gcc-12.1.0-kgsg5yd7h7g3e5je42iriel32qddytie/include:\
/daq/software/spack_packages/libpciaccess/0.17/linux-scientific7-x86_64_v2-gcc-12.1.0-tyogvliqmlqpaycug3qrworlnkmbhoj7/include:\
/daq/software/spack_packages/clhep/2.4.7.1/linux-scientific7-x86_64_v2-gcc-12.1.0-vx5syhryunoc2omslhbwz2wqdtazsnos/include:\
/daq/software/spack_packages/cetlib/3.18.02/linux-scientific7-x86_64_v2-gcc-12.1.0-ksueu4az34yru2xjnfcousnzhvwtatfv/include:\
/daq/software/spack_packages/sqlite/3.40.1/linux-scientific7-x86_64_v2-gcc-12.1.0-7do3q3hlyc2yog3knvhpyru3fr3syqkx/include:\
/daq/software/spack_packages/readline/8.2/linux-scientific7-x86_64_v2-gcc-12.1.0-iillh2ypzrvu4c3nefwel43mfb4ipzh2/include:\
/daq/software/spack_packages/ncurses/6.5/linux-scientific7-x86_64_v2-gcc-12.1.0-xkjsxxs2wu5m7gropdpr4hh5ptbdsmlw/include:\
/daq/software/spack_packages/openssl/3.3.1/linux-scientific7-x86_64_v2-gcc-12.1.0-gtpsn2exm3nc5jrrlrhhf4ogi3n72yxg/include:\
/daq/software/spack_packages/cetlib-except/1.09.01/linux-scientific7-x86_64_v2-gcc-12.1.0-4xpkccndizziwe6x27g6x35qufvmfc3s/include:\
/daq/software/spack_packages/boost/1.82.0/linux-scientific7-x86_64_v2-gcc-12.1.0-arw4js3gedhbkmgpu5jfungzppcsbd3w/include:\
/daq/software/spack_packages/zstd/1.5.6/linux-scientific7-x86_64_v2-gcc-12.1.0-ltt2cbcwus2nwcyikb34oocgdn5gbay7/include:\
/daq/software/spack_packages/zlib-ng/2.2.1/linux-scientific7-x86_64_v2-gcc-12.1.0-sxdpvxtolijkcollh2p52tgzjfqyzccs/include:\
/daq/software/spack_packages/xz/5.4.6/linux-scientific7-x86_64_v2-gcc-12.1.0-63uqskev6ph3q52qegolmbx44i5ixlzo/include:\
/daq/software/spack_packages/bzip2/1.0.8/linux-scientific7-x86_64_v2-gcc-12.1.0-zthfzpjwlediwy2c47oubz7cisknp2ne/include:\
/daq/software/spack_packages/gcc-runtime/12.1.0/linux-scientific7-x86_64_v2-gcc-12.1.0-5q6qhr6zztifbsml5e6xqm6fpjnnsm5g/include:\
/daq/software/spack_packages/art-root-io/1.13.06/linux-scientific7-x86_64_v2-gcc-12.1.0-jyefivtudqunnaayll7zoocpmgmyl6nc/include:\
/daq/software/spack_packages/art-suite/s131/linux-scientific7-x86_64_v2-gcc-12.1.0-ls76stzmrxghqsbh3n2qd2oj7uonucod/include:\
/daq/software/spack_packages/sbndaq-suite/v1_10_07/linux-scientific7-x86_64_v2-gcc-12.1.0-gvo37in7tsmcbv6a5ketfooccxa2wt2i/include:\
/usr/include

export ROOT_LIBRARY_PATH=/daq/software/spack_packages/art-root-io/1.13.06/linux-scientific7-x86_64_v2-gcc-12.1.0-jyefivtudqunnaayll7zoocpmgmyl6nc/lib:\
/daq/software/spack_packages/canvas-root-io/1.13.06/linux-scientific7-x86_64_v2-gcc-12.1.0-v43hqo4caywke2tmr22khvhjhfwplbkj/lib

export ROOT_VERSION="v6"

export SBNDAQ_VERSION="v1_10_07"

export SETUP_ARTDAQ_MFEXTENSIONS="spack load artdaq-mfextensions"

export SPACK_ALIASES="concretise:concretize;containerise:containerize;rm:remove"

export SPACK_ARCH="linux-scientific7-x86_64_v2"

export SPACK_DISABLE_LOCAL_CONFIG="true"

export SPACK_ENV_SCRIPT="/daq/software/spack_packages/spack/current/NULL/share/spack/setup-env.sh"

export SPACK_INSTALL_DIR="/daq/software/spack_packages/spack/current/NULL"

export SPACK_LOADED_HASHES="gvo37in7tsmcbv6a5ketfooccxa2wt2i"

export SPACK_PYTHON="/usr/bin/python3"

export SPACK_ROOT="/daq/software/spack_packages/spack/current/NULL"

export SPACK_USER_CONFIG_PATH="/home/nfs/icarus/DAQ_SPACK_ProdAreas/DAQ_2025-04-07_GAL_v1_10_07/srcs/sbndaq/sbn-fd/DAQInterface2/overrides/spack"

export SSH_AGENT_PID="98549"

export SSH_AUTH_SOCK="/tmp/ssh-09yCtyXXhlPo/agent.98517"

export THIS_SBN_DAQ_DAQINTERFACE_DIR="/home/nfs/icarus/DAQ_SPACK_ProdAreas/DAQ_2025-04-07_GAL_v1_10_07/srcs/sbndaq/sbn-fd/DAQInterface2"

export USE_CACHED_BASH_ENV="True"

export VNCDESKTOP="icarus-evb01:1 (icarus)"

export VTE_VERSION="5204"

export WIBTOOLS_BIN="/daq/software/spack_packages/wibtools/v1_10_06/linux-scientific7-x86_64_v2-gcc-12.1.0-xly3yu7icicnzfmecjvnrvv5jqkcswor/bin"

export WIB_ADDRESS_TABLE_PATH="/daq/software/spack_packages/wibtools/v1_10_06/linux-scientific7-x86_64_v2-gcc-12.1.0-xly3yu7icicnzfmecjvnrvv5jqkcswor/tables"

export WIB_CONFIG_PATH="/daq/software/spack_packages/wibtools/v1_10_06/linux-scientific7-x86_64_v2-gcc-12.1.0-xly3yu7icicnzfmecjvnrvv5jqkcswor/config"

export XLOCALEDIR=/daq/software/spack_packages/libx11/1.8.10/linux-scientific7-x86_64_v2-gcc-12.1.0-q2wzgxhmzzbyiljdkvzdgj2xgydymzum/share/X11/locale

export _a="sbndaq-suite@v1_10_07%gcc@12.1.0 arch=linux-scientific7-x86_64_v2 /gvo37in"

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

export cmd="/usr/bin/python3"

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

