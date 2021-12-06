- [meeting notes December 05, 2021](#org7eadd7d)
  - [the raku study group](#orgff0bf0a)
    - [Raku takes Knight](#org963f339)
  - [usual links](#org3e1e2d0)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021dec05.md>](#orgd664a32)
    - [<https://github.com/doomvox/raku-study/bin/2021dec05>](#org5558869)
  - [bg code, using an external library, mpfr, to do arbitrary precision math on any numbers](#orgc9ef523)
    - [raku's FatRats and so are pretty good, but they do have limitations](#org4ae8f5d)
    - [<https://gist.github.com/Util/b23d37e9f512ec1193e0664b6df30568>](#org8629c81)
  - [extracted from meeting chat:](#org456043d)
  - [Ralph's remarks on the left-hand junction with smartmatch issue:](#orgc7720e0)
    - [<https://github.com/rakudo/rakudo/issues/4615>](#org2a3870f)
  - [announcments](#orgf71a33b)
    - [For the svlug on january 6th, I'll be talking about Raku](#orgf7ac876)
  - [next meeting](#orgbfa9f00)
    - [next meeting: december 19](#org9784893)
    - [announcment: svlug jan 6 (i think) a raku talk of some sort by me.](#org428befe)
  - [text of the entire chat window (until I get around to trimming it)](#org8ba3ff1)


<a id="org7eadd7d"></a>

# meeting notes December 05, 2021


<a id="orgff0bf0a"></a>

## the raku study group


<a id="org963f339"></a>

### Raku takes Knight


<a id="org3e1e2d0"></a>

## usual links


<a id="orgd664a32"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021dec05.md>


<a id="org5558869"></a>

### <https://github.com/doomvox/raku-study/bin/2021dec05>

<https://stackoverflow.com/questions/69372414/flattening-and-itemized-lists>


<a id="orgc9ef523"></a>

## bg code, using an external library, mpfr, to do arbitrary precision math on any numbers


<a id="org4ae8f5d"></a>

### raku's FatRats and so are pretty good, but they do have limitations


<a id="org8629c81"></a>

### <https://gist.github.com/Util/b23d37e9f512ec1193e0664b6df30568>


<a id="org456043d"></a>

## extracted from meeting chat:

1.  damian conway interview from 2010

    <http://www.josetteorama.com/damian-conway-on-perl-and-its-future/>


<a id="orgc7720e0"></a>

## Ralph's remarks on the left-hand junction with smartmatch issue:


<a id="org2a3870f"></a>

### <https://github.com/rakudo/rakudo/issues/4615>


<a id="orgf71a33b"></a>

## announcments


<a id="orgf7ac876"></a>

### For the svlug on january 6th, I'll be talking about Raku


<a id="orgbfa9f00"></a>

## next meeting


<a id="org9784893"></a>

### next meeting: december 19


<a id="org428befe"></a>

### announcment: svlug jan 6 (i think) a raku talk of some sort by me.


<a id="org8ba3ff1"></a>

## text of the entire chat window (until I get around to trimming it)

13:41:16 From William Michels : <https://www.javascriptinstitute.org/javascript-tutorial/history-of-javascript/> 13:43:56 From William Michels : App::Browser 13:44:05 From William Michels : <https://raku.land/zef:lizmat/App::Browser> 13:44:28 From William Michels : App::Browser provides a simple generic interface to starting a browser for a given URL. It exports the browse function that takes a URL as the first parameter, and an optional browser identification as a second parameter (which defaults to the APP<sub>BROWSER</sub> environment variable..

The browse function returns a Proc object, or Nil if something went wrong. Whether it makes sense to do something with that object, is unsure.

It also exports a command line script browse that will take a URL and an optional browser identifier (e.g. chrome, firefox, safari). 13:44:45 From Bruce Gray : <https://gist.github.com/Util/b23d37e9f512ec1193e0664b6df30568> 13:45:39 From Joseph Brenner : <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021dec05.md> 13:52:49 From Bruce Gray : <https://docs.raku.org/type/SetHash> 13:52:51 From Bruce Gray : <https://docs.raku.org/type/Set> 13:55:44 From William Michels : <https://groups.google.com/g/perl.perl6.language/c/DleqoPfbNE4> 13:56:19 From Bruce Gray : <https://docs.raku.org/syntax/proto> 14:03:22 From Bruce Gray : <https://docs.raku.org/routine/yada> 14:16:11 From Bruce Gray : raku -e 'sub f { say 42; }; sub g {&#x2026;}; say .yada for &f, &g;' False True 14:20:18 From Joseph Brenner : map({&#x2026;}) 14:20:27 From Joseph Brenner : map: {&#x2026;} 14:26:57 From Bruce Gray : raku -e 'say log(64, 2);' raku -e 'say 64.log(2);' 14:34:06 From Bruce Gray : my @d = @a.grep: { some&#x2026; long&#x2026; code&#x2026; } 14:39:00 From Bruce Gray : .map: \* × 2 ; 14:48:33 From William Michels : <https://groups.google.com/g/perl.perl6.language/c/DleqoPfbNE4/m/3D5jxUAx0y8J> 14:50:11 From William Michels : Larry Wall (2005): "At our meeting there was much discussion of the relationship of hashes and sets. The resolution seems to be that sets are immutable values, and you still want to use a hash with a fixed true value to get mutable sets. It should be easy to interconvert sets and hash keys though.

But anyway, if we assume sets are values rather than containers, they don't really need a sigil. (The problem with treating sets as containers is that you can't do set theory on them. When you add to a set, it is in fact a **different** set, and should have a different identity.)

Larry" 14:50:33 From William Michels : <https://groups.google.com/g/perl.perl6.language/c/DleqoPfbNE4/m/D50iZZNYfTcJ> 14:54:00 From Bruce Gray : <https://www.mpfr.org> 14:54:18 From Bruce Gray : <https://www.mpfr.org/mpfr-current/mpfr.pdf> 14:54:45 From William Michels : <https://www.netlib.org/blas/> 14:55:37 From William Michels : BLAS vs LAPACK 14:55:53 From William Michels : <https://www.netlib.org/lapack/> 14:56:51 From William Michels : <https://www.r-bloggers.com/2020/03/extended-floating-point-precision-in-r-with-rmpfr/> 14:57:31 From William Michels : <https://www.johndcook.com/blog/2020/03/18/gnu-mpfrr-wrapper/> 15:23:41 From William Michels : <https://raku-advent.blog/> 15:24:12 From Bruce Gray : <http://perladvent.org/2021/> 15:24:15 From William Michels : <https://theweeklychallenge.org/> 15:25:00 From William Michels : <https://adventofcode.com/> 15:25:09 From Bruce Gray : <https://cro.services/> 15:25:57 From William Michels : <https://cro.services/> 15:26:39 From Joseph Brenner : <https://jnthn.net/papers/2021-grpw-cro.pdf> 15:27:38 From William Michels : <https://cro.services/docs/releases#0.8.7> 15:29:08 From William Michels : <https://github.com/croservices> 15:42:37 From Bruce Gray : <https://metacpan.org/pod/minicpan> 15:56:11 From Bruce Gray : <https://www.lifewire.com/change-the-default-browser-in-thunderbird-2532751> 15:59:02 From William Michels : <https://groups.google.com/g/svmug/c/wgrUHOI2qMQ> 16:00:29 From Joseph Brenner : <https://stackoverflow.com/questions/69919007/how-can-i-stop-raku-collapsing-a-list-containing-a-single-list> 16:02:23 From Joseph Brenner : <https://stackoverflow.com/questions/69372414/flattening-and-itemized-lists> 16:08:29 From William Michels : <http://www.mcgath.com/cse/GoFundMePage.pdf> 16:11:25 From William Michels : <https://www.theregister.com/2019/10/01/stack_exchange_controversy/> 16:11:29 From Joseph Brenner : <https://www.legendsofamerica.com/thunderbird-native-american/> 16:19:40 From William Michels : <https://wiki.samba.org/index.php/Configure_Samba_to_Work_Better_with_Mac_OS_X> 16:21:27 From Joseph Brenner : <https://stackoverflow.com/questions/69372414/flattening-and-itemized-lists> 16:25:19 From William Michels : > .say for flat $(8,76); 8 76 > .say for $(8,76); (8 76) > .say for $(8,76).flat; 8 76 > 16:26:26 From William Michels : > .raku.put for flat $(8,76); 8 76 > .raku.put for $(8,76); $(8, 76) > .raku.put for \((8,76).raku; "\\)(8, 76)" > 16:28:54 From William Michels : > .raku.put for $(8,76).flat; 8 76 16:35:08 From William Michels : > .elems.put for flat $(8,76); 1 1 > .elems.put for $(8,76); 2 > .elems.put for $(8,76).flat; 1 1 > .elems.put for 8,76; 1 1 > .elems.put for $(8,76) 2 > .elems.put for \((8,76), 2 > .elems.put for (\)(8,76),) 2 > 16:36:43 From Bruce Gray : raku -e 'say item([1,2,3]).raku' $[1, 2, 3] raku -e 'say [1,2,3].raku' [1, 2, 3] raku -e 'say .raku for [1,2,3]' 1 2 3 raku -e 'say .raku for item([1,2,3])' $[1, 2, 3] raku -e 'say .raku for $[1,2,3]' $[1, 2, 3] raku -e 'say .raku for [1,2,3]' 1 2 3 16:40:50 From William Michels : > $(8,76).elems.put; 2 > \((8,76).flat.elems.put; 2 > (\)(8,76),).flat.elems.put; 1 > ($(8,76),).elems.put; 1 > 16:52:39 From Bruce Gray : raku -e ' my @a; @a = 1,2,3 ; say @a.elems; @a = (1,2,3); say @a.elems; @a = $(1,2,3); say @a.elems; ' 16:52:48 From Bruce Gray : 3 3 1 16:55:58 From Bruce Gray : raku -e ' my @a; @a = 1,2,3 ; say @a.elems; @a = (1,2,3); say @a.elems; @a = $(1,2,3); say @a.elems; ' 16:56:13 From Bruce Gray : 3 3 1 16:57:00 From Joseph Brenner : my @b = ( $(1,2), $(7,8) ); say @b.elems; # 2

for @b -> $s { say $s; }
