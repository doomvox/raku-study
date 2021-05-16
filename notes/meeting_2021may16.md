- [meeting notes May 16, 2021](#orgffbb3ca)
  - [agenda stuff](#orgdba7420)
    - [writing grep variants](#orgea00fec)
    - [raku classes as data containers](#orgfa1ac00)
    - [bruce gray rosettacode entries](#org9865650)
    - [argument passing signatures](#org407a6cd)
    - [super flat](#org414b5ab)
    - [type system: what is accepted by what](#orgdc397e5)
    - [david christensen talked about a few debian sysadmin issues](#org14cba1a)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#org3425cc8)
    - [bill one-liner attempt, removing soft hyphens](#orgbb09d24)
  - [ongoing](#org5f9a26a)
    - [programming in the large (david christensen)](#orgf19124a)
    - [raku idioms](#org57e88fc)
  - [appendix: the usual links](#org32f14aa)
    - [code examples](#org9dc0024)
    - [meeting notes (material from this file)](#org1fd8ead)
    - [SF Perl page, has links to mailing list](#org9a803ea)
    - [perl6-users mailing list archive](#org065259a)
  - [bits](#orgd0c01fc)


<a id="orgffbb3ca"></a>

# meeting notes May 16, 2021


<a id="orgdba7420"></a>

## agenda stuff


<a id="orgea00fec"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="orgfa1ac00"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="org9865650"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org407a6cd"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org414b5ab"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="orgdc397e5"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org14cba1a"></a>

### david christensen talked about a few debian sysadmin issues

dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. sam video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (I'm planning on 10.9). bg: bumblebee? david: no. <https://wiki.debian.org/Bumblebee> intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition. overprovisioning, a couple of different devices&#x2013; image on usb flash drive.

samsung gb ssd performed better than usb drives, dram cache burn up a sata slot.

seperate version control server can help.


<a id="org3425cc8"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)

predicate functions, "is<sub>string</sub>" etc.


<a id="orgbb09d24"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="org5f9a26a"></a>

## ongoing


<a id="orgf19124a"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="org57e88fc"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="org32f14aa"></a>

## appendix: the usual links


<a id="org9dc0024"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="org1fd8ead"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="org9a803ea"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org065259a"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgd0c01fc"></a>

## bits

bg summarizes fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways
