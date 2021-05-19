- [meeting notes May 16, 2021](#orgbdae238)
  - [agenda stuff](#orgaa55bb7)
    - [writing grep variants](#orgb907e3e)
    - [raku classes as data containers (postponed)](#org711b8a4)
    - [bruce gray rosettacode entries](#org41ccad2)
    - [argument passing signatures](#org424b97b)
    - [super flat](#org778e6ae)
    - [type system: what is accepted by what](#orgccba0af)
    - [david christensen talked about a few debian sysadmin issues](#org6681e52)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#orgd44ec0e)
    - [william michels asks about one-liners to strip "soft hypens"](#org2bd9e59)
    - [bill found them in this page, notably written by hyphenation nerds:](#org4e63bdc)
    - [William Michels : Q. Should Raku create pre-defined (so-called) "Grey-space" character classes?](#org81986f3)
    - [bruce gray supplies some requested one-liners:](#org7415b01)
    - [he also makes the point you can do a chained operation to strip whitespace as well](#org7b2dc08)
    - [raku also lets you define custom character classes extending pre-defined ones](#orgbb0427b)
  - [ongoing](#org1842f96)
    - [programming in the large (david christensen)](#org6e1760c)
    - [raku idioms](#org51defb2)
  - [appendix: the usual links](#org4663bd2)
    - [code examples](#orgf2bbf4a)
    - [meeting notes (material from this file)](#orgf520190)
    - [SF Perl page, has links to mailing list](#orgc3edeba)
    - [perl6-users mailing list archive](#org5ff1946)
  - [bits](#org5193c32)
    - [bg summarizes](#org3bf9dfc)
    - [announced: going to skip next sunday, thinking about going with every-other week format](#org8a5c550)
    - [perl5 cpan module  Filesys::ZFS, david christensen says "not complete"](#org082af63)
    - [there's a raku documentation mailing list, created by lizmat](#org1ff9585)
    - [steve yegge, a fascinating perl hater:](#org216553b)
    - [a defense of perl/raku talk](#org87c5e72)


<a id="orgbdae238"></a>

# meeting notes May 16, 2021


<a id="orgaa55bb7"></a>

## agenda stuff


<a id="orgb907e3e"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="org711b8a4"></a>

### raku classes as data containers (postponed)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="org41ccad2"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

    15:22:05 From Bruce Gray : <http://rosettacode.org/wiki/Barnsley_fern#Raku> 15:25:20 From William Michels : <https://en.wikipedia.org/wiki/Affine_transformation> 15:25:47 From William Michels : <https://mathworld.wolfram.com/AffineTransformation.html>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org424b97b"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org778e6ae"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="orgccba0af"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org6681e52"></a>

### david christensen talked about a few debian sysadmin issues

1.  summary: debian 10.9 is mature enough to deal with all display hardware,

    including nvidia optimus
    
    1.  bruce gray recommends "bumblebee" to deal with nvidia optimus
    
        <https://wiki.debian.org/Bumblebee>

2.  rough notes from david's piece:

    dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. same video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (Note: I've got debian 10.9 slated to install). intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition. overprovisioning, a couple of different devices&#x2013; image on usb flash drive.
    
    samsung gb ssd performed better than usb drives, dram cache burn up a sata slot.


<a id="orgd44ec0e"></a>

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


<a id="org2bd9e59"></a>

### william michels asks about one-liners to strip "soft hypens"

1.  none of us had ever **seen** a soft hyphen before:

    \## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;

2.  what they do makes some sense:

    they mark a point in a word where it's okay to hyphenate, but when there's no need to hyphenate, they become invisible zero-width markers


<a id="org4e63bdc"></a>

### bill found them in this page, notably written by hyphenation nerds:

<https://practicaltypography.com/hyphenation.html>

1.  example

    Hy­phen­ation is the au­to­mated process of break­ing words be­tween lines to cre­ate more con­sis­tency across a text block.


<a id="org81986f3"></a>

### William Michels : Q. Should Raku create pre-defined (so-called) "Grey-space" character classes?


<a id="org7415b01"></a>

### bruce gray supplies some requested one-liners:

1.  raku -e 'say .trans("\c[SOFT HYPHEN]" => "") for lines()'

2.  raku -e 'say .trans("\c[SOFT HYPHEN]" => "").chars for lines();'


<a id="org7b2dc08"></a>

### he also makes the point you can do a chained operation to strip whitespace as well

1.  raku -e 'say .trans("\c[SOFT HYPHEN]" => "").trans("\s" => "").chars for lines();'


<a id="orgbb0427b"></a>

### raku also lets you define custom character classes extending pre-defined ones

```perl6
# strip soft hyphens (U+00AD) as well as whitespace (\s)
$text_no_gs ~~ s:g/<[\s\x[00ad]]>//;
```

1.  other zero width chars

    1.  William Michels : \c[ZERO WIDTH SPACE]
    
    2.  From Bruce Gray : <https://www.ptiglobal.com/2018/04/26/the-beauty-of-unicode-zero-width-characters/>


<a id="org1842f96"></a>

## ongoing


<a id="org6e1760c"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="org51defb2"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="org4663bd2"></a>

## appendix: the usual links


<a id="orgf2bbf4a"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="orgf520190"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="orgc3edeba"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org5ff1946"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org5193c32"></a>

## bits


<a id="org3bf9dfc"></a>

### bg summarizes

fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways


<a id="org8a5c550"></a>

### announced: going to skip next sunday, thinking about going with every-other week format

suggestion: have someone else host perl5 meetings on the off-weeks. david christensen is interested.


<a id="org082af63"></a>

### perl5 cpan module  Filesys::ZFS, david christensen says "not complete"


<a id="org1ff9585"></a>

### there's a raku documentation mailing list, created by lizmat

1.  Richard Hainsworth : documentation@raku.org

2.  don't know how to subscribe, or if it's archived somewhere

    <https://github.com/Raku/Raku-Steering-Council/blob/main/announcements/20200720.md>


<a id="org216553b"></a>

### steve yegge, a fascinating perl hater:

<https://steve-yegge.blogspot.com/>

1.  Bruce Gray : "For most people the perceived usefulness of a computer language is inversely proportional to the number of theoretical axes the language intends to grind."  &#x2013; Larry Wall


<a id="org87c5e72"></a>

### a defense of perl/raku talk

<https://www.fosdem.org/2021/schedule/event/programming_lang_for_free_software/>
