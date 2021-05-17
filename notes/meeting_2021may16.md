- [meeting notes May 16, 2021](#orgc2f3c62)
  - [agenda stuff](#orgb1eeea8)
    - [writing grep variants](#org5b31e83)
    - [raku classes as data containers](#org9db6291)
    - [bruce gray rosettacode entries](#orgc393cf3)
    - [argument passing signatures](#org027f813)
    - [super flat](#org341e48d)
    - [type system: what is accepted by what](#org72a0025)
    - [david christensen talked about a few debian sysadmin issues](#orgdedf09f)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#org482ff76)
    - [bill one-liner attempt, removing soft hyphens](#org7ff6e2b)
  - [ongoing](#org9d4b047)
    - [programming in the large (david christensen)](#org1278a34)
    - [raku idioms](#org5ae21d1)
  - [appendix: the usual links](#org0907ddd)
    - [code examples](#org3715ce0)
    - [meeting notes (material from this file)](#org02d3fb0)
    - [SF Perl page, has links to mailing list](#org00912dc)
    - [perl6-users mailing list archive](#org880df15)
  - [bits](#org5763ca3)
    - [bg summarizes](#org51c6324)
    - [announced: going to skip next sunday, thinking about going with every-other week format](#org59adfe4)


<a id="orgc2f3c62"></a>

# meeting notes May 16, 2021


<a id="orgb1eeea8"></a>

## agenda stuff


<a id="org5b31e83"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="org9db6291"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="orgc393cf3"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org027f813"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org341e48d"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="org72a0025"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgdedf09f"></a>

### david christensen talked about a few debian sysadmin issues

dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. sam video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (I'm planning on 10.9).

bg: bumblebee? david: no. <https://wiki.debian.org/Bumblebee> intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition. overprovisioning, a couple of different devices&#x2013; image on usb flash drive.

samsung gb ssd performed better than usb drives, dram cache burn up a sata slot.

seperate version control server can help.


<a id="org482ff76"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)

predicate functions, "is<sub>string</sub>" etc. demo of small function approach.


<a id="org7ff6e2b"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="org9d4b047"></a>

## ongoing


<a id="org1278a34"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="org5ae21d1"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="org0907ddd"></a>

## appendix: the usual links


<a id="org3715ce0"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="org02d3fb0"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="org00912dc"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org880df15"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org5763ca3"></a>

## bits


<a id="org51c6324"></a>

### bg summarizes

fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways


<a id="org59adfe4"></a>

### announced: going to skip next sunday, thinking about going with every-other week format

suggestion: have someone else host perl5 meetings on the off-weeks. david christensen is interested.
