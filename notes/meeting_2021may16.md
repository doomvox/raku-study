- [meeting notes May 16, 2021](#org4a7bddd)
  - [subjects discussed](#org23949eb)
    - [richard hainsworth reports in on the documentation system work](#org665dff2)
    - [raku pieces for writing grep variants (joe brenner)](#org7a787a9)
    - [raku classes as data containers (postponed)](#org91516e7)
    - [bruce gray rosettacode entries](#org29eb24e)
    - [argument passing signatures](#org486210c)
    - [super flat](#orgc9fd814)
    - [type system: what is accepted by what](#org310e4a8)
    - [david christensen talked about a few debian sysadmin issues](#org16cf73b)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#orgdf39324)
    - [william michels asks about one-liners to strip "soft hypens"](#orgfeec214)
    - [bill found them in this page, notably written by hyphenation nerds:](#orgb9ceef8)
    - [William Michels : Q. Should Raku create pre-defined (so-called) "Grey-space" character classes?](#orgf373cd2)
    - [bruce gray supplies some requested one-liners:](#org833e8a0)
    - [he also makes the point you can do a chained operation to strip whitespace as well](#org2617687)
    - [raku also lets you define custom character classes extending pre-defined ones](#orgc861391)
  - [ongoing](#org706523d)
    - [programming in the large (david christensen)](#org44f1dfa)
    - [raku idioms](#orgc557b8c)
  - [appendix: the usual links](#org51617d5)
    - [code examples](#orgc426146)
    - [meeting notes (material from this file)](#org5a7f501)
    - [SF Perl page, has links to mailing list](#org7c57e99)
    - [perl6-users mailing list archive](#org8934e4b)
  - [bits](#org1c674df)
    - [bg summarizes](#orgb0fc913)
    - [announced: going to skip next sunday, thinking about going with every-other week format](#org56cbb76)
    - [perl5 cpan module  Filesys::ZFS, david christensen says "not complete"](#orga500652)
    - [steve yegge, a fascinating perl hater:](#org55ff90f)
    - [a defense of perl/raku talk](#org56c5de7)


<a id="org4a7bddd"></a>

# meeting notes May 16, 2021


<a id="org23949eb"></a>

## subjects discussed


<a id="org665dff2"></a>

### richard hainsworth reports in on the documentation system work

1.  current issue: static html vs dynamic database-backed system

2.  a raku documentation mailing list, created by lizmat

    1.  documentation@raku.org
    
    2.  (don't know how to subscribe, or if it's archived somewhere)


<a id="org7a787a9"></a>

### raku pieces for writing grep variants (joe brenner)

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="org91516e7"></a>

### raku classes as data containers (postponed)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="org29eb24e"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

    15:22:05 From Bruce Gray : <http://rosettacode.org/wiki/Barnsley_fern#Raku> 15:25:20 From William Michels : <https://en.wikipedia.org/wiki/Affine_transformation> 15:25:47 From William Michels : <https://mathworld.wolfram.com/AffineTransformation.html>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org486210c"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgc9fd814"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="org310e4a8"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org16cf73b"></a>

### david christensen talked about a few debian sysadmin issues

1.  summary: debian 10.9 is mature enough to deal with all display hardware,

    including nvidia optimus
    
    1.  bruce gray recommends "bumblebee" to deal with nvidia optimus
    
        <https://wiki.debian.org/Bumblebee>

2.  rough notes from david's piece:

    dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. same video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (Note: I've got debian 10.9 slated to install). intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition. overprovisioning, a couple of different devices&#x2013; image on usb flash drive.
    
    samsung gb ssd performed better than usb drives, dram cache burn up a sata slot.


<a id="orgdf39324"></a>

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


<a id="orgfeec214"></a>

### william michels asks about one-liners to strip "soft hypens"

1.  none of us had ever **seen** a soft hyphen before:

    \## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;

2.  what they do makes some sense:

    they mark a point in a word where it's okay to hyphenate, but when there's no need to hyphenate, they become invisible zero-width markers


<a id="orgb9ceef8"></a>

### bill found them in this page, notably written by hyphenation nerds:

<https://practicaltypography.com/hyphenation.html>

1.  example

    Hy­phen­ation is the au­to­mated process of break­ing words be­tween lines to cre­ate more con­sis­tency across a text block.


<a id="orgf373cd2"></a>

### William Michels : Q. Should Raku create pre-defined (so-called) "Grey-space" character classes?


<a id="org833e8a0"></a>

### bruce gray supplies some requested one-liners:

1.  raku -e 'say .trans("\c[SOFT HYPHEN]" => "") for lines()'

2.  raku -e 'say .trans("\c[SOFT HYPHEN]" => "").chars for lines();'


<a id="org2617687"></a>

### he also makes the point you can do a chained operation to strip whitespace as well

1.  raku -e 'say .trans("\c[SOFT HYPHEN]" => "").trans("\s" => "").chars for lines();'


<a id="orgc861391"></a>

### raku also lets you define custom character classes extending pre-defined ones

```perl6
# strip soft hyphens (U+00AD) as well as whitespace (\s)
$text_no_gs ~~ s:g/<[\s\x[00ad]]>//;
```

1.  other zero width chars

    1.  William Michels : \c[ZERO WIDTH SPACE]
    
    2.  From Bruce Gray : <https://www.ptiglobal.com/2018/04/26/the-beauty-of-unicode-zero-width-characters/>


<a id="org706523d"></a>

## ongoing


<a id="org44f1dfa"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="orgc557b8c"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="org51617d5"></a>

## appendix: the usual links


<a id="orgc426146"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="org5a7f501"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="org7c57e99"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org8934e4b"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org1c674df"></a>

## bits


<a id="orgb0fc913"></a>

### bg summarizes

fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways


<a id="org56cbb76"></a>

### announced: going to skip next sunday, thinking about going with every-other week format

suggestion: have someone else host perl5 meetings on the off-weeks. david christensen is interested.


<a id="orga500652"></a>

### perl5 cpan module  Filesys::ZFS, david christensen says "not complete"

<https://github.com/Raku/Raku-Steering-Council/blob/main/announcements/20200720.md>


<a id="org55ff90f"></a>

### steve yegge, a fascinating perl hater:

<https://steve-yegge.blogspot.com/>

1.  Bruce Gray : "For most people the perceived usefulness of a computer language is inversely proportional to the number of theoretical axes the language intends to grind."  &#x2013; Larry Wall


<a id="org56c5de7"></a>

### a defense of perl/raku talk

<https://www.fosdem.org/2021/schedule/event/programming_lang_for_free_software/>
