- [meeting notes May 16, 2021](#org4619b22)
  - [subjects discussed](#org263a8ea)
    - [richard hainsworth reports in on the documentation system work](#orgd7e4dc2)
    - [raku features for writing find/grep variants (joe brenner)](#org2b5d084)
    - [bruce gray discussed a rosettacode entry](#org291e509)
    - [testing for all elements undefined](#org5e2df37)
    - [david christensen talked about a few debian sysadmin issues](#org0c82af9)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#orge987ecf)
    - [william michels asks about one-liners to strip "soft hypens"](#org59f6a39)
    - [bill found them in this page, notably written by hyphenation nerds:](#org73f9262)
    - [William Michels : Q. Should Raku create pre-defined (so-called) "Grey-space" character classes?](#orge7dc891)
    - [bruce gray supplies some requested one-liners:](#orgc97ee9b)
    - [he also makes the point you can do a chained operation to strip whitespace as well](#orgcb2c4ad)
    - [raku also lets you define custom character classes extending pre-defined ones](#org194f014)
  - [ongoing](#org1b24f0d)
    - [programming in the large (david christensen)](#org8362d02)
    - [raku idioms](#org0f775b8)
  - [appendix: the usual links](#org170a029)
    - [code examples](#org0b9d612)
    - [meeting notes (material from this file)](#org45ccb81)
    - [SF Perl page, has links to mailing list](#org93fa427)
    - [perl6-users mailing list archive](#orgfb8a2f8)
  - [bits](#org4a2f198)
    - [fosdem talk, programming<sub>lang</sub><sub>for</sub><sub>free</sub><sub>software</sub>](#org5d8adf9)
    - [perl5 cpan module  Filesys::ZFS, david christensen says "not complete"](#orgda119d4)
    - [steve yegge, a fascinating perl hater](#orgc455db5)
  - [announcements](#org17fed05)
    - [going to skip next sunday, thinking about going with every-other week format](#org254b4b9)
    - [next meeting may 30, 2021](#orgcc60511)


<a id="org4619b22"></a>

# meeting notes May 16, 2021


<a id="org263a8ea"></a>

## subjects discussed


<a id="orgd7e4dc2"></a>

### richard hainsworth reports in on the documentation system work

1.  current issue: static html vs dynamic database-backed system

2.  a raku documentation mailing list, created by lizmat

    1.  documentation@raku.org
    
    2.  (don't know how to subscribe, or if it's archived somewhere)


<a id="org2b5d084"></a>

### raku features for writing find/grep variants (joe brenner)

1.  my first attempt in perl5 bogged down, /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

    1.  impedance mismatch between oop and <:Find's> wanted
    
        1.  how to pass args to wanted?
        
        2.  bruce gray suggests an anonymous sub with a closure

2.  raku version got hung up

    1.  mis-reading an error message from trying the first line of a synopsis from an out-of-date version of <:Find>
    
        1.  bruce gray explains the old form (using a binding operator) was once the way to preserve laziness.


<a id="org291e509"></a>

### bruce gray discussed a rosettacode entry

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

    1.  william michels
    
        1.  <https://en.wikipedia.org/wiki/Affine_transformation>
        
        2.  <https://mathworld.wolfram.com/AffineTransformation.html>


<a id="org5e2df37"></a>

### testing for all elements undefined

<https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy> "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"

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


<a id="org0c82af9"></a>

### david christensen talked about a few debian sysadmin issues

1.  summary: debian 10.9 is mature enough to deal with all display hardware,

    including nvidia optimus
    
    1.  bruce gray recommends "bumblebee" to deal with nvidia optimus
    
        <https://wiki.debian.org/Bumblebee>

2.  rough notes from david's piece:

    dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. same video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (Note: I've got debian 10.9 slated to install). intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition. overprovisioning, a couple of different devices&#x2013; image on usb flash drive.
    
    samsung gb ssd performed better than usb drives, dram cache burn up a sata slot.


<a id="orge987ecf"></a>

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
    
    5.  bruce gray:
    
        ```sh
        perl -wE 'my $v = 5.10.2; say map { sprintf "%02x" } unpack "C*", $v; say map { sprintf "%02x", $_ } unpack "C*", $v;'
        ```


<a id="org59f6a39"></a>

### william michels asks about one-liners to strip "soft hypens"

1.  none of us had ever **seen** a soft hyphen before:

    \## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;

2.  what they do makes some sense:

    they mark a point in a word where it's okay to hyphenate, but when there's no need to hyphenate, they become invisible zero-width markers


<a id="org73f9262"></a>

### bill found them in this page, notably written by hyphenation nerds:

<https://practicaltypography.com/hyphenation.html>

1.  example

    Hy­phen­ation is the au­to­mated process of break­ing words be­tween lines to cre­ate more con­sis­tency across a text block.


<a id="orge7dc891"></a>

### William Michels : Q. Should Raku create pre-defined (so-called) "Grey-space" character classes?


<a id="orgc97ee9b"></a>

### bruce gray supplies some requested one-liners:

1.  raku -e 'say .trans("\c[SOFT HYPHEN]" => "") for lines()'

2.  raku -e 'say .trans("\c[SOFT HYPHEN]" => "").chars for lines();'


<a id="orgcb2c4ad"></a>

### he also makes the point you can do a chained operation to strip whitespace as well

1.  raku -e 'say .trans("\c[SOFT HYPHEN]" => "").trans("\s" => "").chars for lines();'


<a id="org194f014"></a>

### raku also lets you define custom character classes extending pre-defined ones

```perl6
# strip soft hyphens (U+00AD) as well as whitespace (\s)
$text_no_gs ~~ s:g/<[\s\x[00ad]]>//;
```

1.  other zero width chars

    1.  William Michels : \c[ZERO WIDTH SPACE]
    
    2.  From Bruce Gray : <https://www.ptiglobal.com/2018/04/26/the-beauty-of-unicode-zero-width-characters/>


<a id="org1b24f0d"></a>

## ongoing


<a id="org8362d02"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="org0f775b8"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="org170a029"></a>

## appendix: the usual links


<a id="org0b9d612"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="org45ccb81"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="org93fa427"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orgfb8a2f8"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org4a2f198"></a>

## bits


<a id="org5d8adf9"></a>

### fosdem talk, programming<sub>lang</sub><sub>for</sub><sub>free</sub><sub>software</sub>

1.  <https://www.fosdem.org/2021/schedule/event/programming_lang_for_free_software/>

2.  a defense of perl/raku talk

3.  bg summarizes

    1.  corporate backed: typescript, go, java
    
    2.  raku optimized in other ways


<a id="orgda119d4"></a>

### perl5 cpan module  Filesys::ZFS, david christensen says "not complete"

<https://github.com/Raku/Raku-Steering-Council/blob/main/announcements/20200720.md>


<a id="orgc455db5"></a>

### steve yegge, a fascinating perl hater

<https://steve-yegge.blogspot.com/>

1.  Bruce Gray: "For most people the perceived usefulness of a computer language is inversely proportional to the number of theoretical axes the language intends to grind."  &#x2013; Larry Wall


<a id="org17fed05"></a>

## announcements


<a id="org254b4b9"></a>

### going to skip next sunday, thinking about going with every-other week format


<a id="orgcc60511"></a>

### next meeting may 30, 2021
