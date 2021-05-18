- [meeting notes May 16, 2021](#org266ace9)
  - [agenda stuff](#orgc022a2f)
    - [writing grep variants](#org9616020)
    - [raku classes as data containers](#org3bc03a2)
    - [bruce gray rosettacode entries](#orgc952db0)
    - [argument passing signatures](#org250837c)
    - [super flat](#orga7b939b)
    - [type system: what is accepted by what](#org7a67be7)
    - [david christensen talked about a few debian sysadmin issues](#org89b7ff9)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#orgb185d2e)
    - [william michels asks about one-liners to strip "soft hypens"](#org97508c7)
    - [bill found them in this page, notably written by hyphenation nerds:](#org29ef0af)
    - [William Michels : Q. Should Raku create pre-defined (so-called) "Grey-space" character classes?](#org91dc173)
    - [bruce gray supplies some requested one-liners:](#orgaa48d8d)
    - [he also makes the point you can do a chained operation to strip whitespace as well](#org38eea15)
    - [raku also lets you define custom character classes extending pre-defined ones](#org3ff0746)
  - [ongoing](#org2bd26d2)
    - [programming in the large (david christensen)](#orgfbe717d)
    - [raku idioms](#orgaf839fc)
  - [appendix: the usual links](#org4885711)
    - [code examples](#orgb8a0ff6)
    - [meeting notes (material from this file)](#orgce0446e)
    - [SF Perl page, has links to mailing list](#orgcf69b1a)
    - [perl6-users mailing list archive](#org679d347)
  - [bits](#org0921166)
    - [bg summarizes](#org8397659)
    - [announced: going to skip next sunday, thinking about going with every-other week format](#orgf4eeac5)
    - [perl5 cpan module  Filesys::ZFS, david christensen says "not complete"](#orgc36da47)


<a id="org266ace9"></a>

# meeting notes May 16, 2021


<a id="orgc022a2f"></a>

## agenda stuff


<a id="org9616020"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="org3bc03a2"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="orgc952db0"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org250837c"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orga7b939b"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="org7a67be7"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org89b7ff9"></a>

### david christensen talked about a few debian sysadmin issues

1.  summary: debian 10.9 is mature enough to deal with all display hardware,

    including nvidia optimus
    
    1.  bruce gray recommends "bumblebee" to deal with nvidia optimus
    
        <https://wiki.debian.org/Bumblebee>

2.  rough notes from david's piece:

    dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. same video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (Note: I've got debian 10.9 slated to install). intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition. overprovisioning, a couple of different devices&#x2013; image on usb flash drive.
    
    samsung gb ssd performed better than usb drives, dram cache burn up a sata slot.


<a id="orgb185d2e"></a>

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


<a id="org97508c7"></a>

### william michels asks about one-liners to strip "soft hypens"

1.  none of us had ever **seen** a soft hyphen before:

    \## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;

2.  what they do makes some sense:

    they mark a point in a word where it's okay to hyphenate, but when there's no need to hyphenate, they become invisible zero-width markers


<a id="org29ef0af"></a>

### bill found them in this page, notably written by hyphenation nerds:

<https://practicaltypography.com/hyphenation.html>

1.  example

    Hy­phen­ation is the au­to­mated process of break­ing words be­tween lines to cre­ate more con­sis­tency across a text block.


<a id="org91dc173"></a>

### William Michels : Q. Should Raku create pre-defined (so-called) "Grey-space" character classes?


<a id="orgaa48d8d"></a>

### bruce gray supplies some requested one-liners:

1.  raku -e 'say .trans("\c[SOFT HYPHEN]" => "") for lines()'

2.  raku -e 'say .trans("\c[SOFT HYPHEN]" => "").chars for lines();'


<a id="org38eea15"></a>

### he also makes the point you can do a chained operation to strip whitespace as well

1.  raku -e 'say .trans("\c[SOFT HYPHEN]" => "").trans("\s" => "").chars for lines();'


<a id="org3ff0746"></a>

### raku also lets you define custom character classes extending pre-defined ones

```perl6
# strip soft hyphens (U+00AD) as well as whitespace (\s)
$text_no_gs ~~ s:g/<[\s\x[00ad]]>//;
```


<a id="org2bd26d2"></a>

## ongoing


<a id="orgfbe717d"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="orgaf839fc"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="org4885711"></a>

## appendix: the usual links


<a id="orgb8a0ff6"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="orgce0446e"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="orgcf69b1a"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org679d347"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org0921166"></a>

## bits


<a id="org8397659"></a>

### bg summarizes

fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways


<a id="orgf4eeac5"></a>

### announced: going to skip next sunday, thinking about going with every-other week format

suggestion: have someone else host perl5 meetings on the off-weeks. david christensen is interested.


<a id="orgc36da47"></a>

### perl5 cpan module  Filesys::ZFS, david christensen says "not complete"
