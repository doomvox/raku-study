- [meeting notes May 16, 2021](#orgf9b42d8)
  - [agenda stuff](#org6a50383)
    - [writing grep variants](#orgcd07ccc)
    - [raku classes as data containers](#orgcd2142f)
    - [bruce gray rosettacode entries](#org8a3a0e8)
    - [argument passing signatures](#orgce66409)
    - [super flat](#org2c7c911)
    - [type system: what is accepted by what](#orgc488b03)
    - [debian sysadmin issue (david christensen)](#org640bc63)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#orge976882)
    - [bill one-liner attempt, removing soft hyphens](#org7bf0f2a)
  - [ongoing](#orgcb9c944)
    - [programming in the large (david christensen)](#org0ef0269)
    - [raku idioms](#org30988ce)
  - [appendix: the usual links](#org3fea4eb)
    - [code examples](#orge3e83f6)
    - [meeting notes (material from this file)](#org49c0d20)
    - [SF Perl page, has links to mailing list](#org9da456a)
    - [perl6-users mailing list archive](#orgd0e21f0)
  - [bits](#org0dc399c)


<a id="orgf9b42d8"></a>

# meeting notes May 16, 2021


<a id="org6a50383"></a>

## agenda stuff


<a id="orgcd07ccc"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="orgcd2142f"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="org8a3a0e8"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgce66409"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org2c7c911"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="orgc488b03"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org640bc63"></a>

### debian sysadmin issue (david christensen)

dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. sam video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (I'm planning on 10.9). bg: bumblebee? david: no. <https://wiki.debian.org/Bumblebee> intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition.


<a id="orge976882"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)


<a id="org7bf0f2a"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="orgcb9c944"></a>

## ongoing


<a id="org0ef0269"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="org30988ce"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="org3fea4eb"></a>

## appendix: the usual links


<a id="orge3e83f6"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="org49c0d20"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="org9da456a"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orgd0e21f0"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org0dc399c"></a>

## bits

bg summarizes fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways
