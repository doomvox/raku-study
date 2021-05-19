- [meeting notes May 16, 2021](#orgb3ef1d2)
  - [subjects discussed](#org20b029e)
    - [richard hainsworth reports in on the documentation system work](#org6084a80)
    - [raku features for writing find/grep variants (joe brenner)](#org40f5c82)
    - [raku classes as data containers (postponed)](#org83daf57)
    - [bruce gray discussed a rosettacode entry](#orgb1d9e07)
    - [argument passing signatures (postponed)](#org5d1c7ee)
    - [super flat (postponed)](#orge14a2e1)
    - [type system: what is accepted by what   (postponed)](#org9cee66d)
    - [david christensen talked about a few debian sysadmin issues](#org3007e5e)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#orgafc8b14)
    - [william michels asks about one-liners to strip "soft hypens"](#org31d40f9)
    - [bill found them in this page, notably written by hyphenation nerds:](#org2608512)
    - [William Michels : Q. Should Raku create pre-defined (so-called) "Grey-space" character classes?](#org5412c96)
    - [bruce gray supplies some requested one-liners:](#org71466d6)
    - [he also makes the point you can do a chained operation to strip whitespace as well](#org02f1356)
    - [raku also lets you define custom character classes extending pre-defined ones](#org981a60b)
  - [ongoing](#org6841182)
    - [programming in the large (david christensen)](#org9fb505a)
    - [raku idioms](#org82ad70d)
  - [appendix: the usual links](#org721c21e)
    - [code examples](#org0825b7f)
    - [meeting notes (material from this file)](#org61ccf0c)
    - [SF Perl page, has links to mailing list](#org98114e0)
    - [perl6-users mailing list archive](#org674d218)
  - [bits](#org8da2d26)
    - [bg summarizes](#orgab1b10e)
    - [announced: going to skip next sunday, thinking about going with every-other week format](#orgd705f0d)
    - [perl5 cpan module  Filesys::ZFS, david christensen says "not complete"](#org238097b)
    - [steve yegge, a fascinating perl hater:](#org8a73544)
    - [a defense of perl/raku talk](#orgb64fac0)


<a id="orgb3ef1d2"></a>

# meeting notes May 16, 2021


<a id="org20b029e"></a>

## subjects discussed


<a id="org6084a80"></a>

### richard hainsworth reports in on the documentation system work

1.  current issue: static html vs dynamic database-backed system

2.  a raku documentation mailing list, created by lizmat

    1.  documentation@raku.org
    
    2.  (don't know how to subscribe, or if it's archived somewhere)


<a id="org40f5c82"></a>

### raku features for writing find/grep variants (joe brenner)

1.  my first attempt in perl5 bogged down, /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

    1.  impedance mismatch between oop and <:Find's> wanted
    
        1.  how to pass args to wanted?
        
        2.  bruce gray suggests an anonymous sub with a closure


<a id="org83daf57"></a>

### raku classes as data containers (postponed)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="orgb1d9e07"></a>

### bruce gray discussed a rosettacode entry

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

    1.  william michels
    
        1.  <https://en.wikipedia.org/wiki/Affine_transformation>
        
        2.  <https://mathworld.wolfram.com/AffineTransformation.html>


<a id="org5d1c7ee"></a>

### argument passing signatures (postponed)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orge14a2e1"></a>

### super flat (postponed)

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"
        
        1.  I thought: "a job for flat?"
        
        2.  bruce gray suggests just using none:
        
            ```perl6
            my @a =   Any xx 3;
            my @b = |(Any xx 2), 0;
            say .raku for :@a, :@b;  
             ## :a([Any, Any, Any])
             ## :b([Any, Any, 0])
            say @a.none.defined.so;  # True
            say @b.none.defined.so;  # False
            ```


<a id="org9cee66d"></a>

### type system: what is accepted by what   (postponed)

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org3007e5e"></a>

### david christensen talked about a few debian sysadmin issues

1.  summary: debian 10.9 is mature enough to deal with all display hardware,

    including nvidia optimus
    
    1.  bruce gray recommends "bumblebee" to deal with nvidia optimus
    
        <https://wiki.debian.org/Bumblebee>

2.  rough notes from david's piece:

    dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. same video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (Note: I've got debian 10.9 slated to install). intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition. overprovisioning, a couple of different devices&#x2013; image on usb flash drive.
    
    samsung gb ssd performed better than usb drives, dram cache burn up a sata slot.


<a id="orgafc8b14"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)

As a demo of functional programming, david christensen showed us his code for generating type validation predicate functions ("is<sub>string</sub>", etc).

1.  other approaches

    1.  bruce gray suggests Params::Util
    
    2.  <https://metacpan.org/pod/Params::Util>
    
    3.  there are a number of cpan modules to do parameter validation, e.g
    
        1.  <https://metacpan.org/pod/Type::Tiny#Predicate-methods>
        
        2.  <https://metacpan.org/pod/Params::ValidationCompiler>
    
    4.  a package I wrote that does something similar
    
        1.  <https://metacpan.org/pod/Scalar::Classify>
        
            1.  comparing david's code to mine:
            
                1.  david's is certainly tighter, and is very consistent
                
                2.  mine does fewer sub calls&#x2013; probably performs better
                
                3.  mine returns an expanded set of string codes like the built-in "ref"
                
                    1.  need to do string comparisons later might seem inelegant


<a id="org31d40f9"></a>

### william michels asks about one-liners to strip "soft hypens"

1.  none of us had ever **seen** a soft hyphen before:

    \## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;

2.  what they do makes some sense:

    they mark a point in a word where it's okay to hyphenate, but when there's no need to hyphenate, they become invisible zero-width markers


<a id="org2608512"></a>

### bill found them in this page, notably written by hyphenation nerds:

<https://practicaltypography.com/hyphenation.html>

1.  example

    Hy­phen­ation is the au­to­mated process of break­ing words be­tween lines to cre­ate more con­sis­tency across a text block.


<a id="org5412c96"></a>

### William Michels : Q. Should Raku create pre-defined (so-called) "Grey-space" character classes?


<a id="org71466d6"></a>

### bruce gray supplies some requested one-liners:

1.  raku -e 'say .trans("\c[SOFT HYPHEN]" => "") for lines()'

2.  raku -e 'say .trans("\c[SOFT HYPHEN]" => "").chars for lines();'


<a id="org02f1356"></a>

### he also makes the point you can do a chained operation to strip whitespace as well

1.  raku -e 'say .trans("\c[SOFT HYPHEN]" => "").trans("\s" => "").chars for lines();'


<a id="org981a60b"></a>

### raku also lets you define custom character classes extending pre-defined ones

```perl6
# strip soft hyphens (U+00AD) as well as whitespace (\s)
$text_no_gs ~~ s:g/<[\s\x[00ad]]>//;
```

1.  other zero width chars

    1.  William Michels : \c[ZERO WIDTH SPACE]
    
    2.  From Bruce Gray : <https://www.ptiglobal.com/2018/04/26/the-beauty-of-unicode-zero-width-characters/>


<a id="org6841182"></a>

## ongoing


<a id="org9fb505a"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="org82ad70d"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="org721c21e"></a>

## appendix: the usual links


<a id="org0825b7f"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="org61ccf0c"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="org98114e0"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org674d218"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org8da2d26"></a>

## bits


<a id="orgab1b10e"></a>

### bg summarizes

fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways


<a id="orgd705f0d"></a>

### announced: going to skip next sunday, thinking about going with every-other week format

suggestion: have someone else host perl5 meetings on the off-weeks. david christensen is interested.


<a id="org238097b"></a>

### perl5 cpan module  Filesys::ZFS, david christensen says "not complete"

<https://github.com/Raku/Raku-Steering-Council/blob/main/announcements/20200720.md>


<a id="org8a73544"></a>

### steve yegge, a fascinating perl hater:

<https://steve-yegge.blogspot.com/>

1.  Bruce Gray : "For most people the perceived usefulness of a computer language is inversely proportional to the number of theoretical axes the language intends to grind."  &#x2013; Larry Wall


<a id="orgb64fac0"></a>

### a defense of perl/raku talk

<https://www.fosdem.org/2021/schedule/event/programming_lang_for_free_software/>
