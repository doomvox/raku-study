- [meeting notes May 16, 2021](#org08575a4)
  - [agenda stuff](#orgb1823a0)
    - [writing grep variants](#orgfa983ca)
    - [raku classes as data containers](#org6fa77ba)
    - [bruce gray rosettacode entries](#org2211735)
    - [argument passing signatures](#orga945722)
    - [super flat](#org03dd86f)
    - [type system: what is accepted by what](#org1287804)
    - [david christensen talked about a few debian sysadmin issues](#orgd7efba2)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#org4809bdb)
    - [bill one-liner attempt, removing soft hyphens](#orgf7bbcac)
  - [ongoing](#org730c264)
    - [programming in the large (david christensen)](#org914bddb)
    - [raku idioms](#org6ee58fd)
  - [appendix: the usual links](#org59c8512)
    - [code examples](#orga07a89b)
    - [meeting notes (material from this file)](#org17e92e4)
    - [SF Perl page, has links to mailing list](#org5b2eba6)
    - [perl6-users mailing list archive](#orgea92b51)
  - [bits](#org2fa7cf0)
    - [bg summarizes](#org2418ad4)
    - [announced: going to skip next sunday, thinking about going with every-other week format](#org58087d9)
    - [perl5 cpan module  Filesys::ZFS, david christensen says "not complete"](#orgb61cc30)


<a id="org08575a4"></a>

# meeting notes May 16, 2021


<a id="orgb1823a0"></a>

## agenda stuff


<a id="orgfa983ca"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="org6fa77ba"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="org2211735"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orga945722"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org03dd86f"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="org1287804"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgd7efba2"></a>

### david christensen talked about a few debian sysadmin issues

1.  summary: debian 10.9 is mature enough to deal with all display hardware

2.  rought notes:

    dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. sam video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (Note: I've got debian 10.9 slated to install).
    
    bruce gray suggests that "bumblebee" can get you out of trouble: <https://wiki.debian.org/Bumblebee>
    
    intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition. overprovisioning, a couple of different devices&#x2013; image on usb flash drive.
    
    samsung gb ssd performed better than usb drives, dram cache burn up a sata slot.
    
    seperate version control server can help.


<a id="org4809bdb"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)

predicate functions, "is<sub>string</sub>" etc. demo of a small routine functional approach.


<a id="orgf7bbcac"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="org730c264"></a>

## ongoing


<a id="org914bddb"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="org6ee58fd"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="org59c8512"></a>

## appendix: the usual links


<a id="orga07a89b"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="org17e92e4"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="org5b2eba6"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orgea92b51"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org2fa7cf0"></a>

## bits


<a id="org2418ad4"></a>

### bg summarizes

fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways


<a id="org58087d9"></a>

### announced: going to skip next sunday, thinking about going with every-other week format

suggestion: have someone else host perl5 meetings on the off-weeks. david christensen is interested.


<a id="orgb61cc30"></a>

### perl5 cpan module  Filesys::ZFS, david christensen says "not complete"
