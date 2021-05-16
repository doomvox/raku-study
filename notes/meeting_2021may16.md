- [meeting notes May 16, 2021](#orgaaaf6d3)
  - [agenda stuff](#org3515b90)
    - [writing grep variants](#org0d08f3a)
    - [raku classes as data containers](#orga6f9985)
    - [bruce gray rosettacode entries](#orgd8bf1f1)
    - [argument passing signatures](#orgdcad987)
    - [super flat](#org1701e8f)
    - [type system: what is accepted by what](#org633a2db)
    - [debian sysadmin issue (david christensen)](#orgb68bc20)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#org5e056bc)
    - [bill one-liner attempt, removing soft hyphens](#org588752d)
  - [ongoing](#org6eaf337)
    - [programming in the large (david christensen)](#orgb4c3a04)
    - [raku idioms](#orgb1627ca)
  - [appendix: the usual links](#orga0d2d84)
    - [code examples](#orge2a74a6)
    - [meeting notes (material from this file)](#orgd1a39ac)
    - [SF Perl page, has links to mailing list](#orgc70d992)
    - [perl6-users mailing list archive](#orgc2702e1)
  - [bits](#orgf73ac59)


<a id="orgaaaf6d3"></a>

# meeting notes May 16, 2021


<a id="org3515b90"></a>

## agenda stuff


<a id="org0d08f3a"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="orga6f9985"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="orgd8bf1f1"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgdcad987"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org1701e8f"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="org633a2db"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgb68bc20"></a>

### debian sysadmin issue (david christensen)

dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. sam video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (I'm planning on 10.9). bg: bumblebee? david: no. <https://wiki.debian.org/Bumblebee> intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition.


<a id="org5e056bc"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)


<a id="org588752d"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="org6eaf337"></a>

## ongoing


<a id="orgb4c3a04"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="orgb1627ca"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="orga0d2d84"></a>

## appendix: the usual links


<a id="orge2a74a6"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="orgd1a39ac"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="orgc70d992"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orgc2702e1"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgf73ac59"></a>

## bits

bg summarizes fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways
