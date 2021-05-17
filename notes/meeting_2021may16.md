- [meeting notes May 16, 2021](#org5f81063)
  - [agenda stuff](#org188f30a)
    - [writing grep variants](#org5c02e49)
    - [raku classes as data containers](#orge3568fc)
    - [bruce gray rosettacode entries](#orgbd6fdca)
    - [argument passing signatures](#orgcf9fdf6)
    - [super flat](#org981b47c)
    - [type system: what is accepted by what](#org9d79b47)
    - [david christensen talked about a few debian sysadmin issues](#org575bf93)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#org8c18237)
    - [bill one-liner attempt, removing soft hyphens](#org4f2c728)
  - [ongoing](#orgd232131)
    - [programming in the large (david christensen)](#orgd3b2623)
    - [raku idioms](#org51c5032)
  - [appendix: the usual links](#orgb8842e5)
    - [code examples](#orgf207ab7)
    - [meeting notes (material from this file)](#org06c21ac)
    - [SF Perl page, has links to mailing list](#orgdfe4ab4)
    - [perl6-users mailing list archive](#orge256b12)
  - [bits](#orgcb3a418)
    - [bg summarizes](#orgb51de84)
    - [announced: going to skip next sunday, thinking about going with every-other week format](#org0f36d59)
    - [perl5 cpan module  Filesys::ZFS, david christensen says "not complete"](#org9ac3feb)


<a id="org5f81063"></a>

# meeting notes May 16, 2021


<a id="org188f30a"></a>

## agenda stuff


<a id="org5c02e49"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="orge3568fc"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="orgbd6fdca"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgcf9fdf6"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org981b47c"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="org9d79b47"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org575bf93"></a>

### david christensen talked about a few debian sysadmin issues

dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. sam video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (Note: I've got debian 10.9 slated to install).

bg: bumblebee? david: no. <https://wiki.debian.org/Bumblebee> intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition. overprovisioning, a couple of different devices&#x2013; image on usb flash drive.

samsung gb ssd performed better than usb drives, dram cache burn up a sata slot.

seperate version control server can help.


<a id="org8c18237"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)

predicate functions, "is<sub>string</sub>" etc. demo of small function approach.


<a id="org4f2c728"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="orgd232131"></a>

## ongoing


<a id="orgd3b2623"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="org51c5032"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="orgb8842e5"></a>

## appendix: the usual links


<a id="orgf207ab7"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="org06c21ac"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="orgdfe4ab4"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orge256b12"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgcb3a418"></a>

## bits


<a id="orgb51de84"></a>

### bg summarizes

fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways


<a id="org0f36d59"></a>

### announced: going to skip next sunday, thinking about going with every-other week format

suggestion: have someone else host perl5 meetings on the off-weeks. david christensen is interested.


<a id="org9ac3feb"></a>

### perl5 cpan module  Filesys::ZFS, david christensen says "not complete"
