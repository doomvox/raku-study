- [meeting notes May 16, 2021](#org96798cc)
  - [agenda stuff](#org98f1494)
    - [writing grep variants](#org1123720)
    - [raku classes as data containers](#org9a63219)
    - [bruce gray rosettacode entries](#org70d894c)
    - [argument passing signatures](#orge9660c4)
    - [super flat](#org00aa2ac)
    - [type system: what is accepted by what](#orgb5cf2d4)
    - [david christensen talked about a few debian sysadmin issues](#orgad63517)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#org1cba1fe)
    - [bill one-liner attempt, removing soft hyphens](#org6d9917a)
  - [ongoing](#org9ab53ad)
    - [programming in the large (david christensen)](#org1113c76)
    - [raku idioms](#org011e6cf)
  - [appendix: the usual links](#orgb884fce)
    - [code examples](#org4e11cbc)
    - [meeting notes (material from this file)](#orgf8a07df)
    - [SF Perl page, has links to mailing list](#org3fd07ac)
    - [perl6-users mailing list archive](#orge747118)
  - [bits](#orgc3d1f84)


<a id="org96798cc"></a>

# meeting notes May 16, 2021


<a id="org98f1494"></a>

## agenda stuff


<a id="org1123720"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="org9a63219"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="org70d894c"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orge9660c4"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org00aa2ac"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="orgb5cf2d4"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgad63517"></a>

### david christensen talked about a few debian sysadmin issues

dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. sam video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (I'm planning on 10.9). bg: bumblebee? david: no. <https://wiki.debian.org/Bumblebee> intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition. overprovisioning, a couple of different devices&#x2013; image on usb flash drive.

samsung gb ssd performed better than usb drives, dram cache burn up a sata slot.

seperate version control server can help.


<a id="org1cba1fe"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)

predicate functions, "is<sub>string</sub>" etc. demo of small function approach.


<a id="org6d9917a"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="org9ab53ad"></a>

## ongoing


<a id="org1113c76"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="org011e6cf"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="orgb884fce"></a>

## appendix: the usual links


<a id="org4e11cbc"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="orgf8a07df"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="org3fd07ac"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orge747118"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgc3d1f84"></a>

## bits

bg summarizes fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways
