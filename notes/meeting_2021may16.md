- [meeting notes May 16, 2021](#orgfb61b85)
  - [agenda stuff](#org15875a6)
    - [writing grep variants](#org7632ad9)
    - [raku classes as data containers](#org1f63e5b)
    - [bruce gray rosettacode entries](#orgbaf8bfe)
    - [argument passing signatures](#org88c5bf8)
    - [super flat](#org68f2cf8)
    - [type system: what is accepted by what](#orgb3b6e88)
    - [debian sysadmin issue (david christensen)](#org18ce003)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#orgebeeab5)
    - [bill one-liner attempt, removing soft hyphens](#org534f7f7)
  - [ongoing](#org3d6dc1a)
    - [programming in the large (david christensen)](#org06f1ee3)
    - [raku idioms](#org536a554)
  - [appendix: the usual links](#orgea00dfa)
    - [code examples](#orgb3d53ec)
    - [meeting notes (material from this file)](#org083b500)
    - [SF Perl page, has links to mailing list](#org5d82274)
    - [perl6-users mailing list archive](#org216907a)
  - [bits](#org2990d7d)


<a id="orgfb61b85"></a>

# meeting notes May 16, 2021


<a id="org15875a6"></a>

## agenda stuff


<a id="org7632ad9"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="org1f63e5b"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="orgbaf8bfe"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org88c5bf8"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org68f2cf8"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="orgb3b6e88"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org18ce003"></a>

### debian sysadmin issue (david christensen)

dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. sam video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (I'm planning on 10.9). bg: bumblebee? david: no. <https://wiki.debian.org/Bumblebee> intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition.


<a id="orgebeeab5"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)


<a id="org534f7f7"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="org3d6dc1a"></a>

## ongoing


<a id="org06f1ee3"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="org536a554"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="orgea00dfa"></a>

## appendix: the usual links


<a id="orgb3d53ec"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="org083b500"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="org5d82274"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org216907a"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org2990d7d"></a>

## bits

bg summarizes fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways
