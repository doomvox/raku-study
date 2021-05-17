- [meeting notes May 16, 2021](#org8102108)
  - [agenda stuff](#org0b14b60)
    - [writing grep variants](#org1f95603)
    - [raku classes as data containers](#org2befa71)
    - [bruce gray rosettacode entries](#org6b4cec9)
    - [argument passing signatures](#orge4bb684)
    - [super flat](#orgf6c1826)
    - [type system: what is accepted by what](#org57c7a0b)
    - [david christensen talked about a few debian sysadmin issues](#orgefbdbe7)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#org2b94497)
    - [bill one-liner attempt, removing soft hyphens](#orgb78fecd)
  - [ongoing](#org7da4b0b)
    - [programming in the large (david christensen)](#orgb23d07d)
    - [raku idioms](#org6681f17)
  - [appendix: the usual links](#org150d967)
    - [code examples](#orge94d6c2)
    - [meeting notes (material from this file)](#orgb2114ef)
    - [SF Perl page, has links to mailing list](#org5108716)
    - [perl6-users mailing list archive](#orgca49a55)
  - [bits](#orgabcd3b4)
    - [bg summarizes](#org1192327)
    - [announced: going to skip next sunday, thinking about going with every-other week format](#org353601f)


<a id="org8102108"></a>

# meeting notes May 16, 2021


<a id="org0b14b60"></a>

## agenda stuff


<a id="org1f95603"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="org2befa71"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="org6b4cec9"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orge4bb684"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgf6c1826"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="org57c7a0b"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgefbdbe7"></a>

### david christensen talked about a few debian sysadmin issues

dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. sam video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (I'm planning on 10.9). bg: bumblebee? david: no. <https://wiki.debian.org/Bumblebee> intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition. overprovisioning, a couple of different devices&#x2013; image on usb flash drive.

samsung gb ssd performed better than usb drives, dram cache burn up a sata slot.

seperate version control server can help.


<a id="org2b94497"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)

predicate functions, "is<sub>string</sub>" etc. demo of small function approach.


<a id="orgb78fecd"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="org7da4b0b"></a>

## ongoing


<a id="orgb23d07d"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="org6681f17"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="org150d967"></a>

## appendix: the usual links


<a id="orge94d6c2"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="orgb2114ef"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="org5108716"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orgca49a55"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgabcd3b4"></a>

## bits


<a id="org1192327"></a>

### bg summarizes

fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways


<a id="org353601f"></a>

### announced: going to skip next sunday, thinking about going with every-other week format

suggestion: have someone else host perl5 meetings on the off-weeks. david christensen is interested.
