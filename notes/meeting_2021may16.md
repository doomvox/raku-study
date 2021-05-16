- [meeting notes May 16, 2021](#orgad71288)
  - [agenda stuff](#org15758d6)
    - [writing grep variants](#org2a2e785)
    - [raku classes as data containers](#orgac90984)
    - [bruce gray rosettacode entries](#org4697f98)
    - [argument passing signatures](#org473d915)
    - [super flat](#org09bde2b)
    - [type system: what is accepted by what](#orgccd7fcb)
    - [debian sysadmin issue (david christensen)](#org1fdc72f)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#org3d70bab)
    - [bill one-liner attempt, removing soft hyphens](#org9ef8b64)
  - [ongoing](#org0078d5c)
    - [programming in the large (david christensen)](#org353a47c)
    - [raku idioms](#orgc768f47)
  - [appendix: the usual links](#org4022231)
    - [code examples](#orgabc015c)
    - [meeting notes (material from this file)](#org908c0c1)
    - [SF Perl page, has links to mailing list](#orgaceb7d1)
    - [perl6-users mailing list archive](#orgf386221)
  - [bits](#org2547f5a)


<a id="orgad71288"></a>

# meeting notes May 16, 2021


<a id="org15758d6"></a>

## agenda stuff


<a id="org2a2e785"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="orgac90984"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="org4697f98"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org473d915"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org09bde2b"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="orgccd7fcb"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org1fdc72f"></a>

### debian sysadmin issue (david christensen)

dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. sam video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (I'm planning on 10.9). bg: bumblebee? david: no. <https://wiki.debian.org/Bumblebee> intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition. overprovisioning, a couple of different devices&#x2013; image on usb flash drive.


<a id="org3d70bab"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)


<a id="org9ef8b64"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="org0078d5c"></a>

## ongoing


<a id="org353a47c"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="orgc768f47"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="org4022231"></a>

## appendix: the usual links


<a id="orgabc015c"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="org908c0c1"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="orgaceb7d1"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orgf386221"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org2547f5a"></a>

## bits

bg summarizes fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways
