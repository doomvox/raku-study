#!/usr/bin/env perl6
# 
# rob_ransbottom_comma_equals_hash_bug.raku            19 Jun 2022 

use v6;

# Reported:
#  https://github.com/rakudo/rakudo/issues/4945

#!/usr/bin/env raku
# :vim ft=raku sw=4 expandtab
use v6.d;
use Test;

=begin comment

    ,= with hashes does the %h<key> = %hh<key> assignment en masse.

    The docs and the error message are LTA.

Odd number of elements found where hash initializer expected:
Found 9 (implicit) elements:
Last element seen: ${:b(1), :c(1)}
  in block <unit> at sayWHAT.raku line 59

    raku -v output at tail.

=end comment

my %model =  a => 0, b => 0, c => 0, d => 0;
my %h     =          b => 1, c => 1;
my %hoh   = key => { b => 1, c => 1 };
my %exp   =  a => 0, b => 1, c => 1, d => 0;

plan 9;

my %target = %model;
%target ,= ${:b(1), :c(1)}.Hash;
ok %target eqv %exp,     ',= ${:b(1), :c(1)}.Hash';

%target = %model;
%target ,= %${:b(1), :c(1)};
ok %target eqv %exp,     ',= %${:b(1), :c(1)}';

%target = %model;
%target ,= %{:b(1), :c(1)};
ok %target eqv %exp,     ',= %{:b(1), :c(1)}';

%target = %model;
%target ,= {:b(1), :c(1)};
ok %target eqv %exp,     ',= {:b(1), :c(1)}';

%target = %model;
%target ,= %hoh<key>.Hash;
ok %target eqv %exp,     ',= %hoh<key>.Hash';

%target = %model;
%target ,= %hoh<key>.hash;
ok %target eqv %exp,     ',= %hoh<key>.hash';

%target = %model;
ok ( %target ,= (key => { b => 1, c => 1 })<key>.Hash ),
    '(key => { b => 1, c => 1 })<key>.Hash )';

%target = %model;
ok ( %target ,= (key => { b => 1, c => 1 })<key> ),
    ',= (key => { b => 1, c => 1 })<key>';

%target = %model;
%target ,= %hoh<key>;
ok %target eqv %exp,      ',= %hoh<key>';

done-testing;

=finish

Raku::can-language-versions=6.c 6.c 6.d 6.d.PREVIEW 6.d.TEST 6.d.TESTDEPR 6.e 6.e.PREVIEW
Raku::codename=
Raku::implementation=Rakudo
Raku::language-revisions=c	mods	
d	mods	PREVIEW	
TEST	
TESTDEPR	deprecate	1
e	mods	PREVIEW	require	1
require	PREVIEW
Raku::language-version=6.d
Raku::prefix=/priv/rir/rakudo-star-2022.03
Raku::prev-revision=c	c
d	c
e	d
Raku::prev-setting-name=CORE.c	CORE.c
CORE.d	CORE.d
CORE.e	CORE.e
NULL.c	NULL.c
NULL.d	CORE.c
NULL.e	CORE.d
Raku::release-number=
Raku::source-digest=25d2974ac57d63d61432a5359e6807008bcd7bb6
Raku::static-nqp-home=
Raku::static-rakudo-home=
Raku::version=2022.03
distro::auth=https://www.debian.org/
distro::desc=Debian GNU/Linux 11 (bullseye)
distro::is-win=False
distro::name=debian
distro::path-sep=:
distro::release=11
distro::signature=
distro::version=11.bullseye
kernel::arch=unknown
kernel::archname=x86_64-linux
kernel::auth=unknown
kernel::bits=64
kernel::desc=
kernel::hardware=x86_64
kernel::name=linux
kernel::release=5.10.0-11-amd64
kernel::signature=
kernel::version=1.SMP.Debian.5.10.92.1.2022.01.18
moar::ar=ar
moar::arflags=rcs
moar::arout=
moar::as=as
moar::asm=.s
moar::asmout=-o 
moar::asmswitch=-S
moar::auxclean=@:
moar::be=0
moar::bindir=/priv/rir/rakudo-star-2022.03/bin
moar::booltype=_Bool
moar::can_specific_werror=1
moar::can_unaligned_int32=1
moar::can_unaligned_int64=1
moar::can_unaligned_num64=1
moar::cancgoto=1
moar::cat=cat
moar::cc=gcc
moar::ccdebugflags=-g3
moar::ccdef=-D
moar::ccdefflags=-D_REENTRANT -D_FILE_OFFSET_BITS=64
moar::ccinc=-I
moar::ccincsystem=-isystem
moar::ccjitflags=
moar::ccmiscflags=-std=gnu99 -Wextra -Wall -Wno-unused-parameter -Wno-unused-function -Wno-missing-braces -Werror=pointer-arith -Werror=vla
moar::ccoptiflags=-O3 -DNDEBUG
moar::ccout=-o 
moar::ccshared=-fPIC
moar::ccswitch=-c
moar::ccwarnflags=
moar::cflags=-std=gnu99 -Wextra -Wall -Wno-unused-parameter -Wno-unused-function -Wno-missing-braces -Werror=pointer-arith -Werror=vla -O3 -DNDEBUG  -D_REENTRANT -D_FILE_OFFSET_BITS=64 -fPIC -DMVM_HEAPSNAPSHOT_FORMAT=2 -D_GNU_SOURCE
moar::cincludes=
moar::cmpclean=cd 3rdparty/cmp && $(RM) libcmp.a && $(RM) cmp.lib && $(RM) cmp.obj && $(MAKE) clean
moar::cmplib=3rdparty/cmp/libcmp.a
moar::cmpobjects=3rdparty/cmp/cmp.o
moar::cmprule=$(AR) $(ARFLAGS) $@ 3rdparty/cmp/*.o
moar::config=--prefix=/priv/rir/rakudo-star-2022.03 --relocatable
moar::cppout=> 
moar::cppswitch=-E
moar::crossconf=
moar::dasm_flags=-D POSIX=1
moar::dcbclean=$(RM) 3rdparty/dyncall/dyncallback/libdyncallback_s.a
moar::dcblib=3rdparty/dyncall/dyncallback/libdyncallback_s.a
moar::dcbobjects=
moar::dcbrule=@:
moar::dcclean=cd 3rdparty/dyncall && $(MAKE) -f Makefile clean
moar::dclib=3rdparty/dyncall/dyncall/libdyncall_s.a
moar::dcobjects=
moar::dcrule=cd 3rdparty/dyncall &&  ./configure && CC='$(CC)' CFLAGS='-fPIC' $(MAKE) -f Makefile 
moar::defs[0]=_REENTRANT
moar::defs[1]=_FILE_OFFSET_BITS=64
moar::dlclean=$(RM) 3rdparty/dyncall/dynload/libdynload_s.a
moar::dll=lib%s.so
moar::dllexport=__attribute__ ((visibility ("default")))
moar::dllib=3rdparty/dyncall/dynload/libdynload_s.a
moar::dllimport=__attribute__ ((visibility ("default")))
moar::dlllocal=__attribute__ ((visibility ("hidden")))
moar::dlobjects=
moar::dlrule=@:
moar::exe=
moar::expect_condition=__builtin_expect((condition), (expection))
moar::expect_likely=__builtin_expect(!!(condition), 1)
moar::expect_unlikely=__builtin_expect(!!(condition), 0)
moar::fallthrough=__attribute__ ((fallthrough));
moar::formatattribute=__attribute__((format(X, Y, Z)))
moar::has_booltype=1
moar::has_fn_malloc_trim=1
moar::has_isinf=1
moar::has_isnan=1
moar::has_pthread_setname_np=1
moar::has_pthread_yield=0
moar::has_rdtscp=1
moar::has_signbit=1
moar::has_stdatomic=1
moar::has_substandard_acos=0
moar::has_substandard_asin=0
moar::has_substandard_log10=0
moar::has_substandard_log=0
moar::has_substandard_pow=0
moar::has_thread_local=1
moar::heapsnapformat=2
moar::hllincludes=moar libuv libatomic_ops libtommath dyncall mimalloc
moar::impinst=
moar::install=	$(MKPATH) "$(DESTDIR)$(PREFIX)/include/libuv"	$(MKPATH) "$(DESTDIR)$(PREFIX)/include/libuv/uv"	$(CP) 3rdparty/libuv/include/*.h "$(DESTDIR)$(PREFIX)/include/libuv"	$(CP) 3rdparty/libuv/include/uv/*.h "$(DESTDIR)$(PREFIX)/include/libuv/uv"	$(MKPATH) "$(DESTDIR)$(PREFIX)/include/libatomic_ops/atomic_ops/sysdeps/armcc"	$(MKPATH) "$(DESTDIR)$(PREFIX)/include/libatomic_ops/atomic_ops/sysdeps/gcc"	$(MKPATH) "$(DESTDIR)$(PREFIX)/include/libatomic_ops/atomic_ops/sysdeps/hpc"	$(MKPATH) "$(DESTDIR)$(PREFIX)/include/libatomic_ops/atomic_ops/sysdeps/ibmc"	$(MKPATH) "$(DESTDIR)$(PREFIX)/include/libatomic_ops/atomic_ops/sysdeps/icc"	$(MKPATH) "$(DESTDIR)$(PREFIX)/include/libatomic_ops/atomic_ops/sysdeps/loadstore"	$(MKPATH) "$(DESTDIR)$(PREFIX)/include/libatomic_ops/atomic_ops/sysdeps/msftc"	$(MKPATH) "$(DESTDIR)$(PREFIX)/include/libatomic_ops/atomic_ops/sysdeps/sunc"	$(CP) 3rdparty/libatomicops/src/*.h "$(DESTDIR)$(PREFIX)/include/libatomic_ops"	$(CP) 3rdparty/libatomicops/src/atomic_ops/*.h "$(DESTDIR)$(PREFIX)/include/libatomic_ops/atomic_ops"	$(CP) 3rdparty/libatomicops/src/atomic_ops/sysdeps/*.h "$(DESTDIR)$(PREFIX)/include/libatomic_ops/atomic_ops/sysdeps"	$(CP) 3rdparty/libatomicops/src/atomic_ops/sysdeps/armcc/*.h "$(DESTDIR)$(PREFIX)/include/libatomic_ops/atomic_ops/sysdeps/armcc"	$(CP) 3rdparty/libatomicops/src/atomic_ops/sysdeps/gcc/*.h "$(DESTDIR)$(PREFIX)/include/libatomic_ops/atomic_ops/sysdeps/gcc"	$(CP) 3rdparty/libatomicops/src/atomic_ops/sysdeps/hpc/*.h "$(DESTDIR)$(PREFIX)/include/libatomic_ops/atomic_ops/sysdeps/hpc"	$(CP) 3rdparty/libatomicops/src/atomic_ops/sysdeps/ibmc/*.h "$(DESTDIR)$(PREFIX)/include/libatomic_ops/atomic_ops/sysdeps/ibmc"	$(CP) 3rdparty/libatomicops/src/atomic_ops/sysdeps/icc/*.h "$(DESTDIR)$(PREFIX)/include/libatomic_ops/atomic_ops/sysdeps/icc"	$(CP) 3rdparty/libatomicops/src/atomic_ops/sysdeps/loadstore/*.h "$(DESTDIR)$(PREFIX)/include/libatomic_ops/atomic_ops/sysdeps/loadstore"	$(CP) 3rdparty/libatomicops/src/atomic_ops/sysdeps/msftc/*.h "$(DESTDIR)$(PREFIX)/include/libatomic_ops/atomic_ops/sysdeps/msftc"	$(CP) 3rdparty/libatomicops/src/atomic_ops/sysdeps/sunc/*.h "$(DESTDIR)$(PREFIX)/include/libatomic_ops/atomic_ops/sysdeps/sunc"	$(MKPATH) "$(DESTDIR)$(PREFIX)/include/libtommath"	$(CP) 3rdparty/libtommath/*.h "$(DESTDIR)$(PREFIX)/include/libtommath"	$(MKPATH) "$(DESTDIR)$(PREFIX)/include/dyncall"	$(CP) 3rdparty/dyncall/dynload/*.h "$(DESTDIR)$(PREFIX)/include/dyncall"	$(CP) 3rdparty/dyncall/dyncall/*.h "$(DESTDIR)$(PREFIX)/include/dyncall"	$(CP) 3rdparty/dyncall/dyncallback/*.h "$(DESTDIR)$(PREFIX)/include/dyncall"	$(MKPATH) "$(DESTDIR)$(PREFIX)/include/mimalloc"	$(CP) 3rdparty/mimalloc/include/*.h "$(DESTDIR)$(PREFIX)/include/mimalloc"
moar::jit_arch=MVM_JIT_ARCH_X64
moar::jit_obj=$(JIT_OBJECTS) $(JIT_ARCH_X64)
moar::jit_platform=MVM_JIT_PLATFORM_POSIX
moar::laoclean=cd 3rdparty/libatomicops/src && $(MAKE) distclean
moar::laolib=3rdparty/libatomicops/src/libatomic_ops.a
moar::laoobjects=
moar::laorule=cd 3rdparty/libatomicops && CC='$(CC)' CFLAGS='$(CFLAGS)' MAKE='$(MAKE)' ./configure  && cd src && $(MAKE) && cd ..
moar::ld=gcc
moar::lddebugflags=-g3
moar::lddir=-L
moar::ldflags= -O3 -DNDEBUG -Wl,-z,origin,-rpath,'$$ORIGIN/../lib'
moar::ldimp=
moar::ldinstflags=
moar::ldlibs= -lm -lpthread -lrt -ldl
moar::ldmiscflags=
moar::ldoptiflags=-O3 -DNDEBUG
moar::ldout=-o 
moar::ldrpath=-Wl,-rpath,"//priv/rir/rakudo-star-2022.03/lib"
moar::ldrpath_relocatable=-Wl,-z,origin,-rpath,'$$ORIGIN/../lib'
moar::ldshared=-shared -fPIC
moar::ldsys=-l%s
moar::ldusr=-l%s
moar::lib=lib%s.a
moar::libdir=/priv/rir/rakudo-star-2022.03/lib
moar::lincludes=
moar::mainflags=-DMVM_SHARED
moar::mainlibs=-L. -lmoar
moar::make=make
moar::mastdir=/priv/rir/rakudo-star-2022.03/share/nqp/lib/MAST
moar::mimalloc_include=-isystem3rdparty/mimalloc
moar::mimalloc_object=3rdparty/mimalloc/src/static.o
moar::mkflags=
moar::mknoisy=ifneq ($(NOISY), 1)MSG = @echoCMD = @NOOUT = > /dev/nullNOERR = 2> /dev/nullendif
moar::moar=libmoar.so
moar::moar_cincludes= -I3rdparty/libuv/include -I3rdparty/libuv/src -I3rdparty/libatomicops/src -I3rdparty/libtommath -I3rdparty/dyncall/dynload -I3rdparty/dyncall/dyncall -I3rdparty/dyncall/dyncallback -I3rdparty/mimalloc/include -I3rdparty/mimalloc/src
moar::moardll=libmoar.so
moar::moarlib=libmoar.a
moar::moarshared=
moar::moarshared_norelocatable=
moar::moarshared_relocatable=
moar::mtclean=$(RM) 3rdparty/tinymt/libtinymt.a 3rdparty/tinymt/*.o
moar::mtlib=3rdparty/tinymt/libtinymt.a
moar::mtobjects=3rdparty/tinymt/tinymt64.o
moar::mtrule=$(AR) $(ARFLAGS) $@ 3rdparty/tinymt/*.o
moar::name=moar
moar::nativecall_backend=dyncall
moar::noreturnattribute=__attribute__((noreturn))
moar::noreturnspecifier=
moar::nul=/dev/null
moar::obj=.o
moar::objflags=-DMVM_BUILD_SHARED -fPIC
moar::objout=-o 
moar::os=linux
moar::osname=linux
moar::osvers=4.19.0
moar::perl=/usr/bin/perl
moar::pkgconfig=/usr/bin/pkg-config
moar::pkgconfig_works=1
moar::platform=$(PLATFORM_POSIX)
moar::prefix=/priv/rir/rakudo-star-2022.03
moar::ptr_size=8
moar::rm=rm -f
moar::sh=/bin/sh
moar::shaclean=$(RM) 3rdparty/sha1/libsha1.a 3rdparty/sha1/*.o
moar::shaincludedir=3rdparty/sha1
moar::shalib=3rdparty/sha1/libsha1.a
moar::shaobjects=3rdparty/sha1/sha1.o
moar::sharedlib=
moar::sharule=$(AR) $(ARFLAGS) $@ 3rdparty/sha1/*.o
moar::static_inline=static __inline__
moar::staticlib=
moar::syslibs[0]=m
moar::syslibs[1]=pthread
moar::syslibs[2]=rt
moar::syslibs[3]=dl
moar::thirdpartylibs=3rdparty/cmp/libcmp.a 3rdparty/dyncall/dyncall/libdyncall_s.a 3rdparty/dyncall/dyncallback/libdyncallback_s.a 3rdparty/dyncall/dynload/libdynload_s.a 3rdparty/libatomicops/src/libatomic_ops.a 3rdparty/tinymt/libtinymt.a 3rdparty/sha1/libsha1.a 3rdparty/libtommath/libtommath.a 3rdparty/libuv/libuv.a
moar::thread_local=_Thread_local
moar::tomclean=$(RM) 3rdparty/libtommath/libtommath.a 3rdparty/libtommath/*.o
moar::tomlib=3rdparty/libtommath/libtommath.a
moar::tomobjects=3rdparty/libtommath/bn_cutoffs.o 3rdparty/libtommath/bn_deprecated.o 3rdparty/libtommath/bn_mp_2expt.o 3rdparty/libtommath/bn_mp_abs.o 3rdparty/libtommath/bn_mp_add.o 3rdparty/libtommath/bn_mp_add_d.o 3rdparty/libtommath/bn_mp_addmod.o 3rdparty/libtommath/bn_mp_and.o 3rdparty/libtommath/bn_mp_clamp.o 3rdparty/libtommath/bn_mp_clear.o 3rdparty/libtommath/bn_mp_clear_multi.o 3rdparty/libtommath/bn_mp_cmp.o 3rdparty/libtommath/bn_mp_cmp_d.o 3rdparty/libtommath/bn_mp_cmp_mag.o 3rdparty/libtommath/bn_mp_cnt_lsb.o 3rdparty/libtommath/bn_mp_complement.o 3rdparty/libtommath/bn_mp_copy.o 3rdparty/libtommath/bn_mp_count_bits.o 3rdparty/libtommath/bn_mp_decr.o 3rdparty/libtommath/bn_mp_div.o 3rdparty/libtommath/bn_mp_div_2.o 3rdparty/libtommath/bn_mp_div_2d.o 3rdparty/libtommath/bn_mp_div_3.o 3rdparty/libtommath/bn_mp_div_d.o 3rdparty/libtommath/bn_mp_dr_is_modulus.o 3rdparty/libtommath/bn_mp_dr_reduce.o 3rdparty/libtommath/bn_mp_dr_setup.o 3rdparty/libtommath/bn_mp_error_to_string.o 3rdparty/libtommath/bn_mp_exch.o 3rdparty/libtommath/bn_mp_expt_u32.o 3rdparty/libtommath/bn_mp_exptmod.o 3rdparty/libtommath/bn_mp_exteuclid.o 3rdparty/libtommath/bn_mp_fread.o 3rdparty/libtommath/bn_mp_from_sbin.o 3rdparty/libtommath/bn_mp_from_ubin.o 3rdparty/libtommath/bn_mp_fwrite.o 3rdparty/libtommath/bn_mp_gcd.o 3rdparty/libtommath/bn_mp_get_double.o 3rdparty/libtommath/bn_mp_get_i32.o 3rdparty/libtommath/bn_mp_get_i64.o 3rdparty/libtommath/bn_mp_get_l.o 3rdparty/libtommath/bn_mp_get_ll.o 3rdparty/libtommath/bn_mp_get_mag_u32.o 3rdparty/libtommath/bn_mp_get_mag_u64.o 3rdparty/libtommath/bn_mp_get_mag_ul.o 3rdparty/libtommath/bn_mp_get_mag_ull.o 3rdparty/libtommath/bn_mp_grow.o 3rdparty/libtommath/bn_mp_incr.o 3rdparty/libtommath/bn_mp_init.o 3rdparty/libtommath/bn_mp_init_copy.o 3rdparty/libtommath/bn_mp_init_i32.o 3rdparty/libtommath/bn_mp_init_i64.o 3rdparty/libtommath/bn_mp_init_l.o 3rdparty/libtommath/bn_mp_init_ll.o 3rdparty/libtommath/bn_mp_init_multi.o 3rdparty/libtommath/bn_mp_init_set.o 3rdparty/libtommath/bn_mp_init_size.o 3rdparty/libtommath/bn_mp_init_u32.o 3rdparty/libtommath/bn_mp_init_u64.o 3rdparty/libtommath/bn_mp_init_ul.o 3rdparty/libtommath/bn_mp_init_ull.o 3rdparty/libtommath/bn_mp_invmod.o 3rdparty/libtommath/bn_mp_is_square.o 3rdparty/libtommath/bn_mp_iseven.o 3rdparty/libtommath/bn_mp_isodd.o 3rdparty/libtommath/bn_mp_kronecker.o 3rdparty/libtommath/bn_mp_lcm.o 3rdparty/libtommath/bn_mp_log_u32.o 3rdparty/libtommath/bn_mp_lshd.o 3rdparty/libtommath/bn_mp_mod.o 3rdparty/libtommath/bn_mp_mod_2d.o 3rdparty/libtommath/bn_mp_mod_d.o 3rdparty/libtommath/bn_mp_montgomery_calc_normalization.o 3rdparty/libtommath/bn_mp_montgomery_reduce.o 3rdparty/libtommath/bn_mp_montgomery_setup.o 3rdparty/libtommath/bn_mp_mul.o 3rdparty/libtommath/bn_mp_mul_2.o 3rdparty/libtommath/bn_mp_mul_2d.o 3rdparty/libtommath/bn_mp_mul_d.o 3rdparty/libtommath/bn_mp_mulmod.o 3rdparty/libtommath/bn_mp_neg.o 3rdparty/libtommath/bn_mp_or.o 3rdparty/libtommath/bn_mp_pack.o 3rdparty/libtommath/bn_mp_pack_count.o 3rdparty/libtommath/bn_mp_prime_fermat.o 3rdparty/libtommath/bn_mp_prime_frobenius_underwood.o 3rdparty/libtommath/bn_mp_prime_is_prime.o 3rdparty/libtommath/bn_mp_prime_miller_rabin.o 3rdparty/libtommath/bn_mp_prime_next_prime.o 3rdparty/libtommath/bn_mp_prime_rabin_miller_trials.o 3rdparty/libtommath/bn_mp_prime_rand.o 3rdparty/libtommath/bn_mp_prime_strong_lucas_selfridge.o 3rdparty/libtommath/bn_mp_radix_size.o 3rdparty/libtommath/bn_mp_radix_smap.o 3rdparty/libtommath/bn_mp_rand.o 3rdparty/libtommath/bn_mp_read_radix.o 3rdparty/libtommath/bn_mp_reduce.o 3rdparty/libtommath/bn_mp_reduce_2k.o 3rdparty/libtommath/bn_mp_reduce_2k_l.o 3rdparty/libtommath/bn_mp_reduce_2k_setup.o 3rdparty/libtommath/bn_mp_reduce_2k_setup_l.o 3rdparty/libtommath/bn_mp_reduce_is_2k.o 3rdparty/libtommath/bn_mp_reduce_is_2k_l.o 3rdparty/libtommath/bn_mp_reduce_setup.o 3rdparty/libtommath/bn_mp_root_u32.o 3rdparty/libtommath/bn_mp_rshd.o 3rdparty/libtommath/bn_mp_sbin_size.o 3rdparty/libtommath/bn_mp_set.o 3rdparty/libtommath/bn_mp_set_double.o 3rdparty/libtommath/bn_mp_set_i32.o 3rdparty/libtommath/bn_mp_set_i64.o 3rdparty/libtommath/bn_mp_set_l.o 3rdparty/libtommath/bn_mp_set_ll.o 3rdparty/libtommath/bn_mp_set_u32.o 3rdparty/libtommath/bn_mp_set_u64.o 3rdparty/libtommath/bn_mp_set_ul.o 3rdparty/libtommath/bn_mp_set_ull.o 3rdparty/libtommath/bn_mp_shrink.o 3rdparty/libtommath/bn_mp_signed_rsh.o 3rdparty/libtommath/bn_mp_sqr.o 3rdparty/libtommath/bn_mp_sqrmod.o 3rdparty/libtommath/bn_mp_sqrt.o 3rdparty/libtommath/bn_mp_sqrtmod_prime.o 3rdparty/libtommath/bn_mp_sub.o 3rdparty/libtommath/bn_mp_sub_d.o 3rdparty/libtommath/bn_mp_submod.o 3rdparty/libtommath/bn_mp_to_radix.o 3rdparty/libtommath/bn_mp_to_sbin.o 3rdparty/libtommath/bn_mp_to_ubin.o 3rdparty/libtommath/bn_mp_ubin_size.o 3rdparty/libtommath/bn_mp_unpack.o 3rdparty/libtommath/bn_mp_xor.o 3rdparty/libtommath/bn_mp_zero.o 3rdparty/libtommath/bn_prime_tab.o 3rdparty/libtommath/bn_s_mp_add.o 3rdparty/libtommath/bn_s_mp_balance_mul.o 3rdparty/libtommath/bn_s_mp_exptmod.o 3rdparty/libtommath/bn_s_mp_exptmod_fast.o 3rdparty/libtommath/bn_s_mp_get_bit.o 3rdparty/libtommath/bn_s_mp_invmod_fast.o 3rdparty/libtommath/bn_s_mp_invmod_slow.o 3rdparty/libtommath/bn_s_mp_karatsuba_mul.o 3rdparty/libtommath/bn_s_mp_karatsuba_sqr.o 3rdparty/libtommath/bn_s_mp_montgomery_reduce_fast.o 3rdparty/libtommath/bn_s_mp_mul_digs.o 3rdparty/libtommath/bn_s_mp_mul_digs_fast.o 3rdparty/libtommath/bn_s_mp_mul_high_digs.o 3rdparty/libtommath/bn_s_mp_mul_high_digs_fast.o 3rdparty/libtommath/bn_s_mp_prime_is_divisible.o 3rdparty/libtommath/bn_s_mp_rand_jenkins.o 3rdparty/libtommath/bn_s_mp_rand_platform.o 3rdparty/libtommath/bn_s_mp_reverse.o 3rdparty/libtommath/bn_s_mp_sqr.o 3rdparty/libtommath/bn_s_mp_sqr_fast.o 3rdparty/libtommath/bn_s_mp_sub.o 3rdparty/libtommath/bn_s_mp_toom_mul.o 3rdparty/libtommath/bn_s_mp_toom_sqr.o
moar::tomrule=$(AR) $(ARFLAGS) $@ 3rdparty/libtommath/*.o
moar::translate_newline_output=0
moar::use_c11_atomics=0
moar::use_mimalloc=1
moar::uvclean=$(RM) 3rdparty/libuv/libuv.a $(UV_LINUX)
moar::uvlib=3rdparty/libuv/libuv.a
moar::uvobjects=$(UV_LINUX)
moar::uvrule=$(AR) $(ARFLAGS) $@ $(UV_LINUX)
moar::vectorizerspecifier=
moar::version=2022.03
moar::versionmajor=2022
moar::versionminor=03
moar::versionpatch=0
repo::chain=inst#/home/rir/.raku inst#/priv/rir/rakudo-star-2022.03/share/perl6/site inst#/priv/rir/rakudo-star-2022.03/share/perl6/vendor inst#/priv/rir/rakudo-star-2022.03/share/perl6/core ap# nqp# perl5#
