- [meeting notes May 16, 2021](#org95b2ba1)
  - [agenda stuff](#orgfccbe28)
    - [writing grep variants](#org53a1f6e)
    - [raku classes as data containers](#orgdc0d3dc)
    - [bruce gray rosettacode entries](#orgf718422)
    - [argument passing signatures](#orge910ac7)
    - [super flat](#orgc3adbc0)
    - [type system: what is accepted by what](#org029e949)
    - [debian sysadmin issue (david christensen)](#org261a412)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#org20e0f42)
    - [bill one-liner attempt, removing soft hyphens](#org3fa2bc5)
  - [ongoing](#org001459d)
    - [programming in the large (david christensen)](#orga354631)
    - [raku idioms](#org57e6ba0)
  - [appendix: the usual links](#orgd1878b9)
    - [code examples](#org728a381)
    - [meeting notes (material from this file)](#orgc0f2a0e)
    - [SF Perl page, has links to mailing list](#orgdc195f9)
    - [perl6-users mailing list archive](#org6e6af4f)
  - [bits](#org81ee300)


<a id="org95b2ba1"></a>

# meeting notes May 16, 2021


<a id="orgfccbe28"></a>

## agenda stuff


<a id="org53a1f6e"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="orgdc0d3dc"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="orgf718422"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orge910ac7"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgc3adbc0"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="org029e949"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org261a412"></a>

### debian sysadmin issue (david christensen)

dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. sam video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (I'm planning on 10.9). bg: bumblebee? david: no. <https://wiki.debian.org/Bumblebee> intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition. overprovisioning, a couple of different devices&#x2013; image on usb flash drive.

samsung gb ssd performed better than usb drives, dram cache burn up a sata slot.


<a id="org20e0f42"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)


<a id="org3fa2bc5"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="org001459d"></a>

## ongoing


<a id="orga354631"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="org57e6ba0"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="orgd1878b9"></a>

## appendix: the usual links


<a id="org728a381"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="orgc0f2a0e"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="orgdc195f9"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org6e6af4f"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org81ee300"></a>

## bits

bg summarizes fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways
