#!/usr/bin/env bash
# Captured environment: 20260403_010146

[[ "$0" != "${BASH_SOURCE}" ]] || { echo "The script $(basename ${BASH_SOURCE}) should be sourced!"; exit 1; }
shopt -s extglob
#Environment variables
export ABRT_DEBUG_LOG="/dev/null"

export ACLOCAL_PATH=/daq/software/spack_packages/gobject-introspection/1.78.1/linux-scientific7-x86_64_v2-gcc-13.1.0-b7uawenqkplhag6uabwk3lllhtrjar7m/share/aclocal:\
/daq/software/spack_packages/util-macros/1.20.1/linux-scientific7-x86_64_v2-gcc-13.1.0-65fiuhcnaqmxr3sun4mmxaj5mzcofvsf/share/aclocal:\
/daq/software/spack_packages/cmake/3.27.9/linux-scientific7-x86_64_v2-gcc-13.1.0-2gekeqbpw34w6rfkpbmgav34wzltk55x/share/aclocal:\
/daq/software/spack_packages/glib/2.82.2/linux-scientific7-x86_64_v2-gcc-13.1.0-a5uavv2syecfdoi5xdwbfb7uwpwoycck/share/aclocal:\
/daq/software/spack_packages/gsl/2.7.1/linux-scientific7-x86_64_v2-gcc-13.1.0-a77szrizltz4uxkhfwfec4gfkwzjycod/share/aclocal:\
/daq/software/spack_packages/pkg-config/0.29.2/linux-scientific7-x86_64_v2-gcc-13.1.0-jz2iljy2m7sdbz5flhd6wcf5zjnjdusw/share/aclocal:\
/daq/software/spack_packages/font-util/1.4.1/linux-scientific7-x86_64_v2-gcc-13.1.0-xbmdz4kkykxugbf6q6rwsodzshfa7vr2/share/aclocal:\
/daq/software/spack_packages/freetype/2.13.2/linux-scientific7-x86_64_v2-gcc-13.1.0-cxxloiifqecxazx2icilnpu3qdr6p7md/share/aclocal:\
/daq/software/spack_packages/gettext/0.22.5/linux-scientific7-x86_64_v2-gcc-13.1.0-7w2pny473vugkkcdw2aq6qxs4pfxufgn/share/aclocal:\
/daq/software/spack_packages/libxml2/2.9.12/linux-scientific7-x86_64_v2-gcc-13.1.0-xykzyjc7p7sqaqolzic5dxl33trcw4me/share/aclocal:\
/daq/software/spack_packages/curl/8.11.1/linux-scientific7-x86_64_v2-gcc-13.1.0-chp2otfsxheqmwncr7kzznmyusuymlkk/share/aclocal:\
/daq/software/spack_packages/xtrans/1.5.2/linux-scientific7-x86_64_v2-gcc-13.1.0-bqyyodtt57mrdzp46g6zex6jkmkzrwjp/share/aclocal:\
/usr/share/aclocal

export ARTDAQ_DAQINTERFACE_DIR="/daq/software/spack_packages/artdaq-daqinterface/v4_05_00/linux-scientific7-x86_64_v2-gcc-13.1.0-xqtugmslth3sfmba4uoyn53fomoe2674"

export ARTDAQ_DAQINTERFACE_VERSION="SPACK"

export ARTDAQ_MFEXTENSIONS_DIR="/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-scientific7-x86_64_v2-gcc-13.1.0-r33owep3kow4fxg6xg57wiqjextfqrzn"

export BASH_REMATCH

export BOOST_ROOT="/daq/software/spack_packages/boost/1.82.0/linux-scientific7-x86_64_v2-gcc-13.1.0-nrczh3for3kkihywmxkoqbcevdp733s7"

export BUILD_HASH="/6d4rvf2"

export BUILD_VARIANT="gcc@13.1.0"

export CC="/daq/software/spack_packages/llvm/17.0.6/linux-scientific7-x86_64_v2-gcc-13.1.0-hedz3ngpjlogqjjfi6r6u4a7slu6drgv/bin/clang"

export CET_PLUGIN_PATH=/daq/software/spack_packages/sbndaq/v2_01_00/linux-scientific7-x86_64_v2-gcc-13.1.0-3ptjd3ui6454oy6qop3wnit65dvue7yg/lib:\
/daq/software/spack_packages/artdaq-demo/v3_13_00/linux-scientific7-x86_64_v2-gcc-13.1.0-gn3qopzvehk4albk2g2ullynuay7nhmi/lib:\
/daq/software/spack_packages/sbndaq-artdaq/v2_01_00/linux-scientific7-x86_64_v2-gcc-13.1.0-mtjdlqgmsomflnf4ak54wdfcpa27e2le/lib:\
/daq/software/spack_packages/artdaq-core-demo/v1_11_00/linux-scientific7-x86_64_v2-gcc-13.1.0-hryikwlg27anf46ut7qrrdmryr2vc2s6/lib:\
/daq/software/spack_packages/artdaq/v3_13_02/linux-scientific7-x86_64_v2-gcc-13.1.0-fvvnut3cudaypbvwst4tstslu4kmuagb/lib:\
/daq/software/spack_packages/artdaq-epics-plugin/v1_06_00/linux-scientific7-x86_64_v2-gcc-13.1.0-oszfjy6ovl7rn6htfr35je64w6uwinau/lib:\
/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-scientific7-x86_64_v2-gcc-13.1.0-r33owep3kow4fxg6xg57wiqjextfqrzn/lib:\
/daq/software/spack_packages/artdaq-utilities/v1_09_00/linux-scientific7-x86_64_v2-gcc-13.1.0-yaiwnclaew7m6anz7r6r7lty5csxlmz6/lib:\
/daq/software/spack_packages/artdaq-core/v3_10_02/linux-scientific7-x86_64_v2-gcc-13.1.0-nvaii6wymdcfmf7muuyjxn7jtxswkexr/lib:\
/daq/software/spack_packages/trace/v3_17_11/linux-scientific7-x86_64_v2-gcc-13.1.0-ijruzydwaercoopxwyny4s4sqlclcfxg/lib:\
/daq/software/spack_packages/art-root-io/1.13.06/linux-scientific7-x86_64_v2-gcc-13.1.0-fi7imbonclpk272smjxt5c4werkv7nd5/lib:\
/daq/software/spack_packages/art/3.14.04/linux-scientific7-x86_64_v2-gcc-13.1.0-cdxeztwlmrzowpwpvuqvvh44rfeoo3b5/lib:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-scientific7-x86_64_v2-gcc-13.1.0-jlvcb7jryzj7pohk7au5v4rxmylyl75r/lib

export CLING_STANDARD_PCH="none"

export CMAKE_PREFIX_PATH=/daq/software/spack_packages/sbndaq-suite/v2_01_00/linux-scientific7-x86_64_v2-gcc-13.1.0-6d4rvf26fi7dxcjjofddhc35rucysq7e:\
/daq/software/spack_packages/artdaq-runcontrol-gui/v1_03_06/linux-scientific7-x86_64_v2-gcc-13.1.0-4hnqkd4m5c6ixyaoagbcytpjdeo7uskv:\
/daq/software/spack_packages/artdaq-suite/v3_13_02/linux-scientific7-x86_64_v2-gcc-13.1.0-tswv5ueceysm7s4hjm746bg23qbimkdc:\
/daq/software/spack_packages/sbndaq/v2_01_00/linux-scientific7-x86_64_v2-gcc-13.1.0-3ptjd3ui6454oy6qop3wnit65dvue7yg:\
/daq/software/spack_packages/artdaq-daqinterface/v4_05_00/linux-scientific7-x86_64_v2-gcc-13.1.0-xqtugmslth3sfmba4uoyn53fomoe2674:\
/daq/software/spack_packages/artdaq-database/v1_10_00/linux-scientific7-x86_64_v2-gcc-13.1.0-pvzsnkldy2ual6fgk65yeot7u7gawkam:\
/daq/software/spack_packages/artdaq-demo/v3_13_00/linux-scientific7-x86_64_v2-gcc-13.1.0-gn3qopzvehk4albk2g2ullynuay7nhmi:\
/daq/software/spack_packages/sbndaq-artdaq/v2_01_00/linux-scientific7-x86_64_v2-gcc-13.1.0-mtjdlqgmsomflnf4ak54wdfcpa27e2le:\
/daq/software/spack_packages/artdaq-core-demo/v1_11_00/linux-scientific7-x86_64_v2-gcc-13.1.0-hryikwlg27anf46ut7qrrdmryr2vc2s6:\
/daq/software/spack_packages/artdaq/v3_13_02/linux-scientific7-x86_64_v2-gcc-13.1.0-fvvnut3cudaypbvwst4tstslu4kmuagb:\
/daq/software/spack_packages/artdaq-epics-plugin/v1_06_00/linux-scientific7-x86_64_v2-gcc-13.1.0-oszfjy6ovl7rn6htfr35je64w6uwinau:\
/daq/software/spack_packages/caendigitizer/2.17.3/linux-scientific7-x86_64_v2-gcc-13.1.0-q2rruktpxo5kog5qifza5odnzty3nkbq:\
/daq/software/spack_packages/cppzmq/4.10.0/linux-scientific7-x86_64_v2-gcc-13.1.0-ff3jhyd7irykp3z3b3dwpx5gz7gs74zg:\
/daq/software/spack_packages/hiredis/1.1.0/linux-scientific7-x86_64_v2-gcc-13.1.0-tur2engg3t7wd5lfrocxty5ofogtqgvb:\
/daq/software/spack_packages/jsoncpp/1.9.6/linux-scientific7-x86_64_v2-gcc-13.1.0-u3sl6h2etcfqltr4pzrybfdfrusrh6kp:\
/daq/software/spack_packages/libpqxx/7.10.0/linux-scientific7-x86_64_v2-gcc-13.1.0-r2lcbztseam4ah3kdwcfxzcysas7lpx6:\
/daq/software/spack_packages/redis/7.4.0/linux-scientific7-x86_64_v2-gcc-13.1.0-y2dxdczula3x7todf7lfa4tb7jcs3mos:\
/daq/software/spack_packages/sbndaq-artdaq-core/v2_01_00/linux-scientific7-x86_64_v2-gcc-13.1.0-6745h4l6solahyiuouv7zeaxbaq4cppj:\
/daq/software/spack_packages/wibtools/v2_01_00/linux-scientific7-x86_64_v2-gcc-13.1.0-yvhyqfxipmt2bq2racrqfs6dzhgzlwmt:\
/daq/software/spack_packages/windriver/v16_05_00/linux-scientific7-x86_64_v2-gcc-13.1.0-mp5nhya4luinolsyqywdpbvha6oslotg:\
/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-scientific7-x86_64_v2-gcc-13.1.0-r33owep3kow4fxg6xg57wiqjextfqrzn:\
/daq/software/spack_packages/xmlrpc-c/1.51.06/linux-scientific7-x86_64_v2-gcc-13.1.0-g3jkbkqnihufoqmasgmt4fg6znqm3sat:\
/daq/software/spack_packages/artdaq-utilities/v1_09_00/linux-scientific7-x86_64_v2-gcc-13.1.0-yaiwnclaew7m6anz7r6r7lty5csxlmz6:\
/daq/software/spack_packages/epics-base/7.0.6.1/linux-scientific7-x86_64_v2-gcc-13.1.0-xj5gmm6lfqeaypibghed4vvyehxriyn7:\
/daq/software/spack_packages/caencomm/1.7.0/linux-scientific7-x86_64_v2-gcc-13.1.0-qmndkmtm6hypjozhziwpi3zjk5hvteqw:\
/daq/software/spack_packages/libzmq/4.3.5/linux-scientific7-x86_64_v2-gcc-13.1.0-ydhmebzflzwncurkfoydj2dx57qoyecv:\
/daq/software/spack_packages/artdaq-core/v3_10_02/linux-scientific7-x86_64_v2-gcc-13.1.0-nvaii6wymdcfmf7muuyjxn7jtxswkexr:\
/daq/software/spack_packages/librdkafka/2.8.0/linux-scientific7-x86_64_v2-gcc-13.1.0-h3sdea2zwznqverdazftmtvxqdywfcbz:\
/daq/software/spack_packages/qt/5.15.16/linux-scientific7-x86_64_v2-gcc-13.1.0-q6pskemnhz6oav7ifqtfmayxnuhzjg5t:\
/daq/software/spack_packages/caenvmelib/4.0.2/linux-scientific7-x86_64_v2-gcc-13.1.0-xmpkyea545lznahmwiynfwsoxn2lp2yb:\
/daq/software/spack_packages/libsodium/1.0.20/linux-scientific7-x86_64_v2-gcc-13.1.0-d5eaj4buixpati3pqb4dhb7beo6forl4:\
/daq/software/spack_packages/art-suite/s131/linux-scientific7-x86_64_v2-gcc-13.1.0-q7uqbe7u2lf62jembhpm33bgmvjiax34:\
/daq/software/spack_packages/trace/v3_17_11/linux-scientific7-x86_64_v2-gcc-13.1.0-ijruzydwaercoopxwyny4s4sqlclcfxg:\
/daq/software/spack_packages/zlib/1.3.1/linux-scientific7-x86_64_v2-gcc-13.1.0-k6kdcwv3e2fhfwtnewojujhapfln5kpl:\
/daq/software/spack_packages/double-conversion/3.3.0/linux-scientific7-x86_64_v2-gcc-13.1.0-abzojjxr46bdd3pd3ooejsrczufttsr4:\
/daq/software/spack_packages/harfbuzz/10.2.0/linux-scientific7-x86_64_v2-gcc-13.1.0-u3lhhdr63yqziihztkmeysz3fue6i5ue:\
/daq/software/spack_packages/libmng/2.0.3/linux-scientific7-x86_64_v2-gcc-13.1.0-t4bfzvsccon4deejljnsf4n5rpk4ivq5:\
/daq/software/spack_packages/libxkbcommon/1.7.0/linux-scientific7-x86_64_v2-gcc-13.1.0-bq5jj6aot6mi4jyf2rpxjtklvnmb2h5a:\
/daq/software/spack_packages/xcb-util-image/0.4.1/linux-scientific7-x86_64_v2-gcc-13.1.0-ttx3ha3ros4yxxgwe7pw6ggx4uryyyjg:\
/daq/software/spack_packages/xcb-util-keysyms/0.4.1/linux-scientific7-x86_64_v2-gcc-13.1.0-nj6yiwutmezfjstz26fivabpsyv27jvg:\
/daq/software/spack_packages/xcb-util-renderutil/0.3.10/linux-scientific7-x86_64_v2-gcc-13.1.0-sovqqclizejc4fxplvarnvwl45arq4bt:\
/daq/software/spack_packages/xcb-util-wm/0.4.2/linux-scientific7-x86_64_v2-gcc-13.1.0-2hbskltets6iatwtuzhcvn7s2hjc33os:\
/daq/software/spack_packages/libusb/1.0.27/linux-scientific7-x86_64_v2-gcc-13.1.0-4rpeutqq7q4xxb2ng65hj2s22ojwvsjy:\
/daq/software/spack_packages/art-root-io/1.13.06/linux-scientific7-x86_64_v2-gcc-13.1.0-fi7imbonclpk272smjxt5c4werkv7nd5:\
/daq/software/spack_packages/cetmodules/3.26.00/linux-scientific7-x86_64_v2-gcc-13.1.0-b357pek64v4c477h4r6nynasxaw77q72:\
/daq/software/spack_packages/fftw/3.3.10/linux-scientific7-x86_64_v2-gcc-13.1.0-4v2unwejoqda7hni57eguavzmot37i6h:\
/daq/software/spack_packages/postgresql/15.2/linux-scientific7-x86_64_v2-gcc-13.1.0-hqxkz77wvon3iwicl3tsyrfxvmnt7s47:\
/daq/software/spack_packages/py-numpy/1.24.3/linux-scientific7-x86_64_v2-gcc-13.1.0-qcmegeyu2i3glbcoetivcnnhh4mllt3g:\
/daq/software/spack_packages/py-pybind11/2.10.4/linux-scientific7-x86_64_v2-gcc-13.1.0-di2xotybntw3a2za4alkbdhcq43q6iwl:\
/daq/software/spack_packages/pythia6/6.4.28/linux-scientific7-x86_64_v2-gcc-13.1.0-56qjtlrvtq3proa7fhhgwxjs7h54xs5d:\
/daq/software/spack_packages/xrootd/5.5.5/linux-scientific7-x86_64_v2-gcc-13.1.0-bindzjdgz5l5vn4fmrduhikvk4hwjddz:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-scientific7-x86_64_v2-gcc-13.1.0-b7uawenqkplhag6uabwk3lllhtrjar7m:\
/daq/software/spack_packages/lcms/2.16/linux-scientific7-x86_64_v2-gcc-13.1.0-6plhsl5lrrqahwpqxac3n5c6tkeoemrs:\
/daq/software/spack_packages/util-macros/1.20.1/linux-scientific7-x86_64_v2-gcc-13.1.0-65fiuhcnaqmxr3sun4mmxaj5mzcofvsf:\
/daq/software/spack_packages/xkeyboard-config/2.34/linux-scientific7-x86_64_v2-gcc-13.1.0-gju52hgqutqpssp6m6ez7l6znqv323ar:\
/daq/software/spack_packages/xcb-util/0.4.1/linux-scientific7-x86_64_v2-gcc-13.1.0-epjfrj2jgveirakpsrq6qnac5y2d7sah:\
/daq/software/spack_packages/art/3.14.04/linux-scientific7-x86_64_v2-gcc-13.1.0-cdxeztwlmrzowpwpvuqvvh44rfeoo3b5:\
/daq/software/spack_packages/canvas-root-io/1.13.06/linux-scientific7-x86_64_v2-gcc-13.1.0-ohsgz4nbqh5gpqh4nbedbzy3glqzogku:\
/daq/software/spack_packages/cmake/3.27.9/linux-scientific7-x86_64_v2-gcc-13.1.0-2gekeqbpw34w6rfkpbmgav34wzltk55x:\
/daq/software/spack_packages/openmpi/5.0.6/linux-scientific7-x86_64_v2-gcc-13.1.0-mephgsux3r6dqry474ynm2yw3zppfbf5:\
/daq/software/spack_packages/openblas/0.3.23/linux-scientific7-x86_64_v2-gcc-13.1.0-wyy6tdhy2atl5r67jhbchga6kg4qyij3:\
/daq/software/spack_packages/py-setuptools/63.4.3/linux-scientific7-x86_64_v2-gcc-13.1.0-omx562ccx7is7mcr6arjo4m4tlfmjhjd:\
/daq/software/spack_packages/json-c/0.18/linux-scientific7-x86_64_v2-gcc-13.1.0-wtqnvnpennbdiagvqzdoqhal2pkxac3s:\
/daq/software/spack_packages/cairo/1.18.2/linux-scientific7-x86_64_v2-gcc-13.1.0-d2n6i3kuj54p33nw6hngtk276mdebcfc:\
/daq/software/spack_packages/libtiff/4.7.0/linux-scientific7-x86_64_v2-gcc-13.1.0-6bvb4hsymusjd4qd7tqk6m7r6wbra2hb:\
/daq/software/spack_packages/canvas/3.16.04/linux-scientific7-x86_64_v2-gcc-13.1.0-c22dw4bifjt5fxefuuwlxrgcerz43rjh:\
/daq/software/spack_packages/hep-concurrency/1.09.02/linux-scientific7-x86_64_v2-gcc-13.1.0-2tohquorrovysda5asm3o7e2vx6acjqk:\
/daq/software/spack_packages/root/6.28.12/linux-scientific7-x86_64_v2-gcc-13.1.0-haa2t56bulneyg5ykcfjhzobirwqencu:\
/daq/software/spack_packages/gmake/4.4.1/linux-scientific7-x86_64_v2-gcc-13.1.0-wgmb4htpanufmn223xjuw5ohbgwjn7ix:\
/daq/software/spack_packages/numactl/2.0.18/linux-scientific7-x86_64_v2-gcc-13.1.0-pirbro3tyg27n2wmmuq453levmwvpi2s:\
/daq/software/spack_packages/openssh/9.9p1/linux-scientific7-x86_64_v2-gcc-13.1.0-fxghnj5hu4o7shi4sljjpiesronrdd2w:\
/daq/software/spack_packages/pmix/5.0.5/linux-scientific7-x86_64_v2-gcc-13.1.0-qz3pfopse6xmwqen6m3zfu5gydhnpdo6:\
/daq/software/spack_packages/glib/2.82.2/linux-scientific7-x86_64_v2-gcc-13.1.0-a5uavv2syecfdoi5xdwbfb7uwpwoycck:\
/daq/software/spack_packages/lzo/2.10/linux-scientific7-x86_64_v2-gcc-13.1.0-5o3ngw5z7kt7cn237p2wgaqixdnnuwvy:\
/daq/software/spack_packages/pixman/0.44.0/linux-scientific7-x86_64_v2-gcc-13.1.0-hteprilzjo4crmyfjd64j2oagpxq2jmt:\
/daq/software/spack_packages/clhep/2.4.7.1/linux-scientific7-x86_64_v2-gcc-13.1.0-rfos5c6rz77h7r4tdmdmgg6iksqqdnrx:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-scientific7-x86_64_v2-gcc-13.1.0-jlvcb7jryzj7pohk7au5v4rxmylyl75r:\
/daq/software/spack_packages/range-v3/0.12.0/linux-scientific7-x86_64_v2-gcc-13.1.0-qsotm25hib2ki2pm6zzckptzsqalwj3m:\
/daq/software/spack_packages/davix/0.8.10/linux-scientific7-x86_64_v2-gcc-13.1.0-zbevk3nmty4e4drhmnwczconn575t3zt:\
/daq/software/spack_packages/ftgl/2.4.0/linux-scientific7-x86_64_v2-gcc-13.1.0-rso4oablehdb4h6zm35dvmpmzhbfumll:\
/daq/software/spack_packages/gl2ps/1.4.2/linux-scientific7-x86_64_v2-gcc-13.1.0-5istesmzttmheahqhx2xer4kekjwg3zs:\
/daq/software/spack_packages/glew/2.2.0/linux-scientific7-x86_64_v2-gcc-13.1.0-su2zs2u66hdxha7kaiilvnwfxgusn7o3:\
/daq/software/spack_packages/gsl/2.7.1/linux-scientific7-x86_64_v2-gcc-13.1.0-a77szrizltz4uxkhfwfec4gfkwzjycod:\
/daq/software/spack_packages/libjpeg-turbo/3.0.3/linux-scientific7-x86_64_v2-gcc-13.1.0-yeejbtvp6v3mholvlec5uv6gtl6ljcxz:\
/daq/software/spack_packages/libxft/2.3.8/linux-scientific7-x86_64_v2-gcc-13.1.0-othbb7a67kx7byxx5w4xuxfdzz5te4iy:\
/daq/software/spack_packages/libxpm/3.5.17/linux-scientific7-x86_64_v2-gcc-13.1.0-umthtzp4g75rjfp7n4rxhg62aevz2osw:\
/daq/software/spack_packages/lz4/1.10.0/linux-scientific7-x86_64_v2-gcc-13.1.0-k4wmpa4d4ww77eznlhp4qlfdl24mijsw:\
/daq/software/spack_packages/nlohmann-json/3.11.3/linux-scientific7-x86_64_v2-gcc-13.1.0-yjplth5drxd7v2xg7pcd7gu6yrthn3fa:\
/daq/software/spack_packages/pcre/8.45/linux-scientific7-x86_64_v2-gcc-13.1.0-mncbvjitpzsr2njdlcukxb3imqvpn7i4:\
/daq/software/spack_packages/unuran/1.8.1/linux-scientific7-x86_64_v2-gcc-13.1.0-b7j2uzwmdrxwwci5anlpugjnkbvvf2t7:\
/daq/software/spack_packages/vdt/0.4.4/linux-scientific7-x86_64_v2-gcc-13.1.0-xadmhwhdsuwpqama2pagmqzn32ys6uh3:\
/daq/software/spack_packages/xxhash/0.8.3/linux-scientific7-x86_64_v2-gcc-13.1.0-civajpuxmekqzqksrgw575l6fbgnfalu:\
/daq/software/spack_packages/krb5/1.21.3/linux-scientific7-x86_64_v2-gcc-13.1.0-mlpvnrd35526dofywk4cszbnjbhg5zav:\
/daq/software/spack_packages/libevent/2.1.12/linux-scientific7-x86_64_v2-gcc-13.1.0-uuylviwcq5ctfr57w6vhzddmf64776ov:\
/daq/software/spack_packages/elfutils/0.192/linux-scientific7-x86_64_v2-gcc-13.1.0-njfordbyrfjdzthkbvnqsljx24k3asgy:\
/daq/software/spack_packages/python-venv/1.0/linux-scientific7-x86_64_v2-gcc-13.1.0-kmzijaokfgdnkujwddmrqh4o4tkiispo:\
/daq/software/spack_packages/catch2/3.3.2/linux-scientific7-x86_64_v2-gcc-13.1.0-hnren2gvxj2574jvplwfnwyqnrazgypf:\
/daq/software/spack_packages/fhicl-cpp/4.18.04/linux-scientific7-x86_64_v2-gcc-13.1.0-ajnvpsjcoladdr6cbtb4z6x252pk2xi2:\
/daq/software/spack_packages/rapidjson/1.2.0-2024-08-16/linux-scientific7-x86_64_v2-gcc-13.1.0-fqrt36ootbfcmvh5qwonu3lnjq7nx37d:\
/daq/software/spack_packages/mesa-glu/9.0.2/linux-scientific7-x86_64_v2-gcc-13.1.0-gsl3k4saxoddomcpoqtcvvc273jl35xp:\
/daq/software/spack_packages/fontconfig/2.15.0/linux-scientific7-x86_64_v2-gcc-13.1.0-syhljpfoo4aybj7uvl22kunytarkyc4q:\
/daq/software/spack_packages/rngstreams/1.0.1/linux-scientific7-x86_64_v2-gcc-13.1.0-mma6hvt6gdccdljbagse3viqwmxvsh2n:\
/daq/software/spack_packages/pkg-config/0.29.2/linux-scientific7-x86_64_v2-gcc-13.1.0-jz2iljy2m7sdbz5flhd6wcf5zjnjdusw:\
/daq/software/spack_packages/cetlib/3.18.02/linux-scientific7-x86_64_v2-gcc-13.1.0-sdjjsgw3ochua4hdepfsbmduzk6zbex7:\
/daq/software/spack_packages/intel-tbb-oneapi/2021.9.0/linux-scientific7-x86_64_v2-gcc-13.1.0-ifrobcmvqef4xf2wfhb6ijv2zlxge272:\
/daq/software/spack_packages/python/3.9.15/linux-scientific7-x86_64_v2-gcc-13.1.0-a7uqecit6erp6wcp4uc357hkxeqws2u2:\
/daq/software/spack_packages/glx/1.4/linux-scientific7-x86_64_v2-gcc-13.1.0-dhh54ab55ckgk7u7nk5ebi32mjkmvg6d:\
/daq/software/spack_packages/font-util/1.4.1/linux-scientific7-x86_64_v2-gcc-13.1.0-xbmdz4kkykxugbf6q6rwsodzshfa7vr2:\
/daq/software/spack_packages/freetype/2.13.2/linux-scientific7-x86_64_v2-gcc-13.1.0-cxxloiifqecxazx2icilnpu3qdr6p7md:\
/daq/software/spack_packages/boost/1.82.0/linux-scientific7-x86_64_v2-gcc-13.1.0-nrczh3for3kkihywmxkoqbcevdp733s7:\
/daq/software/spack_packages/cetlib-except/1.09.01/linux-scientific7-x86_64_v2-gcc-13.1.0-zwm2bk6hlvjv6kes2c3sb43wwpyyofnz:\
/daq/software/spack_packages/perl/5.40.0/linux-scientific7-x86_64_v2-gcc-13.1.0-x6c4yjpoel7ivqaoniwjzscstbldq27x:\
/daq/software/spack_packages/gettext/0.22.5/linux-scientific7-x86_64_v2-gcc-13.1.0-7w2pny473vugkkcdw2aq6qxs4pfxufgn:\
/daq/software/spack_packages/libxcrypt/4.4.35/linux-scientific7-x86_64_v2-gcc-13.1.0-lqn6mt4oupwjwq5iezknbdorjuyhledn:\
/daq/software/spack_packages/sqlite/3.40.1/linux-scientific7-x86_64_v2-gcc-13.1.0-ywetecau4drs7zrafuu4xvrs23ztbrxg:\
/daq/software/spack_packages/mesa/23.3.6/linux-scientific7-x86_64_v2-gcc-13.1.0-durcqvwr6f3qaq5zslccbl5ajegstuxd:\
/daq/software/spack_packages/libpng/1.6.39/linux-scientific7-x86_64_v2-gcc-13.1.0-fws7pjp6c7g4x6zsbrn32d2ttmakerrf:\
/daq/software/spack_packages/icu4c/74.2/linux-scientific7-x86_64_v2-gcc-13.1.0-as34ppkkt2sbriuyls766oc2m3ohb3iw:\
/daq/software/spack_packages/berkeley-db/18.1.40/linux-scientific7-x86_64_v2-gcc-13.1.0-q2xqjwiunruym7an6g3zevhtuwhqzkzd:\
/daq/software/spack_packages/gdbm/1.23/linux-scientific7-x86_64_v2-gcc-13.1.0-53e2ne4vtfjxf3lhixkkoa2mt5kviols:\
/daq/software/spack_packages/tar/1.35/linux-scientific7-x86_64_v2-gcc-13.1.0-7lfzibbgydrnkgdscdnajenggjkrk7qk:\
/daq/software/spack_packages/expat/2.6.4/linux-scientific7-x86_64_v2-gcc-13.1.0-6xe6dktqwetoo5h4pszmrnpnvrcm4c7z:\
/daq/software/spack_packages/glproto/1.4.17/linux-scientific7-x86_64_v2-gcc-13.1.0-lkeqbnbbn6gtyrkdc3jxppll2qqpwebe:\
/daq/software/spack_packages/libunwind/1.8.1/linux-scientific7-x86_64_v2-gcc-13.1.0-llbc6yn7aexswr5oo4f5dbkj6dx37hyn:\
/daq/software/spack_packages/libxt/1.3.1/linux-scientific7-x86_64_v2-gcc-13.1.0-zz54m6hczlvgywpxuipvzuhriejgo5tx:\
/daq/software/spack_packages/llvm/17.0.6/linux-scientific7-x86_64_v2-gcc-13.1.0-hedz3ngpjlogqjjfi6r6u4a7slu6drgv:\
/daq/software/spack_packages/xrandr/1.5.3/linux-scientific7-x86_64_v2-gcc-13.1.0-gtk2iobus45ufm25gj5j2eiirqs2p5cy:\
/daq/software/spack_packages/bzip2/1.0.8/linux-scientific7-x86_64_v2-gcc-13.1.0-xfon2affaodya3qmjsdaqjwkwu4gi5s5:\
/daq/software/spack_packages/pigz/2.8/linux-scientific7-x86_64_v2-gcc-13.1.0-pk643lmghz3wayu5oupfqia4k5bmu267:\
/daq/software/spack_packages/libsm/1.2.5/linux-scientific7-x86_64_v2-gcc-13.1.0-bb56kiaulbuvjtaxhtrnwworcqqzlh5v:\
/daq/software/spack_packages/binutils/2.43.1/linux-scientific7-x86_64_v2-gcc-13.1.0-asfq5ml7cbnd3l4qswveogsgbm5l4utv:\
/daq/software/spack_packages/hwloc/2.11.1/linux-scientific7-x86_64_v2-gcc-13.1.0-mphctad4n33ekolpdltje4janldw7rsg:\
/daq/software/spack_packages/libedit/3.1-20240808/linux-scientific7-x86_64_v2-gcc-13.1.0-ltt3hpadorrn3bol7xrz77iykvsmoyxo:\
/daq/software/spack_packages/libffi/3.4.6/linux-scientific7-x86_64_v2-gcc-13.1.0-42of4wuohvqfhou4fftm3t4evg2oqecs:\
/daq/software/spack_packages/lua/5.3.6/linux-scientific7-x86_64_v2-gcc-13.1.0-krqcp5ne4aapqulz4z4ptvudzllhkmbm:\
/daq/software/spack_packages/swig/4.1.1/linux-scientific7-x86_64_v2-gcc-13.1.0-aeorjyemnxmsq77f66fkz4kpjatd6tbx:\
/daq/software/spack_packages/libxrandr/1.5.4/linux-scientific7-x86_64_v2-gcc-13.1.0-ma2rku7td6bctbaju4kztrwvzhhavg5h:\
/daq/software/spack_packages/libice/1.1.2/linux-scientific7-x86_64_v2-gcc-13.1.0-myofgjz3jfopx3mhq2qw7y5qyx44zuvx:\
/daq/software/spack_packages/libuuid/1.0.3/linux-scientific7-x86_64_v2-gcc-13.1.0-yuiev7yxmsgonodoqftaij6gvjkrfbsc:\
/daq/software/spack_packages/zstd/1.5.6/linux-scientific7-x86_64_v2-gcc-13.1.0-tnezdfoet57n63bdwqixg3zn2h4rs2lp:\
/daq/software/spack_packages/libpciaccess/0.17/linux-scientific7-x86_64_v2-gcc-13.1.0-7nepukrsevyhmtk6ss2u2p4mzhs2x522:\
/daq/software/spack_packages/libxml2/2.9.12/linux-scientific7-x86_64_v2-gcc-13.1.0-xykzyjc7p7sqaqolzic5dxl33trcw4me:\
/daq/software/spack_packages/curl/8.11.1/linux-scientific7-x86_64_v2-gcc-13.1.0-chp2otfsxheqmwncr7kzznmyusuymlkk:\
/daq/software/spack_packages/readline/8.2/linux-scientific7-x86_64_v2-gcc-13.1.0-ph2fsvil6ugfzkzgjxy3dwwxiktdcxl5:\
/daq/software/spack_packages/unzip/6.0/linux-scientific7-x86_64_v2-gcc-13.1.0-6bmlacnxd75sd5lybpa2l2xecffohr6d:\
/daq/software/spack_packages/pcre2/10.44/linux-scientific7-x86_64_v2-gcc-13.1.0-7wy3ubzz3hqkue2jirpwa3nfnhc3hc5n:\
/daq/software/spack_packages/libxext/1.3.6/linux-scientific7-x86_64_v2-gcc-13.1.0-tyz3d2z2xsm2aoecp7swqy5okbsqgsen:\
/daq/software/spack_packages/libxrender/0.9.11/linux-scientific7-x86_64_v2-gcc-13.1.0-alvfgvavhvykz2nxlmqo6odbaqkvxpiz:\
/daq/software/spack_packages/randrproto/1.5.0/linux-scientific7-x86_64_v2-gcc-13.1.0-bgereaacvdxag2vylcrfenizm7faouna:\
/daq/software/spack_packages/xz/5.4.6/linux-scientific7-x86_64_v2-gcc-13.1.0-huzk4qydrwcgvjreo76zzjuo7qodpyy4:\
/daq/software/spack_packages/nghttp2/1.64.0/linux-scientific7-x86_64_v2-gcc-13.1.0-7ye54wsymg6hytn5bi6ccuoydsjqh5cf:\
/daq/software/spack_packages/openssl/3.4.0/linux-scientific7-x86_64_v2-gcc-13.1.0-whm6mvvwr5f422dt3hh67c6orb2twiwy:\
/daq/software/spack_packages/ncurses/6.5/linux-scientific7-x86_64_v2-gcc-13.1.0-7sn5fxlgvinyygfljsahligxskf6zcgu:\
/daq/software/spack_packages/xextproto/7.3.0/linux-scientific7-x86_64_v2-gcc-13.1.0-s2335dn3zejt3ayrrzszz5qcbqu4h7bg:\
/daq/software/spack_packages/libx11/1.8.10/linux-scientific7-x86_64_v2-gcc-13.1.0-rkekdv5lubqnm7cfc7vc4tpv3fywd2sc:\
/daq/software/spack_packages/renderproto/0.11.1/linux-scientific7-x86_64_v2-gcc-13.1.0-2tyrq6tpnkhtpo5bn7scapjfxvtbq3mz:\
/daq/software/spack_packages/zlib-ng/2.2.3/linux-scientific7-x86_64_v2-gcc-13.1.0-pv2u2oriwjevq43kv77hsi5rlr4i5fdm:\
/daq/software/spack_packages/kbproto/1.0.7/linux-scientific7-x86_64_v2-gcc-13.1.0-4cmewr6urxzfywsjhw7a7uxvegw3valo:\
/daq/software/spack_packages/libxcb/1.17.0/linux-scientific7-x86_64_v2-gcc-13.1.0-qa2uakkckbczsj2vyns4issge6b22h3c:\
/daq/software/spack_packages/xtrans/1.5.2/linux-scientific7-x86_64_v2-gcc-13.1.0-bqyyodtt57mrdzp46g6zex6jkmkzrwjp:\
/daq/software/spack_packages/libpthread-stubs/0.5/linux-scientific7-x86_64_v2-gcc-13.1.0-ysbr6vbfrhydcvavefx4hjq7zrqjbilb:\
/daq/software/spack_packages/libxau/1.0.12/linux-scientific7-x86_64_v2-gcc-13.1.0-fz47uyp5csqwuqhogcakcu3buikufy5v:\
/daq/software/spack_packages/libxdmcp/1.1.5/linux-scientific7-x86_64_v2-gcc-13.1.0-mb4akz3wj5e2m7gildpg5s2lohgx3swh:\
/daq/software/spack_packages/libbsd/0.12.2/linux-scientific7-x86_64_v2-gcc-13.1.0-xvtwgv5q4ntyikjlty75476wpvw3f7rk:\
/daq/software/spack_packages/xproto/7.0.31/linux-scientific7-x86_64_v2-gcc-13.1.0-uatu2pruoqdqano3v6plglrsvacvoza4:\
/daq/software/spack_packages/libmd/1.0.4/linux-scientific7-x86_64_v2-gcc-13.1.0-zwyj3itfj2ufhoqe7pd4zrx2efgnabli:\
/daq/software/spack_packages/gcc-runtime/13.1.0/linux-scientific7-x86_64_v2-gcc-13.1.0-irn2mb7twuocpnok4nt32hoqvy7algog:\
/daq/software/spack_packages/diffutils/3.10/linux-scientific7-x86_64_v2-gcc-13.1.0-p65w4ziuojes4rmqwbkpumqtwjsecnz3:\
/daq/software/spack_packages/py-pip/24.3.1/linux-scientific7-x86_64_v2-gcc-13.1.0-4blrrk6mfnq73vj3ezwpgyiduicmwcil

export CPPYY_API_PATH="none"

export CPPYY_BACKEND_LIBRARY="/daq/software/spack_packages/root/6.28.12/linux-scientific7-x86_64_v2-gcc-13.1.0-haa2t56bulneyg5ykcfjhzobirwqencu/lib/root/libcppyy_backend"

export CXX="/daq/software/spack_packages/llvm/17.0.6/linux-scientific7-x86_64_v2-gcc-13.1.0-hedz3ngpjlogqjjfi6r6u4a7slu6drgv/bin/clang++"

export DAQINTERFACE_CONFIGURE_STATUS_CHECK_QUIET_TIME="60"

export DAQ_SETUP_SCRIPT="/home/nfs/sbnd/DAQ_SPACK_ProdAreas/DAQ_2026-04-03_GAL_v2_01_00/srcs/sbndaq/sbn-nd/DAQInterface2/setup_sbn_artdaq.sh"

export EPICS_BASE="/daq/software/spack_packages/epics-base/7.0.6.1/linux-scientific7-x86_64_v2-gcc-13.1.0-xj5gmm6lfqeaypibghed4vvyehxriyn7"

export EPICS_HOST_ARCH="linux-x86_64"

export FHICL_FILE_PATH=/daq/software/spack_packages/sbndaq/v2_01_00/linux-scientific7-x86_64_v2-gcc-13.1.0-3ptjd3ui6454oy6qop3wnit65dvue7yg/fcl:\
/daq/software/spack_packages/artdaq-demo/v3_13_00/linux-scientific7-x86_64_v2-gcc-13.1.0-gn3qopzvehk4albk2g2ullynuay7nhmi/fcl:\
/daq/software/spack_packages/sbndaq-artdaq/v2_01_00/linux-scientific7-x86_64_v2-gcc-13.1.0-mtjdlqgmsomflnf4ak54wdfcpa27e2le/fcl:\
/daq/software/spack_packages/artdaq-core-demo/v1_11_00/linux-scientific7-x86_64_v2-gcc-13.1.0-hryikwlg27anf46ut7qrrdmryr2vc2s6/fcl:\
/daq/software/spack_packages/artdaq/v3_13_02/linux-scientific7-x86_64_v2-gcc-13.1.0-fvvnut3cudaypbvwst4tstslu4kmuagb/fcl:\
/daq/software/spack_packages/artdaq-epics-plugin/v1_06_00/linux-scientific7-x86_64_v2-gcc-13.1.0-oszfjy6ovl7rn6htfr35je64w6uwinau/fcl:\
/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-scientific7-x86_64_v2-gcc-13.1.0-r33owep3kow4fxg6xg57wiqjextfqrzn/fcl:\
/daq/software/spack_packages/artdaq-utilities/v1_09_00/linux-scientific7-x86_64_v2-gcc-13.1.0-yaiwnclaew7m6anz7r6r7lty5csxlmz6/fcl:\
/daq/software/spack_packages/artdaq-core/v3_10_02/linux-scientific7-x86_64_v2-gcc-13.1.0-nvaii6wymdcfmf7muuyjxn7jtxswkexr/fcl

export FUNCNAME="export_environment_vars"

export GI_TYPELIB_PATH=/daq/software/spack_packages/harfbuzz/10.2.0/linux-scientific7-x86_64_v2-gcc-13.1.0-u3lhhdr63yqziihztkmeysz3fue6i5ue/lib/girepository-1.0:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-scientific7-x86_64_v2-gcc-13.1.0-b7uawenqkplhag6uabwk3lllhtrjar7m/lib/girepository-1.0

export GLUSTER_BARRIER_OPTIONS="{enable}, {disable}"

export GLUSTER_COMMAND_TREE="{gluster [ {volume [ {add-brick {__VOLNAME} }, {barrier {__VOLNAME [ {enable}, {disable} ] } }, {clear-locks {__VOLNAME} }, {create}, {delete {__VOLNAME} }, {geo-replication [ {__VOLNAME [ {__SLAVEURL [ {create [ {push-pem {force} }, {force} ] }, {start {force} }, {status {detail} }, {config}, {pause {force} }, {resume {force} }, {stop {force} }, {delete {force} } ] }, {status} ] }, {status} ] }, {heal {__VOLNAME} }, {help}, {info {__VOLNAME} }, {list}, {log {__VOLNAME} }, {profile {__VOLNAME [ {start}, {info [ {peek}, {incremental {peek} }, {cumulative}, {clear}, ] }, {stop} ] } }, {quota {__VOLNAME [ {enable}, {disable}, {list}, {remove}, {default-soft-limit}, {limit-usage}, {alert-time}, {soft-timeout}, {hard-timeout} ] } }, {rebalance {__VOLNAME} }, {remove-brick {__VOLNAME} }, {replace-brick {__VOLNAME} }, {reset {__VOLNAME [ ] } }, {set {__VOLNAME [ ] } }, {start {__VOLNAME {force} } }, {statedump {__VOLNAME} }, {status {__VOLNAME} }, {stop {__VOLNAME {force} } }, {sync {__HOSTNAME} }, {top {__VOLNAME [ {open [ {nfs}, {brick}, {list-cnt} ] }, {read [ {nfs}, {brick}, {list-cnt} ] }, {write [ {nfs}, {brick}, {list-cnt} ] }, {opendir [ {nfs}, {brick}, {list-cnt} ] }, {readdir [ {nfs}, {brick}, {list-cnt} ] }, {clear [ {nfs}, {brick}, {list-cnt} ] }, {read-perf [ {bs {__SIZE {count} } }, {brick}, {list-cnt} ] }, {write-perf [ {bs {__SIZE {count} } }, {brick}, {list-cnt} ] } ] } } ] } , {peer [ {probe {__HOSTNAME} }, {detach {__HOSTNAME {force} } }, {status} ] }, {pool {list} }, {help} ] }"

export GLUSTER_FINAL_LIST

export GLUSTER_GEO_REPLICATION_OPTIONS="{__VOLNAME [ {__SLAVEURL [ {create [ {push-pem {force} }, {force} ] }, {start {force} }, {status {detail} }, {config}, {pause {force} }, {resume {force} }, {stop {force} }, {delete {force} } ] }, {status} ] }, {status}"

export GLUSTER_GEO_REPLICATION_SUBOPTIONS

export GLUSTER_LIST

export GLUSTER_PROFILE_OPTIONS="{start}, {info [ {peek}, {incremental {peek} }, {cumulative}, {clear}, ] }, {stop}"

export GLUSTER_QUOTA_OPTIONS="{enable}, {disable}, {list}, {remove}, {default-soft-limit}, {limit-usage}, {alert-time}, {soft-timeout}, {hard-timeout}"

export GLUSTER_TOP="0"

export GLUSTER_TOP_OPTIONS="{open [ {nfs}, {brick}, {list-cnt} ] }, {read [ {nfs}, {brick}, {list-cnt} ] }, {write [ {nfs}, {brick}, {list-cnt} ] }, {opendir [ {nfs}, {brick}, {list-cnt} ] }, {readdir [ {nfs}, {brick}, {list-cnt} ] }, {clear [ {nfs}, {brick}, {list-cnt} ] }, {read-perf [ {bs {__SIZE {count} } }, {brick}, {list-cnt} ] }, {write-perf [ {bs {__SIZE {count} } }, {brick}, {list-cnt} ] }"

export GLUSTER_TOP_SUBOPTIONS1="{nfs}, {brick}, {list-cnt}"

export GLUSTER_TOP_SUBOPTIONS2="{bs {__SIZE {count} } }, {brick}, {list-cnt}"

export GLUSTER_VOLUME_OPTIONS="{volume [ {add-brick {__VOLNAME} }, {barrier {__VOLNAME [ {enable}, {disable} ] } }, {clear-locks {__VOLNAME} }, {create}, {delete {__VOLNAME} }, {geo-replication [ {__VOLNAME [ {__SLAVEURL [ {create [ {push-pem {force} }, {force} ] }, {start {force} }, {status {detail} }, {config}, {pause {force} }, {resume {force} }, {stop {force} }, {delete {force} } ] }, {status} ] }, {status} ] }, {heal {__VOLNAME} }, {help}, {info {__VOLNAME} }, {list}, {log {__VOLNAME} }, {profile {__VOLNAME [ {start}, {info [ {peek}, {incremental {peek} }, {cumulative}, {clear}, ] }, {stop} ] } }, {quota {__VOLNAME [ {enable}, {disable}, {list}, {remove}, {default-soft-limit}, {limit-usage}, {alert-time}, {soft-timeout}, {hard-timeout} ] } }, {rebalance {__VOLNAME} }, {remove-brick {__VOLNAME} }, {replace-brick {__VOLNAME} }, {reset {__VOLNAME [ ] } }, {set {__VOLNAME [ ] } }, {start {__VOLNAME {force} } }, {statedump {__VOLNAME} }, {status {__VOLNAME} }, {stop {__VOLNAME {force} } }, {sync {__HOSTNAME} }, {top {__VOLNAME [ {open [ {nfs}, {brick}, {list-cnt} ] }, {read [ {nfs}, {brick}, {list-cnt} ] }, {write [ {nfs}, {brick}, {list-cnt} ] }, {opendir [ {nfs}, {brick}, {list-cnt} ] }, {readdir [ {nfs}, {brick}, {list-cnt} ] }, {clear [ {nfs}, {brick}, {list-cnt} ] }, {read-perf [ {bs {__SIZE {count} } }, {brick}, {list-cnt} ] }, {write-perf [ {bs {__SIZE {count} } }, {brick}, {list-cnt} ] } ] } } ] }"

export GSL_ROOT_DIR="/daq/software/spack_packages/gsl/2.7.1/linux-scientific7-x86_64_v2-gcc-13.1.0-a77szrizltz4uxkhfwfec4gfkwzjycod"

export HISTCONTROL="ignoredups"

export ID="51307"

export LC_ALL="en_US.UTF-8"

export LDSHARED

export LD_LIBRARY_PATH="/daq/software/spack_packages/canvas-root-io/1.13.06/linux-scientific7-x86_64_v2-gcc-13.1.0-ohsgz4nbqh5gpqh4nbedbzy3glqzogku/lib"

export LIBRARY_PATH

export LPATHDIR="/home/nfs/sbnd/.cache/abrt"

export LUA_CPATH="/daq/software/spack_packages/lua/5.3.6/linux-scientific7-x86_64_v2-gcc-13.1.0-krqcp5ne4aapqulz4z4ptvudzllhkmbm/lib/lua/5.3/?.so"

export LUA_PATH="/daq/software/spack_packages/lua/5.3.6/linux-scientific7-x86_64_v2-gcc-13.1.0-krqcp5ne4aapqulz4z4ptvudzllhkmbm/lib/lua/5.3/?/init.lua;/daq/software/spack_packages/lua/5.3.6/linux-scientific7-x86_64_v2-gcc-13.1.0-krqcp5ne4aapqulz4z4ptvudzllhkmbm/lib/lua/5.3/?.lua;/daq/software/spack_packages/lua/5.3.6/linux-scientific7-x86_64_v2-gcc-13.1.0-krqcp5ne4aapqulz4z4ptvudzllhkmbm/share/lua/5.3/?/init.lua;/daq/software/spack_packages/lua/5.3.6/linux-scientific7-x86_64_v2-gcc-13.1.0-krqcp5ne4aapqulz4z4ptvudzllhkmbm/share/lua/5.3/?.lua"

export MANPATH=/daq/software/spack_packages/artdaq-demo/v3_13_00/linux-scientific7-x86_64_v2-gcc-13.1.0-gn3qopzvehk4albk2g2ullynuay7nhmi/share/man:\
/daq/software/spack_packages/artdaq-core-demo/v1_11_00/linux-scientific7-x86_64_v2-gcc-13.1.0-hryikwlg27anf46ut7qrrdmryr2vc2s6/share/man:\
/daq/software/spack_packages/artdaq/v3_13_02/linux-scientific7-x86_64_v2-gcc-13.1.0-fvvnut3cudaypbvwst4tstslu4kmuagb/share/man:\
/daq/software/spack_packages/artdaq-epics-plugin/v1_06_00/linux-scientific7-x86_64_v2-gcc-13.1.0-oszfjy6ovl7rn6htfr35je64w6uwinau/share/man:\
/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-scientific7-x86_64_v2-gcc-13.1.0-r33owep3kow4fxg6xg57wiqjextfqrzn/share/man:\
/daq/software/spack_packages/xmlrpc-c/1.51.06/linux-scientific7-x86_64_v2-gcc-13.1.0-g3jkbkqnihufoqmasgmt4fg6znqm3sat/share/man:\
/daq/software/spack_packages/artdaq-utilities/v1_09_00/linux-scientific7-x86_64_v2-gcc-13.1.0-yaiwnclaew7m6anz7r6r7lty5csxlmz6/share/man:\
/daq/software/spack_packages/zlib/1.3.1/linux-scientific7-x86_64_v2-gcc-13.1.0-k6kdcwv3e2fhfwtnewojujhapfln5kpl/share/man:\
/daq/software/spack_packages/libxkbcommon/1.7.0/linux-scientific7-x86_64_v2-gcc-13.1.0-bq5jj6aot6mi4jyf2rpxjtklvnmb2h5a/share/man:\
/daq/software/spack_packages/fftw/3.3.10/linux-scientific7-x86_64_v2-gcc-13.1.0-4v2unwejoqda7hni57eguavzmot37i6h/share/man:\
/daq/software/spack_packages/xrootd/5.5.5/linux-scientific7-x86_64_v2-gcc-13.1.0-bindzjdgz5l5vn4fmrduhikvk4hwjddz/share/man:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-scientific7-x86_64_v2-gcc-13.1.0-b7uawenqkplhag6uabwk3lllhtrjar7m/share/man:\
/daq/software/spack_packages/lcms/2.16/linux-scientific7-x86_64_v2-gcc-13.1.0-6plhsl5lrrqahwpqxac3n5c6tkeoemrs/share/man:\
/daq/software/spack_packages/xkeyboard-config/2.34/linux-scientific7-x86_64_v2-gcc-13.1.0-gju52hgqutqpssp6m6ez7l6znqv323ar/share/man:\
/daq/software/spack_packages/openmpi/5.0.6/linux-scientific7-x86_64_v2-gcc-13.1.0-mephgsux3r6dqry474ynm2yw3zppfbf5/share/man:\
/daq/software/spack_packages/root/6.28.12/linux-scientific7-x86_64_v2-gcc-13.1.0-haa2t56bulneyg5ykcfjhzobirwqencu/share/man:\
/daq/software/spack_packages/numactl/2.0.18/linux-scientific7-x86_64_v2-gcc-13.1.0-pirbro3tyg27n2wmmuq453levmwvpi2s/share/man:\
/daq/software/spack_packages/openssh/9.9p1/linux-scientific7-x86_64_v2-gcc-13.1.0-fxghnj5hu4o7shi4sljjpiesronrdd2w/share/man:\
/daq/software/spack_packages/pmix/5.0.5/linux-scientific7-x86_64_v2-gcc-13.1.0-qz3pfopse6xmwqen6m3zfu5gydhnpdo6/share/man:\
/daq/software/spack_packages/davix/0.8.10/linux-scientific7-x86_64_v2-gcc-13.1.0-zbevk3nmty4e4drhmnwczconn575t3zt/share/man:\
/daq/software/spack_packages/gsl/2.7.1/linux-scientific7-x86_64_v2-gcc-13.1.0-a77szrizltz4uxkhfwfec4gfkwzjycod/share/man:\
/daq/software/spack_packages/libjpeg-turbo/3.0.3/linux-scientific7-x86_64_v2-gcc-13.1.0-yeejbtvp6v3mholvlec5uv6gtl6ljcxz/share/man:\
/daq/software/spack_packages/libxft/2.3.8/linux-scientific7-x86_64_v2-gcc-13.1.0-othbb7a67kx7byxx5w4xuxfdzz5te4iy/share/man:\
/daq/software/spack_packages/libxpm/3.5.17/linux-scientific7-x86_64_v2-gcc-13.1.0-umthtzp4g75rjfp7n4rxhg62aevz2osw/share/man:\
/daq/software/spack_packages/lz4/1.10.0/linux-scientific7-x86_64_v2-gcc-13.1.0-k4wmpa4d4ww77eznlhp4qlfdl24mijsw/share/man:\
/daq/software/spack_packages/pcre/8.45/linux-scientific7-x86_64_v2-gcc-13.1.0-mncbvjitpzsr2njdlcukxb3imqvpn7i4/share/man:\
/daq/software/spack_packages/xxhash/0.8.3/linux-scientific7-x86_64_v2-gcc-13.1.0-civajpuxmekqzqksrgw575l6fbgnfalu/share/man:\
/daq/software/spack_packages/krb5/1.21.3/linux-scientific7-x86_64_v2-gcc-13.1.0-mlpvnrd35526dofywk4cszbnjbhg5zav/share/man:\
/daq/software/spack_packages/elfutils/0.192/linux-scientific7-x86_64_v2-gcc-13.1.0-njfordbyrfjdzthkbvnqsljx24k3asgy/share/man:\
/daq/software/spack_packages/pkg-config/0.29.2/linux-scientific7-x86_64_v2-gcc-13.1.0-jz2iljy2m7sdbz5flhd6wcf5zjnjdusw/share/man:\
/daq/software/spack_packages/python/3.9.15/linux-scientific7-x86_64_v2-gcc-13.1.0-a7uqecit6erp6wcp4uc357hkxeqws2u2/share/man:\
/daq/software/spack_packages/font-util/1.4.1/linux-scientific7-x86_64_v2-gcc-13.1.0-xbmdz4kkykxugbf6q6rwsodzshfa7vr2/share/man:\
/daq/software/spack_packages/freetype/2.13.2/linux-scientific7-x86_64_v2-gcc-13.1.0-cxxloiifqecxazx2icilnpu3qdr6p7md/share/man:\
/daq/software/spack_packages/perl/5.40.0/linux-scientific7-x86_64_v2-gcc-13.1.0-x6c4yjpoel7ivqaoniwjzscstbldq27x/man:\
/daq/software/spack_packages/gettext/0.22.5/linux-scientific7-x86_64_v2-gcc-13.1.0-7w2pny473vugkkcdw2aq6qxs4pfxufgn/share/man:\
/daq/software/spack_packages/libxcrypt/4.4.35/linux-scientific7-x86_64_v2-gcc-13.1.0-lqn6mt4oupwjwq5iezknbdorjuyhledn/share/man:\
/daq/software/spack_packages/sqlite/3.40.1/linux-scientific7-x86_64_v2-gcc-13.1.0-ywetecau4drs7zrafuu4xvrs23ztbrxg/share/man:\
/daq/software/spack_packages/libpng/1.6.39/linux-scientific7-x86_64_v2-gcc-13.1.0-fws7pjp6c7g4x6zsbrn32d2ttmakerrf/share/man:\
/daq/software/spack_packages/icu4c/74.2/linux-scientific7-x86_64_v2-gcc-13.1.0-as34ppkkt2sbriuyls766oc2m3ohb3iw/share/man:\
/daq/software/spack_packages/gdbm/1.23/linux-scientific7-x86_64_v2-gcc-13.1.0-53e2ne4vtfjxf3lhixkkoa2mt5kviols/share/man:\
/daq/software/spack_packages/tar/1.35/linux-scientific7-x86_64_v2-gcc-13.1.0-7lfzibbgydrnkgdscdnajenggjkrk7qk/share/man:\
/daq/software/spack_packages/expat/2.6.4/linux-scientific7-x86_64_v2-gcc-13.1.0-6xe6dktqwetoo5h4pszmrnpnvrcm4c7z/share/man:\
/daq/software/spack_packages/libxt/1.3.1/linux-scientific7-x86_64_v2-gcc-13.1.0-zz54m6hczlvgywpxuipvzuhriejgo5tx/share/man:\
/daq/software/spack_packages/llvm/17.0.6/linux-scientific7-x86_64_v2-gcc-13.1.0-hedz3ngpjlogqjjfi6r6u4a7slu6drgv/share/man:\
/daq/software/spack_packages/xrandr/1.5.3/linux-scientific7-x86_64_v2-gcc-13.1.0-gtk2iobus45ufm25gj5j2eiirqs2p5cy/share/man:\
/daq/software/spack_packages/bzip2/1.0.8/linux-scientific7-x86_64_v2-gcc-13.1.0-xfon2affaodya3qmjsdaqjwkwu4gi5s5/man:\
/daq/software/spack_packages/pigz/2.8/linux-scientific7-x86_64_v2-gcc-13.1.0-pk643lmghz3wayu5oupfqia4k5bmu267/man:\
/daq/software/spack_packages/binutils/2.43.1/linux-scientific7-x86_64_v2-gcc-13.1.0-asfq5ml7cbnd3l4qswveogsgbm5l4utv/share/man:\
/daq/software/spack_packages/hwloc/2.11.1/linux-scientific7-x86_64_v2-gcc-13.1.0-mphctad4n33ekolpdltje4janldw7rsg/share/man:\
/daq/software/spack_packages/libedit/3.1-20240808/linux-scientific7-x86_64_v2-gcc-13.1.0-ltt3hpadorrn3bol7xrz77iykvsmoyxo/share/man:\
/daq/software/spack_packages/libffi/3.4.6/linux-scientific7-x86_64_v2-gcc-13.1.0-42of4wuohvqfhou4fftm3t4evg2oqecs/share/man:\
/daq/software/spack_packages/lua/5.3.6/linux-scientific7-x86_64_v2-gcc-13.1.0-krqcp5ne4aapqulz4z4ptvudzllhkmbm/man:\
/daq/software/spack_packages/libxrandr/1.5.4/linux-scientific7-x86_64_v2-gcc-13.1.0-ma2rku7td6bctbaju4kztrwvzhhavg5h/share/man:\
/daq/software/spack_packages/zstd/1.5.6/linux-scientific7-x86_64_v2-gcc-13.1.0-tnezdfoet57n63bdwqixg3zn2h4rs2lp/share/man:\
/daq/software/spack_packages/libxml2/2.9.12/linux-scientific7-x86_64_v2-gcc-13.1.0-xykzyjc7p7sqaqolzic5dxl33trcw4me/share/man:\
/daq/software/spack_packages/readline/8.2/linux-scientific7-x86_64_v2-gcc-13.1.0-ph2fsvil6ugfzkzgjxy3dwwxiktdcxl5/share/man:\
/daq/software/spack_packages/unzip/6.0/linux-scientific7-x86_64_v2-gcc-13.1.0-6bmlacnxd75sd5lybpa2l2xecffohr6d/man:\
/daq/software/spack_packages/pcre2/10.44/linux-scientific7-x86_64_v2-gcc-13.1.0-7wy3ubzz3hqkue2jirpwa3nfnhc3hc5n/share/man:\
/daq/software/spack_packages/libxext/1.3.6/linux-scientific7-x86_64_v2-gcc-13.1.0-tyz3d2z2xsm2aoecp7swqy5okbsqgsen/share/man:\
/daq/software/spack_packages/xz/5.4.6/linux-scientific7-x86_64_v2-gcc-13.1.0-huzk4qydrwcgvjreo76zzjuo7qodpyy4/share/man:\
/daq/software/spack_packages/nghttp2/1.64.0/linux-scientific7-x86_64_v2-gcc-13.1.0-7ye54wsymg6hytn5bi6ccuoydsjqh5cf/share/man:\
/daq/software/spack_packages/libx11/1.8.10/linux-scientific7-x86_64_v2-gcc-13.1.0-rkekdv5lubqnm7cfc7vc4tpv3fywd2sc/share/man:\
/daq/software/spack_packages/zlib-ng/2.2.3/linux-scientific7-x86_64_v2-gcc-13.1.0-pv2u2oriwjevq43kv77hsi5rlr4i5fdm/share/man:\
/daq/software/spack_packages/libxcb/1.17.0/linux-scientific7-x86_64_v2-gcc-13.1.0-qa2uakkckbczsj2vyns4issge6b22h3c/share/man:\
/daq/software/spack_packages/libxau/1.0.12/linux-scientific7-x86_64_v2-gcc-13.1.0-fz47uyp5csqwuqhogcakcu3buikufy5v/share/man:\
/daq/software/spack_packages/libbsd/0.12.2/linux-scientific7-x86_64_v2-gcc-13.1.0-xvtwgv5q4ntyikjlty75476wpvw3f7rk/share/man:\
/daq/software/spack_packages/libmd/1.0.4/linux-scientific7-x86_64_v2-gcc-13.1.0-zwyj3itfj2ufhoqe7pd4zrx2efgnabli/share/man:\
/usr/share/man

export MPICC="/daq/software/spack_packages/openmpi/5.0.6/linux-scientific7-x86_64_v2-gcc-13.1.0-mephgsux3r6dqry474ynm2yw3zppfbf5/bin/mpicc"

export MPICXX="/daq/software/spack_packages/openmpi/5.0.6/linux-scientific7-x86_64_v2-gcc-13.1.0-mephgsux3r6dqry474ynm2yw3zppfbf5/bin/mpic++"

export MPIF77="/daq/software/spack_packages/openmpi/5.0.6/linux-scientific7-x86_64_v2-gcc-13.1.0-mephgsux3r6dqry474ynm2yw3zppfbf5/bin/mpif77"

export MPIF90="/daq/software/spack_packages/openmpi/5.0.6/linux-scientific7-x86_64_v2-gcc-13.1.0-mephgsux3r6dqry474ynm2yw3zppfbf5/bin/mpif90"

export MPIFC="/daq/software/spack_packages/openmpi/5.0.6/linux-scientific7-x86_64_v2-gcc-13.1.0-mephgsux3r6dqry474ynm2yw3zppfbf5/bin/mpifort"

export MRB_QUALS="both"

export MULTICAST_INTERFACE_IP_TO_USE="10.226.36.0"

export OLDPWD="/home/nfs/sbnd"

export OS_NAME="scientific7"

export PATH=/daq/software/spack_packages/epics-base/7.0.6.1/linux-scientific7-x86_64_v2-gcc-13.1.0-xj5gmm6lfqeaypibghed4vvyehxriyn7/bin/linux-x86_64:\
/daq/software/spack_packages/trace/v3_17_11/linux-scientific7-x86_64_v2-gcc-13.1.0-ijruzydwaercoopxwyny4s4sqlclcfxg/bin:\
/daq/software/spack_packages/cmake/3.27.9/linux-scientific7-x86_64_v2-gcc-13.1.0-2gekeqbpw34w6rfkpbmgav34wzltk55x/bin:\
/daq/software/spack_packages/gmake/4.4.1/linux-scientific7-x86_64_v2-gcc-13.1.0-wgmb4htpanufmn223xjuw5ohbgwjn7ix/bin:\
/daq/software/spack_packages/openssh/9.9p1/linux-scientific7-x86_64_v2-gcc-13.1.0-fxghnj5hu4o7shi4sljjpiesronrdd2w/bin:\
/daq/software/spack_packages/py-numpy/1.24.3/linux-scientific7-x86_64_v2-gcc-13.1.0-qcmegeyu2i3glbcoetivcnnhh4mllt3g/bin:\
/daq/software/spack_packages/py-pybind11/2.10.4/linux-scientific7-x86_64_v2-gcc-13.1.0-di2xotybntw3a2za4alkbdhcq43q6iwl/bin:\
/daq/software/spack_packages/python-venv/1.0/linux-scientific7-x86_64_v2-gcc-13.1.0-kmzijaokfgdnkujwddmrqh4o4tkiispo/bin:\
/daq/software/spack_packages/python/3.9.15/linux-scientific7-x86_64_v2-gcc-13.1.0-a7uqecit6erp6wcp4uc357hkxeqws2u2/bin:\
/daq/software/spack_packages/perl/5.40.0/linux-scientific7-x86_64_v2-gcc-13.1.0-x6c4yjpoel7ivqaoniwjzscstbldq27x/bin:\
/daq/software/spack_packages/sqlite/3.40.1/linux-scientific7-x86_64_v2-gcc-13.1.0-ywetecau4drs7zrafuu4xvrs23ztbrxg/bin:\
/daq/software/spack_packages/tar/1.35/linux-scientific7-x86_64_v2-gcc-13.1.0-7lfzibbgydrnkgdscdnajenggjkrk7qk/bin:\
/daq/software/spack_packages/bzip2/1.0.8/linux-scientific7-x86_64_v2-gcc-13.1.0-xfon2affaodya3qmjsdaqjwkwu4gi5s5/bin:\
/daq/software/spack_packages/pigz/2.8/linux-scientific7-x86_64_v2-gcc-13.1.0-pk643lmghz3wayu5oupfqia4k5bmu267/bin:\
/daq/software/spack_packages/zstd/1.5.6/linux-scientific7-x86_64_v2-gcc-13.1.0-tnezdfoet57n63bdwqixg3zn2h4rs2lp/bin:\
/daq/software/spack_packages/curl/8.11.1/linux-scientific7-x86_64_v2-gcc-13.1.0-chp2otfsxheqmwncr7kzznmyusuymlkk/bin:\
/daq/software/spack_packages/unzip/6.0/linux-scientific7-x86_64_v2-gcc-13.1.0-6bmlacnxd75sd5lybpa2l2xecffohr6d/bin:\
/daq/software/spack_packages/xz/5.4.6/linux-scientific7-x86_64_v2-gcc-13.1.0-huzk4qydrwcgvjreo76zzjuo7qodpyy4/bin:\
/daq/software/spack_packages/artdaq-runcontrol-gui/v1_03_06/linux-scientific7-x86_64_v2-gcc-13.1.0-4hnqkd4m5c6ixyaoagbcytpjdeo7uskv/bin:\
/daq/software/spack_packages/sbndaq/v2_01_00/linux-scientific7-x86_64_v2-gcc-13.1.0-3ptjd3ui6454oy6qop3wnit65dvue7yg/bin:\
/daq/software/spack_packages/artdaq-daqinterface/v4_05_00/linux-scientific7-x86_64_v2-gcc-13.1.0-xqtugmslth3sfmba4uoyn53fomoe2674/bin:\
/daq/software/spack_packages/artdaq-database/v1_10_00/linux-scientific7-x86_64_v2-gcc-13.1.0-pvzsnkldy2ual6fgk65yeot7u7gawkam/bin:\
/daq/software/spack_packages/artdaq-demo/v3_13_00/linux-scientific7-x86_64_v2-gcc-13.1.0-gn3qopzvehk4albk2g2ullynuay7nhmi/bin:\
/daq/software/spack_packages/sbndaq-artdaq/v2_01_00/linux-scientific7-x86_64_v2-gcc-13.1.0-mtjdlqgmsomflnf4ak54wdfcpa27e2le/bin:\
/daq/software/spack_packages/artdaq/v3_13_02/linux-scientific7-x86_64_v2-gcc-13.1.0-fvvnut3cudaypbvwst4tstslu4kmuagb/bin:\
/daq/software/spack_packages/artdaq-epics-plugin/v1_06_00/linux-scientific7-x86_64_v2-gcc-13.1.0-oszfjy6ovl7rn6htfr35je64w6uwinau/bin:\
/daq/software/spack_packages/redis/7.4.0/linux-scientific7-x86_64_v2-gcc-13.1.0-y2dxdczula3x7todf7lfa4tb7jcs3mos/bin:\
/daq/software/spack_packages/wibtools/v2_01_00/linux-scientific7-x86_64_v2-gcc-13.1.0-yvhyqfxipmt2bq2racrqfs6dzhgzlwmt/bin:\
/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-scientific7-x86_64_v2-gcc-13.1.0-r33owep3kow4fxg6xg57wiqjextfqrzn/bin:\
/daq/software/spack_packages/xmlrpc-c/1.51.06/linux-scientific7-x86_64_v2-gcc-13.1.0-g3jkbkqnihufoqmasgmt4fg6znqm3sat/bin:\
/daq/software/spack_packages/artdaq-utilities/v1_09_00/linux-scientific7-x86_64_v2-gcc-13.1.0-yaiwnclaew7m6anz7r6r7lty5csxlmz6/bin:\
/daq/software/spack_packages/epics-base/7.0.6.1/linux-scientific7-x86_64_v2-gcc-13.1.0-xj5gmm6lfqeaypibghed4vvyehxriyn7/bin:\
/daq/software/spack_packages/libzmq/4.3.5/linux-scientific7-x86_64_v2-gcc-13.1.0-ydhmebzflzwncurkfoydj2dx57qoyecv/bin:\
/daq/software/spack_packages/qt/5.15.16/linux-scientific7-x86_64_v2-gcc-13.1.0-q6pskemnhz6oav7ifqtfmayxnuhzjg5t/bin:\
/daq/software/spack_packages/harfbuzz/10.2.0/linux-scientific7-x86_64_v2-gcc-13.1.0-u3lhhdr63yqziihztkmeysz3fue6i5ue/bin:\
/daq/software/spack_packages/libxkbcommon/1.7.0/linux-scientific7-x86_64_v2-gcc-13.1.0-bq5jj6aot6mi4jyf2rpxjtklvnmb2h5a/bin:\
/daq/software/spack_packages/art-root-io/1.13.06/linux-scientific7-x86_64_v2-gcc-13.1.0-fi7imbonclpk272smjxt5c4werkv7nd5/bin:\
/daq/software/spack_packages/cetmodules/3.26.00/linux-scientific7-x86_64_v2-gcc-13.1.0-b357pek64v4c477h4r6nynasxaw77q72/bin:\
/daq/software/spack_packages/fftw/3.3.10/linux-scientific7-x86_64_v2-gcc-13.1.0-4v2unwejoqda7hni57eguavzmot37i6h/bin:\
/daq/software/spack_packages/postgresql/15.2/linux-scientific7-x86_64_v2-gcc-13.1.0-hqxkz77wvon3iwicl3tsyrfxvmnt7s47/bin:\
/daq/software/spack_packages/xrootd/5.5.5/linux-scientific7-x86_64_v2-gcc-13.1.0-bindzjdgz5l5vn4fmrduhikvk4hwjddz/bin:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-scientific7-x86_64_v2-gcc-13.1.0-b7uawenqkplhag6uabwk3lllhtrjar7m/bin:\
/daq/software/spack_packages/lcms/2.16/linux-scientific7-x86_64_v2-gcc-13.1.0-6plhsl5lrrqahwpqxac3n5c6tkeoemrs/bin:\
/daq/software/spack_packages/art/3.14.04/linux-scientific7-x86_64_v2-gcc-13.1.0-cdxeztwlmrzowpwpvuqvvh44rfeoo3b5/bin:\
/daq/software/spack_packages/openmpi/5.0.6/linux-scientific7-x86_64_v2-gcc-13.1.0-mephgsux3r6dqry474ynm2yw3zppfbf5/bin:\
/daq/software/spack_packages/openblas/0.3.23/linux-scientific7-x86_64_v2-gcc-13.1.0-wyy6tdhy2atl5r67jhbchga6kg4qyij3/bin:\
/daq/software/spack_packages/cairo/1.18.2/linux-scientific7-x86_64_v2-gcc-13.1.0-d2n6i3kuj54p33nw6hngtk276mdebcfc/bin:\
/daq/software/spack_packages/libtiff/4.7.0/linux-scientific7-x86_64_v2-gcc-13.1.0-6bvb4hsymusjd4qd7tqk6m7r6wbra2hb/bin:\
/daq/software/spack_packages/root/6.28.12/linux-scientific7-x86_64_v2-gcc-13.1.0-haa2t56bulneyg5ykcfjhzobirwqencu/bin:\
/daq/software/spack_packages/numactl/2.0.18/linux-scientific7-x86_64_v2-gcc-13.1.0-pirbro3tyg27n2wmmuq453levmwvpi2s/bin:\
/daq/software/spack_packages/pmix/5.0.5/linux-scientific7-x86_64_v2-gcc-13.1.0-qz3pfopse6xmwqen6m3zfu5gydhnpdo6/bin:\
/daq/software/spack_packages/glib/2.82.2/linux-scientific7-x86_64_v2-gcc-13.1.0-a5uavv2syecfdoi5xdwbfb7uwpwoycck/bin:\
/daq/software/spack_packages/clhep/2.4.7.1/linux-scientific7-x86_64_v2-gcc-13.1.0-rfos5c6rz77h7r4tdmdmgg6iksqqdnrx/bin:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-scientific7-x86_64_v2-gcc-13.1.0-jlvcb7jryzj7pohk7au5v4rxmylyl75r/bin:\
/daq/software/spack_packages/davix/0.8.10/linux-scientific7-x86_64_v2-gcc-13.1.0-zbevk3nmty4e4drhmnwczconn575t3zt/bin:\
/daq/software/spack_packages/glew/2.2.0/linux-scientific7-x86_64_v2-gcc-13.1.0-su2zs2u66hdxha7kaiilvnwfxgusn7o3/bin:\
/daq/software/spack_packages/gsl/2.7.1/linux-scientific7-x86_64_v2-gcc-13.1.0-a77szrizltz4uxkhfwfec4gfkwzjycod/bin:\
/daq/software/spack_packages/libjpeg-turbo/3.0.3/linux-scientific7-x86_64_v2-gcc-13.1.0-yeejbtvp6v3mholvlec5uv6gtl6ljcxz/bin:\
/daq/software/spack_packages/libxpm/3.5.17/linux-scientific7-x86_64_v2-gcc-13.1.0-umthtzp4g75rjfp7n4rxhg62aevz2osw/bin:\
/daq/software/spack_packages/lz4/1.10.0/linux-scientific7-x86_64_v2-gcc-13.1.0-k4wmpa4d4ww77eznlhp4qlfdl24mijsw/bin:\
/daq/software/spack_packages/pcre/8.45/linux-scientific7-x86_64_v2-gcc-13.1.0-mncbvjitpzsr2njdlcukxb3imqvpn7i4/bin:\
/daq/software/spack_packages/xxhash/0.8.3/linux-scientific7-x86_64_v2-gcc-13.1.0-civajpuxmekqzqksrgw575l6fbgnfalu/bin:\
/daq/software/spack_packages/krb5/1.21.3/linux-scientific7-x86_64_v2-gcc-13.1.0-mlpvnrd35526dofywk4cszbnjbhg5zav/bin:\
/daq/software/spack_packages/libevent/2.1.12/linux-scientific7-x86_64_v2-gcc-13.1.0-uuylviwcq5ctfr57w6vhzddmf64776ov/bin:\
/daq/software/spack_packages/elfutils/0.192/linux-scientific7-x86_64_v2-gcc-13.1.0-njfordbyrfjdzthkbvnqsljx24k3asgy/bin:\
/daq/software/spack_packages/fhicl-cpp/4.18.04/linux-scientific7-x86_64_v2-gcc-13.1.0-ajnvpsjcoladdr6cbtb4z6x252pk2xi2/bin:\
/daq/software/spack_packages/fontconfig/2.15.0/linux-scientific7-x86_64_v2-gcc-13.1.0-syhljpfoo4aybj7uvl22kunytarkyc4q/bin:\
/daq/software/spack_packages/pkg-config/0.29.2/linux-scientific7-x86_64_v2-gcc-13.1.0-jz2iljy2m7sdbz5flhd6wcf5zjnjdusw/bin:\
/daq/software/spack_packages/cetlib/3.18.02/linux-scientific7-x86_64_v2-gcc-13.1.0-sdjjsgw3ochua4hdepfsbmduzk6zbex7/bin:\
/daq/software/spack_packages/font-util/1.4.1/linux-scientific7-x86_64_v2-gcc-13.1.0-xbmdz4kkykxugbf6q6rwsodzshfa7vr2/bin:\
/daq/software/spack_packages/freetype/2.13.2/linux-scientific7-x86_64_v2-gcc-13.1.0-cxxloiifqecxazx2icilnpu3qdr6p7md/bin:\
/daq/software/spack_packages/gettext/0.22.5/linux-scientific7-x86_64_v2-gcc-13.1.0-7w2pny473vugkkcdw2aq6qxs4pfxufgn/bin:\
/daq/software/spack_packages/libpng/1.6.39/linux-scientific7-x86_64_v2-gcc-13.1.0-fws7pjp6c7g4x6zsbrn32d2ttmakerrf/bin:\
/daq/software/spack_packages/icu4c/74.2/linux-scientific7-x86_64_v2-gcc-13.1.0-as34ppkkt2sbriuyls766oc2m3ohb3iw/bin:\
/daq/software/spack_packages/berkeley-db/18.1.40/linux-scientific7-x86_64_v2-gcc-13.1.0-q2xqjwiunruym7an6g3zevhtuwhqzkzd/bin:\
/daq/software/spack_packages/gdbm/1.23/linux-scientific7-x86_64_v2-gcc-13.1.0-53e2ne4vtfjxf3lhixkkoa2mt5kviols/bin:\
/daq/software/spack_packages/expat/2.6.4/linux-scientific7-x86_64_v2-gcc-13.1.0-6xe6dktqwetoo5h4pszmrnpnvrcm4c7z/bin:\
/daq/software/spack_packages/llvm/17.0.6/linux-scientific7-x86_64_v2-gcc-13.1.0-hedz3ngpjlogqjjfi6r6u4a7slu6drgv/bin:\
/daq/software/spack_packages/xrandr/1.5.3/linux-scientific7-x86_64_v2-gcc-13.1.0-gtk2iobus45ufm25gj5j2eiirqs2p5cy/bin:\
/daq/software/spack_packages/binutils/2.43.1/linux-scientific7-x86_64_v2-gcc-13.1.0-asfq5ml7cbnd3l4qswveogsgbm5l4utv/bin:\
/daq/software/spack_packages/hwloc/2.11.1/linux-scientific7-x86_64_v2-gcc-13.1.0-mphctad4n33ekolpdltje4janldw7rsg/bin:\
/daq/software/spack_packages/lua/5.3.6/linux-scientific7-x86_64_v2-gcc-13.1.0-krqcp5ne4aapqulz4z4ptvudzllhkmbm/bin:\
/daq/software/spack_packages/swig/4.1.1/linux-scientific7-x86_64_v2-gcc-13.1.0-aeorjyemnxmsq77f66fkz4kpjatd6tbx/bin:\
/daq/software/spack_packages/libxml2/2.9.12/linux-scientific7-x86_64_v2-gcc-13.1.0-xykzyjc7p7sqaqolzic5dxl33trcw4me/bin:\
/daq/software/spack_packages/readline/8.2/linux-scientific7-x86_64_v2-gcc-13.1.0-ph2fsvil6ugfzkzgjxy3dwwxiktdcxl5/bin:\
/daq/software/spack_packages/pcre2/10.44/linux-scientific7-x86_64_v2-gcc-13.1.0-7wy3ubzz3hqkue2jirpwa3nfnhc3hc5n/bin:\
/daq/software/spack_packages/nghttp2/1.64.0/linux-scientific7-x86_64_v2-gcc-13.1.0-7ye54wsymg6hytn5bi6ccuoydsjqh5cf/bin:\
/daq/software/spack_packages/openssl/3.4.0/linux-scientific7-x86_64_v2-gcc-13.1.0-whm6mvvwr5f422dt3hh67c6orb2twiwy/bin:\
/daq/software/spack_packages/ncurses/6.5/linux-scientific7-x86_64_v2-gcc-13.1.0-7sn5fxlgvinyygfljsahligxskf6zcgu/bin:\
/daq/software/spack_packages/spack/current/NULL/bin:\
/usr/lib64/qt-3.3/bin:\
/usr/kerberos/sbin:\
/usr/kerberos/bin:\
/usr/local/sbin:\
/usr/sbin:\
/home/nfs/sbnd/bin:\
/usr/local/bin:\
/usr/bin

export PERL5LIB=/daq/software/spack_packages/trace/v3_17_11/linux-scientific7-x86_64_v2-gcc-13.1.0-ijruzydwaercoopxwyny4s4sqlclcfxg/perllib:\
/daq/software/spack_packages/art/3.14.04/linux-scientific7-x86_64_v2-gcc-13.1.0-cdxeztwlmrzowpwpvuqvvh44rfeoo3b5/perllib:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-scientific7-x86_64_v2-gcc-13.1.0-jlvcb7jryzj7pohk7au5v4rxmylyl75r/perllib:\
/daq/software/spack_packages/cetlib/3.18.02/linux-scientific7-x86_64_v2-gcc-13.1.0-sdjjsgw3ochua4hdepfsbmduzk6zbex7/perllib

export PKG_CONFIG_PATH=/daq/software/spack_packages/artdaq-database/v1_10_00/linux-scientific7-x86_64_v2-gcc-13.1.0-pvzsnkldy2ual6fgk65yeot7u7gawkam/lib64/pkgconfig:\
/daq/software/spack_packages/cppzmq/4.10.0/linux-scientific7-x86_64_v2-gcc-13.1.0-ff3jhyd7irykp3z3b3dwpx5gz7gs74zg/lib64/pkgconfig:\
/daq/software/spack_packages/hiredis/1.1.0/linux-scientific7-x86_64_v2-gcc-13.1.0-tur2engg3t7wd5lfrocxty5ofogtqgvb/lib64/pkgconfig:\
/daq/software/spack_packages/jsoncpp/1.9.6/linux-scientific7-x86_64_v2-gcc-13.1.0-u3sl6h2etcfqltr4pzrybfdfrusrh6kp/lib64/pkgconfig:\
/daq/software/spack_packages/libpqxx/7.10.0/linux-scientific7-x86_64_v2-gcc-13.1.0-r2lcbztseam4ah3kdwcfxzcysas7lpx6/lib64/pkgconfig:\
/daq/software/spack_packages/xmlrpc-c/1.51.06/linux-scientific7-x86_64_v2-gcc-13.1.0-g3jkbkqnihufoqmasgmt4fg6znqm3sat/lib/pkgconfig:\
/daq/software/spack_packages/epics-base/7.0.6.1/linux-scientific7-x86_64_v2-gcc-13.1.0-xj5gmm6lfqeaypibghed4vvyehxriyn7/lib/pkgconfig:\
/daq/software/spack_packages/libzmq/4.3.5/linux-scientific7-x86_64_v2-gcc-13.1.0-ydhmebzflzwncurkfoydj2dx57qoyecv/lib/pkgconfig:\
/daq/software/spack_packages/librdkafka/2.8.0/linux-scientific7-x86_64_v2-gcc-13.1.0-h3sdea2zwznqverdazftmtvxqdywfcbz/lib/pkgconfig:\
/daq/software/spack_packages/qt/5.15.16/linux-scientific7-x86_64_v2-gcc-13.1.0-q6pskemnhz6oav7ifqtfmayxnuhzjg5t/lib/pkgconfig:\
/daq/software/spack_packages/libsodium/1.0.20/linux-scientific7-x86_64_v2-gcc-13.1.0-d5eaj4buixpati3pqb4dhb7beo6forl4/lib/pkgconfig:\
/daq/software/spack_packages/zlib/1.3.1/linux-scientific7-x86_64_v2-gcc-13.1.0-k6kdcwv3e2fhfwtnewojujhapfln5kpl/lib/pkgconfig:\
/daq/software/spack_packages/harfbuzz/10.2.0/linux-scientific7-x86_64_v2-gcc-13.1.0-u3lhhdr63yqziihztkmeysz3fue6i5ue/lib/pkgconfig:\
/daq/software/spack_packages/libmng/2.0.3/linux-scientific7-x86_64_v2-gcc-13.1.0-t4bfzvsccon4deejljnsf4n5rpk4ivq5/lib64/pkgconfig:\
/daq/software/spack_packages/libxkbcommon/1.7.0/linux-scientific7-x86_64_v2-gcc-13.1.0-bq5jj6aot6mi4jyf2rpxjtklvnmb2h5a/lib/pkgconfig:\
/daq/software/spack_packages/xcb-util-image/0.4.1/linux-scientific7-x86_64_v2-gcc-13.1.0-ttx3ha3ros4yxxgwe7pw6ggx4uryyyjg/lib/pkgconfig:\
/daq/software/spack_packages/xcb-util-keysyms/0.4.1/linux-scientific7-x86_64_v2-gcc-13.1.0-nj6yiwutmezfjstz26fivabpsyv27jvg/lib/pkgconfig:\
/daq/software/spack_packages/xcb-util-renderutil/0.3.10/linux-scientific7-x86_64_v2-gcc-13.1.0-sovqqclizejc4fxplvarnvwl45arq4bt/lib/pkgconfig:\
/daq/software/spack_packages/xcb-util-wm/0.4.2/linux-scientific7-x86_64_v2-gcc-13.1.0-2hbskltets6iatwtuzhcvn7s2hjc33os/lib/pkgconfig:\
/daq/software/spack_packages/libusb/1.0.27/linux-scientific7-x86_64_v2-gcc-13.1.0-4rpeutqq7q4xxb2ng65hj2s22ojwvsjy/lib/pkgconfig:\
/daq/software/spack_packages/fftw/3.3.10/linux-scientific7-x86_64_v2-gcc-13.1.0-4v2unwejoqda7hni57eguavzmot37i6h/lib/pkgconfig:\
/daq/software/spack_packages/postgresql/15.2/linux-scientific7-x86_64_v2-gcc-13.1.0-hqxkz77wvon3iwicl3tsyrfxvmnt7s47/lib/pkgconfig:\
/daq/software/spack_packages/py-pybind11/2.10.4/linux-scientific7-x86_64_v2-gcc-13.1.0-di2xotybntw3a2za4alkbdhcq43q6iwl/share/pkgconfig:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-scientific7-x86_64_v2-gcc-13.1.0-b7uawenqkplhag6uabwk3lllhtrjar7m/lib/pkgconfig:\
/daq/software/spack_packages/lcms/2.16/linux-scientific7-x86_64_v2-gcc-13.1.0-6plhsl5lrrqahwpqxac3n5c6tkeoemrs/lib/pkgconfig:\
/daq/software/spack_packages/util-macros/1.20.1/linux-scientific7-x86_64_v2-gcc-13.1.0-65fiuhcnaqmxr3sun4mmxaj5mzcofvsf/share/pkgconfig:\
/daq/software/spack_packages/xkeyboard-config/2.34/linux-scientific7-x86_64_v2-gcc-13.1.0-gju52hgqutqpssp6m6ez7l6znqv323ar/share/pkgconfig:\
/daq/software/spack_packages/xcb-util/0.4.1/linux-scientific7-x86_64_v2-gcc-13.1.0-epjfrj2jgveirakpsrq6qnac5y2d7sah/lib/pkgconfig:\
/daq/software/spack_packages/openmpi/5.0.6/linux-scientific7-x86_64_v2-gcc-13.1.0-mephgsux3r6dqry474ynm2yw3zppfbf5/lib/pkgconfig:\
/daq/software/spack_packages/openblas/0.3.23/linux-scientific7-x86_64_v2-gcc-13.1.0-wyy6tdhy2atl5r67jhbchga6kg4qyij3/lib/pkgconfig:\
/daq/software/spack_packages/json-c/0.18/linux-scientific7-x86_64_v2-gcc-13.1.0-wtqnvnpennbdiagvqzdoqhal2pkxac3s/lib64/pkgconfig:\
/daq/software/spack_packages/cairo/1.18.2/linux-scientific7-x86_64_v2-gcc-13.1.0-d2n6i3kuj54p33nw6hngtk276mdebcfc/lib/pkgconfig:\
/daq/software/spack_packages/libtiff/4.7.0/linux-scientific7-x86_64_v2-gcc-13.1.0-6bvb4hsymusjd4qd7tqk6m7r6wbra2hb/lib64/pkgconfig:\
/daq/software/spack_packages/numactl/2.0.18/linux-scientific7-x86_64_v2-gcc-13.1.0-pirbro3tyg27n2wmmuq453levmwvpi2s/lib/pkgconfig:\
/daq/software/spack_packages/pmix/5.0.5/linux-scientific7-x86_64_v2-gcc-13.1.0-qz3pfopse6xmwqen6m3zfu5gydhnpdo6/lib/pkgconfig:\
/daq/software/spack_packages/glib/2.82.2/linux-scientific7-x86_64_v2-gcc-13.1.0-a5uavv2syecfdoi5xdwbfb7uwpwoycck/lib/pkgconfig:\
/daq/software/spack_packages/lzo/2.10/linux-scientific7-x86_64_v2-gcc-13.1.0-5o3ngw5z7kt7cn237p2wgaqixdnnuwvy/lib/pkgconfig:\
/daq/software/spack_packages/pixman/0.44.0/linux-scientific7-x86_64_v2-gcc-13.1.0-hteprilzjo4crmyfjd64j2oagpxq2jmt/lib/pkgconfig:\
/daq/software/spack_packages/clhep/2.4.7.1/linux-scientific7-x86_64_v2-gcc-13.1.0-rfos5c6rz77h7r4tdmdmgg6iksqqdnrx/lib/pkgconfig:\
/daq/software/spack_packages/davix/0.8.10/linux-scientific7-x86_64_v2-gcc-13.1.0-zbevk3nmty4e4drhmnwczconn575t3zt/lib64/pkgconfig:\
/daq/software/spack_packages/glew/2.2.0/linux-scientific7-x86_64_v2-gcc-13.1.0-su2zs2u66hdxha7kaiilvnwfxgusn7o3/lib64/pkgconfig:\
/daq/software/spack_packages/gsl/2.7.1/linux-scientific7-x86_64_v2-gcc-13.1.0-a77szrizltz4uxkhfwfec4gfkwzjycod/lib/pkgconfig:\
/daq/software/spack_packages/libjpeg-turbo/3.0.3/linux-scientific7-x86_64_v2-gcc-13.1.0-yeejbtvp6v3mholvlec5uv6gtl6ljcxz/lib64/pkgconfig:\
/daq/software/spack_packages/libxft/2.3.8/linux-scientific7-x86_64_v2-gcc-13.1.0-othbb7a67kx7byxx5w4xuxfdzz5te4iy/lib/pkgconfig:\
/daq/software/spack_packages/libxpm/3.5.17/linux-scientific7-x86_64_v2-gcc-13.1.0-umthtzp4g75rjfp7n4rxhg62aevz2osw/lib/pkgconfig:\
/daq/software/spack_packages/lz4/1.10.0/linux-scientific7-x86_64_v2-gcc-13.1.0-k4wmpa4d4ww77eznlhp4qlfdl24mijsw/lib/pkgconfig:\
/daq/software/spack_packages/nlohmann-json/3.11.3/linux-scientific7-x86_64_v2-gcc-13.1.0-yjplth5drxd7v2xg7pcd7gu6yrthn3fa/share/pkgconfig:\
/daq/software/spack_packages/pcre/8.45/linux-scientific7-x86_64_v2-gcc-13.1.0-mncbvjitpzsr2njdlcukxb3imqvpn7i4/lib/pkgconfig:\
/daq/software/spack_packages/xxhash/0.8.3/linux-scientific7-x86_64_v2-gcc-13.1.0-civajpuxmekqzqksrgw575l6fbgnfalu/lib/pkgconfig:\
/daq/software/spack_packages/krb5/1.21.3/linux-scientific7-x86_64_v2-gcc-13.1.0-mlpvnrd35526dofywk4cszbnjbhg5zav/lib/pkgconfig:\
/daq/software/spack_packages/libevent/2.1.12/linux-scientific7-x86_64_v2-gcc-13.1.0-uuylviwcq5ctfr57w6vhzddmf64776ov/lib/pkgconfig:\
/daq/software/spack_packages/elfutils/0.192/linux-scientific7-x86_64_v2-gcc-13.1.0-njfordbyrfjdzthkbvnqsljx24k3asgy/lib/pkgconfig:\
/daq/software/spack_packages/catch2/3.3.2/linux-scientific7-x86_64_v2-gcc-13.1.0-hnren2gvxj2574jvplwfnwyqnrazgypf/share/pkgconfig:\
/daq/software/spack_packages/rapidjson/1.2.0-2024-08-16/linux-scientific7-x86_64_v2-gcc-13.1.0-fqrt36ootbfcmvh5qwonu3lnjq7nx37d/lib/pkgconfig:\
/daq/software/spack_packages/mesa-glu/9.0.2/linux-scientific7-x86_64_v2-gcc-13.1.0-gsl3k4saxoddomcpoqtcvvc273jl35xp/lib/pkgconfig:\
/daq/software/spack_packages/fontconfig/2.15.0/linux-scientific7-x86_64_v2-gcc-13.1.0-syhljpfoo4aybj7uvl22kunytarkyc4q/lib/pkgconfig:\
/daq/software/spack_packages/intel-tbb-oneapi/2021.9.0/linux-scientific7-x86_64_v2-gcc-13.1.0-ifrobcmvqef4xf2wfhb6ijv2zlxge272/lib64/pkgconfig:\
/daq/software/spack_packages/python/3.9.15/linux-scientific7-x86_64_v2-gcc-13.1.0-a7uqecit6erp6wcp4uc357hkxeqws2u2/lib/pkgconfig:\
/daq/software/spack_packages/font-util/1.4.1/linux-scientific7-x86_64_v2-gcc-13.1.0-xbmdz4kkykxugbf6q6rwsodzshfa7vr2/lib/pkgconfig:\
/daq/software/spack_packages/freetype/2.13.2/linux-scientific7-x86_64_v2-gcc-13.1.0-cxxloiifqecxazx2icilnpu3qdr6p7md/lib/pkgconfig:\
/daq/software/spack_packages/libxcrypt/4.4.35/linux-scientific7-x86_64_v2-gcc-13.1.0-lqn6mt4oupwjwq5iezknbdorjuyhledn/lib/pkgconfig:\
/daq/software/spack_packages/sqlite/3.40.1/linux-scientific7-x86_64_v2-gcc-13.1.0-ywetecau4drs7zrafuu4xvrs23ztbrxg/lib/pkgconfig:\
/daq/software/spack_packages/mesa/23.3.6/linux-scientific7-x86_64_v2-gcc-13.1.0-durcqvwr6f3qaq5zslccbl5ajegstuxd/lib/pkgconfig:\
/daq/software/spack_packages/libpng/1.6.39/linux-scientific7-x86_64_v2-gcc-13.1.0-fws7pjp6c7g4x6zsbrn32d2ttmakerrf/lib64/pkgconfig:\
/daq/software/spack_packages/icu4c/74.2/linux-scientific7-x86_64_v2-gcc-13.1.0-as34ppkkt2sbriuyls766oc2m3ohb3iw/lib/pkgconfig:\
/daq/software/spack_packages/expat/2.6.4/linux-scientific7-x86_64_v2-gcc-13.1.0-6xe6dktqwetoo5h4pszmrnpnvrcm4c7z/lib/pkgconfig:\
/daq/software/spack_packages/glproto/1.4.17/linux-scientific7-x86_64_v2-gcc-13.1.0-lkeqbnbbn6gtyrkdc3jxppll2qqpwebe/lib/pkgconfig:\
/daq/software/spack_packages/libunwind/1.8.1/linux-scientific7-x86_64_v2-gcc-13.1.0-llbc6yn7aexswr5oo4f5dbkj6dx37hyn/lib/pkgconfig:\
/daq/software/spack_packages/libxt/1.3.1/linux-scientific7-x86_64_v2-gcc-13.1.0-zz54m6hczlvgywpxuipvzuhriejgo5tx/lib/pkgconfig:\
/daq/software/spack_packages/bzip2/1.0.8/linux-scientific7-x86_64_v2-gcc-13.1.0-xfon2affaodya3qmjsdaqjwkwu4gi5s5/lib/pkgconfig:\
/daq/software/spack_packages/libsm/1.2.5/linux-scientific7-x86_64_v2-gcc-13.1.0-bb56kiaulbuvjtaxhtrnwworcqqzlh5v/lib/pkgconfig:\
/daq/software/spack_packages/hwloc/2.11.1/linux-scientific7-x86_64_v2-gcc-13.1.0-mphctad4n33ekolpdltje4janldw7rsg/lib/pkgconfig:\
/daq/software/spack_packages/libedit/3.1-20240808/linux-scientific7-x86_64_v2-gcc-13.1.0-ltt3hpadorrn3bol7xrz77iykvsmoyxo/lib/pkgconfig:\
/daq/software/spack_packages/libffi/3.4.6/linux-scientific7-x86_64_v2-gcc-13.1.0-42of4wuohvqfhou4fftm3t4evg2oqecs/lib/pkgconfig:\
/daq/software/spack_packages/lua/5.3.6/linux-scientific7-x86_64_v2-gcc-13.1.0-krqcp5ne4aapqulz4z4ptvudzllhkmbm/lib/pkgconfig:\
/daq/software/spack_packages/libxrandr/1.5.4/linux-scientific7-x86_64_v2-gcc-13.1.0-ma2rku7td6bctbaju4kztrwvzhhavg5h/lib/pkgconfig:\
/daq/software/spack_packages/libice/1.1.2/linux-scientific7-x86_64_v2-gcc-13.1.0-myofgjz3jfopx3mhq2qw7y5qyx44zuvx/lib/pkgconfig:\
/daq/software/spack_packages/libuuid/1.0.3/linux-scientific7-x86_64_v2-gcc-13.1.0-yuiev7yxmsgonodoqftaij6gvjkrfbsc/lib/pkgconfig:\
/daq/software/spack_packages/zstd/1.5.6/linux-scientific7-x86_64_v2-gcc-13.1.0-tnezdfoet57n63bdwqixg3zn2h4rs2lp/lib/pkgconfig:\
/daq/software/spack_packages/libpciaccess/0.17/linux-scientific7-x86_64_v2-gcc-13.1.0-7nepukrsevyhmtk6ss2u2p4mzhs2x522/lib/pkgconfig:\
/daq/software/spack_packages/libxml2/2.9.12/linux-scientific7-x86_64_v2-gcc-13.1.0-xykzyjc7p7sqaqolzic5dxl33trcw4me/lib/pkgconfig:\
/daq/software/spack_packages/curl/8.11.1/linux-scientific7-x86_64_v2-gcc-13.1.0-chp2otfsxheqmwncr7kzznmyusuymlkk/lib/pkgconfig:\
/daq/software/spack_packages/readline/8.2/linux-scientific7-x86_64_v2-gcc-13.1.0-ph2fsvil6ugfzkzgjxy3dwwxiktdcxl5/lib/pkgconfig:\
/daq/software/spack_packages/pcre2/10.44/linux-scientific7-x86_64_v2-gcc-13.1.0-7wy3ubzz3hqkue2jirpwa3nfnhc3hc5n/lib/pkgconfig:\
/daq/software/spack_packages/libxext/1.3.6/linux-scientific7-x86_64_v2-gcc-13.1.0-tyz3d2z2xsm2aoecp7swqy5okbsqgsen/lib/pkgconfig:\
/daq/software/spack_packages/libxrender/0.9.11/linux-scientific7-x86_64_v2-gcc-13.1.0-alvfgvavhvykz2nxlmqo6odbaqkvxpiz/lib/pkgconfig:\
/daq/software/spack_packages/randrproto/1.5.0/linux-scientific7-x86_64_v2-gcc-13.1.0-bgereaacvdxag2vylcrfenizm7faouna/lib/pkgconfig:\
/daq/software/spack_packages/xz/5.4.6/linux-scientific7-x86_64_v2-gcc-13.1.0-huzk4qydrwcgvjreo76zzjuo7qodpyy4/lib/pkgconfig:\
/daq/software/spack_packages/nghttp2/1.64.0/linux-scientific7-x86_64_v2-gcc-13.1.0-7ye54wsymg6hytn5bi6ccuoydsjqh5cf/lib/pkgconfig:\
/daq/software/spack_packages/openssl/3.4.0/linux-scientific7-x86_64_v2-gcc-13.1.0-whm6mvvwr5f422dt3hh67c6orb2twiwy/lib64/pkgconfig:\
/daq/software/spack_packages/ncurses/6.5/linux-scientific7-x86_64_v2-gcc-13.1.0-7sn5fxlgvinyygfljsahligxskf6zcgu/lib/pkgconfig:\
/daq/software/spack_packages/xextproto/7.3.0/linux-scientific7-x86_64_v2-gcc-13.1.0-s2335dn3zejt3ayrrzszz5qcbqu4h7bg/lib/pkgconfig:\
/daq/software/spack_packages/libx11/1.8.10/linux-scientific7-x86_64_v2-gcc-13.1.0-rkekdv5lubqnm7cfc7vc4tpv3fywd2sc/lib/pkgconfig:\
/daq/software/spack_packages/renderproto/0.11.1/linux-scientific7-x86_64_v2-gcc-13.1.0-2tyrq6tpnkhtpo5bn7scapjfxvtbq3mz/lib/pkgconfig:\
/daq/software/spack_packages/zlib-ng/2.2.3/linux-scientific7-x86_64_v2-gcc-13.1.0-pv2u2oriwjevq43kv77hsi5rlr4i5fdm/lib/pkgconfig:\
/daq/software/spack_packages/kbproto/1.0.7/linux-scientific7-x86_64_v2-gcc-13.1.0-4cmewr6urxzfywsjhw7a7uxvegw3valo/lib/pkgconfig:\
/daq/software/spack_packages/libxcb/1.17.0/linux-scientific7-x86_64_v2-gcc-13.1.0-qa2uakkckbczsj2vyns4issge6b22h3c/lib/pkgconfig:\
/daq/software/spack_packages/xtrans/1.5.2/linux-scientific7-x86_64_v2-gcc-13.1.0-bqyyodtt57mrdzp46g6zex6jkmkzrwjp/share/pkgconfig:\
/daq/software/spack_packages/libpthread-stubs/0.5/linux-scientific7-x86_64_v2-gcc-13.1.0-ysbr6vbfrhydcvavefx4hjq7zrqjbilb/lib/pkgconfig:\
/daq/software/spack_packages/libxau/1.0.12/linux-scientific7-x86_64_v2-gcc-13.1.0-fz47uyp5csqwuqhogcakcu3buikufy5v/lib/pkgconfig:\
/daq/software/spack_packages/libxdmcp/1.1.5/linux-scientific7-x86_64_v2-gcc-13.1.0-mb4akz3wj5e2m7gildpg5s2lohgx3swh/lib/pkgconfig:\
/daq/software/spack_packages/libbsd/0.12.2/linux-scientific7-x86_64_v2-gcc-13.1.0-xvtwgv5q4ntyikjlty75476wpvw3f7rk/lib/pkgconfig:\
/daq/software/spack_packages/xproto/7.0.31/linux-scientific7-x86_64_v2-gcc-13.1.0-uatu2pruoqdqano3v6plglrsvacvoza4/lib/pkgconfig:\
/daq/software/spack_packages/libmd/1.0.4/linux-scientific7-x86_64_v2-gcc-13.1.0-zwyj3itfj2ufhoqe7pd4zrx2efgnabli/lib/pkgconfig:\
/usr/share/pkgconfig:\
/usr/lib64/pkgconfig:\
/usr/lib/pkgconfig

export PYTHONPATH=/daq/software/spack_packages/root/6.28.12/linux-scientific7-x86_64_v2-gcc-13.1.0-haa2t56bulneyg5ykcfjhzobirwqencu/lib/root:\
/daq/software/spack_packages/py-numpy/1.24.3/linux-scientific7-x86_64_v2-gcc-13.1.0-qcmegeyu2i3glbcoetivcnnhh4mllt3g/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-pybind11/2.10.4/linux-scientific7-x86_64_v2-gcc-13.1.0-di2xotybntw3a2za4alkbdhcq43q6iwl/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-setuptools/63.4.3/linux-scientific7-x86_64_v2-gcc-13.1.0-omx562ccx7is7mcr6arjo4m4tlfmjhjd/lib/python3.9/site-packages:\
/daq/software/spack_packages/python-venv/1.0/linux-scientific7-x86_64_v2-gcc-13.1.0-kmzijaokfgdnkujwddmrqh4o4tkiispo/lib/python3.9/site-packages

export QSYS_ROOTDIR="/daq/software/products/Quartus/17.1/quartus/sopc_builder/bin"

export QTDIR="/daq/software/spack_packages/qt/5.15.16/linux-scientific7-x86_64_v2-gcc-13.1.0-q6pskemnhz6oav7ifqtfmayxnuhzjg5t"

export QTINC="/daq/software/spack_packages/qt/5.15.16/linux-scientific7-x86_64_v2-gcc-13.1.0-q6pskemnhz6oav7ifqtfmayxnuhzjg5t/inc"

export QTLIB="/daq/software/spack_packages/qt/5.15.16/linux-scientific7-x86_64_v2-gcc-13.1.0-q6pskemnhz6oav7ifqtfmayxnuhzjg5t/lib"

export QT_GRAPHICSSYSTEM_CHECKED="1"

export QT_PLUGIN_PATH=/daq/software/spack_packages/qt/5.15.16/linux-scientific7-x86_64_v2-gcc-13.1.0-q6pskemnhz6oav7ifqtfmayxnuhzjg5t/plugins:\
/usr/lib64/kde4/plugins:\
/usr/lib/kde4/plugins

export ROOTSYS="/daq/software/spack_packages/root/6.28.12/linux-scientific7-x86_64_v2-gcc-13.1.0-haa2t56bulneyg5ykcfjhzobirwqencu"

export ROOT_INCLUDE_PATH=/daq/software/spack_packages/canvas-root-io/1.13.06/linux-scientific7-x86_64_v2-gcc-13.1.0-ohsgz4nbqh5gpqh4nbedbzy3glqzogku/include:\
/daq/software/spack_packages/root/6.28.12/linux-scientific7-x86_64_v2-gcc-13.1.0-haa2t56bulneyg5ykcfjhzobirwqencu/include:\
/daq/software/spack_packages/xxhash/0.8.3/linux-scientific7-x86_64_v2-gcc-13.1.0-civajpuxmekqzqksrgw575l6fbgnfalu/include:\
/daq/software/spack_packages/vdt/0.4.4/linux-scientific7-x86_64_v2-gcc-13.1.0-xadmhwhdsuwpqama2pagmqzn32ys6uh3/include:\
/daq/software/spack_packages/unuran/1.8.1/linux-scientific7-x86_64_v2-gcc-13.1.0-b7j2uzwmdrxwwci5anlpugjnkbvvf2t7/include:\
/daq/software/spack_packages/rngstreams/1.0.1/linux-scientific7-x86_64_v2-gcc-13.1.0-mma6hvt6gdccdljbagse3viqwmxvsh2n/include:\
/daq/software/spack_packages/pcre/8.45/linux-scientific7-x86_64_v2-gcc-13.1.0-mncbvjitpzsr2njdlcukxb3imqvpn7i4/include:\
/daq/software/spack_packages/nlohmann-json/3.11.3/linux-scientific7-x86_64_v2-gcc-13.1.0-yjplth5drxd7v2xg7pcd7gu6yrthn3fa/include:\
/daq/software/spack_packages/lz4/1.10.0/linux-scientific7-x86_64_v2-gcc-13.1.0-k4wmpa4d4ww77eznlhp4qlfdl24mijsw/include:\
/daq/software/spack_packages/libxpm/3.5.17/linux-scientific7-x86_64_v2-gcc-13.1.0-umthtzp4g75rjfp7n4rxhg62aevz2osw/include:\
/daq/software/spack_packages/libxft/2.3.8/linux-scientific7-x86_64_v2-gcc-13.1.0-othbb7a67kx7byxx5w4xuxfdzz5te4iy/include:\
/daq/software/spack_packages/fontconfig/2.15.0/linux-scientific7-x86_64_v2-gcc-13.1.0-syhljpfoo4aybj7uvl22kunytarkyc4q/include:\
/daq/software/spack_packages/font-util/1.4.1/linux-scientific7-x86_64_v2-gcc-13.1.0-xbmdz4kkykxugbf6q6rwsodzshfa7vr2/include:\
/daq/software/spack_packages/libjpeg-turbo/3.0.3/linux-scientific7-x86_64_v2-gcc-13.1.0-yeejbtvp6v3mholvlec5uv6gtl6ljcxz/include:\
/daq/software/spack_packages/gsl/2.7.1/linux-scientific7-x86_64_v2-gcc-13.1.0-a77szrizltz4uxkhfwfec4gfkwzjycod/include:\
/daq/software/spack_packages/glew/2.2.0/linux-scientific7-x86_64_v2-gcc-13.1.0-su2zs2u66hdxha7kaiilvnwfxgusn7o3/include:\
/daq/software/spack_packages/gl2ps/1.4.2/linux-scientific7-x86_64_v2-gcc-13.1.0-5istesmzttmheahqhx2xer4kekjwg3zs/include:\
/daq/software/spack_packages/ftgl/2.4.0/linux-scientific7-x86_64_v2-gcc-13.1.0-rso4oablehdb4h6zm35dvmpmzhbfumll/include:\
/daq/software/spack_packages/mesa-glu/9.0.2/linux-scientific7-x86_64_v2-gcc-13.1.0-gsl3k4saxoddomcpoqtcvvc273jl35xp/include:\
/daq/software/spack_packages/glx/1.4/linux-scientific7-x86_64_v2-gcc-13.1.0-dhh54ab55ckgk7u7nk5ebi32mjkmvg6d/include:\
/daq/software/spack_packages/mesa/23.3.6/linux-scientific7-x86_64_v2-gcc-13.1.0-durcqvwr6f3qaq5zslccbl5ajegstuxd/include:\
/daq/software/spack_packages/xrandr/1.5.3/linux-scientific7-x86_64_v2-gcc-13.1.0-gtk2iobus45ufm25gj5j2eiirqs2p5cy/include:\
/daq/software/spack_packages/libxrandr/1.5.4/linux-scientific7-x86_64_v2-gcc-13.1.0-ma2rku7td6bctbaju4kztrwvzhhavg5h/include:\
/daq/software/spack_packages/randrproto/1.5.0/linux-scientific7-x86_64_v2-gcc-13.1.0-bgereaacvdxag2vylcrfenizm7faouna/include:\
/daq/software/spack_packages/libxrender/0.9.11/linux-scientific7-x86_64_v2-gcc-13.1.0-alvfgvavhvykz2nxlmqo6odbaqkvxpiz/include:\
/daq/software/spack_packages/renderproto/0.11.1/linux-scientific7-x86_64_v2-gcc-13.1.0-2tyrq6tpnkhtpo5bn7scapjfxvtbq3mz/include:\
/daq/software/spack_packages/llvm/17.0.6/linux-scientific7-x86_64_v2-gcc-13.1.0-hedz3ngpjlogqjjfi6r6u4a7slu6drgv/include:\
/daq/software/spack_packages/swig/4.1.1/linux-scientific7-x86_64_v2-gcc-13.1.0-aeorjyemnxmsq77f66fkz4kpjatd6tbx/include:\
/daq/software/spack_packages/pcre2/10.44/linux-scientific7-x86_64_v2-gcc-13.1.0-7wy3ubzz3hqkue2jirpwa3nfnhc3hc5n/include:\
/daq/software/spack_packages/lua/5.3.6/linux-scientific7-x86_64_v2-gcc-13.1.0-krqcp5ne4aapqulz4z4ptvudzllhkmbm/include:\
/daq/software/spack_packages/libedit/3.1-20240808/linux-scientific7-x86_64_v2-gcc-13.1.0-ltt3hpadorrn3bol7xrz77iykvsmoyxo/include:\
/daq/software/spack_packages/binutils/2.43.1/linux-scientific7-x86_64_v2-gcc-13.1.0-asfq5ml7cbnd3l4qswveogsgbm5l4utv/include:\
/daq/software/spack_packages/libxt/1.3.1/linux-scientific7-x86_64_v2-gcc-13.1.0-zz54m6hczlvgywpxuipvzuhriejgo5tx/include:\
/daq/software/spack_packages/libsm/1.2.5/linux-scientific7-x86_64_v2-gcc-13.1.0-bb56kiaulbuvjtaxhtrnwworcqqzlh5v/include:\
/daq/software/spack_packages/libice/1.1.2/linux-scientific7-x86_64_v2-gcc-13.1.0-myofgjz3jfopx3mhq2qw7y5qyx44zuvx/include:\
/daq/software/spack_packages/libxext/1.3.6/linux-scientific7-x86_64_v2-gcc-13.1.0-tyz3d2z2xsm2aoecp7swqy5okbsqgsen/include:\
/daq/software/spack_packages/xextproto/7.3.0/linux-scientific7-x86_64_v2-gcc-13.1.0-s2335dn3zejt3ayrrzszz5qcbqu4h7bg/include:\
/daq/software/spack_packages/libx11/1.8.10/linux-scientific7-x86_64_v2-gcc-13.1.0-rkekdv5lubqnm7cfc7vc4tpv3fywd2sc/include:\
/daq/software/spack_packages/xtrans/1.5.2/linux-scientific7-x86_64_v2-gcc-13.1.0-bqyyodtt57mrdzp46g6zex6jkmkzrwjp/include:\
/daq/software/spack_packages/libxcb/1.17.0/linux-scientific7-x86_64_v2-gcc-13.1.0-qa2uakkckbczsj2vyns4issge6b22h3c/include:\
/daq/software/spack_packages/libxdmcp/1.1.5/linux-scientific7-x86_64_v2-gcc-13.1.0-mb4akz3wj5e2m7gildpg5s2lohgx3swh/include:\
/daq/software/spack_packages/libxau/1.0.12/linux-scientific7-x86_64_v2-gcc-13.1.0-fz47uyp5csqwuqhogcakcu3buikufy5v/include:\
/daq/software/spack_packages/xproto/7.0.31/linux-scientific7-x86_64_v2-gcc-13.1.0-uatu2pruoqdqano3v6plglrsvacvoza4/include:\
/daq/software/spack_packages/libpthread-stubs/0.5/linux-scientific7-x86_64_v2-gcc-13.1.0-ysbr6vbfrhydcvavefx4hjq7zrqjbilb/include:\
/daq/software/spack_packages/kbproto/1.0.7/linux-scientific7-x86_64_v2-gcc-13.1.0-4cmewr6urxzfywsjhw7a7uxvegw3valo/include:\
/daq/software/spack_packages/libunwind/1.8.1/linux-scientific7-x86_64_v2-gcc-13.1.0-llbc6yn7aexswr5oo4f5dbkj6dx37hyn/include:\
/daq/software/spack_packages/glproto/1.4.17/linux-scientific7-x86_64_v2-gcc-13.1.0-lkeqbnbbn6gtyrkdc3jxppll2qqpwebe/include:\
/daq/software/spack_packages/freetype/2.13.2/linux-scientific7-x86_64_v2-gcc-13.1.0-cxxloiifqecxazx2icilnpu3qdr6p7md/include:\
/daq/software/spack_packages/libpng/1.6.39/linux-scientific7-x86_64_v2-gcc-13.1.0-fws7pjp6c7g4x6zsbrn32d2ttmakerrf/include:\
/daq/software/spack_packages/davix/0.8.10/linux-scientific7-x86_64_v2-gcc-13.1.0-zbevk3nmty4e4drhmnwczconn575t3zt/include:\
/daq/software/spack_packages/rapidjson/1.2.0-2024-08-16/linux-scientific7-x86_64_v2-gcc-13.1.0-fqrt36ootbfcmvh5qwonu3lnjq7nx37d/include:\
/daq/software/spack_packages/curl/8.11.1/linux-scientific7-x86_64_v2-gcc-13.1.0-chp2otfsxheqmwncr7kzznmyusuymlkk/include:\
/daq/software/spack_packages/nghttp2/1.64.0/linux-scientific7-x86_64_v2-gcc-13.1.0-7ye54wsymg6hytn5bi6ccuoydsjqh5cf/include:\
/daq/software/spack_packages/hep-concurrency/1.09.02/linux-scientific7-x86_64_v2-gcc-13.1.0-2tohquorrovysda5asm3o7e2vx6acjqk/include:\
/daq/software/spack_packages/canvas/3.16.04/linux-scientific7-x86_64_v2-gcc-13.1.0-c22dw4bifjt5fxefuuwlxrgcerz43rjh/include:\
/daq/software/spack_packages/range-v3/0.12.0/linux-scientific7-x86_64_v2-gcc-13.1.0-qsotm25hib2ki2pm6zzckptzsqalwj3m/include:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-scientific7-x86_64_v2-gcc-13.1.0-jlvcb7jryzj7pohk7au5v4rxmylyl75r/include:\
/daq/software/spack_packages/catch2/3.3.2/linux-scientific7-x86_64_v2-gcc-13.1.0-hnren2gvxj2574jvplwfnwyqnrazgypf/include:\
/daq/software/spack_packages/fhicl-cpp/4.18.04/linux-scientific7-x86_64_v2-gcc-13.1.0-ajnvpsjcoladdr6cbtb4z6x252pk2xi2/include:\
/daq/software/spack_packages/python/3.9.15/linux-scientific7-x86_64_v2-gcc-13.1.0-a7uqecit6erp6wcp4uc357hkxeqws2u2/include:\
/daq/software/spack_packages/libxcrypt/4.4.35/linux-scientific7-x86_64_v2-gcc-13.1.0-lqn6mt4oupwjwq5iezknbdorjuyhledn/include:\
/daq/software/spack_packages/libuuid/1.0.3/linux-scientific7-x86_64_v2-gcc-13.1.0-yuiev7yxmsgonodoqftaij6gvjkrfbsc/include:\
/daq/software/spack_packages/libffi/3.4.6/linux-scientific7-x86_64_v2-gcc-13.1.0-42of4wuohvqfhou4fftm3t4evg2oqecs/include:\
/daq/software/spack_packages/gettext/0.22.5/linux-scientific7-x86_64_v2-gcc-13.1.0-7w2pny473vugkkcdw2aq6qxs4pfxufgn/include:\
/daq/software/spack_packages/gdbm/1.23/linux-scientific7-x86_64_v2-gcc-13.1.0-53e2ne4vtfjxf3lhixkkoa2mt5kviols/include:\
/daq/software/spack_packages/expat/2.6.4/linux-scientific7-x86_64_v2-gcc-13.1.0-6xe6dktqwetoo5h4pszmrnpnvrcm4c7z/include:\
/daq/software/spack_packages/libbsd/0.12.2/linux-scientific7-x86_64_v2-gcc-13.1.0-xvtwgv5q4ntyikjlty75476wpvw3f7rk/include:\
/daq/software/spack_packages/libmd/1.0.4/linux-scientific7-x86_64_v2-gcc-13.1.0-zwyj3itfj2ufhoqe7pd4zrx2efgnabli/include:\
/daq/software/spack_packages/intel-tbb-oneapi/2021.9.0/linux-scientific7-x86_64_v2-gcc-13.1.0-ifrobcmvqef4xf2wfhb6ijv2zlxge272/include:\
/daq/software/spack_packages/hwloc/2.11.1/linux-scientific7-x86_64_v2-gcc-13.1.0-mphctad4n33ekolpdltje4janldw7rsg/include:\
/daq/software/spack_packages/libxml2/2.9.12/linux-scientific7-x86_64_v2-gcc-13.1.0-xykzyjc7p7sqaqolzic5dxl33trcw4me/include:\
/daq/software/spack_packages/libpciaccess/0.17/linux-scientific7-x86_64_v2-gcc-13.1.0-7nepukrsevyhmtk6ss2u2p4mzhs2x522/include:\
/daq/software/spack_packages/clhep/2.4.7.1/linux-scientific7-x86_64_v2-gcc-13.1.0-rfos5c6rz77h7r4tdmdmgg6iksqqdnrx/include:\
/daq/software/spack_packages/cetlib/3.18.02/linux-scientific7-x86_64_v2-gcc-13.1.0-sdjjsgw3ochua4hdepfsbmduzk6zbex7/include:\
/daq/software/spack_packages/sqlite/3.40.1/linux-scientific7-x86_64_v2-gcc-13.1.0-ywetecau4drs7zrafuu4xvrs23ztbrxg/include:\
/daq/software/spack_packages/readline/8.2/linux-scientific7-x86_64_v2-gcc-13.1.0-ph2fsvil6ugfzkzgjxy3dwwxiktdcxl5/include:\
/daq/software/spack_packages/ncurses/6.5/linux-scientific7-x86_64_v2-gcc-13.1.0-7sn5fxlgvinyygfljsahligxskf6zcgu/include:\
/daq/software/spack_packages/openssl/3.4.0/linux-scientific7-x86_64_v2-gcc-13.1.0-whm6mvvwr5f422dt3hh67c6orb2twiwy/include:\
/daq/software/spack_packages/cetlib-except/1.09.01/linux-scientific7-x86_64_v2-gcc-13.1.0-zwm2bk6hlvjv6kes2c3sb43wwpyyofnz/include:\
/daq/software/spack_packages/boost/1.82.0/linux-scientific7-x86_64_v2-gcc-13.1.0-nrczh3for3kkihywmxkoqbcevdp733s7/include:\
/daq/software/spack_packages/zstd/1.5.6/linux-scientific7-x86_64_v2-gcc-13.1.0-tnezdfoet57n63bdwqixg3zn2h4rs2lp/include:\
/daq/software/spack_packages/zlib-ng/2.2.3/linux-scientific7-x86_64_v2-gcc-13.1.0-pv2u2oriwjevq43kv77hsi5rlr4i5fdm/include:\
/daq/software/spack_packages/xz/5.4.6/linux-scientific7-x86_64_v2-gcc-13.1.0-huzk4qydrwcgvjreo76zzjuo7qodpyy4/include:\
/daq/software/spack_packages/icu4c/74.2/linux-scientific7-x86_64_v2-gcc-13.1.0-as34ppkkt2sbriuyls766oc2m3ohb3iw/include:\
/daq/software/spack_packages/bzip2/1.0.8/linux-scientific7-x86_64_v2-gcc-13.1.0-xfon2affaodya3qmjsdaqjwkwu4gi5s5/include:\
/daq/software/spack_packages/gcc-runtime/13.1.0/linux-scientific7-x86_64_v2-gcc-13.1.0-irn2mb7twuocpnok4nt32hoqvy7algog/include:\
/daq/software/spack_packages/art-root-io/1.13.06/linux-scientific7-x86_64_v2-gcc-13.1.0-fi7imbonclpk272smjxt5c4werkv7nd5/include:\
/daq/software/spack_packages/art-suite/s131/linux-scientific7-x86_64_v2-gcc-13.1.0-q7uqbe7u2lf62jembhpm33bgmvjiax34/include:\
/daq/software/spack_packages/sbndaq-suite/v2_01_00/linux-scientific7-x86_64_v2-gcc-13.1.0-6d4rvf26fi7dxcjjofddhc35rucysq7e/include:\
/usr/include

export ROOT_LIBRARY_PATH=/daq/software/spack_packages/art-root-io/1.13.06/linux-scientific7-x86_64_v2-gcc-13.1.0-fi7imbonclpk272smjxt5c4werkv7nd5/lib:\
/daq/software/spack_packages/canvas-root-io/1.13.06/linux-scientific7-x86_64_v2-gcc-13.1.0-ohsgz4nbqh5gpqh4nbedbzy3glqzogku/lib

export ROOT_VERSION="v6"

export SBNDAQ_VERSION="v2_01_00"

export SETUP_ARTDAQ_MFEXTENSIONS="spack load artdaq-mfextensions"

export SINCE="1775195949"

export SINCEFILE="/home/nfs/sbnd/.cache/abrt/lastnotification"

export SPACK_ALIASES="concretise:concretize;containerise:containerize;rm:remove"

export SPACK_ARCH="linux-scientific7-x86_64_v2"

export SPACK_DISABLE_LOCAL_CONFIG="true"

export SPACK_ENV_SCRIPT="/daq/software/spack_packages/spack/current/NULL/share/spack/setup-env.sh"

export SPACK_INSTALL_DIR="/daq/software/spack_packages/spack/current/NULL"

export SPACK_LOADED_HASHES="6d4rvf26fi7dxcjjofddhc35rucysq7e"

export SPACK_PYTHON="/usr/bin/python3"

export SPACK_ROOT="/daq/software/spack_packages/spack/current/NULL"

export SPACK_USER_CONFIG_PATH="/home/nfs/sbnd/DAQ_SPACK_ProdAreas/DAQ_2026-04-03_GAL_v2_01_00/srcs/sbndaq/sbn-nd/DAQInterface2/overrides/spack"

export SPACK_VERSION="current"

export TBB_INC="/daq/software/spack_packages/intel-tbb-oneapi/2021.9.0/linux-scientific7-x86_64_v2-gcc-13.1.0-ifrobcmvqef4xf2wfhb6ijv2zlxge272/include"

export THIS_SBN_DAQ_DAQINTERFACE_DIR="/home/nfs/sbnd/DAQ_SPACK_ProdAreas/DAQ_2026-04-03_GAL_v2_01_00/srcs/sbndaq/sbn-nd/DAQInterface2"

export TMPPATH="/home/nfs/sbnd/.cache/abrt/lastnotification.8vVlvtgi"

export USE_CACHED_BASH_ENV="True"

export WIBTOOLS_BIN="/daq/software/spack_packages/wibtools/v2_01_00/linux-scientific7-x86_64_v2-gcc-13.1.0-yvhyqfxipmt2bq2racrqfs6dzhgzlwmt/bin"

export WIB_ADDRESS_TABLE_PATH="/daq/software/spack_packages/wibtools/v2_01_00/linux-scientific7-x86_64_v2-gcc-13.1.0-yvhyqfxipmt2bq2racrqfs6dzhgzlwmt/tables"

export WIB_CONFIG_PATH="/daq/software/spack_packages/wibtools/v2_01_00/linux-scientific7-x86_64_v2-gcc-13.1.0-yvhyqfxipmt2bq2racrqfs6dzhgzlwmt/config"

export XKB_CONFIG_ROOT="/daq/software/spack_packages/xkeyboard-config/2.34/linux-scientific7-x86_64_v2-gcc-13.1.0-gju52hgqutqpssp6m6ez7l6znqv323ar/share/X11/xkb"

export XLOCALEDIR=/daq/software/spack_packages/libx11/1.8.10/linux-scientific7-x86_64_v2-gcc-13.1.0-rkekdv5lubqnm7cfc7vc4tpv3fywd2sc/share/X11/locale

export __git_all_commands

export __git_diff_algorithms="myers minimal patience histogram"

export __git_diff_common_options="--stat --numstat --shortstat --summary --patch-with-stat --name-only --name-status --color --no-color --color-words --no-renames --check --full-index --binary --abbrev --diff-filter= --find-copies-harder --text --ignore-space-at-eol --ignore-space-change --ignore-all-space --exit-code --quiet --ext-diff --no-ext-diff --no-prefix --src-prefix= --dst-prefix= --inter-hunk-context= --patience --histogram --minimal --raw --dirstat --dirstat= --dirstat-by-file --dirstat-by-file= --cumulative --diff-algorithm="

export __git_fetch_options="--quiet --verbose --append --upload-pack --force --keep --depth= --tags --no-tags --all --prune --dry-run"

export __git_format_patch_options="--stdout --attach --no-attach --thread --thread= --no-thread --numbered --start-number --numbered-files --keep-subject --signoff --signature --no-signature --in-reply-to= --cc= --full-index --binary --not --all --cover-letter --no-prefix --src-prefix= --dst-prefix= --inline --suffix= --ignore-if-in-upstream --subject-prefix= --output-directory --reroll-count --to= --quiet --notes"

export __git_log_common_options="--not --all --branches --tags --remotes --first-parent --merges --no-merges --max-count= --max-age= --since= --after= --min-age= --until= --before= --min-parents= --max-parents= --no-min-parents --no-max-parents"

export __git_log_date_formats="relative iso8601 rfc2822 short local default raw"

export __git_log_gitk_options="--dense --sparse --full-history --simplify-merges --simplify-by-decoration --left-right --notes --no-notes"

export __git_log_pretty_formats="oneline short medium full fuller email raw format:"

export __git_log_shortlog_options="--author= --committer= --grep= --all-match"

export __git_merge_options="--no-commit --no-stat --log --no-log --squash --strategy --commit --stat --no-squash --ff --no-ff --ff-only --edit --no-edit"

export __git_merge_strategies

export __git_mergetools_common="diffuse ecmerge emerge kdiff3 meld opendiff tkdiff vimdiff gvimdiff xxdiff araxis p4merge bc3 codecompare"

export __git_porcelain_commands

export __git_send_email_confirm_options="always never auto cc compose"

export __git_send_email_suppresscc_options="author self cc bodycc sob cccmd body all"

export __git_whitespacelist="nowarn warn error error-all fix"

export _a="sbndaq-suite@v2_01_00%gcc@13.1.0 arch=linux-scientific7-x86_64_v2 /6d4rvf2"

export _backup_glob="@(#*#|*@(~|.@(bak|orig|rej|swp|dpkg*|rpm@(orig|new|save))))"

export _pa_canonical=":"

export _pa_new_path="/daq/software/spack_packages/spack/v1.0.1.sbnd/NULL/share/spack/modules/linux-scientific7-x86_64"

export _pa_oldvalue

export _pa_varname="MODULEPATH"

export _rbd_commands

export _rbd_global_options

export _rhsm_debug_common_opts="-h --help --proxy --proxyuser --proxypassword --noproxy"

export _sp_compatible_sys_types="linux-scientific7-skylake_avx512:linux-scientific7-skylake:linux-scientific7-x86_64_v4:linux-scientific7-broadwell:linux-scientific7-haswell:linux-scientific7-ivybridge:linux-scientific7-x86_64_v3:linux-scientific7-sandybridge:linux-scientific7-westmere:linux-scientific7-nehalem:linux-scientific7-core2:linux-scientific7-x86_64_v2:linux-scientific7-nocona:linux-scientific7-x86_64"

export _sp_flags

export _sp_lmod_roots="/daq/software/spack_packages/spack/v1.0.1.sbnd/NULL/share/spack/lmod"

export _sp_module_prefix="not_installed"

export _sp_prefix="/daq/software/spack_packages/spack/current/NULL"

export _sp_share_dir="/daq/software/spack_packages/spack/current/NULL/share/spack"

export _sp_shell="bash"

export _sp_source_file="/daq/software/spack_packages/spack/current/NULL/share/spack/setup-env.sh"

export _sp_subcommand="load"

export _sp_sys_type="linux-scientific7-skylake_avx512"

export _sp_tcl_roots="/daq/software/spack_packages/spack/v1.0.1.sbnd/NULL/share/spack/modules"

export _subscription_manager_common_opts="--proxy --proxyuser --proxypassword --noproxy -h --help"

export _subscription_manager_common_url_opts="--insecure --serverurl"

export _subscription_manager_help_opts="-h --help"

export _syspurpose_help_opts="-h --help"

export _xspecs

export build_hash_map

export cmd="/usr/bin/python3"

export colors="/home/nfs/sbnd/.dircolors"

export i="1"

export need_module="yes"

export preload__ltrim_colon_completions="true"

export preload_get_comp_words_by_ref="true"

export pth="/daq/software/spack_packages/spack/v1.0.1.sbnd/NULL/share/spack/modules"

export systype="linux-scientific7-x86_64"

#Functions
__HOSTNAME () 
{ 
    local zero=0;
    local ret=0;
    local cur_word="$2";
    if [ "$1" == "X" ]; then
        return;
    else
        if [ "$1" == "match" ]; then
            return 0;
        else
            if [ "$1" == "complete" ]; then
                COMPREPLY=($(compgen -A hostname -- $cur_word));
            fi;
        fi;
    fi;
    return 0
}

__SIZE () 
{ 
    return 0
}

__SLAVEURL () 
{ 
    return 0
}

__VOLNAME () 
{ 
    local zero=0;
    local ret=0;
    local cur_word="$2";
    local list="";
    if [ "X$1" == "X" ]; then
        return;
    else
        if [ "$1" == "match" ]; then
            return 0;
        else
            if [ "$1" == "complete" ]; then
                if ! pidof glusterd > /dev/null 2>&1; then
                    list='';
                else
                    list=`gluster volume list 2> /dev/null`;
                fi;
            else
                return 0;
            fi;
        fi;
    fi;
    COMPREPLY=($(compgen -W "$list" -- $cur_word));
    return 0
}

__expand_tilde_by_ref () 
{ 
    if [[ ${!1} == \~* ]]; then
        if [[ ${!1} == */* ]]; then
            eval $1="${!1/%\/*}"/'${!1#*/}';
        else
            eval $1="${!1}";
        fi;
    fi
}

__get_cword_at_cursor_by_ref () 
{ 
    local cword words=();
    __reassemble_comp_words_by_ref "$1" words cword;
    local i cur index=$COMP_POINT lead=${COMP_LINE:0:$COMP_POINT};
    if [[ $index -gt 0 && ( -n $lead && -n ${lead//[[:space:]]} ) ]]; then
        cur=$COMP_LINE;
        for ((i = 0; i <= cword; ++i ))
        do
            while [[ ${#cur} -ge ${#words[i]} && "${cur:0:${#words[i]}}" != "${words[i]}" ]]; do
                cur="${cur:1}";
                ((index--));
            done;
            if [[ $i -lt $cword ]]; then
                local old_size=${#cur};
                cur="${cur#"${words[i]}"}";
                local new_size=${#cur};
                index=$(( index - old_size + new_size ));
            fi;
        done;
        [[ -n $cur && ! -n ${cur//[[:space:]]} ]] && cur=;
        [[ $index -lt 0 ]] && index=0;
    fi;
    local "$2" "$3" "$4" && _upvars -a${#words[@]} $2 "${words[@]}" -v $3 "$cword" -v $4 "${cur:0:$index}"
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

__git_commands () 
{ 
    if test -n "${GIT_TESTING_COMMAND_COMPLETION:-}"; then
        printf "%s" "${GIT_TESTING_COMMAND_COMPLETION}";
    else
        git help -a | egrep '^  [a-zA-Z0-9]';
    fi
}

__git_complete () 
{ 
    local wrapper="__git_wrap${2}";
    eval "$wrapper () { __git_func_wrap $2 ; }";
    complete -o bashdefault -o default -o nospace -F $wrapper $1 2> /dev/null || complete -o default -o nospace -F $wrapper $1
}

__git_complete_diff_index_file () 
{ 
    local pfx cur_="$cur";
    case "$cur_" in 
        ?*/*)
            pfx="${cur_%/*}";
            cur_="${cur_##*/}";
            pfx="${pfx}/";
            __gitcomp_file "$(__git_diff_index_files "$1" "$pfx")" "$pfx" "$cur_"
        ;;
        *)
            __gitcomp_file "$(__git_diff_index_files "$1")" "" "$cur_"
        ;;
    esac
}

__git_complete_file () 
{ 
    __git_complete_revlist_file
}

__git_complete_index_file () 
{ 
    local pfx cur_="$cur";
    case "$cur_" in 
        ?*/*)
            pfx="${cur_%/*}";
            cur_="${cur_##*/}";
            pfx="${pfx}/";
            __gitcomp_file "$(__git_index_files "$1" "$pfx")" "$pfx" "$cur_"
        ;;
        *)
            __gitcomp_file "$(__git_index_files "$1")" "" "$cur_"
        ;;
    esac
}

__git_complete_remote_or_refspec () 
{ 
    local cur_="$cur" cmd="${words[1]}";
    local i c=2 remote="" pfx="" lhs=1 no_complete_refspec=0;
    if [ "$cmd" = "remote" ]; then
        ((c++));
    fi;
    while [ $c -lt $cword ]; do
        i="${words[c]}";
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
        ((c++));
    done;
    if [ -z "$remote" ]; then
        __gitcomp_nl "$(__git_remotes)";
        return;
    fi;
    if [ $no_complete_refspec = 1 ]; then
        return;
    fi;
    [ "$remote" = "." ] && remote=;
    case "$cur_" in 
        *:*)
            case "$COMP_WORDBREAKS" in 
                *:*)
                    : great
                ;;
                *)
                    pfx="${cur_%%:*}:"
                ;;
            esac;
            cur_="${cur_#*:}";
            lhs=0
        ;;
        +*)
            pfx="+";
            cur_="${cur_#+}"
        ;;
    esac;
    case "$cmd" in 
        fetch)
            if [ $lhs = 1 ]; then
                __gitcomp_nl "$(__git_refs2 "$remote")" "$pfx" "$cur_";
            else
                __gitcomp_nl "$(__git_refs)" "$pfx" "$cur_";
            fi
        ;;
        pull | remote)
            if [ $lhs = 1 ]; then
                __gitcomp_nl "$(__git_refs "$remote")" "$pfx" "$cur_";
            else
                __gitcomp_nl "$(__git_refs)" "$pfx" "$cur_";
            fi
        ;;
        push)
            if [ $lhs = 1 ]; then
                __gitcomp_nl "$(__git_refs)" "$pfx" "$cur_";
            else
                __gitcomp_nl "$(__git_refs "$remote")" "$pfx" "$cur_";
            fi
        ;;
    esac
}

__git_complete_revlist () 
{ 
    __git_complete_revlist_file
}

__git_complete_revlist_file () 
{ 
    local pfx ls ref cur_="$cur";
    case "$cur_" in 
        *..?*:*)
            return
        ;;
        ?*:*)
            ref="${cur_%%:*}";
            cur_="${cur_#*:}";
            case "$cur_" in 
                ?*/*)
                    pfx="${cur_%/*}";
                    cur_="${cur_##*/}";
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
            __gitcomp_nl "$(git --git-dir="$(__gitdir)" ls-tree "$ls" 2>/dev/null 				| sed '/^100... blob /{
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
				       s/^.*	//')" "$pfx" "$cur_" ""
        ;;
        *...*)
            pfx="${cur_%...*}...";
            cur_="${cur_#*...}";
            __gitcomp_nl "$(__git_refs)" "$pfx" "$cur_"
        ;;
        *..*)
            pfx="${cur_%..*}..";
            cur_="${cur_#*..}";
            __gitcomp_nl "$(__git_refs)" "$pfx" "$cur_"
        ;;
        *)
            __gitcomp_nl "$(__git_refs)"
        ;;
    esac
}

__git_complete_strategy () 
{ 
    __git_compute_merge_strategies;
    case "$prev" in 
        -s | --strategy)
            __gitcomp "$__git_merge_strategies";
            return 0
        ;;
    esac;
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
    test -n "$__git_all_commands" || __git_all_commands=$(__git_list_all_commands)
}

__git_compute_merge_strategies () 
{ 
    test -n "$__git_merge_strategies" || __git_merge_strategies=$(__git_list_merge_strategies)
}

__git_compute_porcelain_commands () 
{ 
    __git_compute_all_commands;
    test -n "$__git_porcelain_commands" || __git_porcelain_commands=$(__git_list_porcelain_commands)
}

__git_config_get_set_variables () 
{ 
    local prevword word config_file= c=$cword;
    while [ $c -gt 1 ]; do
        word="${words[c]}";
        case "$word" in 
            --system | --global | --local | --file=*)
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
    git --git-dir="$(__gitdir)" config $config_file --list 2> /dev/null | while read -r line; do
        case "$line" in 
            *.*=*)
                echo "${line/=*/}"
            ;;
        esac;
    done
}

__git_count_arguments () 
{ 
    local word i c=0;
    for ((i=1; i < ${#words[@]}; i++))
    do
        word="${words[i]}";
        case "$word" in 
            --)
                ((c = 0))
            ;;
            "$1")
                ((c = 0))
            ;;
            ?*)
                ((c++))
            ;;
        esac;
    done;
    printf "%d" $c
}

__git_diff_index_files () 
{ 
    local dir="$(__gitdir)" root="${2-.}";
    if [ -d "$dir" ]; then
        __git_diff_index_helper "$root" "$1" | __git_index_file_list_filter | sort | uniq;
    fi
}

__git_diff_index_helper () 
{ 
    ( test -n "${CDPATH+set}" && unset CDPATH;
    cd "$1" && git diff-index --name-only --relative "$2" ) 2> /dev/null
}

__git_find_on_cmdline () 
{ 
    local word subcommand c=1;
    while [ $c -lt $cword ]; do
        word="${words[c]}";
        for subcommand in $1;
        do
            if [ "$subcommand" = "$word" ]; then
                echo "$subcommand";
                return;
            fi;
        done;
        ((c++));
    done
}

__git_func_wrap () 
{ 
    local cur words cword prev;
    _get_comp_words_by_ref -n =: cur words cword prev;
    $1
}

__git_has_doubledash () 
{ 
    local c=1;
    while [ $c -lt $cword ]; do
        if [ "--" = "${words[c]}" ]; then
            return 0;
        fi;
        ((c++));
    done;
    return 1
}

__git_heads () 
{ 
    local dir="$(__gitdir)";
    if [ -d "$dir" ]; then
        git --git-dir="$dir" for-each-ref --format='%(refname:short)' refs/heads;
        return;
    fi
}

__git_index_file_list_filter () 
{ 
    __git_index_file_list_filter_bash
}

__git_index_file_list_filter_bash () 
{ 
    local path;
    while read -r path; do
        case "$path" in 
            ?*/*)
                echo "${path%%/*}"
            ;;
            *)
                echo "$path"
            ;;
        esac;
    done
}

__git_index_file_list_filter_compat () 
{ 
    local path;
    while read -r path; do
        case "$path" in 
            ?*/*)
                echo "${path%%/*}/"
            ;;
            *)
                echo "$path"
            ;;
        esac;
    done
}

__git_index_files () 
{ 
    local dir="$(__gitdir)" root="${2-.}";
    if [ -d "$dir" ]; then
        __git_ls_files_helper "$root" "$1" | __git_index_file_list_filter | sort | uniq;
    fi
}

__git_list_all_commands () 
{ 
    local i IFS=" "'
';
    for i in $(__git_commands);
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
    for i in $__git_all_commands;
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
            check-ignore)
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
            credential-cache)
                : credentials helper
            ;;
            credential-store)
                : credentials helper
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

__git_ls_files_helper () 
{ 
    ( test -n "${CDPATH+set}" && unset CDPATH;
    cd "$1" && git ls-files --exclude-standard $2 ) 2> /dev/null
}

__git_main () 
{ 
    local i c=1 command __git_dir;
    while [ $c -lt $cword ]; do
        i="${words[c]}";
        case "$i" in 
            --git-dir=*)
                __git_dir="${i#--git-dir=}"
            ;;
            --bare)
                __git_dir="."
            ;;
            --help)
                command="help";
                break
            ;;
            -c)
                c=$((++c))
            ;;
            -*)

            ;;
            *)
                command="$i";
                break
            ;;
        esac;
        ((c++));
    done;
    if [ -z "$command" ]; then
        case "$cur" in 
            --*)
                __gitcomp "
			--paginate
			--no-pager
			--git-dir=
			--bare
			--version
			--exec-path
			--exec-path=
			--html-path
			--info-path
			--work-tree=
			--namespace=
			--no-replace-objects
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
    declare -f $completion_func > /dev/null && $completion_func && return;
    local expansion=$(__git_aliased_command "$command");
    if [ -n "$expansion" ]; then
        completion_func="_git_${expansion//-/_}";
        declare -f $completion_func > /dev/null && $completion_func;
    fi
}

__git_match_ctag () 
{ 
    awk "/^${1////\\/}/ { print \$1 }" "$2"
}

__git_pretty_aliases () 
{ 
    local i IFS='
';
    for i in $(git --git-dir="$(__gitdir)" config --get-regexp "pretty\..*" 2>/dev/null);
    do
        case "$i" in 
            pretty.*)
                i="${i#pretty.}";
                echo "${i/ */}"
            ;;
        esac;
    done
}

__git_reassemble_comp_words_by_ref () 
{ 
    local exclude i j first;
    exclude="${1//[^$COMP_WORDBREAKS]}";
    cword_=$COMP_CWORD;
    if [ -z "$exclude" ]; then
        words_=("${COMP_WORDS[@]}");
        return;
    fi;
    for ((i=0, j=0; i < ${#COMP_WORDS[@]}; i++, j++))
    do
        first=t;
        while [ $i -gt 0 ] && [ -n "${COMP_WORDS[$i]}" ] && [ "${COMP_WORDS[$i]//[^$exclude]}" = "${COMP_WORDS[$i]}" ]; do
            if [ $j -ge 2 ] && [ -n "$first" ]; then
                ((j--));
            fi;
            first=;
            words_[$j]=${words_[j]}${COMP_WORDS[i]};
            if [ $i = $COMP_CWORD ]; then
                cword_=$j;
            fi;
            if (($i < ${#COMP_WORDS[@]} - 1)); then
                ((i++));
            else
                return;
            fi;
        done;
        words_[$j]=${words_[j]}${COMP_WORDS[i]};
        if [ $i = $COMP_CWORD ]; then
            cword_=$j;
        fi;
    done
}

__git_refs () 
{ 
    local i hash dir="$(__gitdir "${1-}")" track="${2-}";
    local format refs;
    if [ -d "$dir" ]; then
        case "$cur" in 
            refs | refs/*)
                format="refname";
                refs="${cur%/*}";
                track=""
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
        if [ -n "$track" ]; then
            local ref entry;
            git --git-dir="$dir" for-each-ref --shell --format="ref=%(refname:short)" "refs/remotes/" | while read -r entry; do
                eval "$entry";
                ref="${ref#*/}";
                if [[ "$ref" == "$cur"* ]]; then
                    echo "$ref";
                fi;
            done | sort | uniq -u;
        fi;
        return;
    fi;
    case "$cur" in 
        refs | refs/*)
            git ls-remote "$dir" "$cur*" 2> /dev/null | while read -r hash i; do
                case "$i" in 
                    *^{})

                    ;;
                    *)
                        echo "$i"
                    ;;
                esac;
            done
        ;;
        *)
            git ls-remote "$dir" HEAD ORIG_HEAD 'refs/tags/*' 'refs/heads/*' 'refs/remotes/*' 2> /dev/null | while read -r hash i; do
                case "$i" in 
                    *^{})

                    ;;
                    refs/*)
                        echo "${i#refs/*/}"
                    ;;
                    *)
                        echo "$i"
                    ;;
                esac;
            done
        ;;
    esac
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
    local i hash;
    git ls-remote "$1" 'refs/heads/*' 2> /dev/null | while read -r hash i; do
        echo "$i:refs/remotes/$1/${i#refs/heads/}";
    done
}

__git_remotes () 
{ 
    local i IFS='
' d="$(__gitdir)";
    test -d "$d/remotes" && ls -1 "$d/remotes";
    for i in $(git --git-dir="$d" config --get-regexp 'remote\..*\.url' 2>/dev/null);
    do
        i="${i#remote.}";
        echo "${i/.url*/}";
    done
}

__git_tags () 
{ 
    local dir="$(__gitdir)";
    if [ -d "$dir" ]; then
        git --git-dir="$dir" for-each-ref --format='%(refname:short)' refs/tags;
        return;
    fi
}

__git_wrap__git_main () 
{ 
    __git_func_wrap __git_main
}

__git_wrap__gitk_main () 
{ 
    __git_func_wrap __gitk_main
}

__gitcomp () 
{ 
    local cur_="${3-$cur}";
    case "$cur_" in 
        --*=)

        ;;
        *)
            local c i=0 IFS=' 	
';
            for c in $1;
            do
                c="$c${4-}";
                if [[ $c == "$cur_"* ]]; then
                    case $c in 
                        --*=* | *.)

                        ;;
                        *)
                            c="$c "
                        ;;
                    esac;
                    COMPREPLY[i++]="${2-}$c";
                fi;
            done
        ;;
    esac
}

__gitcomp_file () 
{ 
    local IFS='
';
    COMPREPLY=($(compgen -P "${2-}" -W "$1" -- "${3-$cur}"));
    compopt -o filenames 2> /dev/null
}

__gitcomp_nl () 
{ 
    local IFS='
';
    __gitcompadd "$1" "${2-}" "${3-$cur}" "${4- }"
}

__gitcompadd () 
{ 
    local i=0;
    for x in $1;
    do
        if [[ "$x" == "$3"* ]]; then
            COMPREPLY[i++]="$2$x$4";
        fi;
    done
}

__gitdir () 
{ 
    if [ -z "${1-}" ]; then
        if [ -n "${__git_dir-}" ]; then
            echo "$__git_dir";
        else
            if [ -n "${GIT_DIR-}" ]; then
                test -d "${GIT_DIR-}" || return 1;
                echo "$GIT_DIR";
            else
                if [ -d .git ]; then
                    echo .git;
                else
                    git rev-parse --git-dir 2> /dev/null;
                fi;
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

__gitk_main () 
{ 
    __git_has_doubledash && return;
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

__local_repos () 
{ 
    eval $(grep '^CVMFS_REPOSITORIES=' /etc/cvmfs/default.local);
    __local_repos=$(echo $CVMFS_REPOSITORIES | sed 's/,/ /g' );
    unset CVMFS_REPOSITORIES;
    echo $__local_repos
}

__ltrim_colon_completions () 
{ 
    if [[ "$1" == *:* && "$COMP_WORDBREAKS" == *:* ]]; then
        local colon_word=${1%"${1##*:}"};
        local i=${#COMPREPLY[*]};
        while [[ $((--i)) -ge 0 ]]; do
            COMPREPLY[$i]=${COMPREPLY[$i]#"$colon_word"};
        done;
    fi
}

__my_reassemble_comp_words_by_ref () 
{ 
    local exclude i j first;
    exclude="${1//[^$COMP_WORDBREAKS]}";
    cword_=$COMP_CWORD;
    if [ -z "$exclude" ]; then
        words_=("${COMP_WORDS[@]}");
        return;
    fi;
    for ((i=0, j=0; i < ${#COMP_WORDS[@]}; i++, j++))
    do
        first=t;
        while [ $i -gt 0 ] && [ -n "${COMP_WORDS[$i]}" ] && [ "${COMP_WORDS[$i]//[^$exclude]}" = "${COMP_WORDS[$i]}" ]; do
            if [ $j -ge 2 ] && [ -n "$first" ]; then
                ((j--));
            fi;
            first=;
            words_[$j]=${words_[j]}${COMP_WORDS[i]};
            if [ $i = $COMP_CWORD ]; then
                cword_=$j;
            fi;
            if (($i < ${#COMP_WORDS[@]} - 1)); then
                ((i++));
            else
                return;
            fi;
        done;
        words_[$j]=${words_[j]}${COMP_WORDS[i]};
        if [ $i = $COMP_CWORD ]; then
            cword_=$j;
        fi;
    done
}

__parse_options () 
{ 
    local option option2 i IFS=' 	
,/|';
    option=;
    for i in $1;
    do
        case $i in 
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

__perf_main () 
{ 
    local cmd;
    cmd=${words[0]};
    COMPREPLY=();
    __perf_prev_skip_opts;
    if [ -z $prev_skip_opts ]; then
        if [[ $cur == --* ]]; then
            cmds=$($cmd --list-opts);
        else
            cmds=$($cmd --list-cmds);
        fi;
        __perfcomp "$cmds" "$cur";
    else
        if [[ $prev == @("-e"|"--event") && $prev_skip_opts == @(record|stat|top) ]]; then
            local cur1=${COMP_WORDS[COMP_CWORD]};
            local raw_evts=$($cmd list --raw-dump);
            local arr s tmp result;
            if [[ "$cur1" == */* && ${cur1#*/} =~ ^[A-Z] ]]; then
                OLD_IFS="$IFS";
                IFS=" ";
                arr=($raw_evts);
                IFS="$OLD_IFS";
                for s in ${arr[@]};
                do
                    if [[ "$s" == *cpu/* ]]; then
                        tmp=${s#*cpu/};
                        result=$result" ""cpu/"${tmp^^};
                    else
                        result=$result" "$s;
                    fi;
                done;
                evts=${result}" "$(ls /sys/bus/event_source/devices/cpu/events);
            else
                evts=${raw_evts}" "$(ls /sys/bus/event_source/devices/cpu/events);
            fi;
            if [[ "$cur1" == , ]]; then
                __perfcomp_colon "$evts" "";
            else
                __perfcomp_colon "$evts" "$cur1";
            fi;
        else
            if [[ $prev_skip_opts == @(kvm|kmem|mem|lock|sched|
			|data|help|script|test|timechart|trace) ]]; then
                subcmds=$($cmd $prev_skip_opts --list-cmds);
                __perfcomp_colon "$subcmds" "$cur";
            fi;
            if [[ $cur == --* ]]; then
                subcmd=$prev_skip_opts;
                __perf_prev_skip_opts $subcmd;
                subcmd=$subcmd" "$prev_skip_opts;
                opts=$($cmd $subcmd --list-opts);
                __perfcomp "$opts" "$cur";
            fi;
        fi;
    fi
}

__perf_prev_skip_opts () 
{ 
    local i cmd_ cmds_;
    let i=cword-1;
    cmds_=$($cmd $1 --list-cmds);
    prev_skip_opts=();
    while [ $i -ge 0 ]; do
        if [[ ${words[i]} == $1 ]]; then
            return;
        fi;
        for cmd_ in $cmds_;
        do
            if [[ ${words[i]} == $cmd_ ]]; then
                prev_skip_opts=${words[i]};
                return;
            fi;
        done;
        ((i--));
    done
}

__perfcomp () 
{ 
    COMPREPLY=($( compgen -W "$1" -- "$2" ))
}

__perfcomp_colon () 
{ 
    __perfcomp "$1" "$2";
    if [ $preload__ltrim_colon_completions = "true" ]; then
        __ltrim_colon_completions $cur;
    else
        __perf__ltrim_colon_completions $cur;
    fi
}

__reassemble_comp_words_by_ref () 
{ 
    local exclude i j line ref;
    if [[ -n $1 ]]; then
        exclude="${1//[^$COMP_WORDBREAKS]}";
    fi;
    eval $3=$COMP_CWORD;
    if [[ -n $exclude ]]; then
        line=$COMP_LINE;
        for ((i=0, j=0; i < ${#COMP_WORDS[@]}; i++, j++))
        do
            while [[ $i -gt 0 && ${COMP_WORDS[$i]} == +([$exclude]) ]]; do
                [[ $line != [' 	']* ]] && (( j >= 2 )) && ((j--));
                ref="$2[$j]";
                eval $2[$j]=\${!ref}\${COMP_WORDS[i]};
                [[ $i == $COMP_CWORD ]] && eval $3=$j;
                line=${line#*"${COMP_WORDS[$i]}"};
                [[ $line == [' 	']* ]] && ((j++));
                (( $i < ${#COMP_WORDS[@]} - 1)) && ((i++)) || break 2;
            done;
            ref="$2[$j]";
            eval $2[$j]=\${!ref}\${COMP_WORDS[i]};
            line=${line#*"${COMP_WORDS[i]}"};
            [[ $i == $COMP_CWORD ]] && eval $3=$j;
        done;
        [[ $i == $COMP_CWORD ]] && eval $3=$j;
    else
        eval $2=\( \"\${COMP_WORDS[@]}\" \);
    fi
}

__show_command_options () 
{ 
    local command="$1";
    local cur="$2";
    local cmds=($(trace-cmd --help 2>/dev/null | 		    grep " - " | sed 's/^ *//; s/ -.*//'));
    for cmd in ${cmds[@]};
    do
        if [ $cmd == "$command" ]; then
            local opts=$(trace-cmd $cmd -h 2>/dev/null|grep "^ *-" | 				 sed -e 's/ *\(-[^ ]*\).*/\1/');
            COMPREPLY=($(compgen -f -W "${opts}" -- "$cur"));
            return 0;
        fi;
    done;
    COMPREPLY=($(compgen -f -- "$cur"))
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

__trace_cmd_extract_complete () 
{ 
    local prev=$1;
    local cur=$2;
    shift 2;
    local words=("$@");
    case "$prev" in 
        extract)
            cmd_options "$prev" "$cur" -f
        ;;
        -B)
            show_instances "$cur"
        ;;
        *)
            COMPREPLY=($(compgen -f -- "$cur"))
        ;;
    esac
}

__trace_cmd_list_complete () 
{ 
    local prev=$1;
    local cur=$2;
    shift 2;
    local words=("$@");
    case "$prev" in 
        list)
            local cmds=$(trace-cmd list -h |egrep "^ {10}-" | 				 sed -e 's/.*\(-.\).*/\1/');
            COMPREPLY=($(compgen -W "${cmds}" -- "${cur}"))
        ;;
        *)
            size=${#words[@]};
            if [ $size -gt 3 ]; then
                if [ "$cur" == "-" ]; then
                    let size=$size-3;
                else
                    let size=$size-2;
                fi;
                local w="${words[$size]}";
                if [ "$w" == "-e" ]; then
                    local cmds=$(trace-cmd list -h |egrep "^ {12}-" | 				 sed -e 's/.*\(-.\).*/\1/');
                    COMPREPLY=($(compgen -W "${cmds}" -- "${cur}"));
                fi;
            fi
        ;;
    esac
}

__trace_cmd_record_complete () 
{ 
    local prev=$1;
    local cur=$2;
    shift 2;
    local words=("$@");
    case "$prev" in 
        -e)
            local events=$(trace-cmd list -e);
            local prefix=${cur%%:*};
            COMPREPLY=($(compgen -W "${events}" -- "${cur}"));
            if [[ -n "$prefix" ]]; then
                local reply_n=${#COMPREPLY[*]};
                for ((i = 0; i < $reply_n; i++))
                do
                    COMPREPLY[$i]=${COMPREPLY[i]##${prefix}:};
                done;
            fi
        ;;
        -p)
            local plugins=$(trace-cmd list -p);
            COMPREPLY=($(compgen -W "${plugins}" -- "${cur}" ))
        ;;
        -l | -n | -g)
            local funcs=$(trace-cmd list -f | sed 's/ .*//');
            COMPREPLY=($(compgen -W "${funcs}" -- "${cur}"))
        ;;
        -B)
            show_instances "$cur"
        ;;
        *)
            cmd_options record "$cur" -f
        ;;
    esac
}

__trace_cmd_report_complete () 
{ 
    local prev=$1;
    local cur=$2;
    shift 2;
    local words=("$@");
    case "$prev" in 
        -O)
            plugin_options "$cur"
        ;;
        *)
            cmd_options report "$cur" -f
        ;;
    esac
}

__trace_cmd_show_complete () 
{ 
    local prev=$1;
    local cur=$2;
    shift 2;
    local words=("$@");
    case "$prev" in 
        -B)
            show_instances "$cur"
        ;;
        *)
            cmd_options show "$cur"
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
        COMPREPLY=($( compgen -g -- "$1" ));
    else
        local IFS='
 ';
        COMPREPLY=($( compgen -W             "$( id -Gn 2>/dev/null || groups 2>/dev/null )" -- "$1" ));
    fi
}

_allowed_users () 
{ 
    if _complete_as_root; then
        local IFS='
';
        COMPREPLY=($( compgen -u -- "${1:-$cur}" ));
    else
        local IFS='
 ';
        COMPREPLY=($( compgen -W             "$( id -un 2>/dev/null || whoami 2>/dev/null )" -- "${1:-$cur}" ));
    fi
}

_available_fcoe_interfaces () 
{ 
    if [ "${1:-}" = -a ]; then
        COMPREPLY=($( for f in /sys/class/net/* ; do if grep -q up $f/operstate ; then echo ${f##*/} ; fi ; done 2>/dev/null ));
    else
        COMPREPLY=($( for f in /sys/class/net/* ; do  echo ${f##*/} ; done 2>/dev/null ));
    fi;
    COMPREPLY=($( compgen -W '${COMPREPLY[@]/%[[:punct:]]/}' -- "$cur" ))
}

_available_interfaces () 
{ 
    local cmd PATH=$PATH:/sbin;
    if [[ ${1:-} == -w ]]; then
        cmd="iwconfig";
    else
        if [[ ${1:-} == -a ]]; then
            cmd="{ ifconfig || ip link show up; }";
        else
            cmd="{ ifconfig -a || ip link show; }";
        fi;
    fi;
    COMPREPLY=($( eval $cmd 2>/dev/null | awk         '/^[^ \t]/ { if ($1 ~ /^[0-9]+:/) { print $2 } else { print $1 } }' ));
    COMPREPLY=($( compgen -W '${COMPREPLY[@]/%[[:punct:]]/}' -- "$cur" ))
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

_beesu () 
{ 
    local curw;
    COMPREPLY=();
    curw=${COMP_WORDS[COMP_CWORD]};
    COMPREPLY=($(compgen -c -f -b -- $curw));
    return 0
}

_cd () 
{ 
    local cur prev words cword;
    _init_completion || return;
    local IFS='
' i j k;
    compopt -o filenames;
    if [[ -z "${CDPATH:-}" || "$cur" == ?(.)?(.)/* ]]; then
        _filedir -d;
        return 0;
    fi;
    local -r mark_dirs=$(_rl_enabled mark-directories && echo y);
    local -r mark_symdirs=$(_rl_enabled mark-symlinked-directories && echo y);
    for i in ${CDPATH//:/'
'};
    do
        k="${#COMPREPLY[@]}";
        for j in $( compgen -d $i/$cur );
        do
            if [[ ( -n $mark_symdirs && -h $j || -n $mark_dirs && ! -h $j ) && ! -d ${j#$i/} ]]; then
                j+="/";
            fi;
            COMPREPLY[k++]=${j#$i/};
        done;
    done;
    _filedir -d;
    if [[ ${#COMPREPLY[@]} -eq 1 ]]; then
        i=${COMPREPLY[0]};
        if [[ "$i" == "$cur" && $i != "*/" ]]; then
            COMPREPLY[0]="${i}/";
        fi;
    fi;
    return 0
}

_cd_devices () 
{ 
    COMPREPLY+=($( compgen -f -d -X "!*/?([amrs])cd*" -- "${cur:-/dev/}" ))
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
    for ((i=1; i <= COMP_CWORD; i++ ))
    do
        if [[ "${COMP_WORDS[i]}" != -* ]]; then
            offset=$i;
            break;
        fi;
    done;
    _command_offset $offset
}

_command_offset () 
{ 
    local word_offset=$1 i j;
    for ((i=0; i < $word_offset; i++ ))
    do
        for ((j=0; j <= ${#COMP_LINE}; j++ ))
        do
            [[ "$COMP_LINE" == "${COMP_WORDS[i]}"* ]] && break;
            COMP_LINE=${COMP_LINE:1};
            ((COMP_POINT--));
        done;
        COMP_LINE=${COMP_LINE#"${COMP_WORDS[i]}"};
        ((COMP_POINT-=${#COMP_WORDS[i]}));
    done;
    for ((i=0; i <= COMP_CWORD - $word_offset; i++ ))
    do
        COMP_WORDS[i]=${COMP_WORDS[i+$word_offset]};
    done;
    for ((i; i <= COMP_CWORD; i++ ))
    do
        unset COMP_WORDS[i];
    done;
    ((COMP_CWORD -= $word_offset));
    COMPREPLY=();
    local cur;
    _get_comp_words_by_ref cur;
    if [[ $COMP_CWORD -eq 0 ]]; then
        local IFS='
';
        compopt -o filenames;
        COMPREPLY=($( compgen -d -c -- "$cur" ));
    else
        local cmd=${COMP_WORDS[0]} compcmd=${COMP_WORDS[0]};
        local cspec=$( complete -p $cmd 2>/dev/null );
        if [[ ! -n $cspec && $cmd == */* ]]; then
            cspec=$( complete -p ${cmd##*/} 2>/dev/null );
            [[ -n $cspec ]] && compcmd=${cmd##*/};
        fi;
        if [[ ! -n $cspec ]]; then
            compcmd=${cmd##*/};
            _completion_loader $compcmd;
            cspec=$( complete -p $compcmd 2>/dev/null );
        fi;
        if [[ -n $cspec ]]; then
            if [[ ${cspec#* -F } != $cspec ]]; then
                local func=${cspec#*-F };
                func=${func%% *};
                if [[ ${#COMP_WORDS[@]} -ge 2 ]]; then
                    $func $cmd "${COMP_WORDS[${#COMP_WORDS[@]}-1]}" "${COMP_WORDS[${#COMP_WORDS[@]}-2]}";
                else
                    $func $cmd "${COMP_WORDS[${#COMP_WORDS[@]}-1]}";
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
                COMPREPLY=($( eval compgen "$cspec" -- '$cur' ));
            fi;
        else
            if [[ ${#COMPREPLY[@]} -eq 0 ]]; then
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
    local compfile=./completions;
    [[ $BASH_SOURCE == */* ]] && compfile="${BASH_SOURCE%/*}/completions";
    compfile+="/${1##*/}";
    [[ -f "$compfile" ]] && . "$compfile" &>/dev/null && return 124;
    complete -F _minimal "$1" && return 124
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
        COMPREPLY=($( compgen -W "$( sed -ne 's|^iface \([^ ]\{1,\}\).*$|\1|p'            /etc/network/interfaces )" -- "$cur" ));
    else
        if [[ -f /etc/SuSE-release ]]; then
            COMPREPLY=($( compgen -W "$( printf '%s\n'             /etc/sysconfig/network/ifcfg-* |             sed -ne 's|.*ifcfg-\(.*\)|\1|p' )" -- "$cur" ));
        else
            if [[ -f /etc/pld-release ]]; then
                COMPREPLY=($( compgen -W "$( command ls -B             /etc/sysconfig/interfaces |             sed -ne 's|.*ifcfg-\(.*\)|\1|p' )" -- "$cur" ));
            else
                COMPREPLY=($( compgen -W "$( printf '%s\n'             /etc/sysconfig/network-scripts/ifcfg-* |             sed -ne 's|.*ifcfg-\(.*\)|\1|p' )" -- "$cur" ));
            fi;
        fi;
    fi
}

_count_args () 
{ 
    local i cword words;
    __reassemble_comp_words_by_ref "$1" words cword;
    args=1;
    for i in "${words[@]:1:cword-1}";
    do
        [[ "$i" != -* ]] && args=$(($args+1));
    done
}

_cr_checksum_type () 
{ 
    COMPREPLY=($( compgen -W 'md5 sha1 sha256 sha512' -- "$1" ))
}

_cr_compress_type () 
{ 
    COMPREPLY=($( compgen -W "$( ${1:-createrepo} --compress-type=FOO / 2>&1         | sed -ne 's/,/ /g' -ne 's/.*[Cc]ompression.*://p' )" -- "$2" ))
}

_cr_createrepo () 
{ 
    COMPREPLY=();
    case $3 in 
        --version | -h | --help | -u | --baseurl | --distro | --content | --repo | --revision | -x | --excludes | --changelog-limit | --max-delta-rpm-size)
            return 0
        ;;
        --basedir | -c | --cachedir | --update-md-path | -o | --outputdir | --oldpackagedirs)
            COMPREPLY=($( compgen -d -- "$2" ));
            return 0
        ;;
        -g | --groupfile)
            COMPREPLY=($( compgen -f -o plusdirs -X '!*.xml' -- "$2" ));
            return 0
        ;;
        -s | --checksum)
            _cr_checksum_type "$2";
            return 0
        ;;
        -i | --pkglist | --read-pkgs-list)
            COMPREPLY=($( compgen -f -o plusdirs -- "$2" ));
            return 0
        ;;
        -n | --includepkg)
            COMPREPLY=($( compgen -f -o plusdirs -X '!*.rpm' -- "$2" ));
            return 0
        ;;
        --retain-old-md)
            COMPREPLY=($( compgen -W '0 1 2 3 4 5 6 7 8 9' -- "$2" ));
            return 0
        ;;
        --num-deltas)
            COMPREPLY=($( compgen -W '1 2 3 4 5 6 7 8 9' -- "$2" ));
            return 0
        ;;
        --workers)
            local min=2 max=$( getconf _NPROCESSORS_ONLN 2>/dev/null );
            [[ -z $max || $max -lt $min ]] && max=$min;
            COMPREPLY=($( compgen -W "{1..$max}" -- "$2" ));
            return 0
        ;;
        --compress-type)
            _cr_compress_type "$1" "$2";
            return 0
        ;;
    esac;
    if [[ $2 == -* ]]; then
        COMPREPLY=($( compgen -W '--version --help --quiet --verbose --profile
            --excludes --basedir --baseurl --groupfile --checksum --pretty
            --cachedir --checkts --no-database --update --update-md-path
            --skip-stat --split --pkglist --includepkg --outputdir
            --skip-symlinks --changelog-limit --unique-md-filenames
            --simple-md-filenames --retain-old-md --distro --content --repo
            --revision --deltas --oldpackagedirs --num-deltas --read-pkgs-list
            --max-delta-rpm-size --workers --compress-type' -- "$2" ));
    else
        COMPREPLY=($( compgen -d -- "$2" ));
    fi
}

_cr_mergerepo () 
{ 
    COMPREPLY=();
    case $3 in 
        --version | -h | --help | -a | --archlist)
            return 0
        ;;
        -r | --repo | -o | --outputdir)
            COMPREPLY=($( compgen -d -- "$2" ));
            return 0
        ;;
        --compress-type)
            _cr_compress_type "" "$2";
            return 0
        ;;
    esac;
    COMPREPLY=($( compgen -W '--version --help --repo --archlist --no-database
        --outputdir --nogroups --noupdateinfo --compress-type' -- "$2" ))
}

_cr_modifyrepo () 
{ 
    COMPREPLY=();
    case $3 in 
        --version | -h | --help | --mdtype)
            return 0
        ;;
        --compress-type)
            _cr_compress_type "" "$2";
            return 0
        ;;
        -s | --checksum)
            _cr_checksum_type "$2";
            return 0
        ;;
    esac;
    if [[ $2 == -* ]]; then
        COMPREPLY=($( compgen -W '--version --help --mdtype --remove
            --compress --no-compress --compress-type --checksum
            --unique-md-filenames --simple-md-filenames' -- "$2" ));
        return 0;
    fi;
    local i argnum=1;
    for ((i=1; i < ${#COMP_WORDS[@]}-1; i++ ))
    do
        if [[ ${COMP_WORDS[i]} != -* && ${COMP_WORDS[i-1]} != @(=|--@(md|compress-)type) ]]; then
            argnum=$(( argnum+1 ));
        fi;
    done;
    case $argnum in 
        1)
            COMPREPLY=($( compgen -f -o plusdirs -- "$2" ));
            return 0
        ;;
        2)
            COMPREPLY=($( compgen -d -- "$2" ));
            return 0
        ;;
    esac
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
    COMPREPLY+=($( compgen -f -d -X "!*/?(r)dvd*" -- "${cur:-/dev/}" ))
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
    if [[ "$cur" == \~*/* ]]; then
        eval cur=$cur 2> /dev/null;
    else
        if [[ "$cur" == \~* ]]; then
            cur=${cur#\~};
            COMPREPLY=($( compgen -P '~' -u "$cur" ));
            [[ ${#COMPREPLY[@]} -eq 1 ]] && eval COMPREPLY[0]=${COMPREPLY[0]};
            return ${#COMPREPLY[@]};
        fi;
    fi
}

_extensions () 
{ 
    if [[ -z "${SPACK_EXTENSIONS:-}" ]]; then
        SPACK_EXTENSIONS="$(spack extensions)";
    fi;
    SPACK_COMPREPLY="$SPACK_EXTENSIONS"
}

_fcoeadm_options () 
{ 
    local cur prev prev_prev opts;
    COMPREPLY=();
    cur="${COMP_WORDS[COMP_CWORD]}";
    prev="${COMP_WORDS[COMP_CWORD-1]}";
    opts="-m --mode -c --create -d --destroy -r --reset -i --interface -t --target -l --lun -s --stats -S --Scan -h --help -v --version";
    case "${prev}" in 
        -c | --create | -d | --destroy | -r | --reset | -s | --stats | -S | --Scan | -i | --interface | -t | --target | -l | --lun)
            _available_fcoe_interfaces -a;
            return 0
        ;;
        -m | --mode)
            COMPREPLY=(fabric vn2vn);
            COMPREPLY=($( compgen -W '${COMPREPLY[@]/%[[:punct:]]/}' -- "$cur" ));
            return 0
        ;;
    esac;
    case "${cur}" in 
        *)
            COMPREPLY=($(compgen -W "${opts}" -- ${cur}));
            return 0
        ;;
    esac;
    return 0
}

_fcoemon_options () 
{ 
    local cur prev prev_prev opts;
    COMPREPLY=();
    cur="${COMP_WORDS[COMP_CWORD]}";
    prev="${COMP_WORDS[COMP_CWORD-1]}";
    opts="-f --foreground -d --debug -s --syslog -v --version -h --help";
    case "${cur}" in 
        *)
            COMPREPLY=($(compgen -W "${opts}" -- ${cur}));
            return 0
        ;;
    esac;
    return 0
}

_filedir () 
{ 
    local i IFS='
' xspec;
    _tilde "$cur" || return 0;
    local -a toks;
    local quoted x tmp;
    _quote_readline_by_ref "$cur" quoted;
    x=$( compgen -d -- "$quoted" ) && while read -r tmp; do
        toks+=("$tmp");
    done <<< "$x";
    if [[ "$1" != -d ]]; then
        xspec=${1:+"!*.@($1|${1^^})"};
        x=$( compgen -f -X "$xspec" -- $quoted ) && while read -r tmp; do
            toks+=("$tmp");
        done <<< "$x";
    fi;
    [[ -n ${COMP_FILEDIR_FALLBACK:-} && -n "$1" && "$1" != -d && ${#toks[@]} -lt 1 ]] && x=$( compgen -f -- $quoted ) && while read -r tmp; do
        toks+=("$tmp");
    done <<< "$x";
    if [[ ${#toks[@]} -ne 0 ]]; then
        compopt -o filenames 2> /dev/null;
        COMPREPLY+=("${toks[@]}");
    fi
}

_filedir_xspec () 
{ 
    local cur prev words cword;
    _init_completion || return;
    _tilde "$cur" || return 0;
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
        eval compgen -f -X "!$xspec" -- "\$(quote_readline "\$cur")" | {
        while read -r tmp; do
            [[ -n $tmp ]] && printf '%s\n' $tmp
        done
        }
        ));
    if [[ ${#toks[@]} -ne 0 ]]; then
        compopt -o filenames;
        COMPREPLY=("${toks[@]}");
    fi
}

_fstypes () 
{ 
    local fss;
    if [[ -e /proc/filesystems ]]; then
        fss="$( cut -d'	' -f2 /proc/filesystems )
             $( awk '! /\*/ { print $NF }' /etc/filesystems 2>/dev/null )";
    else
        fss="$( awk '/^[ \t]*[^#]/ { print $3 }' /etc/fstab 2>/dev/null )
             $( awk '/^[ \t]*[^#]/ { print $3 }' /etc/mnttab 2>/dev/null )
             $( awk '/^[ \t]*[^#]/ { print $4 }' /etc/vfstab 2>/dev/null )
             $( awk '{ print $1 }' /etc/dfs/fstypes 2>/dev/null )
             $( [[ -d /etc/fs ]] && command ls /etc/fs )";
    fi;
    [[ -n $fss ]] && COMPREPLY+=($( compgen -W "$fss" -- "$cur" ))
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
                echo "bash: $FUNCNAME(): \`${!OPTIND}': unknown argument" 1>&2;
                return 1
            ;;
        esac;
        let "OPTIND += 1";
    done;
    __get_cword_at_cursor_by_ref "$exclude" words cword cur;
    [[ -n $vcur ]] && { 
        upvars+=("$vcur");
        upargs+=(-v $vcur "$cur")
    };
    [[ -n $vcword ]] && { 
        upvars+=("$vcword");
        upargs+=(-v $vcword "$cword")
    };
    [[ -n $vprev && $cword -ge 1 ]] && { 
        upvars+=("$vprev");
        upargs+=(-v $vprev "${words[cword - 1]}")
    };
    [[ -n $vwords ]] && { 
        upvars+=("$vwords");
        upargs+=(-a${#words[@]} $vwords "${words[@]}")
    };
    (( ${#upvars[@]} )) && local "${upvars[@]}" && _upvars "${upargs[@]}"
}

_get_cword () 
{ 
    local LC_CTYPE=C;
    local cword words;
    __reassemble_comp_words_by_ref "$1" words cword;
    if [[ -n ${2//[^0-9]/} ]]; then
        printf "%s" "${words[cword-$2]}";
    else
        if [[ "${#words[cword]}" -eq 0 || "$COMP_POINT" == "${#COMP_LINE}" ]]; then
            printf "%s" "${words[cword]}";
        else
            local i;
            local cur="$COMP_LINE";
            local index="$COMP_POINT";
            for ((i = 0; i <= cword; ++i ))
            do
                while [[ "${#cur}" -ge ${#words[i]} && "${cur:0:${#words[i]}}" != "${words[i]}" ]]; do
                    cur="${cur:1}";
                    ((index--));
                done;
                if [[ "$i" -lt "$cword" ]]; then
                    local old_size="${#cur}";
                    cur="${cur#${words[i]}}";
                    local new_size="${#cur}";
                    index=$(( index - old_size + new_size ));
                fi;
            done;
            if [[ "${words[cword]:0:${#cur}}" != "$cur" ]]; then
                printf "%s" "${words[cword]}";
            else
                printf "%s" "${cur:0:$index}";
            fi;
        fi;
    fi
}

_get_first_arg () 
{ 
    local i;
    arg=;
    for ((i=1; i < COMP_CWORD; i++ ))
    do
        if [[ "${COMP_WORDS[i]}" != -* ]]; then
            arg=${COMP_WORDS[i]};
            break;
        fi;
    done
}

_get_pword () 
{ 
    if [[ $COMP_CWORD -ge 1 ]]; then
        _get_cword "${@:-}" 1;
    fi
}

_gids () 
{ 
    if type getent &>/dev/null; then
        COMPREPLY=($( compgen -W '$( getent group | cut -d: -f3 )'             -- "$cur" ));
    else
        if type perl &>/dev/null; then
            COMPREPLY=($( compgen -W '$( perl -e '"'"'while (($gid) = (getgrent)[2]) { print $gid . "\n" }'"'"' )' -- "$cur" ));
        else
            COMPREPLY=($( compgen -W '$( cut -d: -f3 /etc/group )' -- "$cur" ));
        fi;
    fi
}

_git () 
{ 
    __git_wrap__git_main
}

_git_add () 
{ 
    case "$cur" in 
        --*)
            __gitcomp "
			--interactive --refresh --patch --update --dry-run
			--ignore-errors --intent-to-add
			";
            return
        ;;
    esac;
    __git_complete_index_file "--others --modified"
}

_git_am () 
{ 
    local dir="$(__gitdir)";
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
    esac
}

_git_apply () 
{ 
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
    esac
}

_git_archive () 
{ 
    case "$cur" in 
        --format=*)
            __gitcomp "$(git archive --list)" "" "${cur##--format=}";
            return
        ;;
        --remote=*)
            __gitcomp_nl "$(__git_remotes)" "" "${cur##--remote=}";
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
        if [ -f "$(__gitdir)"/BISECT_START ]; then
            __gitcomp "$subcommands";
        else
            __gitcomp "replay start";
        fi;
        return;
    fi;
    case "$subcommand" in 
        bad | good | reset | skip | start)
            __gitcomp_nl "$(__git_refs)"
        ;;
        *)

        ;;
    esac
}

_git_branch () 
{ 
    local i c=1 only_local_ref="n" has_r="n";
    while [ $c -lt $cword ]; do
        i="${words[c]}";
        case "$i" in 
            -d | -m)
                only_local_ref="y"
            ;;
            -r)
                has_r="y"
            ;;
        esac;
        ((c++));
    done;
    case "$cur" in 
        --set-upstream-to=*)
            __gitcomp "$(__git_refs)" "" "${cur##--set-upstream-to=}"
        ;;
        --*)
            __gitcomp "
			--color --no-color --verbose --abbrev= --no-abbrev
			--track --no-track --contains --merged --no-merged
			--set-upstream-to= --edit-description --list
			--unset-upstream
			"
        ;;
        *)
            if [ $only_local_ref = "y" -a $has_r = "n" ]; then
                __gitcomp_nl "$(__git_heads)";
            else
                __gitcomp_nl "$(__git_refs)";
            fi
        ;;
    esac
}

_git_bundle () 
{ 
    local cmd="${words[2]}";
    case "$cword" in 
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
    case "$cur" in 
        --conflict=*)
            __gitcomp "diff3 merge" "" "${cur##--conflict=}"
        ;;
        --*)
            __gitcomp "
			--quiet --ours --theirs --track --no-track --merge
			--conflict= --orphan --patch
			"
        ;;
        *)
            local flags="--track --no-track --no-guess" track=1;
            if [ -n "$(__git_find_on_cmdline "$flags")" ]; then
                track='';
            fi;
            __gitcomp_nl "$(__git_refs '' $track)"
        ;;
    esac
}

_git_cherry () 
{ 
    __gitcomp "$(__git_refs)"
}

_git_cherry_pick () 
{ 
    local dir="$(__gitdir)";
    if [ -f "$dir"/CHERRY_PICK_HEAD ]; then
        __gitcomp "--continue --quit --abort";
        return;
    fi;
    case "$cur" in 
        --*)
            __gitcomp "--edit --no-commit --signoff --strategy= --mainline"
        ;;
        *)
            __gitcomp_nl "$(__git_refs)"
        ;;
    esac
}

_git_clean () 
{ 
    case "$cur" in 
        --*)
            __gitcomp "--dry-run --quiet";
            return
        ;;
    esac;
    __git_complete_index_file "--others"
}

_git_clone () 
{ 
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
			--single-branch
			--branch
			";
            return
        ;;
    esac
}

_git_commit () 
{ 
    case "$prev" in 
        -c | -C)
            __gitcomp_nl "$(__git_refs)" "" "${cur}";
            return
        ;;
    esac;
    case "$cur" in 
        --cleanup=*)
            __gitcomp "default strip verbatim whitespace
			" "" "${cur##--cleanup=}";
            return
        ;;
        --reuse-message=* | --reedit-message=* | --fixup=* | --squash=*)
            __gitcomp_nl "$(__git_refs)" "" "${cur#*=}";
            return
        ;;
        --untracked-files=*)
            __gitcomp "all no normal" "" "${cur##--untracked-files=}";
            return
        ;;
        --*)
            __gitcomp "
			--all --author= --signoff --verify --no-verify
			--edit --no-edit
			--amend --include --only --interactive
			--dry-run --reuse-message= --reedit-message=
			--reset-author --file= --message= --template=
			--cleanup= --untracked-files --untracked-files=
			--verbose --quiet --fixup= --squash=
			";
            return
        ;;
    esac;
    if git rev-parse --verify --quiet HEAD > /dev/null; then
        __git_complete_diff_index_file "HEAD";
    else
        __git_complete_index_file "--cached";
    fi
}

_git_config () 
{ 
    case "$prev" in 
        branch.*.remote | branch.*.pushremote)
            __gitcomp_nl "$(__git_remotes)";
            return
        ;;
        branch.*.merge)
            __gitcomp_nl "$(__git_refs)";
            return
        ;;
        branch.*.rebase)
            __gitcomp "false true";
            return
        ;;
        remote.pushdefault)
            __gitcomp_nl "$(__git_remotes)";
            return
        ;;
        remote.*.fetch)
            local remote="${prev#remote.}";
            remote="${remote%.fetch}";
            if [ -z "$cur" ]; then
                __gitcomp_nl "refs/heads/" "" "" "";
                return;
            fi;
            __gitcomp_nl "$(__git_refs_remotes "$remote")";
            return
        ;;
        remote.*.push)
            local remote="${prev#remote.}";
            remote="${remote%.push}";
            __gitcomp_nl "$(git --git-dir="$(__gitdir)" 			for-each-ref --format='%(refname):%(refname)' 			refs/heads)";
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
        diff.submodule)
            __gitcomp "log short";
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
            __gitcomp_nl "$(__git_config_get_set_variables)";
            return
        ;;
        *.*)
            return
        ;;
    esac;
    case "$cur" in 
        --*)
            __gitcomp "
			--system --global --local --file=
			--list --replace-all
			--get --get-all --get-regexp
			--add --unset --unset-all
			--remove-section --rename-section
			";
            return
        ;;
        branch.*.*)
            local pfx="${cur%.*}." cur_="${cur##*.}";
            __gitcomp "remote pushremote merge mergeoptions rebase" "$pfx" "$cur_";
            return
        ;;
        branch.*)
            local pfx="${cur%.*}." cur_="${cur#*.}";
            __gitcomp_nl "$(__git_heads)" "$pfx" "$cur_" ".";
            return
        ;;
        guitool.*.*)
            local pfx="${cur%.*}." cur_="${cur##*.}";
            __gitcomp "
			argprompt cmd confirm needsfile noconsole norescan
			prompt revprompt revunmerged title
			" "$pfx" "$cur_";
            return
        ;;
        difftool.*.*)
            local pfx="${cur%.*}." cur_="${cur##*.}";
            __gitcomp "cmd path" "$pfx" "$cur_";
            return
        ;;
        man.*.*)
            local pfx="${cur%.*}." cur_="${cur##*.}";
            __gitcomp "cmd path" "$pfx" "$cur_";
            return
        ;;
        mergetool.*.*)
            local pfx="${cur%.*}." cur_="${cur##*.}";
            __gitcomp "cmd path trustExitCode" "$pfx" "$cur_";
            return
        ;;
        pager.*)
            local pfx="${cur%.*}." cur_="${cur#*.}";
            __git_compute_all_commands;
            __gitcomp_nl "$__git_all_commands" "$pfx" "$cur_";
            return
        ;;
        remote.*.*)
            local pfx="${cur%.*}." cur_="${cur##*.}";
            __gitcomp "
			url proxy fetch push mirror skipDefaultUpdate
			receivepack uploadpack tagopt pushurl
			" "$pfx" "$cur_";
            return
        ;;
        remote.*)
            local pfx="${cur%.*}." cur_="${cur#*.}";
            __gitcomp_nl "$(__git_remotes)" "$pfx" "$cur_" ".";
            return
        ;;
        url.*.*)
            local pfx="${cur%.*}." cur_="${cur##*.}";
            __gitcomp "insteadOf pushInsteadOf" "$pfx" "$cur_";
            return
        ;;
    esac;
    __gitcomp "
		add.ignoreErrors
		advice.commitBeforeMerge
		advice.detachedHead
		advice.implicitIdentity
		advice.pushNonFastForward
		advice.resolveConflict
		advice.statusHints
		alias.
		am.keepcr
		apply.ignorewhitespace
		apply.whitespace
		branch.autosetupmerge
		branch.autosetuprebase
		browser.
		clean.requireForce
		color.branch
		color.branch.current
		color.branch.local
		color.branch.plain
		color.branch.remote
		color.decorate.HEAD
		color.decorate.branch
		color.decorate.remoteBranch
		color.decorate.stash
		color.decorate.tag
		color.diff
		color.diff.commit
		color.diff.frag
		color.diff.func
		color.diff.meta
		color.diff.new
		color.diff.old
		color.diff.plain
		color.diff.whitespace
		color.grep
		color.grep.context
		color.grep.filename
		color.grep.function
		color.grep.linenumber
		color.grep.match
		color.grep.selected
		color.grep.separator
		color.interactive
		color.interactive.error
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
		commit.status
		commit.template
		core.abbrev
		core.askpass
		core.attributesfile
		core.autocrlf
		core.bare
		core.bigFileThreshold
		core.compression
		core.createObject
		core.deltaBaseCacheLimit
		core.editor
		core.eol
		core.excludesfile
		core.fileMode
		core.fsyncobjectfiles
		core.gitProxy
		core.ignoreCygwinFSTricks
		core.ignoreStat
		core.ignorecase
		core.logAllRefUpdates
		core.loosecompression
		core.notesRef
		core.packedGitLimit
		core.packedGitWindowSize
		core.pager
		core.preferSymlinkRefs
		core.preloadindex
		core.quotepath
		core.repositoryFormatVersion
		core.safecrlf
		core.sharedRepository
		core.sparseCheckout
		core.symlinks
		core.trustctime
		core.warnAmbiguousRefs
		core.whitespace
		core.worktree
		diff.autorefreshindex
		diff.external
		diff.ignoreSubmodules
		diff.mnemonicprefix
		diff.noprefix
		diff.renameLimit
		diff.renames
		diff.statGraphWidth
		diff.submodule
		diff.suppressBlankEmpty
		diff.tool
		diff.wordRegex
		diff.algorithm
		difftool.
		difftool.prompt
		fetch.recurseSubmodules
		fetch.unpackLimit
		format.attach
		format.cc
		format.headers
		format.numbered
		format.pretty
		format.signature
		format.signoff
		format.subjectprefix
		format.suffix
		format.thread
		format.to
		gc.
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
		http.minSessions
		http.noEPSV
		http.postBuffer
		http.proxy
		http.sslCAInfo
		http.sslCAPath
		http.sslCert
		http.sslCertPasswordProtected
		http.sslKey
		http.sslVerify
		http.useragent
		i18n.commitEncoding
		i18n.logOutputEncoding
		imap.authMethod
		imap.folder
		imap.host
		imap.pass
		imap.port
		imap.preformattedHTML
		imap.sslverify
		imap.tunnel
		imap.user
		init.templatedir
		instaweb.browser
		instaweb.httpd
		instaweb.local
		instaweb.modulepath
		instaweb.port
		interactive.singlekey
		log.date
		log.decorate
		log.showroot
		mailmap.file
		man.
		man.viewer
		merge.
		merge.conflictstyle
		merge.log
		merge.renameLimit
		merge.renormalize
		merge.stat
		merge.tool
		merge.verbosity
		mergetool.
		mergetool.keepBackup
		mergetool.keepTemporaries
		mergetool.prompt
		notes.displayRef
		notes.rewrite.
		notes.rewrite.amend
		notes.rewrite.rebase
		notes.rewriteMode
		notes.rewriteRef
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
		pretty.
		pull.octopus
		pull.twohead
		push.default
		rebase.autosquash
		rebase.stat
		receive.autogc
		receive.denyCurrentBranch
		receive.denyDeleteCurrent
		receive.denyDeletes
		receive.denyNonFastForwards
		receive.fsckObjects
		receive.unpackLimit
		receive.updateserverinfo
		remote.pushdefault
		remotes.
		repack.usedeltabaseoffset
		rerere.autoupdate
		rerere.enabled
		sendemail.
		sendemail.aliasesfile
		sendemail.aliasfiletype
		sendemail.bcc
		sendemail.cc
		sendemail.cccmd
		sendemail.chainreplyto
		sendemail.confirm
		sendemail.envelopesender
		sendemail.from
		sendemail.identity
		sendemail.multiedit
		sendemail.signedoffbycc
		sendemail.smtpdomain
		sendemail.smtpencryption
		sendemail.smtppass
		sendemail.smtpserver
		sendemail.smtpserveroption
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
		status.submodulesummary
		submodule.
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
    case "$cur" in 
        --*)
            __gitcomp "
			--all --tags --contains --abbrev= --candidates=
			--exact-match --debug --long --match --always
			";
            return
        ;;
    esac;
    __gitcomp_nl "$(__git_refs)"
}

_git_diff () 
{ 
    __git_has_doubledash && return;
    case "$cur" in 
        --diff-algorithm=*)
            __gitcomp "$__git_diff_algorithms" "" "${cur##--diff-algorithm=}";
            return
        ;;
        --*)
            __gitcomp "--cached --staged --pickaxe-all --pickaxe-regex
			--base --ours --theirs --no-index
			$__git_diff_common_options
			";
            return
        ;;
    esac;
    __git_complete_revlist_file
}

_git_difftool () 
{ 
    __git_has_doubledash && return;
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
    case "$cur" in 
        --thread=*)
            __gitcomp "
			deep shallow
			" "" "${cur##--thread=}";
            return
        ;;
        --*)
            __gitcomp "$__git_format_patch_options";
            return
        ;;
    esac;
    __git_complete_revlist
}

_git_fsck () 
{ 
    case "$cur" in 
        --*)
            __gitcomp "
			--tags --root --unreachable --cache --no-reflogs --full
			--strict --verbose --lost-found
			";
            return
        ;;
    esac
}

_git_gc () 
{ 
    case "$cur" in 
        --*)
            __gitcomp "--prune --aggressive";
            return
        ;;
    esac
}

_git_gitk () 
{ 
    _gitk
}

_git_grep () 
{ 
    __git_has_doubledash && return;
    case "$cur" in 
        --*)
            __gitcomp "
			--cached
			--text --ignore-case --word-regexp --invert-match
			--full-name --line-number
			--extended-regexp --basic-regexp --fixed-strings
			--perl-regexp
			--files-with-matches --name-only
			--files-without-match
			--max-depth
			--count
			--and --or --not --all-match
			";
            return
        ;;
    esac;
    case "$cword,$prev" in 
        2,* | *,-*)
            if test -r tags; then
                __gitcomp_nl "$(__git_match_ctag "$cur" tags)";
                return;
            fi
        ;;
    esac;
    __gitcomp_nl "$(__git_refs)"
}

_git_help () 
{ 
    case "$cur" in 
        --*)
            __gitcomp "--all --info --man --web";
            return
        ;;
    esac;
    __git_compute_all_commands;
    __gitcomp "$__git_all_commands $(__git_aliases)
		attributes cli core-tutorial cvs-migration
		diffcore gitk glossary hooks ignore modules
		namespaces repository-layout tutorial tutorial-2
		workflows
		"
}

_git_init () 
{ 
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
    esac
}

_git_log () 
{ 
    __git_has_doubledash && return;
    local g="$(git rev-parse --git-dir 2>/dev/null)";
    local merge="";
    if [ -f "$g/MERGE_HEAD" ]; then
        merge="--merge";
    fi;
    case "$cur" in 
        --pretty=* | --format=*)
            __gitcomp "$__git_log_pretty_formats $(__git_pretty_aliases)
			" "" "${cur#*=}";
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
    __git_complete_index_file "--cached"
}

_git_ls_remote () 
{ 
    __gitcomp_nl "$(__git_remotes)"
}

_git_ls_tree () 
{ 
    __git_complete_file
}

_git_merge () 
{ 
    __git_complete_strategy && return;
    case "$cur" in 
        --*)
            __gitcomp "$__git_merge_options";
            return
        ;;
    esac;
    __gitcomp_nl "$(__git_refs)"
}

_git_merge_base () 
{ 
    __gitcomp_nl "$(__git_refs)"
}

_git_mergetool () 
{ 
    case "$cur" in 
        --tool=*)
            __gitcomp "$__git_mergetools_common tortoisemerge" "" "${cur##--tool=}";
            return
        ;;
        --*)
            __gitcomp "--tool=";
            return
        ;;
    esac
}

_git_mv () 
{ 
    case "$cur" in 
        --*)
            __gitcomp "--dry-run";
            return
        ;;
    esac;
    if [ $(__git_count_arguments "mv") -gt 0 ]; then
        __git_complete_index_file "--cached --others --directory";
    else
        __git_complete_index_file "--cached";
    fi
}

_git_name_rev () 
{ 
    __gitcomp "--tags --all --stdin"
}

_git_notes () 
{ 
    local subcommands='add append copy edit list prune remove show';
    local subcommand="$(__git_find_on_cmdline "$subcommands")";
    case "$subcommand,$cur" in 
        ,--*)
            __gitcomp '--ref'
        ;;
        ,*)
            case "$prev" in 
                --ref)
                    __gitcomp_nl "$(__git_refs)"
                ;;
                *)
                    __gitcomp "$subcommands --ref"
                ;;
            esac
        ;;
        add,--reuse-message=* | append,--reuse-message=* | add,--reedit-message=* | append,--reedit-message=*)
            __gitcomp_nl "$(__git_refs)" "" "${cur#*=}"
        ;;
        add,--* | append,--*)
            __gitcomp '--file= --message= --reedit-message=
				--reuse-message='
        ;;
        copy,--*)
            __gitcomp '--stdin'
        ;;
        prune,--*)
            __gitcomp '--dry-run --verbose'
        ;;
        prune,*)

        ;;
        *)
            case "$prev" in 
                -m | -F)

                ;;
                *)
                    __gitcomp_nl "$(__git_refs)"
                ;;
            esac
        ;;
    esac
}

_git_pull () 
{ 
    __git_complete_strategy && return;
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
    case "$prev" in 
        --repo)
            __gitcomp_nl "$(__git_remotes)";
            return
        ;;
    esac;
    case "$cur" in 
        --repo=*)
            __gitcomp_nl "$(__git_remotes)" "" "${cur##--repo=}";
            return
        ;;
        --*)
            __gitcomp "
			--all --mirror --tags --dry-run --force --verbose
			--receive-pack= --repo= --set-upstream
		";
            return
        ;;
    esac;
    __git_complete_remote_or_refspec
}

_git_rebase () 
{ 
    local dir="$(__gitdir)";
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
    __gitcomp_nl "$(__git_refs)"
}

_git_reflog () 
{ 
    local subcommands="show delete expire";
    local subcommand="$(__git_find_on_cmdline "$subcommands")";
    if [ -z "$subcommand" ]; then
        __gitcomp "$subcommands";
    else
        __gitcomp_nl "$(__git_refs)";
    fi
}

_git_remote () 
{ 
    local subcommands="add rename remove set-head set-branches set-url show prune update";
    local subcommand="$(__git_find_on_cmdline "$subcommands")";
    if [ -z "$subcommand" ]; then
        __gitcomp "$subcommands";
        return;
    fi;
    case "$subcommand" in 
        rename | remove | set-url | show | prune)
            __gitcomp_nl "$(__git_remotes)"
        ;;
        set-head | set-branches)
            __git_complete_remote_or_refspec
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

        ;;
    esac
}

_git_replace () 
{ 
    __gitcomp_nl "$(__git_refs)"
}

_git_reset () 
{ 
    __git_has_doubledash && return;
    case "$cur" in 
        --*)
            __gitcomp "--merge --mixed --hard --soft --patch";
            return
        ;;
    esac;
    __gitcomp_nl "$(__git_refs)"
}

_git_revert () 
{ 
    case "$cur" in 
        --*)
            __gitcomp "--edit --mainline --no-edit --no-commit --signoff";
            return
        ;;
    esac;
    __gitcomp_nl "$(__git_refs)"
}

_git_rm () 
{ 
    case "$cur" in 
        --*)
            __gitcomp "--cached --dry-run --ignore-unmatch --quiet";
            return
        ;;
    esac;
    __git_complete_index_file "--cached"
}

_git_send_email () 
{ 
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
        --thread=*)
            __gitcomp "
			deep shallow
			" "" "${cur##--thread=}";
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
			--validate --no-validate
			$__git_format_patch_options";
            return
        ;;
    esac;
    __git_complete_revlist
}

_git_shortlog () 
{ 
    __git_has_doubledash && return;
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
    case "$cur" in 
        --pretty=* | --format=*)
            __gitcomp "$__git_log_pretty_formats $(__git_pretty_aliases)
			" "" "${cur#*=}";
            return
        ;;
        --diff-algorithm=*)
            __gitcomp "$__git_diff_algorithms" "" "${cur##--diff-algorithm=}";
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

            ;;
            show,* | apply,* | drop,* | pop,* | branch,*)
                __gitcomp_nl "$(git --git-dir="$(__gitdir)" stash list 					| sed -n -e 's/:.*//p')"
            ;;
            *)

            ;;
        esac;
    fi
}

_git_submodule () 
{ 
    __git_has_doubledash && return;
    local subcommands="add status init deinit update summary foreach sync";
    if [ -z "$(__git_find_on_cmdline "$subcommands")" ]; then
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
			--ignore-paths= --include-paths= $remote_opts
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
				--revision --interactive $cmt_opts $fc_opts
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

            ;;
        esac;
    fi
}

_git_tag () 
{ 
    local i c=1 f=0;
    while [ $c -lt $cword ]; do
        i="${words[c]}";
        case "$i" in 
            -d | -v)
                __gitcomp_nl "$(__git_tags)";
                return
            ;;
            -f)
                f=1
            ;;
        esac;
        ((c++));
    done;
    case "$prev" in 
        -m | -F)

        ;;
        -* | tag)
            if [ $f = 1 ]; then
                __gitcomp_nl "$(__git_tags)";
            fi
        ;;
        *)
            __gitcomp_nl "$(__git_refs)"
        ;;
    esac
}

_git_whatchanged () 
{ 
    _git_log
}

_gitk () 
{ 
    __git_wrap__gitk_main
}

_gluster_completion () 
{ 
    GLUSTER_FINAL_LIST=`echo $GLUSTER_COMMAND_TREE |                                      egrep -ao --color=never "([A-Za-z0-9_.-]+)|[[:space:]]+|." |                          egrep -v --color=never "^[[:space:]]*$" |                                             _gluster_parse`;
    ARG="GLUSTER_FINAL_LIST";
    _gluster_handle_list $ARG ${COMP_WORDS[COMP_CWORD]};
    return
}

_gluster_does_match () 
{ 
    local token="$1";
    local key="$2";
    if [ "${token:0:1}" == "_" ]; then
        $token $2;
        return $?;
    fi;
    [ "$token" == "$key" ] && return 0;
    return 1
}

_gluster_form_list () 
{ 
    local token='';
    local top=0;
    local comma='';
    local cur_word="$1";
    read -r token;
    case $token in 
        ']')

        ;;
        '{')
            _gluster_push;
            top=$?;
            read -r key;
            if [ "X$cur_word" == "X" -o "${cur_word:0:1}" == "${key:0:1}" -o "${key:0:1}" == "_" ]; then
                GLUSTER_LIST="$GLUSTER_LIST $key";
            fi;
            _gluster_goto_end $top;
            read -r comma;
            if [ "$comma" == "," ]; then
                _gluster_form_list $cur_word;
            fi
        ;;
        *)
            _gluster_throw "Expected '{' but received $token"
        ;;
    esac;
    return
}

_gluster_goto_child () 
{ 
    local match_string="$1";
    local token='';
    local top=0;
    local comma='';
    read -r token;
    case $token in 
        '{')
            _gluster_push;
            top=$?
        ;;
        *)
            _gluster_throw "Expected '{' but received $token"
        ;;
    esac;
    read -r token;
    case `echo $token` in 
        '[' | ']' | '{' | '}')
            _gluster_throw "Expected string but received $token"
        ;;
        _*)
            $token "match" $match_string;
            ret=$?;
            if [ $ret -eq 0 ]; then
                return;
            else
                _gluster_goto_end $top;
                read -r comma;
                if [ "$comma" == "," ]; then
                    _gluster_goto_child $match_string;
                fi;
            fi
        ;;
        "$match_string")
            return
        ;;
        *)
            _gluster_goto_end $top;
            read -r comma;
            if [ "$comma" == "," ]; then
                _gluster_goto_child $match_string;
            fi
        ;;
    esac;
    return
}

_gluster_goto_end () 
{ 
    local prev_top=$1;
    local top=$1;
    local token='';
    while [ $top -ge $prev_top ]; do
        read -r token;
        case $token in 
            '{' | '[')
                _gluster_push;
                top=$?
            ;;
            '}' | ']')
                _gluster_pop;
                top=$?
            ;;
        esac;
    done;
    return
}

_gluster_handle_list () 
{ 
    local list="${!1}";
    local cur_word=$2;
    local count=0;
    local i=0;
    for i in `echo $list`;
    do
        count=$((count + 1));
    done;
    if [ $count -eq 1 ] && [ "${i:0:1}" == "_" ]; then
        $i "complete" $cur_word;
    else
        COMPREPLY=($(compgen -W "$list" -- $cur_word));
    fi;
    return
}

_gluster_parse () 
{ 
    local i=0;
    local token='';
    local tmp_token='';
    local word='';
    while [ $i -lt $COMP_CWORD ]; do
        read -r token;
        case $token in 
            '[')
                _gluster_push;
                _gluster_goto_child ${COMP_WORDS[$i]}
            ;;
            '{')
                _gluster_push;
                read -r tmp_token;
                _gluster_does_match $tmp_token ${COMP_WORDS[$i]};
                if [ $? -ne 0 ]; then
                    _gluster_throw "No match";
                fi
            ;;
        esac;
        i=$((i+1));
    done;
    read -r token;
    if [ "$token" == '[' ]; then
        _gluster_push;
        _gluster_form_list ${COMP_WORDS[COMP_CWORD]};
    else
        if [ "$token" == '{' ]; then
            read -r tmp_token;
            GLUSTER_LIST="$tmp_token";
        fi;
    fi;
    echo $GLUSTER_LIST
}

_gluster_pop () 
{ 
    GLUSTER_TOP=$((GLUSTER_TOP - 1));
    return $GLUSTER_TOP
}

_gluster_push () 
{ 
    GLUSTER_TOP=$((GLUSTER_TOP + 1));
    return $GLUSTER_TOP
}

_gluster_throw () 
{ 
    COMPREPLY='';
    exit
}

_have () 
{ 
    PATH=$PATH:/usr/sbin:/sbin:/usr/local/sbin type $1 &>/dev/null
}

_init_completion () 
{ 
    local exclude= flag outx errx inx OPTIND=1;
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
        esac;
    done;
    COMPREPLY=();
    local redir="@(?([0-9])<|?([0-9&])>?(>)|>&)";
    _get_comp_words_by_ref -n "$exclude<>&" cur prev words cword;
    _variables && return 1;
    if [[ $cur == $redir* || $prev == $redir ]]; then
        local xspec;
        case $cur in 
            2'>'*)
                xspec=$errx
            ;;
            *'>'*)
                xspec=$outx
            ;;
            *'<'*)
                xspec=$inx
            ;;
            *)
                case $prev in 
                    2'>'*)
                        xspec=$errx
                    ;;
                    *'>'*)
                        xspec=$outx
                    ;;
                    *'<'*)
                        xspec=$inx
                    ;;
                esac
            ;;
        esac;
        cur="${cur##$redir}";
        _filedir $xspec;
        return 1;
    fi;
    local i skip;
    for ((i=1; i < ${#words[@]}; 1))
    do
        if [[ ${words[i]} == $redir* ]]; then
            [[ ${words[i]} == $redir ]] && skip=2 || skip=1;
            words=("${words[@]:0:i}" "${words[@]:i+skip}");
            [[ $i -le $cword ]] && cword=$(( cword - skip ));
        else
            i=$(( ++i ));
        fi;
    done;
    [[ $cword -eq 0 ]] && return 1;
    prev=${words[cword-1]};
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
    COMPREPLY=($( compgen -W "$( PATH="$PATH:/sbin" lsmod |         awk '{if (NR != 1) print $1}' )" -- "$1" ))
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
    local PATH=$PATH:/sbin;
    COMPREPLY+=($( compgen -W         "$( { LC_ALL=C ifconfig -a || ip addr show; } 2>/dev/null |
            sed -ne 's/.*addr:\([^[:space:]]*\).*/\1/p'                 -ne 's|.*inet[[:space:]]\{1,\}\([^[:space:]/]*\).*|\1|p' )"         -- "$cur" ))
}

_itwebsettings () 
{ 
    local cur prev opts base;
    cur="${COMP_WORDS[COMP_CWORD]}";
    prev="${COMP_WORDS[COMP_CWORD-1]}";
    opts="-help -list -get -info -set -reset -reset -headless -check -verbose";
    COMPREPLY=($(compgen -W "${opts}" -- ${cur}));
    return 0
}

_javaws () 
{ 
    local cur prev opts base;
    cur="${COMP_WORDS[COMP_CWORD]}";
    prev="${COMP_WORDS[COMP_CWORD-1]}";
    opts="-version -arg -param -property -update -verbose -nosecurity -noupdate -headless -strict -xml -allowredirect -Xnofork -Xignoreheaders -Xoffline -Xtrustnone -jnlp -html -browser -about -viewer -Xclearcache -license -help -Xtrustall";
    if [[ $prev == *"-jnlp" || $prev == *"-html" ]]; then
        COMPREPLY=($(compgen -f -X "!*" -- ${cur}));
        if [ -d "$COMPREPLY" ]; then
            COMPREPLY="$COMPREPLY/";
        fi;
        return 0;
    fi;
    if [[ $cur == "" ]]; then
        COMPREPLY=($(compgen -W "aa_file_or_url ${opts} zz_file_or_url" -- ${cur}));
        return 0;
    fi;
    if [[ $cur == "-"* ]]; then
        COMPREPLY=($(compgen -W "${opts}" -- ${cur}));
        return 0;
    else
        COMPREPLY=($(compgen -f -X "!*" -- ${cur}));
        if [ -d "$COMPREPLY" ]; then
            COMPREPLY="$COMPREPLY/";
        fi;
        return 0;
    fi
}

_kernel_versions () 
{ 
    COMPREPLY=($( compgen -W '$( command ls /lib/modules )' -- "$cur" ))
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
    [[ "$1" == -a || "$2" == -a ]] && options=-a;
    [[ "$1" == -c || "$2" == -c ]] && options+=" -c";
    _known_hosts_real $options -- "$cur"
}

_known_hosts_real () 
{ 
    local configfile flag prefix;
    local cur curd awkcur user suffix aliases i host;
    local -a kh khd config;
    local OPTIND=1;
    while getopts "acF:p:" flag "$@"; do
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
        esac;
    done;
    [[ $# -lt $OPTIND ]] && echo "error: $FUNCNAME: missing mandatory argument CWORD";
    cur=${!OPTIND};
    let "OPTIND += 1";
    [[ $# -ge $OPTIND ]] && echo "error: $FUNCNAME("$@"): unprocessed arguments:" $(while [[ $# -ge $OPTIND ]]; do printf '%s\n' ${!OPTIND}; shift; done);
    [[ $cur == *@* ]] && user=${cur%@*}@ && cur=${cur#*@};
    kh=();
    if [[ -n $configfile ]]; then
        [[ -r $configfile ]] && config+=("$configfile");
    else
        for i in /etc/ssh/ssh_config ~/.ssh/config ~/.ssh2/config;
        do
            [[ -r $i ]] && config+=("$i");
        done;
    fi;
    if [[ ${#config[@]} -gt 0 ]]; then
        local OIFS=$IFS IFS='
' j;
        local -a tmpkh;
        tmpkh=($( awk 'sub("^[ \t]*([Gg][Ll][Oo][Bb][Aa][Ll]|[Uu][Ss][Ee][Rr])[Kk][Nn][Oo][Ww][Nn][Hh][Oo][Ss][Tt][Ss][Ff][Ii][Ll][Ee][ \t]+", "") { print $0 }' "${config[@]}" | sort -u ));
        IFS=$OIFS;
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
    if [[ -z $configfile ]]; then
        for i in /etc/ssh/ssh_known_hosts /etc/ssh/ssh_known_hosts2 /etc/known_hosts /etc/known_hosts2 ~/.ssh/known_hosts ~/.ssh/known_hosts2;
        do
            [[ -r $i ]] && kh+=("$i");
        done;
        for i in /etc/ssh2/knownhosts ~/.ssh2/hostkeys;
        do
            [[ -d $i ]] && khd+=("$i"/*pub);
        done;
    fi;
    if [[ ${#kh[@]} -gt 0 || ${#khd[@]} -gt 0 ]]; then
        awkcur=${cur//\//\\\/};
        awkcur=${awkcur//\./\\\.};
        curd=$awkcur;
        if [[ "$awkcur" == [0-9]*[.:]* ]]; then
            awkcur="^$awkcur[.:]*";
        else
            if [[ "$awkcur" == [0-9]* ]]; then
                awkcur="^$awkcur.*[.:]";
            else
                if [[ -z $awkcur ]]; then
                    awkcur="[a-z.:]";
                else
                    awkcur="^$awkcur";
                fi;
            fi;
        fi;
        if [[ ${#kh[@]} -gt 0 ]]; then
            COMPREPLY+=($( awk 'BEGIN {FS=","}
            /^\s*[^|\#]/ {
            sub("^@[^ ]+ +", ""); \
            sub(" .*$", ""); \
            for (i=1; i<=NF; ++i) { \
            sub("^\\[", "", $i); sub("\\](:[0-9]+)?$", "", $i); \
            if ($i !~ /[*?]/ && $i ~ /'"$awkcur"'/) {print $i} \
            }}' "${kh[@]}" 2>/dev/null ));
        fi;
        if [[ ${#khd[@]} -gt 0 ]]; then
            for i in "${khd[@]}";
            do
                if [[ "$i" == *key_22_$curd*.pub && -r "$i" ]]; then
                    host=${i/#*key_22_/};
                    host=${host/%.pub/};
                    COMPREPLY+=($host);
                fi;
            done;
        fi;
        for ((i=0; i < ${#COMPREPLY[@]}; i++ ))
        do
            COMPREPLY[i]=$prefix$user${COMPREPLY[i]}$suffix;
        done;
    fi;
    if [[ ${#config[@]} -gt 0 && -n "$aliases" ]]; then
        local hosts=$( sed -ne 's/^[ \t]*[Hh][Oo][Ss][Tt]\([Nn][Aa][Mm][Ee]\)\{0,1\}['"$'\t '"']\{1,\}\([^#*?]*\)\(#.*\)\{0,1\}$/\2/p' "${config[@]}" );
        COMPREPLY+=($( compgen -P "$prefix$user"             -S "$suffix" -W "$hosts" -- "$cur" ));
    fi;
    if [[ -n ${COMP_KNOWN_HOSTS_WITH_AVAHI:-} ]] && type avahi-browse &>/dev/null; then
        COMPREPLY+=($( compgen -P "$prefix$user" -S "$suffix" -W             "$( avahi-browse -cpr _workstation._tcp 2>/dev/null |                  awk -F';' '/^=/ { print $7 }' | sort -u )" -- "$cur" ));
    fi;
    COMPREPLY+=($( compgen -W         "$( ruptime 2>/dev/null | awk '!/^ruptime:/ { print $1 }' )"         -- "$cur" ));
    if [[ -n ${COMP_KNOWN_HOSTS_WITH_HOSTFILE-1} ]]; then
        COMPREPLY+=($( compgen -A hostname -P "$prefix$user" -S "$suffix" -- "$cur" ));
    fi;
    __ltrim_colon_completions "$prefix$user$cur";
    return 0
}

_lldpad_options () 
{ 
    local cur prev opts;
    COMPREPLY=();
    cur="${COMP_WORDS[COMP_CWORD]}";
    prev="${COMP_WORDS[COMP_CWORD-1]}";
    opts="-h -f -d -k -s -v -V";
    case "${cur}" in 
        *)
            COMPREPLY=($(compgen -W "${opts}" -- ${cur}))
        ;;
    esac;
    case "${prev}" in 
        -f)
            _filedir;
            return 0
        ;;
    esac;
    return 0
}

_lldptool_options () 
{ 
    local cur prev opts cmds opts_and_cmds;
    COMPREPLY=();
    cur="${COMP_WORDS[COMP_CWORD]}";
    prev="${COMP_WORDS[COMP_CWORD-1]}";
    cmds="license -h help -v version -q quit -s stats -t get-tlv -T set-tlv -l get-lldp -L set-lldp";
    opts="-i -V -n -a -d -r -R";
    opts_and_cmds="$opts $cmds";
    case "${cur}" in 
        *)
            COMPREPLY=($(compgen -W "${opts_and_cmds}" -- ${cur}))
        ;;
    esac;
    case "${prev}" in 
        -i)
            _available_interfaces;
            return 0
        ;;
    esac;
    return 0
}

_longopt () 
{ 
    local cur prev words cword split;
    _init_completion -s || return;
    case "${prev,,}" in 
        --help | --usage | --version)
            return 0
        ;;
        --*dir*)
            _filedir -d;
            return 0
        ;;
        --*file* | --*path*)
            _filedir;
            return 0
        ;;
        --+([-a-z0-9_]))
            local argtype=$( $1 --help 2>&1 | sed -ne                 "s|.*$prev\[\{0,1\}=[<[]\{0,1\}\([-A-Za-z0-9_]\{1,\}\).*|\1|p" );
            case ${argtype,,} in 
                *dir*)
                    _filedir -d;
                    return 0
                ;;
                *file* | *path*)
                    _filedir;
                    return 0
                ;;
            esac
        ;;
    esac;
    $split && return 0;
    if [[ "$cur" == -* ]]; then
        COMPREPLY=($( compgen -W "$( $1 --help 2>&1 |             sed -ne 's/.*\(--[-A-Za-z0-9]\{1,\}=\{0,1\}\).*/\1/p' | sort -u )"             -- "$cur" ));
        [[ $COMPREPLY == *= ]] && compopt -o nospace;
    else
        if [[ "$1" == @(mk|rm)dir ]]; then
            _filedir -d;
        else
            _filedir;
        fi;
    fi
}

_m2_complete () 
{ 
    local cur goals;
    COMPREPLY=();
    cur="${COMP_WORDS[COMP_CWORD]}";
    prev="${COMP_WORDS[COMP_CWORD-1]}";
    case "${prev}" in 
        -f | --file | -l | --log-file)
            COMPREPLY=($(compgen -f ${cur}));
            return 0
        ;;
        *)

        ;;
    esac;
    goals='clean compile test install package deploy site verify';
    if [[ ${cur} == -* ]]; then
        goals="$goals -am --also-make
                   -amd --also-make-dependents
                   -B --batch-mode
                   -C --strict-checksums
                   -c --lax-checksums
                   -cpu --check-plugin-updates
                   -D --define
                   -e --errors
                   -emp --encrypt-master-password
                   -ep --encrypt-password
                   -f --file
                   -fae --fail-at-end
                   -ff --fail-fast
                   -fn --fail-never
                   -gs --global-settings
                   -h --help
                   -l --log-file
                   -N --non-recursive
                   -npr --no-plugin-registry
                   -npu --no-plugin-updates
                   -nsu --no-snapshot-updates
                   -o --offline
                   -P --activate-profiles
                   -pl --projects
                   -q --quiet
                   -rf --resume-from
                   -s --settings
                   -T --threads
                   -t --toolchains
                   -U --update-snapshots
                   -up --update-plugins
                   -V --show-version
                   -v --version
                   -X --debug
                   -Dmaven.test.skip=true
                   -Dmaven.compiler.source=1.5
                   -Dmaven.compiler.source=1.6
                   -Dmaven.compiler.source=1.7
                   -Dmaven.compiler.target=1.5
                   -Dmaven.compiler.target=1.6
                   -Dmaven.compiler.target=1.7
                   -Dproject.build.sourceEncoding=UTF-8
                   -Dmaven.repo.local=
                   -Dmaven.local.depmap.file=
                   -Dmaven.local.debug=true
                   -Dmaven.local.mode=true";
    fi;
    goals=$goals _m2_make_goals "eclipse" "eclipse";
    goals=$goals _m2_make_goals "idea" "idea";
    goals=$goals _m2_make_goals "assembly" "assembly";
    goals=$goals _m2_make_goals "plexus" "app bundle-application bundle-runtime descriptor runtime service";
    goals=$goals _m2_make_goals "dependency" "analyze analyze-dep-mgt analyze-only analyze-report analyze-duplicate
                                           build-classpath copy copy-dependencies get go-offline list properties
                                           purge-local-repository resolve resolve-plugins sources tree unpack
                                           unpack-dependencies";
    cur=`echo $cur | sed 's/\\\\//g'`;
    COMPREPLY=($(compgen -W "${goals}" -- ${cur} | sed 's/\\\\//g'))
}

_m2_make_goals () 
{ 
    plugin=$1;
    mojos=$2;
    for mojo in $mojos;
    do
        export goals="$goals $plugin:$mojo";
    done
}

_mac_addresses () 
{ 
    local re='\([A-Fa-f0-9]\{2\}:\)\{5\}[A-Fa-f0-9]\{2\}';
    local PATH="$PATH:/sbin:/usr/sbin";
    COMPREPLY+=($( { ifconfig -a || ip link show; } 2>/dev/null | sed -ne         "s/.*[[:space:]]HWaddr[[:space:]]\{1,\}\($re\)[[:space:]].*/\1/p" -ne         "s/.*[[:space:]]HWaddr[[:space:]]\{1,\}\($re\)[[:space:]]*$/\1/p" -ne         "s|.*[[:space:]]\(link/\)\{0,1\}ether[[:space:]]\{1,\}\($re\)[[:space:]].*|\2|p" -ne         "s|.*[[:space:]]\(link/\)\{0,1\}ether[[:space:]]\{1,\}\($re\)[[:space:]]*$|\2|p"
        ));
    COMPREPLY+=($( { arp -an || ip neigh show; } 2>/dev/null | sed -ne         "s/.*[[:space:]]\($re\)[[:space:]].*/\1/p" -ne         "s/.*[[:space:]]\($re\)[[:space:]]*$/\1/p" ));
    COMPREPLY+=($( sed -ne         "s/^[[:space:]]*\($re\)[[:space:]].*/\1/p" /etc/ethers 2>/dev/null ));
    COMPREPLY=($( compgen -W '${COMPREPLY[@]}' -- "$cur" ));
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

_modules () 
{ 
    local modpath;
    modpath=/lib/modules/$1;
    COMPREPLY=($( compgen -W "$( command ls -RL $modpath 2>/dev/null |         sed -ne 's/^\(.*\)\.k\{0,1\}o\(\.[gx]z\)\{0,1\}$/\1/p' )" -- "$cur" ))
}

_ncpus () 
{ 
    local var=NPROCESSORS_ONLN;
    [[ $OSTYPE == *linux* ]] && var=_$var;
    local n=$( getconf $var 2>/dev/null );
    printf %s ${n:-1}
}

_parse_help () 
{ 
    eval local cmd=$( quote "$1" );
    local line;
    { 
        case $cmd in 
            -)
                cat
            ;;
            *)
                LC_ALL=C "$( dequote "$cmd" )" ${2:---help} 2>&1
            ;;
        esac
    } | while read -r line; do
        [[ $line == *([ '	'])-* ]] || continue;
        while [[ $line =~ ((^|[^-])-[A-Za-z0-9?][[:space:]]+)\[?[A-Z0-9]+\]? ]]; do
            line=${line/"${BASH_REMATCH[0]}"/"${BASH_REMATCH[1]}"};
        done;
        __parse_options "${line// or /, }";
    done
}

_parse_usage () 
{ 
    eval local cmd=$( quote "$1" );
    local line match option i char;
    { 
        case $cmd in 
            -)
                cat
            ;;
            *)
                LC_ALL=C "$( dequote "$cmd" )" ${2:---usage} 2>&1
            ;;
        esac
    } | while read -r line; do
        while [[ $line =~ \[[[:space:]]*(-[^]]+)[[:space:]]*\] ]]; do
            match=${BASH_REMATCH[0]};
            option=${BASH_REMATCH[1]};
            case $option in 
                -?(\[)+([a-zA-Z0-9?]))
                    for ((i=1; i < ${#option}; i++ ))
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
    COMPREPLY+=($( compgen -W         "$( PATH="$PATH:/sbin" lspci -n | awk '{print $3}')" -- "$cur" ))
}

_perf () 
{ 
    if [[ "$COMP_WORDBREAKS" != *,* ]]; then
        COMP_WORDBREAKS="${COMP_WORDBREAKS},";
        export COMP_WORDBREAKS;
    fi;
    if [[ "$COMP_WORDBREAKS" == *:* ]]; then
        COMP_WORDBREAKS="${COMP_WORDBREAKS/:/}";
        export COMP_WORDBREAKS;
    fi;
    local cur words cword prev;
    if [ $preload_get_comp_words_by_ref = "true" ]; then
        _get_comp_words_by_ref -n =:, cur words cword prev;
    else
        __perf_get_comp_words_by_ref -n =:, cur words cword prev;
    fi;
    __perf_main
}

_pgids () 
{ 
    COMPREPLY=($( compgen -W '$( command ps axo pgid= )' -- "$cur" ))
}

_pids () 
{ 
    COMPREPLY=($( compgen -W '$( command ps axo pid= )' -- "$cur" ))
}

_pnames () 
{ 
    COMPREPLY=($( compgen -X '<defunct>' -W '$( command ps axo command= | \
        sed -e "s/ .*//" -e "s:.*/::" -e "s/:$//" -e "s/^[[(-]//" \
            -e "s/[])]$//" | sort -u )' -- "$cur" ))
}

_policyeditor () 
{ 
    local cur prev opts base;
    cur="${COMP_WORDS[COMP_CWORD]}";
    prev="${COMP_WORDS[COMP_CWORD-1]}";
    opts="-help -file -defaultfile -codebase -signedby -principals -verbose";
    COMPREPLY=($(compgen -W "${opts}" -- ${cur}));
    return 0
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

_rct () 
{ 
    local cur="${COMP_WORDS[COMP_CWORD]}";
    local first="${COMP_WORDS[1]}";
    COMPREPLY=();
    case "${first}" in 
        cat-cert)
            case "${cur}" in 
                -*)
                    COMPREPLY=($( compgen -W "-h --help --no-products --no-content" -- "$cur" ));
                    return 0
                ;;
            esac;
            COMPREPLY=($( compgen -o filenames -- "$cur" ));
            return 0
        ;;
        stat-cert)
            case "${cur}" in 
                -*)
                    COMPREPLY=($( compgen -W "-h --help" -- "$cur" ));
                    return 0
                ;;
            esac;
            COMPREPLY=($( compgen -o filenames -- "$cur" ));
            return 0
        ;;
        cat-manifest)
            case "${cur}" in 
                -*)
                    COMPREPLY=($( compgen -W "-h --help --no-content" -- "$cur" ));
                    return 0
                ;;
            esac;
            COMPREPLY=($( compgen -o filenames -- "$cur" ));
            return 0
        ;;
        dump-manifest)
            case "${cur}" in 
                -*)
                    COMPREPLY=($( compgen -W "-h --help --destination -f --force" -- "$cur" ));
                    return 0
                ;;
            esac;
            COMPREPLY=($( compgen -o filenames -- "$cur" ));
            return 0
        ;;
    esac;
    COMPREPLY=($(compgen -W "cat-cert stat-cert cat-manifest dump-manifest" -- ${cur}));
    return 0
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

_rhn_migrate_classic_to_rhsm () 
{ 
    local first cur prev opts base;
    COMPREPLY=();
    first="${COMP_WORDS[1]}";
    cur="${COMP_WORDS[COMP_CWORD]}";
    prev="${COMP_WORDS[COMP_CWORD-1]}";
    opts="-h --help --environment -f --force -n --no-auto --no-proxy --org -s --servicelevel --legacy-user --legacy-password --destination-url --destination-user --destination-password --activation-key --keep --remove-rhn-packages";
    case "${cur}" in 
        -*)
            COMPREPLY=($(compgen -W "${opts}" -- ${cur}));
            return 0
        ;;
    esac;
    COMPREPLY=($(compgen -W "${opts}" -- ${cur}));
    return 0
}

_rhsm_debug () 
{ 
    local cur="${COMP_WORDS[COMP_CWORD]}";
    local first="${COMP_WORDS[1]}";
    COMPREPLY=();
    case "${first}" in 
        system)
            case "${cur}" in 
                -*)
                    local opts="--destination --no-archive
                            --sos ${_rhsm_debug_common_opts}";
                    COMPREPLY=($( compgen -W "${opts}" -- "$cur" ));
                    return 0
                ;;
            esac;
            COMPREPLY=($( compgen -o filenames -- "$cur" ));
            return 0
        ;;
    esac;
    COMPREPLY=($(compgen -W "system" -- ${cur}));
    return 0
}

_rhsmcertd () 
{ 
    local first cur prev opts base;
    COMPREPLY=();
    first="${COMP_WORDS[1]}";
    cur="${COMP_WORDS[COMP_CWORD]}";
    prev="${COMP_WORDS[COMP_CWORD-1]}";
    opts="-h --help -c --cert-check-interval --cert-interval -d --debug --heal-interval -i --auto-attach-interval -n --now -s --no-splay -a --auto-registration -r --auto-registration-interval";
    case "${cur}" in 
        -*)
            COMPREPLY=($(compgen -W "${opts}" -- ${cur}));
            return 0
        ;;
    esac;
    COMPREPLY=($(compgen -W "${opts}" -- ${cur}));
    return 0
}

_rl_enabled () 
{ 
    [[ "$( bind -v )" = *$1+([[:space:]])on* ]]
}

_root_command () 
{ 
    local PATH=$PATH:/sbin:/usr/sbin:/usr/local/sbin;
    local root_command=$1;
    _command
}

_rpmdev_archives () 
{ 
    if [[ ${#@} -ne 0 ]]; then
        local cur prev;
        _rpmdev_curprev "$2" "$3";
    fi;
    _filedir '@([rs]pm|deb|zip|?([ejtw])ar|tzo|[glx7]z|bz2|lzma|lrz|t@(bz?(2)|[glx]z)|cpio|arj|zoo|cab|rar|ace|lha)'
}

_rpmdev_bumpspec () 
{ 
    COMPREPLY=();
    local i;
    for i in ${COMP_WORDS[@]};
    do
        [[ "$i" == -@(h|-help|v|-version) ]] && return 0;
    done;
    local cur prev;
    _rpmdev_curprev "$2" "$3";
    [[ $prev == -@(c|-comment|u|-userstring) ]] && return 0;
    if [[ "$cur" == -* ]]; then
        COMPREPLY=($( compgen -W '--help --comment --userstring --rightmost
                                   --verbose --version' -- "$cur" ));
    else
        _filedir spec;
    fi
}

_rpmdev_curprev () 
{ 
    if declare -F _get_comp_words_by_ref &>/dev/null; then
        _get_comp_words_by_ref cur prev;
    else
        cur=$1 prev=$2;
    fi
}

_rpmdev_diff () 
{ 
    COMPREPLY=();
    local i;
    for i in ${COMP_WORDS[@]};
    do
        [[ "$i" == -@(h|-help|v|-version) ]] && return 0;
    done;
    local cur prev;
    _rpmdev_curprev "$2" "$3";
    if [[ "$cur" == -* ]]; then
        COMPREPLY=($( compgen -W '--contents --list --long-list --metadata
            --help --version' -- "$cur" ));
        return 0;
    fi;
    _rpmdev_archives
}

_rpmdev_extract () 
{ 
    COMPREPLY=();
    local i;
    for i in ${COMP_WORDS[@]};
    do
        [[ "$i" == -@(h|v) ]] && return 0;
    done;
    local cur prev;
    _rpmdev_curprev "$2" "$3";
    if [[ $prev == -C ]]; then
        _filedir -d;
        return 0;
    fi;
    if [[ "$cur" == -* ]]; then
        COMPREPLY=($( compgen -W '-q -f -C -h -v' -- "$cur" ));
        return 0;
    fi;
    _rpmdev_archives
}

_rpmdev_installed_packages () 
{ 
    if declare -F _rpm_installed_packages &>/dev/null; then
        _rpm_installed_packages;
    else
        if declare -F _xfunc &>/dev/null; then
            _xfunc rpm _rpm_installed_packages;
        fi;
    fi
}

_rpmdev_newspec () 
{ 
    COMPREPLY=();
    local i;
    for i in ${COMP_WORDS[@]};
    do
        [[ "$i" == -@(h|-help|v|-version) ]] && return 0;
    done;
    local cur prev;
    _rpmdev_curprev "$2" "$3";
    case $prev in 
        -o | --output)
            _filedir spec;
            return 0
        ;;
        -t | --type)
            COMPREPLY=($( command ls /etc/rpmdevtools/spectemplate-*.spec 2>/dev/null ));
            COMPREPLY=(${COMPREPLY[@]%.spec});
            COMPREPLY=(${COMPREPLY[@]#/etc/rpmdevtools/spectemplate-});
            COMPREPLY=($( compgen -W '${COMPREPLY[@]}' -- "$cur" ));
            return 0
        ;;
        -r | --rpm-version)
            COMPREPLY=($( compgen -W '4.3 4.4 4.6 4.8' -- "$cur" ));
            return 0
        ;;
    esac;
    if [[ "$cur" == -* ]]; then
        COMPREPLY=($( compgen -W '--output --type --macros --rpm-version
            --help --version' -- "$cur" ));
        return 0;
    fi;
    _filedir spec
}

_rpmdev_rmdevelrpms () 
{ 
    COMPREPLY=();
    local i;
    for i in ${COMP_WORDS[@]};
    do
        [[ "$i" == -@(h|-help|v|-version) ]] && return 0;
    done;
    local cur prev;
    _rpmdev_curprev "$2" "$3";
    [[ $prev == --@(qf|queryformat) ]] && return 0;
    COMPREPLY=($( compgen -W '--help --list-only --queryformat --yes
                               --version' -- "$cur" ))
}

_rpmdev_rpmfiles () 
{ 
    if [[ ${#@} -ne 0 ]]; then
        local cur prev;
        _rpmdev_curprev "$2" "$3";
    fi;
    _filedir '[rs]pm'
}

_rpmdev_setuptree () 
{ 
    local cur prev;
    _rpmdev_curprev "$2" "$3";
    if [[ "$cur" == -* ]]; then
        COMPREPLY=($( compgen -W '-d' -- "$cur" ));
    fi
}

_rpmdev_vercmp () 
{ 
    COMPREPLY=();
    local i;
    for i in ${COMP_WORDS[@]};
    do
        [[ "$i" == -@(h|-help|u|-usage) ]] && return 0;
    done;
    local cur prev;
    _rpmdev_curprev "$2" "$3";
    if [[ $cur == -* ]]; then
        COMPREPLY=($( compgen -W '--help' -- "$cur" ));
    fi
}

_rpminfo () 
{ 
    COMPREPLY=();
    local i;
    for i in ${COMP_WORDS[@]};
    do
        [[ "$i" == -@(h|-help) ]] && return 0;
    done;
    local cur prev;
    _rpmdev_curprev "$2" "$3";
    case $prev in 
        -o | --output)
            _filedir;
            return 0
        ;;
        -T | --tmp-dir)
            _filedir -d;
            return 0
        ;;
    esac;
    if [[ "$cur" == -* ]]; then
        COMPREPLY=($( compgen -W '--help --verbose --quiet -qq --installed
                                   --executables --libraries --pic --no_pic
                                   --pie --no_pie --rpath --rpath_odd --split
                                   --test --output --tmp-dir' -- "$cur" ));
        return 0;
    fi;
    [[ $cur != */* ]] && _rpmdev_installed_packages;
    _rpmdev_rpmfiles
}

_rpmls () 
{ 
    COMPREPLY=();
    local cur prev;
    _rpmdev_curprev "$2" "$3";
    if [[ "$cur" == -* ]]; then
        COMPREPLY=($( compgen -W '-l' -- "$cur" ));
        return 0;
    fi;
    [[ $cur != */* ]] && _rpmdev_installed_packages;
    _rpmdev_rpmfiles
}

_scl () 
{ 
    local cur prev opts;
    COMPREPLY=();
    cur="${COMP_WORDS[COMP_CWORD]}";
    prev="${COMP_WORDS[COMP_CWORD-1]}";
    opts="-l --list";
    if [[ ${cur} == -* ]]; then
        COMPREPLY=($(compgen -W "${opts}" -- ${cur}));
        return 0;
    fi;
    local collections=($(find /etc/scl/prefixes -maxdepth 1 -mindepth 1 -type f -exec basename {} \; | sort -u));
    if ((COMP_CWORD == 1)); then
        local scriptlets=();
        for col in ${collections[@]};
        do
            local prefix=`cat /etc/scl/prefixes/$col`;
            scriptlets+=($(find $prefix/$col/* -maxdepth 1 -type f -exec basename {} \; | sort -u));
        done;
        scriptlets_str=`echo ${scriptlets[@]} | sed 's/ /\n/g'| sort -u`;
        COMPREPLY=($(compgen -W "$scriptlets_str register deregister" -- ${cur}));
        return 0;
    fi;
    if [[ ${cur} == \'* || ${cur} == \"* ]]; then
        return 0;
    fi;
    if [ $prev == "register" ]; then
        compopt -o nospace;
        COMPREPLY=($(compgen -A directory ${cur}));
        return 0;
    fi;
    COMPREPLY=($(compgen -W "${collections[*]}" -- ${cur}));
    return 0
}

_service () 
{ 
    local cur prev words cword;
    _init_completion || return;
    [[ $cword -gt 2 ]] && return 0;
    if [[ $cword -eq 1 && $prev == ?(*/)service ]]; then
        _services;
        [[ -e /etc/mandrake-release ]] && _xinetd_services;
    else
        local sysvdirs;
        _sysvdirs;
        COMPREPLY=($( compgen -W '`sed -e "y/|/ /" \
            -ne "s/^.*\(U\|msg_u\)sage.*{\(.*\)}.*$/\2/p" \
            ${sysvdirs[0]}/${prev##*/} 2>/dev/null` start stop' -- "$cur" ));
    fi
}

_services () 
{ 
    local sysvdirs;
    _sysvdirs;
    local restore_nullglob=$(shopt -p nullglob);
    shopt -s nullglob;
    COMPREPLY=($( printf '%s\n' ${sysvdirs[0]}/!($_backup_glob|functions) ));
    $restore_nullglob;
    COMPREPLY+=($( systemctl list-units --full --all 2>/dev/null |         awk '$1 ~ /\.service$/ { sub("\\.service$", "", $1); print $1 }' ));
    COMPREPLY=($( compgen -W '${COMPREPLY[@]#${sysvdirs[0]}/}' -- "$cur" ))
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
    local -a sigs=($( compgen -P "$1" -A signal "SIG${cur#$1}" ));
    COMPREPLY+=("${sigs[@]/#${1}SIG/${1}}")
}

_source_highlight () 
{ 
    local cur prev opts;
    COMPREPLY=();
    cur="${COMP_WORDS[COMP_CWORD]}";
    prev="${COMP_WORDS[COMP_CWORD-1]}";
    opts="-h --help -V --version -i --input -o --output -s --src-lang     --lang-list --outlang-list -f --out-format -d --doc --no-doc -c --css     -T --title -t --tab -H --header -F --footer --style-file --outlang-def     --outlang-map --data-dir --output-dir --lang-def --lang-map --show-lang-elements     --infer-lang -n --line-number --line-number-ref --line-range --range-separator --range-context --regex-range --gen-references --ctags-file     --ctags -v --verbose --statistics --gen-version --check-lang --check-outlang     --failsafe -g --debug-langdef --show-regex";
    if [[ "${cur}" == -* || ${COMP_CWORD} -eq 1 ]]; then
        COMPREPLY=($(compgen -W "${opts}" -- "${cur}"));
        return 0;
    fi;
    case "${prev}" in 
        -T | --title | -t | --tab | --gen-references | --line-range | --range-separator | --range-context | --regex-range)
            COMPREPLY=()
        ;;
        -i | --input | -o | --output | -c | --css | -H | --header | -F | --footer | --style-file | --outlang-def | --outlang-map | --lang-def | --lang-map | --show-lang-elements | --ctags-file | --check-lang | --check-outlang | --show-regex)
            COMPREPLY=($(compgen -A file -- "${cur}"))
        ;;
        -s | --src-lang)
            COMPREPLY=($(compgen -W "C H ac ada am applescript asm autoconf awk bat bib bison c caml cc changelog clipper cls cobol conf cpp cs csh csharp css 		d diff docbook dtx el eps erlang fixed-fortran flex fortran free-fortran glsl h haskell haxe hh hpp htm html hx in ini java javalog javascript js kcfg kdevelop kidl ksh l lang 		langdef latex ldap ldif lex lgt lisp ll log logtalk lsm lua m4 manifest ml mli moc opa outlang oz pas pascal patch pc perl php php3 php4 php5 		pl pm po pot postscript prolog properties proto ps py python rb rc ruby scala scheme sh shell sig sl slang slsh sml spec sql sty style syslog tcl tcsh texinfo 		tex tk tml txt ui upc vala vbscript xhtml xml xorg y yacc yy" -- "${cur}"))
        ;;
        -f | --out-format)
            COMPREPLY=($(compgen -W "docbook esc html html-css htmltable	    javadoc latex latexcolor odf texinfo xhtml xhtml-css xhtmltable" -- "${cur}"))
        ;;
        --data-dir | --output-dir)
            COMPREPLY=($(compgen -A directory -- "${cur}"))
        ;;
        *)
            COMPREPLY=($(compgen -W "${opts/${preprev}}" -- "${cur}"))
        ;;
    esac
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

_spectool () 
{ 
    COMPREPLY=();
    local i;
    for i in ${COMP_WORDS[@]};
    do
        [[ "$i" == -@(h|-help) ]] && return 0;
    done;
    local cur prev;
    _rpmdev_curprev "$2" "$3";
    case $prev in 
        -C | --directory)
            _filedir -d;
            return 0
        ;;
        -s | --source | -p | --patch | -d | --define)
            return 0
        ;;
    esac;
    if [[ "$cur" == -* ]]; then
        COMPREPLY=($( compgen -W '--list-files --get-files --help --all
                                   --sources --patches --source --patch
                                   --define --directory --sourcedir --dry-run
                                   --force --debug' -- "$cur" ));
    else
        _filedir spec;
    fi
}

_split_longopt () 
{ 
    if [[ "$cur" == --?*=* ]]; then
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

_subscription_manager () 
{ 
    local first cur prev opts base;
    COMPREPLY=();
    first=${COMP_WORDS[1]};
    cur="${COMP_WORDS[COMP_CWORD]}";
    prev="${COMP_WORDS[COMP_CWORD-1]}";
    opts="addons attach auto-attach clean config environments facts identity import list orgs
        repo-override plugins redeem refresh register release remove repos role service-level status
        subscribe unregister unsubscribe usage version ${_subscription_manager_help_opts}";
    case "${first}" in 
        addons | clean | config | environments | facts | identity | import | list | orgs | plugins | redeem | refresh | register | release | repos | role | status | unregister | usage | version)
            "_subscription_manager_$first" "${cur}" "${prev}";
            return 0
        ;;
        service-level)
            "_subscription_manager_service_level" "${cur}" "${prev}";
            return 0
        ;;
        attach | subscribe)
            "_subscription_manager_attach" "${cur}" "${prev}";
            return 0
        ;;
        remove | unsubscribe)
            "_subscription_manager_remove" "${cur}" "${prev}";
            return 0
        ;;
        auto-attach)
            "_subscription_manager_auto_attach" "${cur}" "${prev}";
            return 0
        ;;
        repo-override)
            "_subscription_manager_repo_override" "${cur}" "${prev}";
            return 0
        ;;
        *)

        ;;
    esac;
    COMPREPLY=($(compgen -W "${opts}" -- ${cur}));
    return 0
}

_subscription_manager_addons () 
{ 
    local opts="${_subscription_manager_common_opts} --add --remove --unset";
    COMPREPLY=($(compgen -W "${opts}" -- ${1}))
}

_subscription_manager_attach () 
{ 
    case $prev in 
        --pool)
            POOLS=$(LANG=C /usr/sbin/subscription-manager list --available 2>/dev/null | sed -ne "s|Pool ID:\s*\(\S*\)|\1|p" );
            COMPREPLY=($(compgen -W "${POOLS}" -- ${1}));
            return 0
        ;;
    esac;
    local opts="--auto --pool --quantity --servicelevel --file
              ${_subscription_manager_common_opts}";
    COMPREPLY=($(compgen -W "${opts}" -- ${1}))
}

_subscription_manager_auto_attach () 
{ 
    local opts="--enable --disable --show ${_subscription_manager_common_opts}";
    COMPREPLY=($(compgen -W "${opts}" -- ${1}))
}

_subscription_manager_clean () 
{ 
    local opts="-h --help";
    COMPREPLY=($(compgen -W "${opts}" -- ${1}))
}

_subscription_manager_config () 
{ 
    CONFIG_OPTS=$(LANG=C subscription-manager config --help | sed -ne "s|\s*\(\-\-.*\..*\)\=.*\..*|\1|p");
    local opts="--list --remove
              ${CONFIG_OPTS}
              -h --help";
    COMPREPLY=($(compgen -W "${opts}" -- ${1}))
}

_subscription_manager_environments () 
{ 
    local opts="--org --password --username
              ${_subscription_manager_common_url_opts}
              ${_subscription_manager_common_opts}";
    COMPREPLY=($(compgen -W "${opts}" -- ${1}))
}

_subscription_manager_facts () 
{ 
    local opts="--list --update
              ${_subscription_manager_common_opts}";
    COMPREPLY=($(compgen -W "${opts}" -- ${1}))
}

_subscription_manager_identity () 
{ 
    local opts="--force --password --regenerate --username
              ${_subscription_manager_common_opts}";
    COMPREPLY=($(compgen -W "${opts}" -- ${1}))
}

_subscription_manager_import () 
{ 
    local opts="--certificate
              -h --help";
    COMPREPLY=($(compgen -W "${opts}" -- ${1}))
}

_subscription_manager_list () 
{ 
    local opts="--afterdate --all --available --consumed --installed
              --ondate --servicelevel
              --match-installed --no-overlap
              --matches
              --pool-only
              ${_subscription_manager_common_opts}";
    COMPREPLY=($(compgen -W "${opts}" -- ${1}))
}

_subscription_manager_orgs () 
{ 
    local opts="--password --username
              ${_subscription_manager_common_url_opts}
              ${_subscription_manager_common_opts}";
    COMPREPLY=($(compgen -W "${opts}" -- ${1}))
}

_subscription_manager_plugins () 
{ 
    local opts="--list --listhooks --listslots --verbose
              -h --help";
    COMPREPLY=($(compgen -W "${opts}" -- ${1}))
}

_subscription_manager_redeem () 
{ 
    local opts="--email --locale
              ${_subscription_manager_common_opts}";
    COMPREPLY=($(compgen -W "${opts}" -- ${1}))
}

_subscription_manager_refresh () 
{ 
    local opts="--force
              ${_subscription_manager_common_opts}";
    COMPREPLY=($(compgen -W "${opts}" -- ${1}))
}

_subscription_manager_register () 
{ 
    local opts="--activationkey --auto-attach --autosubscribe --baseurl --consumerid
              --environment --force --name --org --password --release
              --servicelevel --username
              ${_subscription_manager_common_url_opts}
              ${_subscription_manager_common_opts}";
    COMPREPLY=($(compgen -W "${opts}" -- ${1}))
}

_subscription_manager_release () 
{ 
    local opts="--list --set --show --unset
                  ${_subscription_manager_common_opts}";
    COMPREPLY=($(compgen -W "${opts}" -- ${1}))
}

_subscription_manager_remove () 
{ 
    case $prev in 
        --serial)
            SERIALS=$(LANG=C /usr/sbin/subscription-manager list --consumed 2>/dev/null | sed -ne "s|Serial:\s*\(\S*\)|\1|p" );
            COMPREPLY=($(compgen -W "${SERIALS}" -- ${1}));
            return 0
        ;;
        --pool)
            POOLS=$(LANG=C /usr/sbin/subscription-manager list --consumed 2>/dev/null | sed -ne "s|Pool ID:\s*(\S*\)|\1|p" );
            COMPREPLY=($(compgen -W "${POOLS}" -- ${1}));
            return 0
        ;;
    esac;
    local opts="--serial --pool --all
              ${_subscription_manager_common_opts}";
    COMPREPLY=($(compgen -W "${opts}" -- ${1}))
}

_subscription_manager_repo_override () 
{ 
    local opts="--repo --list --add --remove --remove-all
              ${_subscription_manager_common_opts}";
    COMPREPLY=($(compgen -W "${opts}" -- ${1}))
}

_subscription_manager_repos () 
{ 
    local opts="--disable --enable --list --list-enabled --list-disabled
              ${_subscription_manager_common_opts}";
    COMPREPLY=($(compgen -W "${opts}" -- ${1}))
}

_subscription_manager_role () 
{ 
    local opts="${_subscription_manager_common_opts} --set --unset";
    COMPREPLY=($(compgen -W "${opts}" -- ${1}))
}

_subscription_manager_service_level () 
{ 
    local opts="--list --org --set --show
                --unset --username --password
                ${_subscription_manager_common_url_opts}
                ${_subscription_manager_common_opts}";
    COMPREPLY=($(compgen -W "${opts}" -- ${1}))
}

_subscription_manager_status () 
{ 
    local opts="${_subscription_manager_common_opts} --ondate";
    COMPREPLY=($(compgen -W "${opts}" -- ${1}))
}

_subscription_manager_unregister () 
{ 
    local opts="${_subscription_manager_common_opts}";
    COMPREPLY=($(compgen -W "${opts}" -- ${1}))
}

_subscription_manager_usage () 
{ 
    local opts="${_subscription_manager_common_opts} --set --unset";
    COMPREPLY=($(compgen -W "${opts}" -- ${1}))
}

_subscription_manager_version () 
{ 
    local opts="${_subscription_manager_common_opts}";
    COMPREPLY=($(compgen -W "${opts}" -- ${1}))
}

_syspurpose () 
{ 
    local first cur prev opts base;
    COMPREPLY=();
    first=${COMP_WORDS[1]};
    cur="${COMP_WORDS[COMP_CWORD]}";
    prev="${COMP_WORDS[COMP_CWORD-1]}";
    opts="set unset add remove set-role unset-role set-usage unset-usage add-addons remove-addons
  set-sla unset-sla show -h --help";
    COMPREPLY=($(compgen -W "${opts}" -- ${cur}));
    return 0
}

_sysvdirs () 
{ 
    sysvdirs=();
    [[ -d /etc/rc.d/init.d ]] && sysvdirs+=(/etc/rc.d/init.d);
    [[ -d /etc/init.d ]] && sysvdirs+=(/etc/init.d);
    [[ -f /etc/slackware-version ]] && sysvdirs=(/etc/rc.d)
}

_terms () 
{ 
    COMPREPLY+=($( compgen -W         "$( sed -ne 's/^\([^[:space:]#|]\{2,\}\)|.*/\1/p' /etc/termcap             2>/dev/null )" -- "$cur" ));
    COMPREPLY+=($( compgen -W "$( { toe -a 2>/dev/null || toe 2>/dev/null; }         | awk '{ print $1 }' | sort -u )" -- "$cur" ))
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
    if [[ $1 == \~* && $1 != */* ]]; then
        COMPREPLY=($( compgen -P '~' -u "${1#\~}" ));
        result=${#COMPREPLY[@]};
        [[ $result -gt 0 ]] && compopt -o filenames 2> /dev/null;
    fi;
    return $result
}

_trace_cmd_complete () 
{ 
    local cur="";
    local prev="";
    local words=();
    _get_comp_words_by_ref -n : cur prev words;
    if [ "$prev" == "trace-cmd" ]; then
        local cmds=$(trace-cmd --help 2>/dev/null |                                 grep " - " | sed 's/^ *//; s/ -.*//');
        COMPREPLY=($(compgen -W "${cmds}" -- "${cur}"));
        return;
    fi;
    local w="${words[1]}";
    case "$w" in 
        list)
            __trace_cmd_list_complete "${prev}" "${cur}" ${words[@]};
            return 0
        ;;
        show)
            __trace_cmd_show_complete "${prev}" "${cur}" ${words[@]};
            return 0
        ;;
        extract)
            __trace_cmd_extract_complete "${prev}" "${cur}" ${words[@]};
            return 0
        ;;
        record)
            __trace_cmd_record_complete "${prev}" "${cur}" ${words[@]};
            return 0
        ;;
        stream)
            __trace_cmd_record_complete "${prev}" "${cur}" ${words[@]};
            return 0
        ;;
        start)
            __trace_cmd_record_complete "${prev}" "${cur}" ${words[@]};
            return 0
        ;;
        profile)
            __trace_cmd_record_complete "${prev}" "${cur}" ${words[@]};
            return 0
        ;;
        report)
            __trace_cmd_report_complete "${prev}" "${cur}" ${words[@]};
            return 0
        ;;
        *)
            __show_command_options "$w" "${cur}"
        ;;
    esac
}

_uids () 
{ 
    if type getent &>/dev/null; then
        COMPREPLY=($( compgen -W '$( getent passwd | cut -d: -f3 )' -- "$cur" ));
    else
        if type perl &>/dev/null; then
            COMPREPLY=($( compgen -W '$( perl -e '"'"'while (($uid) = (getpwent)[2]) { print $uid . "\n" }'"'"' )' -- "$cur" ));
        else
            COMPREPLY=($( compgen -W '$( cut -d: -f3 /etc/passwd )' -- "$cur" ));
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
    if unset -v "$1"; then
        if (( $# == 2 )); then
            eval $1=\"\$2\";
        else
            eval $1=\(\"\${@:2}\"\);
        fi;
    fi
}

_upvars () 
{ 
    if ! (( $# )); then
        echo "${FUNCNAME[0]}: usage: ${FUNCNAME[0]} [-v varname" "value] | [-aN varname [value ...]] ..." 1>&2;
        return 2;
    fi;
    while (( $# )); do
        case $1 in 
            -a*)
                [[ -n ${1#-a} ]] || { 
                    echo "bash: ${FUNCNAME[0]}: \`$1': missing" "number specifier" 1>&2;
                    return 1
                };
                printf %d "${1#-a}" &>/dev/null || { 
                    echo "bash:" "${FUNCNAME[0]}: \`$1': invalid number specifier" 1>&2;
                    return 1
                };
                [[ -n "$2" ]] && unset -v "$2" && eval $2=\(\"\${@:3:${1#-a}}\"\) && shift $((${1#-a} + 2)) || { 
                    echo "bash: ${FUNCNAME[0]}:" "\`$1${2+ }$2': missing argument(s)" 1>&2;
                    return 1
                }
            ;;
            -v)
                [[ -n "$2" ]] && unset -v "$2" && eval $2=\"\$3\" && shift 3 || { 
                    echo "bash: ${FUNCNAME[0]}: $1: missing" "argument(s)" 1>&2;
                    return 1
                }
            ;;
            *)
                echo "bash: ${FUNCNAME[0]}: $1: invalid option" 1>&2;
                return 1
            ;;
        esac;
    done
}

_usb_ids () 
{ 
    COMPREPLY+=($( compgen -W         "$( PATH="$PATH:/sbin" lsusb | awk '{print $6}' )" -- "$cur" ))
}

_user_at_host () 
{ 
    local cur prev words cword;
    _init_completion -n : || return;
    if [[ $cur == *@* ]]; then
        _known_hosts_real "$cur";
    else
        COMPREPLY=($( compgen -u -- "$cur" ));
    fi;
    return 0
}

_usergroup () 
{ 
    if [[ $cur = *\\\\* || $cur = *:*:* ]]; then
        return;
    else
        if [[ $cur = *\\:* ]]; then
            local prefix;
            prefix=${cur%%*([^:])};
            prefix=${prefix//\\};
            local mycur="${cur#*[:]}";
            if [[ $1 == -u ]]; then
                _allowed_groups "$mycur";
            else
                local IFS='
';
                COMPREPLY=($( compgen -g -- "$mycur" ));
            fi;
            COMPREPLY=($( compgen -P "$prefix" -W "${COMPREPLY[@]}" ));
        else
            if [[ $cur = *:* ]]; then
                local mycur="${cur#*:}";
                if [[ $1 == -u ]]; then
                    _allowed_groups "$mycur";
                else
                    local IFS='
';
                    COMPREPLY=($( compgen -g -- "$mycur" ));
                fi;
            else
                if [[ $1 == -u ]]; then
                    _allowed_users "$cur";
                else
                    local IFS='
';
                    COMPREPLY=($( compgen -u -- "$cur" ));
                fi;
            fi;
        fi;
    fi
}

_userland () 
{ 
    local userland=$( uname -s );
    [[ $userland == @(Linux|GNU/*) ]] && userland=GNU;
    [[ $userland == $1 ]]
}

_variables () 
{ 
    if [[ $cur =~ ^(\$\{?)([A-Za-z0-9_]*)$ ]]; then
        [[ $cur == *{* ]] && local suffix=} || local suffix=;
        COMPREPLY+=($( compgen -P ${BASH_REMATCH[1]} -S "$suffix" -v --             "${BASH_REMATCH[2]}" ));
        return 0;
    fi;
    return 1
}

_xfunc () 
{ 
    set -- "$@";
    local srcfile=$1;
    shift;
    declare -F $1 &>/dev/null || { 
        local compdir=./completions;
        [[ $BASH_SOURCE == */* ]] && compdir="${BASH_SOURCE%/*}/completions";
        . "$compdir/$srcfile"
    };
    "$@"
}

_xinetd_services () 
{ 
    local xinetddir=/etc/xinetd.d;
    if [[ -d $xinetddir ]]; then
        local restore_nullglob=$(shopt -p nullglob);
        shopt -s nullglob;
        local -a svcs=($( printf '%s\n' $xinetddir/!($_backup_glob) ));
        $restore_nullglob;
        COMPREPLY+=($( compgen -W '${svcs[@]#$xinetddir/}' -- "$cur" ));
    fi
}

_yu_builddep () 
{ 
    local cur prev words=() split=false;
    _yu_init_completion "$2" "$3";
    _yum_complete_baseopts "$cur" "$prev" && return 0;
    case $prev in 
        --target)
            declare -F _rpm_buildarchs &>/dev/null && _rpm_buildarchs;
            return 0
        ;;
    esac;
    $split && return 0;
    if [[ $cur == -* ]]; then
        COMPREPLY=($( compgen -W '$( _yum_baseopts 2>/dev/null )' -- "$cur" ));
        return 0;
    fi;
    COMPREPLY=($( compgen -f -o plusdirs -X "!*.spec" -- "$cur" ));
    [[ $cur != */* && $cur != ~* ]] && _yum_list all "$cur" 2> /dev/null
}

_yu_debug_dump () 
{ 
    COMPREPLY=();
    case $3 in 
        -h | --help)
            return 0
        ;;
    esac;
    if [[ $2 == -* ]]; then
        COMPREPLY=($( compgen -W '--help --norepos' -- "$2" ));
        return 0;
    fi;
    COMPREPLY=($( compgen -f -o plusdirs -- "$cur" ))
}

_yu_debuginfo_install () 
{ 
    local cur prev words=() split=false;
    _yu_init_completion "$2" "$3";
    _yum_complete_baseopts "$cur" "$prev" && return 0;
    $split && return 0;
    if [[ $cur == -* ]]; then
        COMPREPLY=($( compgen -W '$( _yum_baseopts 2>/dev/null )
            --no-debuginfo-plugin' -- "$cur" ));
        return 0;
    fi;
    _yum_list all "$cur"
}

_yu_init_completion () 
{ 
    if declare -F _get_comp_words_by_ref &>/dev/null; then
        _get_comp_words_by_ref -n = cur prev words;
    else
        cur=$1 prev=$2 words=("${COMP_WORDS[@]}");
    fi;
    declare -F _split_longopt &>/dev/null && _split_longopt && split=true
}

_yu_package_cleanup () 
{ 
    local cur prev words=() split=false;
    _yu_init_completion "$2" "$3";
    _yum_complete_baseopts "$cur" "$prev" 2> /dev/null && return 0;
    case $prev in 
        --leaf-regex | --qf | --queryformat)
            return 0
        ;;
        --count)
            COMPREPLY=($( compgen -W '1 2 3 4 5 6 7 8 9' -- "$cur" ));
            return 0
        ;;
    esac;
    $split && return 0;
    COMPREPLY=($( compgen -W '$( _yum_baseopts 2>/dev/null ) --problems
        --queryformat --orphans --dupes --cleandupes --noscripts --leaves --all
        --leaf-regex --exclude-devel --exclude-bin --oldkernels --count
        --keepdevel' -- "$cur" ))
}

_yu_repo_graph () 
{ 
    local cur prev words=() split=false;
    _yu_init_completion "$2" "$3";
    case $prev in 
        -h | --help)
            return 0
        ;;
        --repoid)
            _yum_helper repolist all "$cur" 2> /dev/null;
            return 0
        ;;
        -c)
            COMPREPLY=($( compgen -f -o plusdirs -X '!*.conf' -- "$cur" ));
            return 0
        ;;
    esac;
    $split && return 0;
    COMPREPLY=($( compgen -W '--help --repoid -c' -- "$cur" ))
}

_yu_repo_rss () 
{ 
    COMPREPLY=();
    case $3 in 
        -h | --help | -l | -t | -d | -r | -a)
            return 0
        ;;
        -f)
            COMPREPLY=($( compgen -f -o plusdirs -X '!*.xml' -- "$cur" ));
            return 0
        ;;
        -c)
            COMPREPLY=($( compgen -f -o plusdirs -X '!*.conf' -- "$cur" ));
            return 0
        ;;
    esac;
    COMPREPLY=($( compgen -W '--help -f -l -t -d -r --tempcache -g -a -c'         -- "$2" ));
    [[ $2 == -* ]] || _yum_helper repolist all "$2" 2> /dev/null || return 0
}

_yu_repoclosure () 
{ 
    local cur prev words=() split=false;
    _yu_init_completion "$2" "$3";
    case $prev in 
        -h | --help | -a | --arch | --basearch | --repofrompath)
            return 0
        ;;
        -c | --config)
            COMPREPLY=($( compgen -f -o plusdirs -X '!*.conf' -- "$cur" ));
            return 0
        ;;
        -l | --lookaside | -r | --repoid)
            _yum_helper repolist all "$cur" 2> /dev/null;
            return 0
        ;;
        -p | --pkg)
            _yum_list all "$cur" 2> /dev/null;
            return 0
        ;;
        -g | --group)
            _yum_helper groups list all "$cur" 2> /dev/null;
            return 0
        ;;
    esac;
    $split && return 0;
    COMPREPLY=($( compgen -W '--help --config --arch --basearch --builddeps
        --lookaside --repoid --tempcache --quiet --newest --repofrompath --pkg
        --group' -- "$cur" ))
}

_yu_repodiff () 
{ 
    local cur prev words=() split=false;
    _yu_init_completion "$2" "$3";
    case $prev in 
        -h | --help | --version | -n | --new | -o | --old | -a | --archlist)
            return 0
        ;;
    esac;
    $split && return 0;
    COMPREPLY=($( compgen -W '--version --help --new --old --quiet --archlist
        --compare-arch --size --downgrade --simple' -- "$cur" ))
}

_yu_repomanage () 
{ 
    local cur prev words=() split=false;
    _yu_init_completion "$2" "$3";
    case $prev in 
        -h | --help)
            return 0
        ;;
        -k | --keep)
            COMPREPLY=($( compgen -W '1 2 3 4 5 6 7 8 9' -- "$cur" ));
            return 0
        ;;
    esac;
    $split && return 0;
    if [[ $cur == -* ]]; then
        COMPREPLY=($( compgen -W '--old --new --space --keep --nocheck
            --help' -- "$cur" ));
        return 0;
    fi;
    COMPREPLY=($( compgen -d -- "$cur" ))
}

_yu_repoquery () 
{ 
    local cur prev words=() split=false;
    _yu_init_completion "$2" "$3";
    local word groupmode=false;
    for word in "${words[@]}";
    do
        case $word in 
            -g | --group)
                groupmode=true;
                break
            ;;
        esac;
    done;
    case $prev in 
        -h | --help | --version | --qf | --queryformat | --archlist | --repofrompath | --setopt)
            return 0
        ;;
        -f | --file)
            COMPREPLY=($( compgen -f -o plusdirs -- "$cur" ));
            return 0
        ;;
        -l | --list | -i | --info | -R | --requires)
            if $groupmode; then
                _yum_helper groups list all "$cur" 2> /dev/null;
            else
                declare -F _yum_atgroups &>/dev/null && _yum_atgroups "$cur" || _yum_list all "$cur" 2> /dev/null;
            fi;
            return 0
        ;;
        --grouppkgs)
            COMPREPLY=($( compgen -W 'all default optional mandatory'                 -- "$cur" ));
            return 0
        ;;
        --pkgnarrow)
            COMPREPLY=($( compgen -W 'all available updates installed extras
                obsoletes recent repos' -- "$cur" ));
            return 0
        ;;
        --repoid)
            _yum_helper repolist all "$cur" 2> /dev/null;
            return 0
        ;;
        --enablerepo)
            _yum_helper repolist disabled "$cur" 2> /dev/null;
            return 0
        ;;
        --disablerepo)
            _yum_helper repolist enabled "$cur" 2> /dev/null;
            return 0
        ;;
        -c | --config)
            COMPREPLY=($( compgen -f -o plusdirs -X '!*.conf' -- "$cur" ));
            return 0
        ;;
        --level)
            COMPREPLY=($( compgen -W '{1..9} all' -- "$cur" ));
            return 0
        ;;
        --output)
            COMPREPLY=($( compgen -W 'text ascii-tree dot-tree' -- "$cur" ));
            return 0
        ;;
        --search-fields)
            COMPREPLY=($( compgen -W 'name summary description' -- "$cur" ));
            return 0
        ;;
        --installroot)
            COMPREPLY=($( compgen -d -- "$cur" ));
            return 0
        ;;
    esac;
    $split && return 0;
    if [[ $cur == -* ]]; then
        COMPREPLY=($( compgen -W '--version --help --list --info --file
            --queryformat --groupmember --all --requires --provides --obsoletes
            --conflicts --changelog --location --nevra --envra --nvr --source
            --srpm --resolve --exactdeps --recursive --whatprovides
            --whatrequires --whatobsoletes --whatconflicts --group --grouppkgs
            --archlist --pkgnarrow --installed --show-duplicates --repoid
            --enablerepo --disablerepo --repofrompath --plugins --quiet
            --verbose --cache --tempcache --querytags --config --level --output
            --search --search-fields --setopt --installroot' -- "$cur" ));
        return 0;
    fi;
    declare -F _yum_atgroups &>/dev/null && _yum_atgroups "$cur" || _yum_list all "$cur" 2> /dev/null
}

_yu_verifytree () 
{ 
    local cur prev words=() split=false;
    _yu_init_completion "$2" "$3";
    case $prev in 
        -h | --help | -t | --testopia)
            return 0
        ;;
    esac;
    $split && return 0;
    if [[ $cur == -* ]]; then
        COMPREPLY=($( compgen -W '--help --checkall --testopia --treeinfo'             -- "$cur" ));
        return 0;
    fi;
    COMPREPLY=($( compgen -d -- "$cur" ))
}

_yu_yumdb () 
{ 
    local cur prev words=() split=false;
    _yu_init_completion "$2" "$3";
    case $prev in 
        -h | --help | -version)
            return 0
        ;;
        -c | --config)
            COMPREPLY=($( compgen -f -o plusdirs -X '!*.conf' -- "$cur" ));
            return 0
        ;;
        shell)
            COMPREPLY=($( compgen -f -o plusdirs -- "$cur" ));
            return 0
        ;;
    esac;
    $split && return 0;
    if [ $COMP_CWORD -le 1 ]; then
        COMPREPLY=($( compgen -W 'get set del rename rename-force copy search
            exist unset info sync undeleted shell --version --help --noplugins
            --config' -- "$cur" ));
    fi
}

_yu_yumdownloader () 
{ 
    local cur prev words=() split=false;
    _yu_init_completion "$2" "$3";
    _yum_complete_baseopts "$cur" "$prev" 2> /dev/null && return 0;
    case $prev in 
        --destdir)
            COMPREPLY=($( compgen -d -- "$cur" ));
            return 0
        ;;
        --archlist)
            return 0
        ;;
    esac;
    $split && return 0;
    if [[ $cur == -* ]]; then
        COMPREPLY=($( compgen -W '$( _yum_baseopts 2>/dev/null ) --destdir
            --urls --resolve --source --archlist' -- "$cur" ));
        return 0;
    fi;
    _yum_list all "$cur"
}

_yum () 
{ 
    COMPREPLY=();
    local yum=$1 cur=$2 prev=$3 words=("${COMP_WORDS[@]}");
    declare -F _get_comp_words_by_ref &>/dev/null && _get_comp_words_by_ref -n = cur prev words;
    local cmds=(check check-update clean deplist distro-sync downgrade groups help history info install list load-transaction makecache provides reinstall remove repolist search shell update upgrade version);
    local i c cmd subcmd;
    for ((i=1; i < ${#words[@]}-1; i++ ))
    do
        [[ -n $cmd ]] && subcmd=${words[i]} && break;
        for c in ${cmds[@]} check-rpmdb distribution-synchronization erase group groupinfo groupinstall grouplist groupremove groupupdate grouperase install-na load-ts localinstall localupdate whatprovides;
        do
            [[ ${words[i]} == $c ]] && cmd=$c && break;
        done;
    done;
    case $cmd in 
        check | check-rpmdb)
            COMPREPLY=($( compgen -W 'dependencies duplicates all'                 -- "$cur" ));
            return 0
        ;;
        check-update | makecache | resolvedep)
            return 0
        ;;
        clean)
            [[ $prev == $cmd ]] && COMPREPLY=($( compgen -W 'expire-cache packages headers
                    metadata cache dbcache all' -- "$cur" ));
            return 0
        ;;
        deplist)
            COMPREPLY=($( compgen -f -o plusdirs -X '!*.[rs]pm' -- "$cur" ));
            _yum_list all "$cur";
            return 0
        ;;
        distro-sync | distribution-synchronization)
            [[ $prev == $cmd ]] && COMPREPLY=($( compgen -W 'full different' -- "$cur" ));
            _yum_list installed "$cur";
            return 0
        ;;
        downgrade | reinstall)
            if ! _yum_atgroups "$cur"; then
                _yum_binrpmfiles "$cur";
                _yum_list installed "$cur";
            fi;
            return 0
        ;;
        erase | remove)
            _yum_atgroups "$cur" || _yum_list installed "$cur";
            return 0
        ;;
        group*)
            if [[ ( $cmd == groups || $cmd == group ) && $prev == $cmd ]]; then
                COMPREPLY=($( compgen -W 'info install list remove summary'                     -- "$cur" ));
            else
                _yum_helper groups list all "$cur";
            fi;
            return 0
        ;;
        help)
            [[ $prev == $cmd ]] && COMPREPLY=($( compgen -W '${cmds[@]}' -- "$cur" ));
            return 0
        ;;
        history)
            if [[ $prev == $cmd ]]; then
                COMPREPLY=($( compgen -W 'info list packages-list
                    packages-info summary addon-info redo undo rollback new
                    sync stats' -- "$cur" ));
                return 0;
            fi;
            case $subcmd in 
                undo | repeat | addon | addon-info | rollback)
                    if [[ $prev == $subcmd ]]; then
                        COMPREPLY=($( compgen -W "last" -- "$cur" ));
                        _yum_transactions;
                    fi
                ;;
                redo)
                    case $prev in 
                        redo)
                            COMPREPLY=($( compgen -W "force-reinstall
                                force-remove last" -- "$cur" ));
                            _yum_transactions
                        ;;
                        reinstall | force-reinstall | remove | force-remove)
                            COMPREPLY=($( compgen -W "last" -- "$cur" ));
                            _yum_transactions
                        ;;
                    esac
                ;;
                package-list | pkg | pkgs | pkg-list | pkgs-list | package | packages | packages-list | pkg-info | pkgs-info | package-info | packages-info)
                    _yum_list available "$cur"
                ;;
                info | list | summary)
                    if [[ $subcmd != info ]]; then
                        COMPREPLY=($( compgen -W "all" -- "$cur" ));
                        [[ $cur != all ]] && _yum_list available "$cur";
                    else
                        _yum_list available "$cur";
                    fi;
                    _yum_transactions
                ;;
                sync | synchronize)
                    _yum_list installed "$cur"
                ;;
            esac;
            return 0
        ;;
        info)
            _yum_list all "$cur";
            return 0
        ;;
        install)
            if ! _yum_atgroups "$cur"; then
                _yum_binrpmfiles "$cur";
                _yum_list available "$cur";
            fi;
            return 0
        ;;
        install-na)
            _yum_list available "$cur";
            return 0
        ;;
        list)
            [[ $prev == $cmd ]] && COMPREPLY=($( compgen -W 'all available updates installed
                    extras obsoletes recent' -- "$cur" ));
            return 0
        ;;
        load-transaction | load-ts)
            COMPREPLY=($( compgen -f -o plusdirs -X '!*.yumtx' -- "$cur" ));
            return 0
        ;;
        localinstall | localupdate)
            _yum_binrpmfiles "$cur";
            return 0
        ;;
        provides | whatprovides)
            COMPREPLY=($( compgen -f -o plusdirs -- "$cur" ));
            return 0
        ;;
        repolist)
            [[ $prev == $cmd ]] && COMPREPLY=($( compgen -W 'all enabled disabled' -- "$cur" ));
            return 0
        ;;
        search)
            [[ $prev == $cmd ]] && COMPREPLY=($( compgen -W 'all' -- "$cur" ));
            return 0
        ;;
        shell)
            [[ $prev == $cmd ]] && COMPREPLY=($( compgen -f -o plusdirs -- "$cur" ));
            return 0
        ;;
        update | upgrade)
            if ! _yum_atgroups "$cur"; then
                _yum_binrpmfiles "$cur";
                _yum_list updates "$cur";
            fi;
            return 0
        ;;
        version)
            [[ $prev == $cmd ]] && COMPREPLY=($( compgen -W 'all installed available nogroups
                    grouplist groupinfo' -- "$cur" ));
            return 0
        ;;
    esac;
    local split=false;
    declare -F _split_longopt &>/dev/null && _split_longopt && split=true;
    _yum_complete_baseopts "$cur" "$prev" && return 0;
    $split && return 0;
    if [[ $cur == -* ]]; then
        COMPREPLY=($( compgen -W '$( _yum_baseopts )' -- "$cur" ));
        return 0;
    fi;
    COMPREPLY=($( compgen -W '${cmds[@]}' -- "$cur" ))
}

_yum_atgroups () 
{ 
    if [[ $1 == \@* ]]; then
        _yum_helper groups list all "${1:1}";
        COMPREPLY=("${COMPREPLY[@]/#/@}");
        return 0;
    fi;
    return 1
}

_yum_baseopts () 
{ 
    local opts='--help --tolerant --cacheonly --config --randomwait
        --debuglevel --showduplicates --errorlevel --rpmverbosity --quiet
        --verbose --assumeyes --assumeno --version --installroot --enablerepo
        --disablerepo --exclude --disableexcludes --obsoletes --noplugins
        --nogpgcheck --skip-broken --color --releasever --setopt --downloadonly
        --downloaddir --disableincludes';
    [[ $COMP_LINE == *--noplugins* ]] || opts+=" --disableplugin --enableplugin";
    printf %s "$opts"
}

_yum_binrpmfiles () 
{ 
    COMPREPLY+=($( compgen -f -o plusdirs -X '!*.rpm' -- "$1" ));
    COMPREPLY=($( compgen -W '"${COMPREPLY[@]}"' -X '*.src.rpm' ));
    COMPREPLY=($( compgen -W '"${COMPREPLY[@]}"' -X '*.nosrc.rpm' ))
}

_yum_complete_baseopts () 
{ 
    case $2 in 
        -d | --debuglevel | -e | --errorlevel)
            COMPREPLY=($( compgen -W '0 1 2 3 4 5 6 7 8 9 10' -- "$1" ));
            return 0
        ;;
        --rpmverbosity)
            COMPREPLY=($( compgen -W 'info critical emergency error warn
                debug' -- "$1" ));
            return 0
        ;;
        -c | --config)
            COMPREPLY=($( compgen -f -o plusdirs -X "!*.conf" -- "$1" ));
            return 0
        ;;
        --installroot | --downloaddir)
            COMPREPLY=($( compgen -d -- "$1" ));
            return 0
        ;;
        --enablerepo)
            _yum_helper repolist disabled "$1";
            return 0
        ;;
        --disablerepo)
            _yum_helper repolist enabled "$1";
            return 0
        ;;
        --disableexcludes | --disableincludes)
            _yum_helper repolist all "$1";
            local main=;
            [[ $2 == *excludes ]] && main=main;
            COMPREPLY=($( compgen -W '${COMPREPLY[@]} all $main' -- "$1" ));
            return 0
        ;;
        --enableplugin)
            _yum_plugins 0 "$1";
            return 0
        ;;
        --disableplugin)
            _yum_plugins 1 "$1";
            return 0
        ;;
        --color)
            COMPREPLY=($( compgen -W 'always auto never' -- "$1" ));
            return 0
        ;;
        -R | --randomwait | -x | --exclude | -h | --help | --version | --releasever | --cve | --bz | --advisory | --tmprepo | --verify-filenames | --setopt)
            return 0
        ;;
        --download-order)
            COMPREPLY=($( compgen -W 'default smallestfirst largestfirst'                 -- "$1" ));
            return 0
        ;;
        --override-protection)
            _yum_list installed "$1";
            return 0
        ;;
        --verify-configuration-files)
            COMPREPLY=($( compgen -W '1 0' -- "$1" ));
            return 0
        ;;
    esac;
    return 1
}

_yum_helper () 
{ 
    local IFS='
';
    if [[ -n "$YUM_CACHEDIR" && "$1 $2" == "list available" ]]; then
        for db in $(find "$YUM_CACHEDIR" -name primary_db.sqlite);
        do
            COMPREPLY+=($( sqlite3 "$db"                 "SELECT name||'.'||arch FROM packages WHERE name LIKE '$3%'"
            ));
        done;
        return;
    fi;
    COMPREPLY+=($(
        /usr/share/yum-cli/completion-helper.py -d 0 -C "$@" 2>/dev/null ))
}

_yum_list () 
{ 
    [[ $2 == */* || $2 == [.~-]* ]] && return;
    [[ $1 != "installed" && ${#2} -lt 1 ]] && return;
    _yum_helper list "$@"
}

_yum_plugins () 
{ 
    local val;
    [[ $1 -eq 1 ]] && val='\(1\|yes\|true\|on\)' || val='\(0\|no\|false\|off\)';
    COMPREPLY+=($( compgen -W '$( command grep -il "^\s*enabled\s*=\s*$val" \
        /etc/yum/pluginconf.d/*.conf 2>/dev/null \
        | sed -ne "s|^.*/\([^/]\{1,\}\)\.conf$|\1|p" )' -- "$2" ))
}

_yum_transactions () 
{ 
    COMPREPLY+=($( compgen -W "$( $yum -d 0 -C history 2>/dev/null |         sed -ne 's/^[[:space:]]*\([0-9]\{1,\}\).*/\1/p' )" -- "$cur" ))
}

cmd_options () 
{ 
    local type="$1";
    local cur="$2";
    local flags="$3";
    local cmds=$(trace-cmd $type -h 2>/dev/null|grep "^ *-" | 				 sed -e 's/ *\(-[^ ]*\).*/\1/');
    COMPREPLY=($(compgen $flags -W "${cmds}" -- "${cur}"))
}

dequote () 
{ 
    eval printf %s "$1" 2> /dev/null
}

plugin_options () 
{ 
    local cur="$1";
    local opts=$(trace-cmd list -O | sed -ne 's/option://p');
    COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
}

quote () 
{ 
    local quoted=${1//\'/\'\\\'\'};
    printf "'%s'" "$quoted"
}

quote_readline () 
{ 
    local quoted;
    _quote_readline_by_ref "$1" ret;
    printf %s "$ret"
}

show_instances () 
{ 
    local cur="$1";
    local bufs=$(trace-cmd list -B);
    if [ "$bufs" == "No buffer instances defined" ]; then
        return 0;
    fi;
    COMPREPLY=($(compgen -W "${bufs}" -- "${cur}"));
    return 0
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

