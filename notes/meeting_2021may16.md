- [meeting notes May 16, 2021](#org8e955f7)
  - [agenda stuff](#org22de028)
    - [writing grep variants](#org4cf40f8)
    - [raku classes as data containers](#org6dd80b7)
    - [bruce gray rosettacode entries](#org0921bc4)
    - [argument passing signatures](#org3d613a5)
    - [super flat](#org557d80a)
    - [type system: what is accepted by what](#org7b5c358)
    - [debian sysadmin issue (david christensen)](#org15687f1)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#org8c7e762)
    - [bill one-liner attempt, removing soft hyphens](#org5b77bea)
  - [ongoing](#org79574e4)
    - [programming in the large (david christensen)](#orgc36bb10)
    - [raku idioms](#org7652526)
  - [appendix: the usual links](#org6fd2e50)
    - [code examples](#orgf9f2216)
    - [meeting notes (material from this file)](#orga1c7044)
    - [SF Perl page, has links to mailing list](#orgcc835cb)
    - [perl6-users mailing list archive](#org9af2e39)
  - [bits](#org404fe43)


<a id="org8e955f7"></a>

# meeting notes May 16, 2021


<a id="org22de028"></a>

## agenda stuff


<a id="org4cf40f8"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="org6dd80b7"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="org0921bc4"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org3d613a5"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org557d80a"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="org7b5c358"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org15687f1"></a>

### debian sysadmin issue (david christensen)

dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. sam video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (I'm planning on 10.9). bg: bumblebee? david: no. <https://wiki.debian.org/Bumblebee> intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition. overprovisioning, a couple of different devices&#x2013; image on usb flash drive.

samsung gb ssd performed better than usb drives, dram cache burn up a sata slot.

seperate version control server can help.


<a id="org8c7e762"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)

predicate functions, "is<sub>string</sub>" etc.


<a id="org5b77bea"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="org79574e4"></a>

## ongoing


<a id="orgc36bb10"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="org7652526"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="org6fd2e50"></a>

## appendix: the usual links


<a id="orgf9f2216"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="orga1c7044"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="orgcc835cb"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org9af2e39"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org404fe43"></a>

## bits

bg summarizes fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways
