#!/usr/bin/env bash
# Captured environment: 20240930_191842

[[ "$0" != "${BASH_SOURCE}" ]] || { echo "The script $(basename ${BASH_SOURCE}) should be sourced!"; exit 1; }
#Environment variables
export ACLOCAL_PATH=/daq/software/spack_packages/cmake/3.27.9/linux-almalinux9-x86_64_v2-gcc-12.1.0-45d5zcvxlqhalxeyclka6opvv5zz44tw/share/aclocal:\
/daq/software/spack_packages/gsl/2.7.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-dte7qnr7n4xmca6wl42smoectjvkguep/share/aclocal:\
/daq/software/spack_packages/curl/8.7.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-cvliwrhbmtuoedoteykfyvhvk3jrhslf/share/aclocal:\
/daq/software/spack_packages/util-macros/1.20.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-rvdcksscpxnwnkmfgsuoolsokndu2umi/share/aclocal:\
/daq/software/spack_packages/xtrans/1.5.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-ooh4pi4uhs347bt4oin5wwxaidbauajn/share/aclocal:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-mwpsdhjx6aym2tx45fqdzmpihwpx4rkq/share/aclocal:\
/daq/software/spack_packages/glib/2.78.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-bahfdboj5pq5qbas5snnbghxcz2amqhx/share/aclocal:\
/daq/software/spack_packages/pkgconf/2.2.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-rkbm2nowpexldgom57d2p23l5ueulwql/share/aclocal:\
/daq/software/spack_packages/gettext/0.22.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-xkg4kahsxs3oftmmpcnuok6du7uzxiwu/share/aclocal:\
/daq/software/spack_packages/libxml2/2.9.12/linux-almalinux9-x86_64_v2-gcc-12.1.0-v477kfzev4y36k6rzv7c66xhuiujuyy4/share/aclocal:\
/daq/software/spack_packages/freetype/2.13.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-ouyekpnl4eq7clrzp6z2iloic7wxscke/share/aclocal:\
/daq/software/spack_packages/font-util/1.4.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-jpxo2e4fjt7c4vlszwnqqnhenldhsplb/share/aclocal:\
/usr/share/aclocal

export ARTDAQ_DAQINTERFACE_DIR="/daq/software/spack_packages/artdaq-daqinterface/v3_14_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-hz2eoe2uqrbmhog2rvcf7gkb6dhalrv2"

export ARTDAQ_DAQINTERFACE_VERSION="SPACK"

export ARTDAQ_MFEXTENSIONS_DIR="/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-3sfcpd7th5mjtcvugojjwhijsafjrog3"

export BASH_ARGV0="bash"

export BOOST_ROOT="/daq/software/spack_packages/boost/1.82.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-tfwrsbhwi6zuxloxe6t5jth5vilk6qqy"

export BUILD_HASH="/clnglb4"

export BUILD_VARIANT="gcc@12.1.0"

export CC="/daq/software/spack_packages/llvm/17.0.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-ovx7o7lbxhbhotsuegqk664wfqaxgrsf/bin/clang"

export CET_PLUGIN_PATH=/daq/software/spack_packages/sbndaq/v1_10_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-hle4nmtof3dylr2liynmur7owzf3arwd/lib:\
/daq/software/spack_packages/sbndaq-artdaq/v1_10_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-jjporu7anyobagbtbgi5axys4c26r3qt/lib:\
/daq/software/spack_packages/artdaq-epics-plugin/v1_06_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-bvdjpwknykcbmoti344zr5lavgqe43x2/lib:\
/daq/software/spack_packages/artdaq-demo/v3_13_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-azxu43ae7ysurtyllayxcncned3wwk7h/lib:\
/daq/software/spack_packages/artdaq-core-demo/v1_11_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-gvsk2r2qka7vmi6m7ecmyuh2vkro62vd/lib:\
/daq/software/spack_packages/artdaq/v3_13_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-qgomo7zbrybxhbcvmhwbai2oh7z3tgn3/lib:\
/daq/software/spack_packages/artdaq-utilities/v1_09_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-ppi3p3qeveeluskzljri7feavxi4enmu/lib:\
/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-3sfcpd7th5mjtcvugojjwhijsafjrog3/lib:\
/daq/software/spack_packages/artdaq-core/v3_10_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-zikldfwnafr5d2bzux46fqt6tx2b2j47/lib:\
/daq/software/spack_packages/trace/v3_17_11/linux-almalinux9-x86_64_v2-gcc-12.1.0-sdejl6yxybfvszdw2ilzcjhfxshidkwy/lib:\
/daq/software/spack_packages/art-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-12.1.0-ihazckmvkm3tsgoku2vysrot37d65ivv/lib:\
/daq/software/spack_packages/art/3.14.04/linux-almalinux9-x86_64_v2-gcc-12.1.0-qzjc7adredo3rinqviktfi63qwg6ktr5/lib:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-almalinux9-x86_64_v2-gcc-12.1.0-tdicw7d4ezxf2z73fpwnzxw4ntfmzhug/lib

export CLING_STANDARD_PCH="none"

export CMAKE_PREFIX_PATH=/daq/software/spack_packages/sbndaq-suite/v1_10_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-clnglb4qujddrmbubr3rkeaqbon5wkkf:\
/daq/software/spack_packages/sbndaq/v1_10_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-hle4nmtof3dylr2liynmur7owzf3arwd:\
/daq/software/spack_packages/sbndaq-artdaq/v1_10_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-jjporu7anyobagbtbgi5axys4c26r3qt:\
/daq/software/spack_packages/windriver/v12_06_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-lc7qtjtter4xalppr5bo4hjof43tpd2t:\
/daq/software/spack_packages/wibtools/v1_10_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-3cucwe4tbxnajgspyyzilvyl36bvngtk:\
/daq/software/spack_packages/sbndaq-artdaq-core/v1_10_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-36cabptfaqf5cdyagra7ju4gk5qrea36:\
/daq/software/spack_packages/redis/7.0.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-55dc2ze4gpur3vwm2u3vxyjd2fgqorgb:\
/daq/software/spack_packages/libpqxx/7.6.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-6yjdqg5byufjjea3gliy66t5f57gexis:\
/daq/software/spack_packages/jsoncpp/1.9.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-rsh47gsaxww6cdkd5sion2ylrltgy4rl:\
/daq/software/spack_packages/hiredis/1.1.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-gawnbrg4tpiu6grokbqtvpffr6rvxrra:\
/daq/software/spack_packages/cppzmq/4.10.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-oc4e45ioitqwwgulje5gbue3ipaswcfk:\
/daq/software/spack_packages/libzmq/4.3.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-tremd47lpcmvxoi2scn55yw4ocewngnw:\
/daq/software/spack_packages/libsodium/1.0.19/linux-almalinux9-x86_64_v2-gcc-12.1.0-65a35kqd666phuenlbdommclim7iafz5:\
/daq/software/spack_packages/caendigitizer/2.17.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-3k2gvkzb5e6pueweuq3gr6oz75eykjdx:\
/daq/software/spack_packages/caencomm/1.7.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-4i5xrtw4k6fm4xajxzx5y27vkwhedt6a:\
/daq/software/spack_packages/caenvmelib/4.0.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-ciug6vczsskybp7qs26awphp4riws45k:\
/daq/software/spack_packages/libusb/1.0.22/linux-almalinux9-x86_64_v2-gcc-12.1.0-pjhvgmx6wo7fyk4hpnk3vprdqxr5q6ui:\
/daq/software/spack_packages/gdb/14.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-z4q4uzmqwq4do5pju2x6lwhcgf7inf5v:\
/daq/software/spack_packages/source-highlight/3.1.9/linux-almalinux9-x86_64_v2-gcc-12.1.0-64qcjzkev3zd7tsi4x6dkcxaey3mhe56:\
/daq/software/spack_packages/mpfr/4.2.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-f67yw6llkggyyeo4vpargfed72xssgyu:\
/daq/software/spack_packages/gmp/6.3.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-5sok6utiev2zhndvd5gzn575jsi565kb:\
/daq/software/spack_packages/artdaq-suite/v3_13_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-f4fogsv36nizbceaebo3opwjotvjwtsn:\
/daq/software/spack_packages/artdaq-epics-plugin/v1_06_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-bvdjpwknykcbmoti344zr5lavgqe43x2:\
/daq/software/spack_packages/epics-base/7.0.6.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-seawbr4biuxd6lp3jkmmkord6fpc2skz:\
/daq/software/spack_packages/artdaq-demo/v3_13_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-azxu43ae7ysurtyllayxcncned3wwk7h:\
/daq/software/spack_packages/artdaq-database/v1_10_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-64fbc3egubzfv2wz4tj3e6f2mmh2zfus:\
/daq/software/spack_packages/artdaq-daqinterface/v3_14_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-hz2eoe2uqrbmhog2rvcf7gkb6dhalrv2:\
/daq/software/spack_packages/artdaq-core-demo/v1_11_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-gvsk2r2qka7vmi6m7ecmyuh2vkro62vd:\
/daq/software/spack_packages/artdaq/v3_13_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-qgomo7zbrybxhbcvmhwbai2oh7z3tgn3:\
/daq/software/spack_packages/artdaq-utilities/v1_09_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-ppi3p3qeveeluskzljri7feavxi4enmu:\
/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-3sfcpd7th5mjtcvugojjwhijsafjrog3:\
/daq/software/spack_packages/artdaq-core/v3_10_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-zikldfwnafr5d2bzux46fqt6tx2b2j47:\
/daq/software/spack_packages/trace/v3_17_11/linux-almalinux9-x86_64_v2-gcc-12.1.0-sdejl6yxybfvszdw2ilzcjhfxshidkwy:\
/daq/software/spack_packages/art-suite/s131/linux-almalinux9-x86_64_v2-gcc-12.1.0-jqx32mboexdrhb4x7dv2xh4umwjzrrdq:\
/daq/software/spack_packages/xrootd/5.5.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-tklw2xdy67ixxpo5cxgunihcqh2dfp7g:\
/daq/software/spack_packages/json-c/0.16/linux-almalinux9-x86_64_v2-gcc-12.1.0-tdflxjwpvrwqywyvb6y3dpqpiqx66gbl:\
/daq/software/spack_packages/pythia6/6.4.28/linux-almalinux9-x86_64_v2-gcc-12.1.0-lunpnsfv5l2q7x4sxz5mddjhkpv6lhhp:\
/daq/software/spack_packages/py-pybind11/2.10.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-yqem5qxy7unnxgjzujvwgb7krp6dlewj:\
/daq/software/spack_packages/py-numpy/1.24.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-ot6ftqrhodb6sygqjv4empefqtmg6fpw:\
/daq/software/spack_packages/py-setuptools/63.4.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-a42yj5bash47z575tqcs5tkxmxaa25mb:\
/daq/software/spack_packages/python-venv/1.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-z32szzrmyjdiknommuzfhptcztky7rx5:\
/daq/software/spack_packages/postgresql/15.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-syf4vcujq6xkvvysnhqfdwivybpgnf2o:\
/daq/software/spack_packages/openblas/0.3.23/linux-almalinux9-x86_64_v2-gcc-12.1.0-2ybyv2633w5bm4eny5s624sdr6mbkt7p:\
/daq/software/spack_packages/fftw/3.3.10/linux-almalinux9-x86_64_v2-gcc-12.1.0-oygy542a4wpauebmsmlrcknzv7jjojl5:\
/daq/software/spack_packages/openmpi/5.0.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-335gimqc4vjztz2isjinvgafx4dxtmkw:\
/daq/software/spack_packages/pmix/5.0.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-jk2yjrgw67zkcn2bbh7irjvkk77c4os2:\
/daq/software/spack_packages/openssh/9.8p1/linux-almalinux9-x86_64_v2-gcc-12.1.0-ubaqhtusbvogmtyklottl37ovyei6r46:\
/daq/software/spack_packages/krb5/1.21.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-ozkfrj5gh5j6ci4ywu4uogee4ye67hrj:\
/daq/software/spack_packages/numactl/2.0.14/linux-almalinux9-x86_64_v2-gcc-12.1.0-c2zalqjcpt372mm2t6xxppgipubqqarh:\
/daq/software/spack_packages/libevent/2.1.12/linux-almalinux9-x86_64_v2-gcc-12.1.0-zwsitmjitgns4ui7kny3jbste4kl5kwo:\
/daq/software/spack_packages/cetmodules/3.24.01/linux-almalinux9-x86_64_v2-gcc-12.1.0-a5edgqiagjpxljfs7bwq3ysceqizq3el:\
/daq/software/spack_packages/cmake/3.27.9/linux-almalinux9-x86_64_v2-gcc-12.1.0-45d5zcvxlqhalxeyclka6opvv5zz44tw:\
/daq/software/spack_packages/gmake/4.4.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-3ahdu6yf7gqc2j7ybk67hfjp2s367hk4:\
/daq/software/spack_packages/art-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-12.1.0-ihazckmvkm3tsgoku2vysrot37d65ivv:\
/daq/software/spack_packages/canvas-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-12.1.0-7zupcuhuoy53piklqugoiaujprpm6lda:\
/daq/software/spack_packages/root/6.28.12/linux-almalinux9-x86_64_v2-gcc-12.1.0-6atd2ronsm263xm6hpectczyn73iq2q7:\
/daq/software/spack_packages/xxhash/0.8.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-k6wqvx24jgwto4dp77kj5qsb7z4f5qn3:\
/daq/software/spack_packages/vdt/0.4.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-atlxqt2hgynbtrkmjzpohtgpnhzy6r37:\
/daq/software/spack_packages/unuran/1.8.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-tdd5jdgwxwsplyxv3cxmmrmhn6omem5u:\
/daq/software/spack_packages/rngstreams/1.0.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-dvskhdizfcdy26eaoluliei7pzduacll:\
/daq/software/spack_packages/pcre/8.45/linux-almalinux9-x86_64_v2-gcc-12.1.0-cvcedz6yywrfsk6ylgzjjdlvc5lp47sr:\
/daq/software/spack_packages/nlohmann-json/3.11.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-fr3y3scwkq2h4w4cd3khnxov4pirndg7:\
/daq/software/spack_packages/lz4/1.9.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-scfslefx3gy75jw64ttmrlwibkdcdtkl:\
/daq/software/spack_packages/libxpm/3.5.17/linux-almalinux9-x86_64_v2-gcc-12.1.0-ncf7c7qrjyyqmquhdpql6jyadetj2zcw:\
/daq/software/spack_packages/libxft/2.3.8/linux-almalinux9-x86_64_v2-gcc-12.1.0-p7ahpspw3fh7d25kgkfbe3fm4wmmunhe:\
/daq/software/spack_packages/gsl/2.7.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-dte7qnr7n4xmca6wl42smoectjvkguep:\
/daq/software/spack_packages/glew/2.2.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-lmi2rg5yhzhcee3f4qngyygvb37tkra5:\
/daq/software/spack_packages/gl2ps/1.4.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-kpalg7mnnk3cpcfwltghqk4bxwpr6juv:\
/daq/software/spack_packages/ftgl/2.4.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-pinsfigmejaw6vmvbqqsyu56m3ke7a4n:\
/daq/software/spack_packages/mesa-glu/9.0.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-zvo2fneabuazbb2l4hn7paa33dwoumk5:\
/daq/software/spack_packages/glx/1.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-ednrzohfqntqu56wvx5ujzuilfdwoe4j:\
/daq/software/spack_packages/mesa/23.3.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-ty3wx7du7sm6ktjb5jozppevxskwqdla:\
/daq/software/spack_packages/xrandr/1.5.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-obayg4gkfzpafl7do7md5hzwsnnwvyiw:\
/daq/software/spack_packages/libxrandr/1.5.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-ul5wj2lkdgk67ekz7nfooq7isra5rjzk:\
/daq/software/spack_packages/randrproto/1.5.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-npglrq2aqbcfhf4j45y5gednqbecimk6:\
/daq/software/spack_packages/llvm/17.0.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-ovx7o7lbxhbhotsuegqk664wfqaxgrsf:\
/daq/software/spack_packages/swig/4.1.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-lwg6owj76rsertsh45ipund3kiahkx63:\
/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-m55tbrcl7pvseswrmu6xgtgpw7bsxlsx:\
/daq/software/spack_packages/unzip/6.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-hbeaafurni7ulsrhenglfddskrs5skex:\
/daq/software/spack_packages/libedit/3.1-20230828/linux-almalinux9-x86_64_v2-gcc-12.1.0-4ggdpgw7l3sgwiln7ldfqg6hq6g7ygwq:\
/daq/software/spack_packages/binutils/2.43.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-v2tccrpv3jfy4xfwhojyfzl55z5wybvk:\
/daq/software/spack_packages/libxt/1.3.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-yfbpuueu4hewrwwdsaf4cejr5r22if6b:\
/daq/software/spack_packages/libunwind/1.6.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-qjgqc2mxp6nl2wrdfznywqjmxa5ubjjw:\
/daq/software/spack_packages/glproto/1.4.17/linux-almalinux9-x86_64_v2-gcc-12.1.0-zkh2noe4mp22delsa7tigbnjyzzsmyow:\
/daq/software/spack_packages/davix/0.8.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-zyilpabkpqo6il3sue4d67hkam6rg4pa:\
/daq/software/spack_packages/art/3.14.04/linux-almalinux9-x86_64_v2-gcc-12.1.0-qzjc7adredo3rinqviktfi63qwg6ktr5:\
/daq/software/spack_packages/hep-concurrency/1.09.02/linux-almalinux9-x86_64_v2-gcc-12.1.0-cf5phmvcgkue2xboyqsimfhpo6alh5bq:\
/daq/software/spack_packages/canvas/3.16.04/linux-almalinux9-x86_64_v2-gcc-12.1.0-p767wyflfzftnia5oeworrcm4bwahci3:\
/daq/software/spack_packages/range-v3/0.12.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-tp6tyxezfd5cjcyinokkhmm7ktjrvme7:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-almalinux9-x86_64_v2-gcc-12.1.0-tdicw7d4ezxf2z73fpwnzxw4ntfmzhug:\
/daq/software/spack_packages/catch2/3.3.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-hvyppfkkgjbql44bsiacf6be6ivgjqgp:\
/daq/software/spack_packages/fhicl-cpp/4.18.04/linux-almalinux9-x86_64_v2-gcc-12.1.0-eflnzuiyssrth3yw5ocgdwqfms6dz2v3:\
/daq/software/spack_packages/intel-tbb/2021.12.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-tjtgrsbffzf6fw42vl77rwjpzvx5cx7x:\
/daq/software/spack_packages/hwloc/2.11.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-hmd67qcz2o27a6ogkwqjwrqtnlbes3yu:\
/daq/software/spack_packages/libpciaccess/0.17/linux-almalinux9-x86_64_v2-gcc-12.1.0-tqn552v5tuxox7k2c6ke5ftqaciysdiv:\
/daq/software/spack_packages/clhep/2.4.7.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-5fu3tguws2wcsd27qbs3pjwxcqjhqwz2:\
/daq/software/spack_packages/cetlib/3.18.02/linux-almalinux9-x86_64_v2-gcc-12.1.0-5tnlrwduvy7svulao72goixb7bdtt3fb:\
/daq/software/spack_packages/cetlib-except/1.09.01/linux-almalinux9-x86_64_v2-gcc-12.1.0-35zgbfiuddnm4ellyu5q6u4nlwz3qzkj:\
/daq/software/spack_packages/boost/1.82.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-tfwrsbhwi6zuxloxe6t5jth5vilk6qqy:\
/daq/software/spack_packages/artdaq-runcontrol-gui/v1_03_05/linux-almalinux9-x86_64_v2-gcc-12.1.0-3copadieynbsjvceth7fmtcaqfpojezi:\
/daq/software/spack_packages/xmlrpc-c/1.51.06/linux-almalinux9-x86_64_v2-gcc-12.1.0-ph4loq47b2yecdizbht6uvqub5phkkzu:\
/daq/software/spack_packages/curl/8.7.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-cvliwrhbmtuoedoteykfyvhvk3jrhslf:\
/daq/software/spack_packages/nghttp2/1.62.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-3kf55becby4av6vmylbb6ycectevb3b7:\
/daq/software/spack_packages/qt/5.15.14/linux-almalinux9-x86_64_v2-gcc-12.1.0-khw462onkekjpmildj2aaloimmcz7wx3:\
/daq/software/spack_packages/xcb-util-wm/0.4.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-eezr4yt5bum6mf6l4ye3k3i45kujdkh7:\
/daq/software/spack_packages/xcb-util-renderutil/0.3.10/linux-almalinux9-x86_64_v2-gcc-12.1.0-d45vo4574xorkfybyxwbbqvsl5it63rs:\
/daq/software/spack_packages/xcb-util-keysyms/0.4.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-iobf2s3btmzl5tydsaqme3hieimd5kwk:\
/daq/software/spack_packages/xcb-util-image/0.4.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-lzqz32bxr4lj4lxryxwhtols5wn4gako:\
/daq/software/spack_packages/xcb-util/0.4.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-zqliwclcwbut35ephyxdukenzrvy7uyz:\
/daq/software/spack_packages/libxrender/0.9.11/linux-almalinux9-x86_64_v2-gcc-12.1.0-pnhgpzyyjwf5wwgpkqiyclske5brc2di:\
/daq/software/spack_packages/renderproto/0.11.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-5lztkrm5cw2s4is47owcbl5gz7t7z7mq:\
/daq/software/spack_packages/libxkbcommon/1.7.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-zutrhbyhodql4f4bixlok3fk5cpg4ver:\
/daq/software/spack_packages/xkbdata/1.0.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-tskr4asbc6kp3pwcqhskozeb5qasyeui:\
/daq/software/spack_packages/util-macros/1.20.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-rvdcksscpxnwnkmfgsuoolsokndu2umi:\
/daq/software/spack_packages/libxext/1.3.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-vzs6rxc7akvoqkadbupkpzumkrclhmuu:\
/daq/software/spack_packages/xextproto/7.3.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-6tdr7hl6kcwsz3wqxkbthj4ug3uood7c:\
/daq/software/spack_packages/libx11/1.8.10/linux-almalinux9-x86_64_v2-gcc-12.1.0-mm2b3plygiq34453pt25o5evxp4pjyvy:\
/daq/software/spack_packages/libxcb/1.17.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-7v6r3drmx2j5cqno6jkwl57snjfs6s7d:\
/daq/software/spack_packages/libxdmcp/1.1.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-uupnvhexmi5zpljgzutn4agbebcp253z:\
/daq/software/spack_packages/libxau/1.0.11/linux-almalinux9-x86_64_v2-gcc-12.1.0-twddkqujs6iaocysrlfyppcr5pcaoudu:\
/daq/software/spack_packages/libpthread-stubs/0.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-shxexcvzbq2cs6p3wxpthig3lpn3gyal:\
/daq/software/spack_packages/kbproto/1.0.7/linux-almalinux9-x86_64_v2-gcc-12.1.0-trzy4upnu5enjqttxe7dbslfi43knk6t:\
/daq/software/spack_packages/libsm/1.2.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-ecinmmfpmrivgog4n2sxjkaa575sylng:\
/daq/software/spack_packages/libice/1.1.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-cpx3kfjcih6yhax3c6j7jvo2r5537rg2:\
/daq/software/spack_packages/xtrans/1.5.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-ooh4pi4uhs347bt4oin5wwxaidbauajn:\
/daq/software/spack_packages/xproto/7.0.31/linux-almalinux9-x86_64_v2-gcc-12.1.0-o5vlio55s4xpljre5wqhu7tgymn4ofn4:\
/daq/software/spack_packages/libmng/2.0.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-vxskw3t5lnvepbk3q252tfpmyxnvonqk:\
/daq/software/spack_packages/lcms/2.16/linux-almalinux9-x86_64_v2-gcc-12.1.0-af5effphsk2xfxnx4muql2p2baethsbg:\
/daq/software/spack_packages/libtiff/4.6.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-6osij6icb6tbzvm4et5euaoeqqhe2uqc:\
/daq/software/spack_packages/libjpeg-turbo/3.0.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-uw362qynr2mlospijshy7wsrn7z5pghn:\
/daq/software/spack_packages/harfbuzz/9.0.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-lqfjhjrahbule7375cyk4ll4cf2uuvah:\
/daq/software/spack_packages/icu4c/74.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-pw5uateyidddmaveht6khpbwpqmkzbd7:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-mwpsdhjx6aym2tx45fqdzmpihwpx4rkq:\
/daq/software/spack_packages/cairo/1.16.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-ku4k5gxw3p3yjyha2k3rzylhfvgnxd3m:\
/daq/software/spack_packages/pixman/0.42.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-hm4s4fh3ur442dgr4befshxixbvv7g3n:\
/daq/software/spack_packages/glib/2.78.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-bahfdboj5pq5qbas5snnbghxcz2amqhx:\
/daq/software/spack_packages/python/3.9.15/linux-almalinux9-x86_64_v2-gcc-12.1.0-dpsj5b5kuaxbqulmdofjcb7cx2zpzboi:\
/daq/software/spack_packages/sqlite/3.40.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-ozgw22ysc4edqw7zgwi35ascytxn52bl:\
/daq/software/spack_packages/openssl/3.3.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-ujbs3l5ncq2nrwsflalvw5l73ap5z6qt:\
/daq/software/spack_packages/libxcrypt/4.4.35/linux-almalinux9-x86_64_v2-gcc-12.1.0-lnrvlm5iucvrqsact6vtw2kcynltjl7l:\
/daq/software/spack_packages/expat/2.6.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-il75hltq5v2vi4bt7wirjott6qy5i3t7:\
/daq/software/spack_packages/libbsd/0.12.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-mmzx3gn4qoyjngqqbjulughmnixd5bgs:\
/daq/software/spack_packages/libmd/1.0.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-jsfnt7kyodug6ny4m4enq7qjp434fzdb:\
/daq/software/spack_packages/perl/5.40.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-weij7zct7yl363fl6l3frjq4uwkyal2u:\
/daq/software/spack_packages/gdbm/1.23/linux-almalinux9-x86_64_v2-gcc-12.1.0-lqqu6lwer7kdgze5bdvpuovwqj3d4m73:\
/daq/software/spack_packages/readline/8.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-at6s64x7blsgz3f3ldfbexktwmxxhxbw:\
/daq/software/spack_packages/berkeley-db/18.1.40/linux-almalinux9-x86_64_v2-gcc-12.1.0-f2v5nw7mto7pnxbka7qzrl4wn3evciqr:\
/daq/software/spack_packages/pcre2/10.43/linux-almalinux9-x86_64_v2-gcc-12.1.0-nfmhw74ap6elvctn5xnr3obtutpdpxqo:\
/daq/software/spack_packages/libffi/3.4.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-ri2kz2i3fvrmyzrqi6o5i6mdqbq7dh3t:\
/daq/software/spack_packages/elfutils/0.191/linux-almalinux9-x86_64_v2-gcc-12.1.0-lnp5l74kbreh7t5mnzwarjj4675i457d:\
/daq/software/spack_packages/pkgconf/2.2.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-rkbm2nowpexldgom57d2p23l5ueulwql:\
/daq/software/spack_packages/gettext/0.22.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-xkg4kahsxs3oftmmpcnuok6du7uzxiwu:\
/daq/software/spack_packages/tar/1.34/linux-almalinux9-x86_64_v2-gcc-12.1.0-c7djebl2xj6cfrqzam3ok7ekvupia2tr:\
/daq/software/spack_packages/zstd/1.5.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-rf3bh4myisswpaehzx22djeruhswuo3n:\
/daq/software/spack_packages/pigz/2.8/linux-almalinux9-x86_64_v2-gcc-12.1.0-oknxvnihg474keik7nthiuy36zmlwwdo:\
/daq/software/spack_packages/ncurses/6.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-cmqq6c2lnvnqakbdvavqz7z7coxd6235:\
/daq/software/spack_packages/fontconfig/2.15.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-hipeeluzdqyfumfxahmoy2ol76bb5uah:\
/daq/software/spack_packages/util-linux-uuid/2.40.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-kamu3iecs4aoqky57hp5gnropwnalay6:\
/daq/software/spack_packages/libxml2/2.9.12/linux-almalinux9-x86_64_v2-gcc-12.1.0-v477kfzev4y36k6rzv7c66xhuiujuyy4:\
/daq/software/spack_packages/xz/5.4.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-nfrvmeak3zwrxdzjpyun4ejudeybfv6k:\
/daq/software/spack_packages/libiconv/1.17/linux-almalinux9-x86_64_v2-gcc-12.1.0-vex7teel3m4l22vviewc4guebwmvrhrj:\
/daq/software/spack_packages/freetype/2.13.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-ouyekpnl4eq7clrzp6z2iloic7wxscke:\
/daq/software/spack_packages/libpng/1.6.39/linux-almalinux9-x86_64_v2-gcc-12.1.0-d7aye4gt2fkg2mf7yuxtd5flcoohni6z:\
/daq/software/spack_packages/zlib-ng/2.2.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-m6l774qlz6245gy3cri455ydsal4u2rh:\
/daq/software/spack_packages/bzip2/1.0.8/linux-almalinux9-x86_64_v2-gcc-12.1.0-3yucrbpxh5pzuci6n7jl35eub5cjcehd:\
/daq/software/spack_packages/font-util/1.4.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-jpxo2e4fjt7c4vlszwnqqnhenldhsplb:\
/daq/software/spack_packages/double-conversion/3.3.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-olqftn2knb35aq3ehcjxqfoqdp7tjl67:\
/daq/software/spack_packages/gcc-runtime/12.1.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-22upj6ywn6pzwvs55uuul5fafxlxmw2r

export CPPYY_API_PATH="none"

export CXX="/daq/software/spack_packages/llvm/17.0.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-ovx7o7lbxhbhotsuegqk664wfqaxgrsf/bin/clang++"

export DAQINTERFACE_CONFIGURE_STATUS_CHECK_QUIET_TIME="60"

export DAQ_SETUP_SCRIPT="/home/nfs/icarus/DAQ_SPACK_DevAreas/DAQ_2024-09-30_GAL_v1_10_02/srcs/sbndaq/sbn-fd/DAQInterface2/setup_sbn_artdaq.sh"

export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/52361/bus"

export DEBUGINFOD_URLS="https://debuginfod.centos.org/"

export DISABLE_SPACK_SETUP="True"

export EIB_CONFIG_PATH="/daq/software/spack_packages/wibtools/v1_10_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-3cucwe4tbxnajgspyyzilvyl36bvngtk/config"

export EPICS_BASE="/daq/software/spack_packages/epics-base/7.0.6.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-seawbr4biuxd6lp3jkmmkord6fpc2skz"

export EPICS_HOST_ARCH="linux-x86_64"

export EPOCHREALTIME="1727741922.345136"

export EPOCHSECONDS="1727741922"

export FHICL_FILE_PATH=/daq/software/spack_packages/sbndaq/v1_10_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-hle4nmtof3dylr2liynmur7owzf3arwd/fcl:\
/daq/software/spack_packages/sbndaq-artdaq/v1_10_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-jjporu7anyobagbtbgi5axys4c26r3qt/fcl:\
/daq/software/spack_packages/artdaq-epics-plugin/v1_06_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-bvdjpwknykcbmoti344zr5lavgqe43x2/fcl:\
/daq/software/spack_packages/artdaq-demo/v3_13_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-azxu43ae7ysurtyllayxcncned3wwk7h/fcl:\
/daq/software/spack_packages/artdaq-core-demo/v1_11_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-gvsk2r2qka7vmi6m7ecmyuh2vkro62vd/fcl:\
/daq/software/spack_packages/artdaq/v3_13_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-qgomo7zbrybxhbcvmhwbai2oh7z3tgn3/fcl:\
/daq/software/spack_packages/artdaq-utilities/v1_09_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-ppi3p3qeveeluskzljri7feavxi4enmu/fcl:\
/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-3sfcpd7th5mjtcvugojjwhijsafjrog3/fcl:\
/daq/software/spack_packages/artdaq-core/v3_10_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-zikldfwnafr5d2bzux46fqt6tx2b2j47/fcl

export FUNCNAME="export_environment_vars"

export GI_TYPELIB_PATH=/daq/software/spack_packages/harfbuzz/9.0.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-lqfjhjrahbule7375cyk4ll4cf2uuvah/lib/girepository-1.0:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-mwpsdhjx6aym2tx45fqdzmpihwpx4rkq/lib/girepository-1.0

export GSL_ROOT_DIR="/daq/software/spack_packages/gsl/2.7.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-dte7qnr7n4xmca6wl42smoectjvkguep"

export HISTIGNORE="history:[bf]g:exit:logout:clear:pwd:ls"

export HISTTIMEFORMAT="%Y-%m-%d-%T"

export LDSHARED

export LD_LIBRARY_PATH="/daq/software/spack_packages/canvas-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-12.1.0-7zupcuhuoy53piklqugoiaujprpm6lda/lib"

export LIBRARY_PATH

export LOADEDMODULES

export LUA_CPATH="/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-m55tbrcl7pvseswrmu6xgtgpw7bsxlsx/lib/lua/5.3/?.so"

export LUA_PATH="/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-m55tbrcl7pvseswrmu6xgtgpw7bsxlsx/lib/lua/5.3/?/init.lua;/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-m55tbrcl7pvseswrmu6xgtgpw7bsxlsx/lib/lua/5.3/?.lua;/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-m55tbrcl7pvseswrmu6xgtgpw7bsxlsx/share/lua/5.3/?/init.lua;/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-m55tbrcl7pvseswrmu6xgtgpw7bsxlsx/share/lua/5.3/?.lua"

export MANPATH=

export MODULEPATH="/etc/scl/modulefiles:/usr/share/Modules/modulefiles:/etc/modulefiles:/usr/share/modulefiles"

export MODULESHOME="/usr/share/Modules"

export MODULES_CMD="/usr/share/Modules/libexec/modulecmd.tcl"

export MODULES_RUN_QUARANTINE="LD_LIBRARY_PATH LD_PRELOAD"

export MOTD_SHOWN="pam"

export MPICC="/daq/software/spack_packages/openmpi/5.0.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-335gimqc4vjztz2isjinvgafx4dxtmkw/bin/mpicc"

export MPICXX="/daq/software/spack_packages/openmpi/5.0.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-335gimqc4vjztz2isjinvgafx4dxtmkw/bin/mpic++"

export MPIF77="/daq/software/spack_packages/openmpi/5.0.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-335gimqc4vjztz2isjinvgafx4dxtmkw/bin/mpif77"

export MPIF90="/daq/software/spack_packages/openmpi/5.0.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-335gimqc4vjztz2isjinvgafx4dxtmkw/bin/mpif90"

export MPIFC="/daq/software/spack_packages/openmpi/5.0.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-335gimqc4vjztz2isjinvgafx4dxtmkw/bin/mpifort"

export MRB_QUALS="both"

export MULTICAST_INTERFACE_IP_TO_USE="192.168.191.0"

export OLDPWD="/home/nfs/icarus"

export OS_NAME="almalinux9"

export PATH=/daq/software/spack_packages/epics-base/7.0.6.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-seawbr4biuxd6lp3jkmmkord6fpc2skz/bin/linux-x86_64:\
/daq/software/spack_packages/trace/v3_17_11/linux-almalinux9-x86_64_v2-gcc-12.1.0-sdejl6yxybfvszdw2ilzcjhfxshidkwy/bin:\
/daq/software/spack_packages/python-venv/1.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-z32szzrmyjdiknommuzfhptcztky7rx5/bin:\
/daq/software/spack_packages/openssh/9.8p1/linux-almalinux9-x86_64_v2-gcc-12.1.0-ubaqhtusbvogmtyklottl37ovyei6r46/bin:\
/daq/software/spack_packages/cmake/3.27.9/linux-almalinux9-x86_64_v2-gcc-12.1.0-45d5zcvxlqhalxeyclka6opvv5zz44tw/bin:\
/daq/software/spack_packages/unzip/6.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-hbeaafurni7ulsrhenglfddskrs5skex/bin:\
/daq/software/spack_packages/curl/8.7.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-cvliwrhbmtuoedoteykfyvhvk3jrhslf/bin:\
/daq/software/spack_packages/python/3.9.15/linux-almalinux9-x86_64_v2-gcc-12.1.0-dpsj5b5kuaxbqulmdofjcb7cx2zpzboi/bin:\
/daq/software/spack_packages/sqlite/3.40.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-ozgw22ysc4edqw7zgwi35ascytxn52bl/bin:\
/daq/software/spack_packages/perl/5.40.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-weij7zct7yl363fl6l3frjq4uwkyal2u/bin:\
/daq/software/spack_packages/tar/1.34/linux-almalinux9-x86_64_v2-gcc-12.1.0-c7djebl2xj6cfrqzam3ok7ekvupia2tr/bin:\
/daq/software/spack_packages/zstd/1.5.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-rf3bh4myisswpaehzx22djeruhswuo3n/bin:\
/daq/software/spack_packages/pigz/2.8/linux-almalinux9-x86_64_v2-gcc-12.1.0-oknxvnihg474keik7nthiuy36zmlwwdo/bin:\
/daq/software/spack_packages/xz/5.4.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-nfrvmeak3zwrxdzjpyun4ejudeybfv6k/bin:\
/daq/software/spack_packages/bzip2/1.0.8/linux-almalinux9-x86_64_v2-gcc-12.1.0-3yucrbpxh5pzuci6n7jl35eub5cjcehd/bin:\
/daq/software/spack_packages/sbndaq/v1_10_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-hle4nmtof3dylr2liynmur7owzf3arwd/bin:\
/daq/software/spack_packages/sbndaq-artdaq/v1_10_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-jjporu7anyobagbtbgi5axys4c26r3qt/bin:\
/daq/software/spack_packages/wibtools/v1_10_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-3cucwe4tbxnajgspyyzilvyl36bvngtk/bin:\
/daq/software/spack_packages/redis/7.0.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-55dc2ze4gpur3vwm2u3vxyjd2fgqorgb/bin:\
/daq/software/spack_packages/libzmq/4.3.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-tremd47lpcmvxoi2scn55yw4ocewngnw/bin:\
/daq/software/spack_packages/gdb/14.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-z4q4uzmqwq4do5pju2x6lwhcgf7inf5v/bin:\
/daq/software/spack_packages/source-highlight/3.1.9/linux-almalinux9-x86_64_v2-gcc-12.1.0-64qcjzkev3zd7tsi4x6dkcxaey3mhe56/bin:\
/daq/software/spack_packages/artdaq-epics-plugin/v1_06_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-bvdjpwknykcbmoti344zr5lavgqe43x2/bin:\
/daq/software/spack_packages/epics-base/7.0.6.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-seawbr4biuxd6lp3jkmmkord6fpc2skz/bin:\
/daq/software/spack_packages/artdaq-demo/v3_13_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-azxu43ae7ysurtyllayxcncned3wwk7h/bin:\
/daq/software/spack_packages/artdaq-database/v1_10_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-64fbc3egubzfv2wz4tj3e6f2mmh2zfus/bin:\
/daq/software/spack_packages/artdaq-daqinterface/v3_14_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-hz2eoe2uqrbmhog2rvcf7gkb6dhalrv2/bin:\
/daq/software/spack_packages/artdaq/v3_13_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-qgomo7zbrybxhbcvmhwbai2oh7z3tgn3/bin:\
/daq/software/spack_packages/artdaq-utilities/v1_09_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-ppi3p3qeveeluskzljri7feavxi4enmu/bin:\
/daq/software/spack_packages/artdaq-mfextensions/v1_09_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-3sfcpd7th5mjtcvugojjwhijsafjrog3/bin:\
/daq/software/spack_packages/xrootd/5.5.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-tklw2xdy67ixxpo5cxgunihcqh2dfp7g/bin:\
/daq/software/spack_packages/py-pybind11/2.10.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-yqem5qxy7unnxgjzujvwgb7krp6dlewj/bin:\
/daq/software/spack_packages/py-numpy/1.24.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-ot6ftqrhodb6sygqjv4empefqtmg6fpw/bin:\
/daq/software/spack_packages/postgresql/15.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-syf4vcujq6xkvvysnhqfdwivybpgnf2o/bin:\
/daq/software/spack_packages/openblas/0.3.23/linux-almalinux9-x86_64_v2-gcc-12.1.0-2ybyv2633w5bm4eny5s624sdr6mbkt7p/bin:\
/daq/software/spack_packages/fftw/3.3.10/linux-almalinux9-x86_64_v2-gcc-12.1.0-oygy542a4wpauebmsmlrcknzv7jjojl5/bin:\
/daq/software/spack_packages/openmpi/5.0.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-335gimqc4vjztz2isjinvgafx4dxtmkw/bin:\
/daq/software/spack_packages/pmix/5.0.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-jk2yjrgw67zkcn2bbh7irjvkk77c4os2/bin:\
/daq/software/spack_packages/krb5/1.21.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-ozkfrj5gh5j6ci4ywu4uogee4ye67hrj/bin:\
/daq/software/spack_packages/numactl/2.0.14/linux-almalinux9-x86_64_v2-gcc-12.1.0-c2zalqjcpt372mm2t6xxppgipubqqarh/bin:\
/daq/software/spack_packages/libevent/2.1.12/linux-almalinux9-x86_64_v2-gcc-12.1.0-zwsitmjitgns4ui7kny3jbste4kl5kwo/bin:\
/daq/software/spack_packages/cetmodules/3.24.01/linux-almalinux9-x86_64_v2-gcc-12.1.0-a5edgqiagjpxljfs7bwq3ysceqizq3el/bin:\
/daq/software/spack_packages/gmake/4.4.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-3ahdu6yf7gqc2j7ybk67hfjp2s367hk4/bin:\
/daq/software/spack_packages/art-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-12.1.0-ihazckmvkm3tsgoku2vysrot37d65ivv/bin:\
/daq/software/spack_packages/root/6.28.12/linux-almalinux9-x86_64_v2-gcc-12.1.0-6atd2ronsm263xm6hpectczyn73iq2q7/bin:\
/daq/software/spack_packages/xxhash/0.8.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-k6wqvx24jgwto4dp77kj5qsb7z4f5qn3/bin:\
/daq/software/spack_packages/pcre/8.45/linux-almalinux9-x86_64_v2-gcc-12.1.0-cvcedz6yywrfsk6ylgzjjdlvc5lp47sr/bin:\
/daq/software/spack_packages/lz4/1.9.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-scfslefx3gy75jw64ttmrlwibkdcdtkl/bin:\
/daq/software/spack_packages/libxpm/3.5.17/linux-almalinux9-x86_64_v2-gcc-12.1.0-ncf7c7qrjyyqmquhdpql6jyadetj2zcw/bin:\
/daq/software/spack_packages/gsl/2.7.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-dte7qnr7n4xmca6wl42smoectjvkguep/bin:\
/daq/software/spack_packages/glew/2.2.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-lmi2rg5yhzhcee3f4qngyygvb37tkra5/bin:\
/daq/software/spack_packages/xrandr/1.5.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-obayg4gkfzpafl7do7md5hzwsnnwvyiw/bin:\
/daq/software/spack_packages/llvm/17.0.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-ovx7o7lbxhbhotsuegqk664wfqaxgrsf/bin:\
/daq/software/spack_packages/swig/4.1.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-lwg6owj76rsertsh45ipund3kiahkx63/bin:\
/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-m55tbrcl7pvseswrmu6xgtgpw7bsxlsx/bin:\
/daq/software/spack_packages/binutils/2.43.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-v2tccrpv3jfy4xfwhojyfzl55z5wybvk/bin:\
/daq/software/spack_packages/davix/0.8.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-zyilpabkpqo6il3sue4d67hkam6rg4pa/bin:\
/daq/software/spack_packages/art/3.14.04/linux-almalinux9-x86_64_v2-gcc-12.1.0-qzjc7adredo3rinqviktfi63qwg6ktr5/bin:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-almalinux9-x86_64_v2-gcc-12.1.0-tdicw7d4ezxf2z73fpwnzxw4ntfmzhug/bin:\
/daq/software/spack_packages/fhicl-cpp/4.18.04/linux-almalinux9-x86_64_v2-gcc-12.1.0-eflnzuiyssrth3yw5ocgdwqfms6dz2v3/bin:\
/daq/software/spack_packages/hwloc/2.11.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-hmd67qcz2o27a6ogkwqjwrqtnlbes3yu/bin:\
/daq/software/spack_packages/clhep/2.4.7.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-5fu3tguws2wcsd27qbs3pjwxcqjhqwz2/bin:\
/daq/software/spack_packages/cetlib/3.18.02/linux-almalinux9-x86_64_v2-gcc-12.1.0-5tnlrwduvy7svulao72goixb7bdtt3fb/bin:\
/daq/software/spack_packages/artdaq-runcontrol-gui/v1_03_05/linux-almalinux9-x86_64_v2-gcc-12.1.0-3copadieynbsjvceth7fmtcaqfpojezi/bin:\
/daq/software/spack_packages/xmlrpc-c/1.51.06/linux-almalinux9-x86_64_v2-gcc-12.1.0-ph4loq47b2yecdizbht6uvqub5phkkzu/bin:\
/daq/software/spack_packages/nghttp2/1.62.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-3kf55becby4av6vmylbb6ycectevb3b7/bin:\
/daq/software/spack_packages/qt/5.15.14/linux-almalinux9-x86_64_v2-gcc-12.1.0-khw462onkekjpmildj2aaloimmcz7wx3/bin:\
/daq/software/spack_packages/libxkbcommon/1.7.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-zutrhbyhodql4f4bixlok3fk5cpg4ver/bin:\
/daq/software/spack_packages/lcms/2.16/linux-almalinux9-x86_64_v2-gcc-12.1.0-af5effphsk2xfxnx4muql2p2baethsbg/bin:\
/daq/software/spack_packages/libtiff/4.6.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-6osij6icb6tbzvm4et5euaoeqqhe2uqc/bin:\
/daq/software/spack_packages/libjpeg-turbo/3.0.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-uw362qynr2mlospijshy7wsrn7z5pghn/bin:\
/daq/software/spack_packages/harfbuzz/9.0.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-lqfjhjrahbule7375cyk4ll4cf2uuvah/bin:\
/daq/software/spack_packages/icu4c/74.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-pw5uateyidddmaveht6khpbwpqmkzbd7/bin:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-mwpsdhjx6aym2tx45fqdzmpihwpx4rkq/bin:\
/daq/software/spack_packages/cairo/1.16.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-ku4k5gxw3p3yjyha2k3rzylhfvgnxd3m/bin:\
/daq/software/spack_packages/glib/2.78.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-bahfdboj5pq5qbas5snnbghxcz2amqhx/bin:\
/daq/software/spack_packages/openssl/3.3.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-ujbs3l5ncq2nrwsflalvw5l73ap5z6qt/bin:\
/daq/software/spack_packages/expat/2.6.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-il75hltq5v2vi4bt7wirjott6qy5i3t7/bin:\
/daq/software/spack_packages/gdbm/1.23/linux-almalinux9-x86_64_v2-gcc-12.1.0-lqqu6lwer7kdgze5bdvpuovwqj3d4m73/bin:\
/daq/software/spack_packages/readline/8.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-at6s64x7blsgz3f3ldfbexktwmxxhxbw/bin:\
/daq/software/spack_packages/berkeley-db/18.1.40/linux-almalinux9-x86_64_v2-gcc-12.1.0-f2v5nw7mto7pnxbka7qzrl4wn3evciqr/bin:\
/daq/software/spack_packages/pcre2/10.43/linux-almalinux9-x86_64_v2-gcc-12.1.0-nfmhw74ap6elvctn5xnr3obtutpdpxqo/bin:\
/daq/software/spack_packages/elfutils/0.191/linux-almalinux9-x86_64_v2-gcc-12.1.0-lnp5l74kbreh7t5mnzwarjj4675i457d/bin:\
/daq/software/spack_packages/pkgconf/2.2.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-rkbm2nowpexldgom57d2p23l5ueulwql/bin:\
/daq/software/spack_packages/gettext/0.22.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-xkg4kahsxs3oftmmpcnuok6du7uzxiwu/bin:\
/daq/software/spack_packages/ncurses/6.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-cmqq6c2lnvnqakbdvavqz7z7coxd6235/bin:\
/daq/software/spack_packages/fontconfig/2.15.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-hipeeluzdqyfumfxahmoy2ol76bb5uah/bin:\
/daq/software/spack_packages/util-linux-uuid/2.40.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-kamu3iecs4aoqky57hp5gnropwnalay6/bin:\
/daq/software/spack_packages/libxml2/2.9.12/linux-almalinux9-x86_64_v2-gcc-12.1.0-v477kfzev4y36k6rzv7c66xhuiujuyy4/bin:\
/daq/software/spack_packages/libiconv/1.17/linux-almalinux9-x86_64_v2-gcc-12.1.0-vex7teel3m4l22vviewc4guebwmvrhrj/bin:\
/daq/software/spack_packages/freetype/2.13.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-ouyekpnl4eq7clrzp6z2iloic7wxscke/bin:\
/daq/software/spack_packages/libpng/1.6.39/linux-almalinux9-x86_64_v2-gcc-12.1.0-d7aye4gt2fkg2mf7yuxtd5flcoohni6z/bin:\
/daq/software/spack_packages/font-util/1.4.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-jpxo2e4fjt7c4vlszwnqqnhenldhsplb/bin:\
/daq/software/spack_packages/spack/current/NULL/bin:\
/usr/share/Modules/bin:\
/usr/local/sbin:\
/usr/sbin:\
/opt/puppetlabs/bin:\
/usr/local/bin:\
/usr/bin

export PERL5LIB=/daq/software/spack_packages/trace/v3_17_11/linux-almalinux9-x86_64_v2-gcc-12.1.0-sdejl6yxybfvszdw2ilzcjhfxshidkwy/perllib:\
/daq/software/spack_packages/art/3.14.04/linux-almalinux9-x86_64_v2-gcc-12.1.0-qzjc7adredo3rinqviktfi63qwg6ktr5/perllib:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-almalinux9-x86_64_v2-gcc-12.1.0-tdicw7d4ezxf2z73fpwnzxw4ntfmzhug/perllib:\
/daq/software/spack_packages/cetlib/3.18.02/linux-almalinux9-x86_64_v2-gcc-12.1.0-5tnlrwduvy7svulao72goixb7bdtt3fb/perllib

export PKG_CONFIG_PATH=/daq/software/spack_packages/libpqxx/7.6.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-6yjdqg5byufjjea3gliy66t5f57gexis/lib64/pkgconfig:\
/daq/software/spack_packages/jsoncpp/1.9.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-rsh47gsaxww6cdkd5sion2ylrltgy4rl/lib64/pkgconfig:\
/daq/software/spack_packages/hiredis/1.1.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-gawnbrg4tpiu6grokbqtvpffr6rvxrra/lib64/pkgconfig:\
/daq/software/spack_packages/cppzmq/4.10.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-oc4e45ioitqwwgulje5gbue3ipaswcfk/lib64/pkgconfig:\
/daq/software/spack_packages/libzmq/4.3.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-tremd47lpcmvxoi2scn55yw4ocewngnw/lib/pkgconfig:\
/daq/software/spack_packages/libsodium/1.0.19/linux-almalinux9-x86_64_v2-gcc-12.1.0-65a35kqd666phuenlbdommclim7iafz5/lib/pkgconfig:\
/daq/software/spack_packages/libusb/1.0.22/linux-almalinux9-x86_64_v2-gcc-12.1.0-pjhvgmx6wo7fyk4hpnk3vprdqxr5q6ui/lib/pkgconfig:\
/daq/software/spack_packages/source-highlight/3.1.9/linux-almalinux9-x86_64_v2-gcc-12.1.0-64qcjzkev3zd7tsi4x6dkcxaey3mhe56/lib/pkgconfig:\
/daq/software/spack_packages/mpfr/4.2.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-f67yw6llkggyyeo4vpargfed72xssgyu/lib/pkgconfig:\
/daq/software/spack_packages/gmp/6.3.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-5sok6utiev2zhndvd5gzn575jsi565kb/lib/pkgconfig:\
/daq/software/spack_packages/epics-base/7.0.6.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-seawbr4biuxd6lp3jkmmkord6fpc2skz/lib/pkgconfig:\
/daq/software/spack_packages/artdaq-database/v1_10_00/linux-almalinux9-x86_64_v2-gcc-12.1.0-64fbc3egubzfv2wz4tj3e6f2mmh2zfus/lib64/pkgconfig:\
/daq/software/spack_packages/json-c/0.16/linux-almalinux9-x86_64_v2-gcc-12.1.0-tdflxjwpvrwqywyvb6y3dpqpiqx66gbl/lib64/pkgconfig:\
/daq/software/spack_packages/py-pybind11/2.10.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-yqem5qxy7unnxgjzujvwgb7krp6dlewj/share/pkgconfig:\
/daq/software/spack_packages/postgresql/15.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-syf4vcujq6xkvvysnhqfdwivybpgnf2o/lib/pkgconfig:\
/daq/software/spack_packages/openblas/0.3.23/linux-almalinux9-x86_64_v2-gcc-12.1.0-2ybyv2633w5bm4eny5s624sdr6mbkt7p/lib/pkgconfig:\
/daq/software/spack_packages/fftw/3.3.10/linux-almalinux9-x86_64_v2-gcc-12.1.0-oygy542a4wpauebmsmlrcknzv7jjojl5/lib/pkgconfig:\
/daq/software/spack_packages/openmpi/5.0.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-335gimqc4vjztz2isjinvgafx4dxtmkw/lib/pkgconfig:\
/daq/software/spack_packages/pmix/5.0.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-jk2yjrgw67zkcn2bbh7irjvkk77c4os2/lib/pkgconfig:\
/daq/software/spack_packages/krb5/1.21.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-ozkfrj5gh5j6ci4ywu4uogee4ye67hrj/lib/pkgconfig:\
/daq/software/spack_packages/numactl/2.0.14/linux-almalinux9-x86_64_v2-gcc-12.1.0-c2zalqjcpt372mm2t6xxppgipubqqarh/lib/pkgconfig:\
/daq/software/spack_packages/libevent/2.1.12/linux-almalinux9-x86_64_v2-gcc-12.1.0-zwsitmjitgns4ui7kny3jbste4kl5kwo/lib/pkgconfig:\
/daq/software/spack_packages/xxhash/0.8.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-k6wqvx24jgwto4dp77kj5qsb7z4f5qn3/lib/pkgconfig:\
/daq/software/spack_packages/pcre/8.45/linux-almalinux9-x86_64_v2-gcc-12.1.0-cvcedz6yywrfsk6ylgzjjdlvc5lp47sr/lib/pkgconfig:\
/daq/software/spack_packages/nlohmann-json/3.11.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-fr3y3scwkq2h4w4cd3khnxov4pirndg7/share/pkgconfig:\
/daq/software/spack_packages/lz4/1.9.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-scfslefx3gy75jw64ttmrlwibkdcdtkl/lib/pkgconfig:\
/daq/software/spack_packages/libxpm/3.5.17/linux-almalinux9-x86_64_v2-gcc-12.1.0-ncf7c7qrjyyqmquhdpql6jyadetj2zcw/lib/pkgconfig:\
/daq/software/spack_packages/libxft/2.3.8/linux-almalinux9-x86_64_v2-gcc-12.1.0-p7ahpspw3fh7d25kgkfbe3fm4wmmunhe/lib/pkgconfig:\
/daq/software/spack_packages/gsl/2.7.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-dte7qnr7n4xmca6wl42smoectjvkguep/lib/pkgconfig:\
/daq/software/spack_packages/glew/2.2.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-lmi2rg5yhzhcee3f4qngyygvb37tkra5/lib64/pkgconfig:\
/daq/software/spack_packages/mesa-glu/9.0.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-zvo2fneabuazbb2l4hn7paa33dwoumk5/lib/pkgconfig:\
/daq/software/spack_packages/mesa/23.3.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-ty3wx7du7sm6ktjb5jozppevxskwqdla/lib/pkgconfig:\
/daq/software/spack_packages/libxrandr/1.5.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-ul5wj2lkdgk67ekz7nfooq7isra5rjzk/lib/pkgconfig:\
/daq/software/spack_packages/randrproto/1.5.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-npglrq2aqbcfhf4j45y5gednqbecimk6/lib/pkgconfig:\
/daq/software/spack_packages/libedit/3.1-20230828/linux-almalinux9-x86_64_v2-gcc-12.1.0-4ggdpgw7l3sgwiln7ldfqg6hq6g7ygwq/lib/pkgconfig:\
/daq/software/spack_packages/libxt/1.3.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-yfbpuueu4hewrwwdsaf4cejr5r22if6b/lib/pkgconfig:\
/daq/software/spack_packages/libunwind/1.6.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-qjgqc2mxp6nl2wrdfznywqjmxa5ubjjw/lib/pkgconfig:\
/daq/software/spack_packages/glproto/1.4.17/linux-almalinux9-x86_64_v2-gcc-12.1.0-zkh2noe4mp22delsa7tigbnjyzzsmyow/lib/pkgconfig:\
/daq/software/spack_packages/davix/0.8.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-zyilpabkpqo6il3sue4d67hkam6rg4pa/lib64/pkgconfig:\
/daq/software/spack_packages/catch2/3.3.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-hvyppfkkgjbql44bsiacf6be6ivgjqgp/share/pkgconfig:\
/daq/software/spack_packages/intel-tbb/2021.12.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-tjtgrsbffzf6fw42vl77rwjpzvx5cx7x/lib64/pkgconfig:\
/daq/software/spack_packages/hwloc/2.11.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-hmd67qcz2o27a6ogkwqjwrqtnlbes3yu/lib/pkgconfig:\
/daq/software/spack_packages/libpciaccess/0.17/linux-almalinux9-x86_64_v2-gcc-12.1.0-tqn552v5tuxox7k2c6ke5ftqaciysdiv/lib/pkgconfig:\
/daq/software/spack_packages/clhep/2.4.7.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-5fu3tguws2wcsd27qbs3pjwxcqjhqwz2/lib/pkgconfig:\
/daq/software/spack_packages/xmlrpc-c/1.51.06/linux-almalinux9-x86_64_v2-gcc-12.1.0-ph4loq47b2yecdizbht6uvqub5phkkzu/lib/pkgconfig:\
/daq/software/spack_packages/curl/8.7.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-cvliwrhbmtuoedoteykfyvhvk3jrhslf/lib/pkgconfig:\
/daq/software/spack_packages/nghttp2/1.62.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-3kf55becby4av6vmylbb6ycectevb3b7/lib/pkgconfig:\
/daq/software/spack_packages/qt/5.15.14/linux-almalinux9-x86_64_v2-gcc-12.1.0-khw462onkekjpmildj2aaloimmcz7wx3/lib/pkgconfig:\
/daq/software/spack_packages/xcb-util-wm/0.4.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-eezr4yt5bum6mf6l4ye3k3i45kujdkh7/lib/pkgconfig:\
/daq/software/spack_packages/xcb-util-renderutil/0.3.10/linux-almalinux9-x86_64_v2-gcc-12.1.0-d45vo4574xorkfybyxwbbqvsl5it63rs/lib/pkgconfig:\
/daq/software/spack_packages/xcb-util-keysyms/0.4.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-iobf2s3btmzl5tydsaqme3hieimd5kwk/lib/pkgconfig:\
/daq/software/spack_packages/xcb-util-image/0.4.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-lzqz32bxr4lj4lxryxwhtols5wn4gako/lib/pkgconfig:\
/daq/software/spack_packages/xcb-util/0.4.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-zqliwclcwbut35ephyxdukenzrvy7uyz/lib/pkgconfig:\
/daq/software/spack_packages/libxrender/0.9.11/linux-almalinux9-x86_64_v2-gcc-12.1.0-pnhgpzyyjwf5wwgpkqiyclske5brc2di/lib/pkgconfig:\
/daq/software/spack_packages/renderproto/0.11.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-5lztkrm5cw2s4is47owcbl5gz7t7z7mq/lib/pkgconfig:\
/daq/software/spack_packages/libxkbcommon/1.7.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-zutrhbyhodql4f4bixlok3fk5cpg4ver/lib/pkgconfig:\
/daq/software/spack_packages/util-macros/1.20.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-rvdcksscpxnwnkmfgsuoolsokndu2umi/share/pkgconfig:\
/daq/software/spack_packages/libxext/1.3.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-vzs6rxc7akvoqkadbupkpzumkrclhmuu/lib/pkgconfig:\
/daq/software/spack_packages/xextproto/7.3.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-6tdr7hl6kcwsz3wqxkbthj4ug3uood7c/lib/pkgconfig:\
/daq/software/spack_packages/libx11/1.8.10/linux-almalinux9-x86_64_v2-gcc-12.1.0-mm2b3plygiq34453pt25o5evxp4pjyvy/lib/pkgconfig:\
/daq/software/spack_packages/libxcb/1.17.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-7v6r3drmx2j5cqno6jkwl57snjfs6s7d/lib/pkgconfig:\
/daq/software/spack_packages/libxdmcp/1.1.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-uupnvhexmi5zpljgzutn4agbebcp253z/lib/pkgconfig:\
/daq/software/spack_packages/libxau/1.0.11/linux-almalinux9-x86_64_v2-gcc-12.1.0-twddkqujs6iaocysrlfyppcr5pcaoudu/lib/pkgconfig:\
/daq/software/spack_packages/libpthread-stubs/0.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-shxexcvzbq2cs6p3wxpthig3lpn3gyal/lib/pkgconfig:\
/daq/software/spack_packages/kbproto/1.0.7/linux-almalinux9-x86_64_v2-gcc-12.1.0-trzy4upnu5enjqttxe7dbslfi43knk6t/lib/pkgconfig:\
/daq/software/spack_packages/libsm/1.2.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-ecinmmfpmrivgog4n2sxjkaa575sylng/lib/pkgconfig:\
/daq/software/spack_packages/libice/1.1.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-cpx3kfjcih6yhax3c6j7jvo2r5537rg2/lib/pkgconfig:\
/daq/software/spack_packages/xtrans/1.5.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-ooh4pi4uhs347bt4oin5wwxaidbauajn/share/pkgconfig:\
/daq/software/spack_packages/xproto/7.0.31/linux-almalinux9-x86_64_v2-gcc-12.1.0-o5vlio55s4xpljre5wqhu7tgymn4ofn4/lib/pkgconfig:\
/daq/software/spack_packages/libmng/2.0.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-vxskw3t5lnvepbk3q252tfpmyxnvonqk/lib64/pkgconfig:\
/daq/software/spack_packages/lcms/2.16/linux-almalinux9-x86_64_v2-gcc-12.1.0-af5effphsk2xfxnx4muql2p2baethsbg/lib/pkgconfig:\
/daq/software/spack_packages/libtiff/4.6.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-6osij6icb6tbzvm4et5euaoeqqhe2uqc/lib64/pkgconfig:\
/daq/software/spack_packages/libjpeg-turbo/3.0.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-uw362qynr2mlospijshy7wsrn7z5pghn/lib64/pkgconfig:\
/daq/software/spack_packages/harfbuzz/9.0.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-lqfjhjrahbule7375cyk4ll4cf2uuvah/lib/pkgconfig:\
/daq/software/spack_packages/icu4c/74.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-pw5uateyidddmaveht6khpbwpqmkzbd7/lib/pkgconfig:\
/daq/software/spack_packages/gobject-introspection/1.78.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-mwpsdhjx6aym2tx45fqdzmpihwpx4rkq/lib/pkgconfig:\
/daq/software/spack_packages/cairo/1.16.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-ku4k5gxw3p3yjyha2k3rzylhfvgnxd3m/lib/pkgconfig:\
/daq/software/spack_packages/pixman/0.42.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-hm4s4fh3ur442dgr4befshxixbvv7g3n/lib/pkgconfig:\
/daq/software/spack_packages/glib/2.78.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-bahfdboj5pq5qbas5snnbghxcz2amqhx/lib/pkgconfig:\
/daq/software/spack_packages/python/3.9.15/linux-almalinux9-x86_64_v2-gcc-12.1.0-dpsj5b5kuaxbqulmdofjcb7cx2zpzboi/lib/pkgconfig:\
/daq/software/spack_packages/sqlite/3.40.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-ozgw22ysc4edqw7zgwi35ascytxn52bl/lib/pkgconfig:\
/daq/software/spack_packages/openssl/3.3.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-ujbs3l5ncq2nrwsflalvw5l73ap5z6qt/lib64/pkgconfig:\
/daq/software/spack_packages/libxcrypt/4.4.35/linux-almalinux9-x86_64_v2-gcc-12.1.0-lnrvlm5iucvrqsact6vtw2kcynltjl7l/lib/pkgconfig:\
/daq/software/spack_packages/expat/2.6.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-il75hltq5v2vi4bt7wirjott6qy5i3t7/lib/pkgconfig:\
/daq/software/spack_packages/libbsd/0.12.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-mmzx3gn4qoyjngqqbjulughmnixd5bgs/lib/pkgconfig:\
/daq/software/spack_packages/libmd/1.0.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-jsfnt7kyodug6ny4m4enq7qjp434fzdb/lib/pkgconfig:\
/daq/software/spack_packages/readline/8.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-at6s64x7blsgz3f3ldfbexktwmxxhxbw/lib/pkgconfig:\
/daq/software/spack_packages/pcre2/10.43/linux-almalinux9-x86_64_v2-gcc-12.1.0-nfmhw74ap6elvctn5xnr3obtutpdpxqo/lib/pkgconfig:\
/daq/software/spack_packages/libffi/3.4.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-ri2kz2i3fvrmyzrqi6o5i6mdqbq7dh3t/lib/pkgconfig:\
/daq/software/spack_packages/elfutils/0.191/linux-almalinux9-x86_64_v2-gcc-12.1.0-lnp5l74kbreh7t5mnzwarjj4675i457d/lib/pkgconfig:\
/daq/software/spack_packages/pkgconf/2.2.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-rkbm2nowpexldgom57d2p23l5ueulwql/lib/pkgconfig:\
/daq/software/spack_packages/zstd/1.5.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-rf3bh4myisswpaehzx22djeruhswuo3n/lib/pkgconfig:\
/daq/software/spack_packages/ncurses/6.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-cmqq6c2lnvnqakbdvavqz7z7coxd6235/lib/pkgconfig:\
/daq/software/spack_packages/fontconfig/2.15.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-hipeeluzdqyfumfxahmoy2ol76bb5uah/lib/pkgconfig:\
/daq/software/spack_packages/util-linux-uuid/2.40.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-kamu3iecs4aoqky57hp5gnropwnalay6/lib/pkgconfig:\
/daq/software/spack_packages/libxml2/2.9.12/linux-almalinux9-x86_64_v2-gcc-12.1.0-v477kfzev4y36k6rzv7c66xhuiujuyy4/lib/pkgconfig:\
/daq/software/spack_packages/xz/5.4.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-nfrvmeak3zwrxdzjpyun4ejudeybfv6k/lib/pkgconfig:\
/daq/software/spack_packages/freetype/2.13.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-ouyekpnl4eq7clrzp6z2iloic7wxscke/lib/pkgconfig:\
/daq/software/spack_packages/libpng/1.6.39/linux-almalinux9-x86_64_v2-gcc-12.1.0-d7aye4gt2fkg2mf7yuxtd5flcoohni6z/lib64/pkgconfig:\
/daq/software/spack_packages/zlib-ng/2.2.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-m6l774qlz6245gy3cri455ydsal4u2rh/lib/pkgconfig:\
/daq/software/spack_packages/bzip2/1.0.8/linux-almalinux9-x86_64_v2-gcc-12.1.0-3yucrbpxh5pzuci6n7jl35eub5cjcehd/lib/pkgconfig:\
/daq/software/spack_packages/font-util/1.4.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-jpxo2e4fjt7c4vlszwnqqnhenldhsplb/lib/pkgconfig:\
/usr/share/pkgconfig:\
/usr/lib64/pkgconfig

export PYTHONPATH=/daq/software/spack_packages/py-numpy/1.24.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-ot6ftqrhodb6sygqjv4empefqtmg6fpw/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-pybind11/2.10.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-yqem5qxy7unnxgjzujvwgb7krp6dlewj/lib/python3.9/site-packages:\
/daq/software/spack_packages/py-setuptools/63.4.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-a42yj5bash47z575tqcs5tkxmxaa25mb/lib/python3.9/site-packages:\
/daq/software/spack_packages/root/6.28.12/linux-almalinux9-x86_64_v2-gcc-12.1.0-6atd2ronsm263xm6hpectczyn73iq2q7/lib/root:\
/daq/software/spack_packages/python-venv/1.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-z32szzrmyjdiknommuzfhptcztky7rx5/lib/python3.9/site-packages

export QTDIR="/daq/software/spack_packages/qt/5.15.14/linux-almalinux9-x86_64_v2-gcc-12.1.0-khw462onkekjpmildj2aaloimmcz7wx3"

export QTINC="/daq/software/spack_packages/qt/5.15.14/linux-almalinux9-x86_64_v2-gcc-12.1.0-khw462onkekjpmildj2aaloimmcz7wx3/inc"

export QTLIB="/daq/software/spack_packages/qt/5.15.14/linux-almalinux9-x86_64_v2-gcc-12.1.0-khw462onkekjpmildj2aaloimmcz7wx3/lib"

export QT_PLUGIN_PATH="/daq/software/spack_packages/qt/5.15.14/linux-almalinux9-x86_64_v2-gcc-12.1.0-khw462onkekjpmildj2aaloimmcz7wx3/plugins"

export ROOTSYS="/daq/software/spack_packages/root/6.28.12/linux-almalinux9-x86_64_v2-gcc-12.1.0-6atd2ronsm263xm6hpectczyn73iq2q7"

export ROOT_INCLUDE_PATH=/daq/software/spack_packages/canvas-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-12.1.0-7zupcuhuoy53piklqugoiaujprpm6lda/include:\
/daq/software/spack_packages/root/6.28.12/linux-almalinux9-x86_64_v2-gcc-12.1.0-6atd2ronsm263xm6hpectczyn73iq2q7/include:\
/daq/software/spack_packages/xxhash/0.8.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-k6wqvx24jgwto4dp77kj5qsb7z4f5qn3/include:\
/daq/software/spack_packages/vdt/0.4.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-atlxqt2hgynbtrkmjzpohtgpnhzy6r37/include:\
/daq/software/spack_packages/unuran/1.8.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-tdd5jdgwxwsplyxv3cxmmrmhn6omem5u/include:\
/daq/software/spack_packages/rngstreams/1.0.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-dvskhdizfcdy26eaoluliei7pzduacll/include:\
/daq/software/spack_packages/pcre/8.45/linux-almalinux9-x86_64_v2-gcc-12.1.0-cvcedz6yywrfsk6ylgzjjdlvc5lp47sr/include:\
/daq/software/spack_packages/nlohmann-json/3.11.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-fr3y3scwkq2h4w4cd3khnxov4pirndg7/include:\
/daq/software/spack_packages/lz4/1.9.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-scfslefx3gy75jw64ttmrlwibkdcdtkl/include:\
/daq/software/spack_packages/libxpm/3.5.17/linux-almalinux9-x86_64_v2-gcc-12.1.0-ncf7c7qrjyyqmquhdpql6jyadetj2zcw/include:\
/daq/software/spack_packages/libxft/2.3.8/linux-almalinux9-x86_64_v2-gcc-12.1.0-p7ahpspw3fh7d25kgkfbe3fm4wmmunhe/include:\
/daq/software/spack_packages/fontconfig/2.15.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-hipeeluzdqyfumfxahmoy2ol76bb5uah/include:\
/daq/software/spack_packages/font-util/1.4.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-jpxo2e4fjt7c4vlszwnqqnhenldhsplb/include:\
/daq/software/spack_packages/libjpeg-turbo/3.0.3/linux-almalinux9-x86_64_v2-gcc-12.1.0-uw362qynr2mlospijshy7wsrn7z5pghn/include:\
/daq/software/spack_packages/gsl/2.7.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-dte7qnr7n4xmca6wl42smoectjvkguep/include:\
/daq/software/spack_packages/glew/2.2.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-lmi2rg5yhzhcee3f4qngyygvb37tkra5/include:\
/daq/software/spack_packages/gl2ps/1.4.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-kpalg7mnnk3cpcfwltghqk4bxwpr6juv/include:\
/daq/software/spack_packages/ftgl/2.4.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-pinsfigmejaw6vmvbqqsyu56m3ke7a4n/include:\
/daq/software/spack_packages/mesa-glu/9.0.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-zvo2fneabuazbb2l4hn7paa33dwoumk5/include:\
/daq/software/spack_packages/glx/1.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-ednrzohfqntqu56wvx5ujzuilfdwoe4j/include:\
/daq/software/spack_packages/mesa/23.3.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-ty3wx7du7sm6ktjb5jozppevxskwqdla/include:\
/daq/software/spack_packages/xrandr/1.5.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-obayg4gkfzpafl7do7md5hzwsnnwvyiw/include:\
/daq/software/spack_packages/libxrandr/1.5.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-ul5wj2lkdgk67ekz7nfooq7isra5rjzk/include:\
/daq/software/spack_packages/randrproto/1.5.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-npglrq2aqbcfhf4j45y5gednqbecimk6/include:\
/daq/software/spack_packages/libxrender/0.9.11/linux-almalinux9-x86_64_v2-gcc-12.1.0-pnhgpzyyjwf5wwgpkqiyclske5brc2di/include:\
/daq/software/spack_packages/renderproto/0.11.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-5lztkrm5cw2s4is47owcbl5gz7t7z7mq/include:\
/daq/software/spack_packages/llvm/17.0.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-ovx7o7lbxhbhotsuegqk664wfqaxgrsf/include:\
/daq/software/spack_packages/swig/4.1.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-lwg6owj76rsertsh45ipund3kiahkx63/include:\
/daq/software/spack_packages/pcre2/10.43/linux-almalinux9-x86_64_v2-gcc-12.1.0-nfmhw74ap6elvctn5xnr3obtutpdpxqo/include:\
/daq/software/spack_packages/lua/5.3.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-m55tbrcl7pvseswrmu6xgtgpw7bsxlsx/include:\
/daq/software/spack_packages/libedit/3.1-20230828/linux-almalinux9-x86_64_v2-gcc-12.1.0-4ggdpgw7l3sgwiln7ldfqg6hq6g7ygwq/include:\
/daq/software/spack_packages/binutils/2.43.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-v2tccrpv3jfy4xfwhojyfzl55z5wybvk/include:\
/daq/software/spack_packages/libxt/1.3.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-yfbpuueu4hewrwwdsaf4cejr5r22if6b/include:\
/daq/software/spack_packages/libsm/1.2.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-ecinmmfpmrivgog4n2sxjkaa575sylng/include:\
/daq/software/spack_packages/libice/1.1.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-cpx3kfjcih6yhax3c6j7jvo2r5537rg2/include:\
/daq/software/spack_packages/libxext/1.3.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-vzs6rxc7akvoqkadbupkpzumkrclhmuu/include:\
/daq/software/spack_packages/xextproto/7.3.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-6tdr7hl6kcwsz3wqxkbthj4ug3uood7c/include:\
/daq/software/spack_packages/libx11/1.8.10/linux-almalinux9-x86_64_v2-gcc-12.1.0-mm2b3plygiq34453pt25o5evxp4pjyvy/include:\
/daq/software/spack_packages/xtrans/1.5.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-ooh4pi4uhs347bt4oin5wwxaidbauajn/include:\
/daq/software/spack_packages/libxcb/1.17.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-7v6r3drmx2j5cqno6jkwl57snjfs6s7d/include:\
/daq/software/spack_packages/libxdmcp/1.1.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-uupnvhexmi5zpljgzutn4agbebcp253z/include:\
/daq/software/spack_packages/libxau/1.0.11/linux-almalinux9-x86_64_v2-gcc-12.1.0-twddkqujs6iaocysrlfyppcr5pcaoudu/include:\
/daq/software/spack_packages/xproto/7.0.31/linux-almalinux9-x86_64_v2-gcc-12.1.0-o5vlio55s4xpljre5wqhu7tgymn4ofn4/include:\
/daq/software/spack_packages/libpthread-stubs/0.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-shxexcvzbq2cs6p3wxpthig3lpn3gyal/include:\
/daq/software/spack_packages/kbproto/1.0.7/linux-almalinux9-x86_64_v2-gcc-12.1.0-trzy4upnu5enjqttxe7dbslfi43knk6t/include:\
/daq/software/spack_packages/libunwind/1.6.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-qjgqc2mxp6nl2wrdfznywqjmxa5ubjjw/include:\
/daq/software/spack_packages/glproto/1.4.17/linux-almalinux9-x86_64_v2-gcc-12.1.0-zkh2noe4mp22delsa7tigbnjyzzsmyow/include:\
/daq/software/spack_packages/freetype/2.13.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-ouyekpnl4eq7clrzp6z2iloic7wxscke/include:\
/daq/software/spack_packages/libpng/1.6.39/linux-almalinux9-x86_64_v2-gcc-12.1.0-d7aye4gt2fkg2mf7yuxtd5flcoohni6z/include:\
/daq/software/spack_packages/davix/0.8.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-zyilpabkpqo6il3sue4d67hkam6rg4pa/include:\
/daq/software/spack_packages/hep-concurrency/1.09.02/linux-almalinux9-x86_64_v2-gcc-12.1.0-cf5phmvcgkue2xboyqsimfhpo6alh5bq/include:\
/daq/software/spack_packages/canvas/3.16.04/linux-almalinux9-x86_64_v2-gcc-12.1.0-p767wyflfzftnia5oeworrcm4bwahci3/include:\
/daq/software/spack_packages/range-v3/0.12.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-tp6tyxezfd5cjcyinokkhmm7ktjrvme7/include:\
/daq/software/spack_packages/messagefacility/2.10.05/linux-almalinux9-x86_64_v2-gcc-12.1.0-tdicw7d4ezxf2z73fpwnzxw4ntfmzhug/include:\
/daq/software/spack_packages/catch2/3.3.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-hvyppfkkgjbql44bsiacf6be6ivgjqgp/include:\
/daq/software/spack_packages/fhicl-cpp/4.18.04/linux-almalinux9-x86_64_v2-gcc-12.1.0-eflnzuiyssrth3yw5ocgdwqfms6dz2v3/include:\
/daq/software/spack_packages/python/3.9.15/linux-almalinux9-x86_64_v2-gcc-12.1.0-dpsj5b5kuaxbqulmdofjcb7cx2zpzboi/include:\
/daq/software/spack_packages/util-linux-uuid/2.40.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-kamu3iecs4aoqky57hp5gnropwnalay6/include:\
/daq/software/spack_packages/libxcrypt/4.4.35/linux-almalinux9-x86_64_v2-gcc-12.1.0-lnrvlm5iucvrqsact6vtw2kcynltjl7l/include:\
/daq/software/spack_packages/libffi/3.4.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-ri2kz2i3fvrmyzrqi6o5i6mdqbq7dh3t/include:\
/daq/software/spack_packages/gettext/0.22.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-xkg4kahsxs3oftmmpcnuok6du7uzxiwu/include:\
/daq/software/spack_packages/gdbm/1.23/linux-almalinux9-x86_64_v2-gcc-12.1.0-lqqu6lwer7kdgze5bdvpuovwqj3d4m73/include:\
/daq/software/spack_packages/expat/2.6.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-il75hltq5v2vi4bt7wirjott6qy5i3t7/include:\
/daq/software/spack_packages/libbsd/0.12.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-mmzx3gn4qoyjngqqbjulughmnixd5bgs/include:\
/daq/software/spack_packages/libmd/1.0.4/linux-almalinux9-x86_64_v2-gcc-12.1.0-jsfnt7kyodug6ny4m4enq7qjp434fzdb/include:\
/daq/software/spack_packages/intel-tbb/2021.12.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-tjtgrsbffzf6fw42vl77rwjpzvx5cx7x/include:\
/daq/software/spack_packages/hwloc/2.11.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-hmd67qcz2o27a6ogkwqjwrqtnlbes3yu/include:\
/daq/software/spack_packages/libxml2/2.9.12/linux-almalinux9-x86_64_v2-gcc-12.1.0-v477kfzev4y36k6rzv7c66xhuiujuyy4/include:\
/daq/software/spack_packages/libiconv/1.17/linux-almalinux9-x86_64_v2-gcc-12.1.0-vex7teel3m4l22vviewc4guebwmvrhrj/include:\
/daq/software/spack_packages/libpciaccess/0.17/linux-almalinux9-x86_64_v2-gcc-12.1.0-tqn552v5tuxox7k2c6ke5ftqaciysdiv/include:\
/daq/software/spack_packages/clhep/2.4.7.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-5fu3tguws2wcsd27qbs3pjwxcqjhqwz2/include:\
/daq/software/spack_packages/cetlib/3.18.02/linux-almalinux9-x86_64_v2-gcc-12.1.0-5tnlrwduvy7svulao72goixb7bdtt3fb/include:\
/daq/software/spack_packages/sqlite/3.40.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-ozgw22ysc4edqw7zgwi35ascytxn52bl/include:\
/daq/software/spack_packages/readline/8.2/linux-almalinux9-x86_64_v2-gcc-12.1.0-at6s64x7blsgz3f3ldfbexktwmxxhxbw/include:\
/daq/software/spack_packages/ncurses/6.5/linux-almalinux9-x86_64_v2-gcc-12.1.0-cmqq6c2lnvnqakbdvavqz7z7coxd6235/include:\
/daq/software/spack_packages/openssl/3.3.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-ujbs3l5ncq2nrwsflalvw5l73ap5z6qt/include:\
/daq/software/spack_packages/cetlib-except/1.09.01/linux-almalinux9-x86_64_v2-gcc-12.1.0-35zgbfiuddnm4ellyu5q6u4nlwz3qzkj/include:\
/daq/software/spack_packages/boost/1.82.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-tfwrsbhwi6zuxloxe6t5jth5vilk6qqy/include:\
/daq/software/spack_packages/zstd/1.5.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-rf3bh4myisswpaehzx22djeruhswuo3n/include:\
/daq/software/spack_packages/zlib-ng/2.2.1/linux-almalinux9-x86_64_v2-gcc-12.1.0-m6l774qlz6245gy3cri455ydsal4u2rh/include:\
/daq/software/spack_packages/xz/5.4.6/linux-almalinux9-x86_64_v2-gcc-12.1.0-nfrvmeak3zwrxdzjpyun4ejudeybfv6k/include:\
/daq/software/spack_packages/bzip2/1.0.8/linux-almalinux9-x86_64_v2-gcc-12.1.0-3yucrbpxh5pzuci6n7jl35eub5cjcehd/include:\
/daq/software/spack_packages/gcc-runtime/12.1.0/linux-almalinux9-x86_64_v2-gcc-12.1.0-22upj6ywn6pzwvs55uuul5fafxlxmw2r/include:\
/daq/software/spack_packages/sbndaq-suite/v1_10_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-clnglb4qujddrmbubr3rkeaqbon5wkkf/include:\
/daq/software/spack_packages/art-suite/s131/linux-almalinux9-x86_64_v2-gcc-12.1.0-jqx32mboexdrhb4x7dv2xh4umwjzrrdq/include:\
/daq/software/spack_packages/art-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-12.1.0-ihazckmvkm3tsgoku2vysrot37d65ivv/include:\
/usr/include

export ROOT_LIBRARY_PATH=/daq/software/spack_packages/art-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-12.1.0-ihazckmvkm3tsgoku2vysrot37d65ivv/lib:\
/daq/software/spack_packages/canvas-root-io/1.13.06/linux-almalinux9-x86_64_v2-gcc-12.1.0-7zupcuhuoy53piklqugoiaujprpm6lda/lib

export ROOT_VERSION="v6"

export SBNDAQ_VERSION="v1_10_02"

export SETUP_ARTDAQ_MFEXTENSIONS="spack load artdaq-mfextensions"

export SPACK_ALIASES="concretise:concretize;containerise:containerize;rm:remove"

export SPACK_ARCH="linux-almalinux9-x86_64_v2"

export SPACK_DISABLE_LOCAL_CONFIG="true"

export SPACK_ENV_SCRIPT="/daq/software/spack_packages/spack/current/NULL/share/spack/setup-env.sh"

export SPACK_INSTALL_DIR="./overrides/spack"

export SPACK_LOADED_HASHES="clnglb4qujddrmbubr3rkeaqbon5wkkf"

export SPACK_PYTHON="/usr/bin/python3"

export SPACK_ROOT="/daq/software/spack_packages/spack/current/NULL"

export SRANDOM="3831791999"

export SSH_USER_AUTH="/tmp/sshauth.XXXXXXXXXEhc2tu"

export S_COLORS="auto"

export THIS_SBN_DAQ_DAQINTERFACE_DIR="/home/nfs/icarus/DAQ_SPACK_DevAreas/DAQ_2024-09-30_GAL_v1_10_02/srcs/sbndaq/sbn-fd/DAQInterface2"

export WIBTOOLS_BIN="/daq/software/spack_packages/wibtools/v1_10_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-3cucwe4tbxnajgspyyzilvyl36bvngtk/bin"

export WIB_ADDRESS_TABLE_PATH="/daq/software/spack_packages/wibtools/v1_10_02/linux-almalinux9-x86_64_v2-gcc-12.1.0-3cucwe4tbxnajgspyyzilvyl36bvngtk/tables"

export XDG_SESSION_CLASS="user"

export XDG_SESSION_TYPE="tty"

export XLOCALEDIR=/daq/software/spack_packages/libx11/1.8.10/linux-almalinux9-x86_64_v2-gcc-12.1.0-mm2b3plygiq34453pt25o5evxp4pjyvy/share/X11/locale

export __MODULES_LMINIT="module use --append /usr/share/Modules/modulefiles:module use --append /etc/modulefiles:module use --append /usr/share/modulefiles"

export _a="sbndaq-suite@v1_10_02%gcc@12.1.0 arch=linux-almalinux9-x86_64_v2 /clnglb4"

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

export pth="/daq/software/spack_packages/spack/v0.23.0.sbnd/NULL/share/spack/modules"

export systype="linux-almalinux9-x86_64"

export which_declare="declare -f"

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

