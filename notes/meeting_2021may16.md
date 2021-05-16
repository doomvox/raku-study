- [meeting notes May 16, 2021](#orgd45c4aa)
  - [agenda stuff](#orged131a4)
    - [writing grep variants](#orgc4f31c6)
    - [raku classes as data containers](#org99778b7)
    - [bruce gray rosettacode entries](#orgeaa10d6)
    - [argument passing signatures](#orgcc7d7b5)
    - [super flat](#org529642c)
    - [type system: what is accepted by what](#org5944e27)
    - [debian sysadmin issue (david christensen)](#orgc541d81)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#orga4ed17e)
    - [bill one-liner attempt, removing soft hyphens](#org71ac9c0)
  - [ongoing](#org32a66fd)
    - [programming in the large (david christensen)](#orgc94f5d8)
    - [raku idioms](#orgcb19e47)
  - [appendix: the usual links](#org8b5352f)
    - [code examples](#org1699b99)
    - [meeting notes (material from this file)](#org698206e)
    - [SF Perl page, has links to mailing list](#org9bc93c6)
    - [perl6-users mailing list archive](#org3e9752b)
  - [bits](#org8acfa79)


<a id="orgd45c4aa"></a>

# meeting notes May 16, 2021


<a id="orged131a4"></a>

## agenda stuff


<a id="orgc4f31c6"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="org99778b7"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="orgeaa10d6"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgcc7d7b5"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org529642c"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="org5944e27"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgc541d81"></a>

### debian sysadmin issue (david christensen)

dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. sam video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (I'm planning on 10.9). bg: bumblebee? david: no. <https://wiki.debian.org/Bumblebee> intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition. overprovisioning, a couple of different devices&#x2013; image on usb flash drive.


<a id="orga4ed17e"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)


<a id="org71ac9c0"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="org32a66fd"></a>

## ongoing


<a id="orgc94f5d8"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="orgcb19e47"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="org8b5352f"></a>

## appendix: the usual links


<a id="org1699b99"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="org698206e"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="org9bc93c6"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org3e9752b"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org8acfa79"></a>

## bits

bg summarizes fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways
