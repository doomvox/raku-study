- [meeting notes May 16, 2021](#org1b2e44b)
  - [agenda stuff](#org4341816)
    - [writing grep variants](#org5685f49)
    - [raku classes as data containers](#org26b1b07)
    - [bruce gray rosettacode entries](#orgd4f0788)
    - [argument passing signatures](#org326f96a)
    - [super flat](#orgb6ccc18)
    - [type system: what is accepted by what](#org8996cc6)
    - [debian sysadmin issue (david christensen)](#orgcf59cad)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#org506008a)
    - [bill one-liner attempt, removing soft hyphens](#org1f302cb)
  - [ongoing](#org2452f6e)
    - [programming in the large (david christensen)](#orgd700924)
    - [raku idioms](#org5f98d9f)
  - [appendix: the usual links](#org5b88ee3)
    - [code examples](#org719ad42)
    - [meeting notes (material from this file)](#orgd8fc333)
    - [SF Perl page, has links to mailing list](#org0185269)
    - [perl6-users mailing list archive](#orgc32ab53)
  - [bits](#org0a5e0ad)


<a id="org1b2e44b"></a>

# meeting notes May 16, 2021


<a id="org4341816"></a>

## agenda stuff


<a id="org5685f49"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="org26b1b07"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="orgd4f0788"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org326f96a"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgb6ccc18"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="org8996cc6"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgcf59cad"></a>

### debian sysadmin issue (david christensen)

dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. sam video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (I'm planning on 10.9). bg: bumblebee? david: no. <https://wiki.debian.org/Bumblebee> intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition. overprovisioning, a couple of different devices&#x2013; image on usb flash drive.

samsung gb ssd performed better than usb drives, dram cache burn up a sata slot.

cvs server


<a id="org506008a"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)


<a id="org1f302cb"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="org2452f6e"></a>

## ongoing


<a id="orgd700924"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="org5f98d9f"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="org5b88ee3"></a>

## appendix: the usual links


<a id="org719ad42"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="orgd8fc333"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="org0185269"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orgc32ab53"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org0a5e0ad"></a>

## bits

bg summarizes fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways
