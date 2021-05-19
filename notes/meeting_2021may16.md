- [meeting notes May 16, 2021](#org99c3b3b)
  - [subjects discussed](#org5f7a595)
    - [richard hainsworth reports in on the documentation system work](#org6f4639c)
    - [raku features for writing find/grep variants (joe brenner)](#orgd5e5640)
    - [bruce gray discussed a rosettacode entry](#org3b4bac8)
    - [testing for all elements undefined](#orgbaa8f80)
    - [david christensen talked about a few debian sysadmin issues](#org3b0feaf)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#org1ba380e)
    - [william michels asks about one-liners to strip "soft hypens"](#org44fa22e)
    - [bill found them in this page, notably written by hyphenation nerds:](#orgdd9b292)
    - [William Michels : Q. Should Raku create pre-defined (so-called) "Grey-space" character classes?](#org334d29f)
    - [bruce gray supplies some requested one-liners:](#org6e9676b)
    - [he also makes the point you can do a chained operation to strip whitespace as well](#org11f797c)
    - [raku also lets you define custom character classes extending pre-defined ones](#org1f54166)
  - [ongoing](#orgeafe55b)
    - [programming in the large (david christensen)](#orgc392124)
    - [raku idioms](#org61b5e0d)
  - [appendix: the usual links](#org2fee430)
    - [code examples](#orga81daf1)
    - [meeting notes (material from this file)](#org5b7ca6f)
    - [SF Perl page, has links to mailing list](#org1f21542)
    - [perl6-users mailing list archive](#orgaff6165)
  - [bits](#org80492ff)
    - [bg summarizes](#org7227aad)
    - [announced: going to skip next sunday, thinking about going with every-other week format](#org8b938ea)
    - [perl5 cpan module  Filesys::ZFS, david christensen says "not complete"](#org2a074c0)
    - [steve yegge, a fascinating perl hater:](#orgcc1e9c4)
    - [a defense of perl/raku talk](#org4dc4472)


<a id="org99c3b3b"></a>

# meeting notes May 16, 2021


<a id="org5f7a595"></a>

## subjects discussed


<a id="org6f4639c"></a>

### richard hainsworth reports in on the documentation system work

1.  current issue: static html vs dynamic database-backed system

2.  a raku documentation mailing list, created by lizmat

    1.  documentation@raku.org
    
    2.  (don't know how to subscribe, or if it's archived somewhere)


<a id="orgd5e5640"></a>

### raku features for writing find/grep variants (joe brenner)

1.  my first attempt in perl5 bogged down, /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

    1.  impedance mismatch between oop and <:Find's> wanted
    
        1.  how to pass args to wanted?
        
        2.  bruce gray suggests an anonymous sub with a closure

2.  discussed an odd go round with

    1.  synopsis from an out-of-date version of <:Find>


<a id="org3b4bac8"></a>

### bruce gray discussed a rosettacode entry

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

    1.  william michels
    
        1.  <https://en.wikipedia.org/wiki/Affine_transformation>
        
        2.  <https://mathworld.wolfram.com/AffineTransformation.html>


<a id="orgbaa8f80"></a>

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


<a id="org3b0feaf"></a>

### david christensen talked about a few debian sysadmin issues

1.  summary: debian 10.9 is mature enough to deal with all display hardware,

    including nvidia optimus
    
    1.  bruce gray recommends "bumblebee" to deal with nvidia optimus
    
        <https://wiki.debian.org/Bumblebee>

2.  rough notes from david's piece:

    dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. same video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (Note: I've got debian 10.9 slated to install). intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition. overprovisioning, a couple of different devices&#x2013; image on usb flash drive.
    
    samsung gb ssd performed better than usb drives, dram cache burn up a sata slot.


<a id="org1ba380e"></a>

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


<a id="org44fa22e"></a>

### william michels asks about one-liners to strip "soft hypens"

1.  none of us had ever **seen** a soft hyphen before:

    \## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;

2.  what they do makes some sense:

    they mark a point in a word where it's okay to hyphenate, but when there's no need to hyphenate, they become invisible zero-width markers


<a id="orgdd9b292"></a>

### bill found them in this page, notably written by hyphenation nerds:

<https://practicaltypography.com/hyphenation.html>

1.  example

    Hy­phen­ation is the au­to­mated process of break­ing words be­tween lines to cre­ate more con­sis­tency across a text block.


<a id="org334d29f"></a>

### William Michels : Q. Should Raku create pre-defined (so-called) "Grey-space" character classes?


<a id="org6e9676b"></a>

### bruce gray supplies some requested one-liners:

1.  raku -e 'say .trans("\c[SOFT HYPHEN]" => "") for lines()'

2.  raku -e 'say .trans("\c[SOFT HYPHEN]" => "").chars for lines();'


<a id="org11f797c"></a>

### he also makes the point you can do a chained operation to strip whitespace as well

1.  raku -e 'say .trans("\c[SOFT HYPHEN]" => "").trans("\s" => "").chars for lines();'


<a id="org1f54166"></a>

### raku also lets you define custom character classes extending pre-defined ones

```perl6
# strip soft hyphens (U+00AD) as well as whitespace (\s)
$text_no_gs ~~ s:g/<[\s\x[00ad]]>//;
```

1.  other zero width chars

    1.  William Michels : \c[ZERO WIDTH SPACE]
    
    2.  From Bruce Gray : <https://www.ptiglobal.com/2018/04/26/the-beauty-of-unicode-zero-width-characters/>


<a id="orgeafe55b"></a>

## ongoing


<a id="orgc392124"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="org61b5e0d"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="org2fee430"></a>

## appendix: the usual links


<a id="orga81daf1"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="org5b7ca6f"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="org1f21542"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orgaff6165"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org80492ff"></a>

## bits


<a id="org7227aad"></a>

### bg summarizes

fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways


<a id="org8b938ea"></a>

### announced: going to skip next sunday, thinking about going with every-other week format

suggestion: have someone else host perl5 meetings on the off-weeks. david christensen is interested.


<a id="org2a074c0"></a>

### perl5 cpan module  Filesys::ZFS, david christensen says "not complete"

<https://github.com/Raku/Raku-Steering-Council/blob/main/announcements/20200720.md>


<a id="orgcc1e9c4"></a>

### steve yegge, a fascinating perl hater:

<https://steve-yegge.blogspot.com/>

1.  Bruce Gray : "For most people the perceived usefulness of a computer language is inversely proportional to the number of theoretical axes the language intends to grind."  &#x2013; Larry Wall


<a id="org4dc4472"></a>

### a defense of perl/raku talk

<https://www.fosdem.org/2021/schedule/event/programming_lang_for_free_software/>
