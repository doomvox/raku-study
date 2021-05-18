- [meeting notes May 16, 2021](#org9faf235)
  - [agenda stuff](#org73b72ce)
    - [writing grep variants](#orgd151ba0)
    - [raku classes as data containers](#org992b095)
    - [bruce gray rosettacode entries](#org64e525e)
    - [argument passing signatures](#org0e81ebf)
    - [super flat](#org67fc97a)
    - [type system: what is accepted by what](#org98dc122)
    - [david christensen talked about a few debian sysadmin issues](#orgc2027b7)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#org02e23c9)
    - [bill one-liner attempt, removing soft hyphens](#orgb5d5779)
  - [ongoing](#org7b57623)
    - [programming in the large (david christensen)](#orgd988e56)
    - [raku idioms](#org495dec6)
  - [appendix: the usual links](#org67e51c3)
    - [code examples](#org562427b)
    - [meeting notes (material from this file)](#orgfd4b9e7)
    - [SF Perl page, has links to mailing list](#org117fe45)
    - [perl6-users mailing list archive](#org0a92282)
  - [bits](#org790cc60)
    - [bg summarizes](#org80a20ff)
    - [announced: going to skip next sunday, thinking about going with every-other week format](#orgdd2032a)
    - [perl5 cpan module  Filesys::ZFS, david christensen says "not complete"](#org9ffaf35)


<a id="org9faf235"></a>

# meeting notes May 16, 2021


<a id="org73b72ce"></a>

## agenda stuff


<a id="orgd151ba0"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="org992b095"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="org64e525e"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org0e81ebf"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org67fc97a"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="org98dc122"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgc2027b7"></a>

### david christensen talked about a few debian sysadmin issues

1.  summary: debian 10.9 is mature enough to deal with all display hardware,

    including nvidia optimus
    
    1.  bruce gray recommends "bumblebee" to deal with nvidia optimus
    
        <https://wiki.debian.org/Bumblebee>

2.  rough notes from david's piece:

    dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. same video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (Note: I've got debian 10.9 slated to install). intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition. overprovisioning, a couple of different devices&#x2013; image on usb flash drive.
    
    samsung gb ssd performed better than usb drives, dram cache burn up a sata slot.


<a id="org02e23c9"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)

As a demo of functional programming, david christensen showed us his code for generating type validation predicate functions ("is<sub>string</sub>", etc).

1.  bruce gray suggests Params::Util

    1.  <https://metacpan.org/pod/Params::Util>

2.  there are a number of cpan modules to do parameter validation, e.g

    1.  <https://metacpan.org/pod/Type::Tiny#Predicate-methods>
    
    2.  <https://metacpan.org/pod/Params::ValidationCompiler>


<a id="orgb5d5779"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="org7b57623"></a>

## ongoing


<a id="orgd988e56"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="org495dec6"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="org67e51c3"></a>

## appendix: the usual links


<a id="org562427b"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="orgfd4b9e7"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="org117fe45"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org0a92282"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org790cc60"></a>

## bits


<a id="org80a20ff"></a>

### bg summarizes

fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways


<a id="orgdd2032a"></a>

### announced: going to skip next sunday, thinking about going with every-other week format

suggestion: have someone else host perl5 meetings on the off-weeks. david christensen is interested.


<a id="org9ffaf35"></a>

### perl5 cpan module  Filesys::ZFS, david christensen says "not complete"
