- [meeting notes May 16, 2021](#org7b7f4bd)
  - [agenda stuff](#orgdc0d257)
    - [writing grep variants](#org33117f9)
    - [raku classes as data containers](#org2231792)
    - [bruce gray rosettacode entries](#org36dd97c)
    - [argument passing signatures](#orgcdd6f73)
    - [super flat](#org2929eaf)
    - [type system: what is accepted by what](#org44cc8d3)
    - [david christensen talked about a few debian sysadmin issues](#org8e518a0)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#org23ee43a)
    - [bill one-liner attempt, removing soft hyphens](#org4a0f15c)
  - [ongoing](#org5b3ffb3)
    - [programming in the large (david christensen)](#orgbfdb941)
    - [raku idioms](#org7cdc349)
  - [appendix: the usual links](#org7b664b2)
    - [code examples](#orgbb32625)
    - [meeting notes (material from this file)](#org674bdb9)
    - [SF Perl page, has links to mailing list](#org7904747)
    - [perl6-users mailing list archive](#org358a034)
  - [bits](#orgd384bf7)
    - [bg summarizes](#org1dfa9d3)
    - [announced: going to skip next sunday, thinking about going with every-other week format](#org6d578c8)
    - [perl5 cpan module  Filesys::ZFS, david christensen says "not complete"](#org29f3b25)


<a id="org7b7f4bd"></a>

# meeting notes May 16, 2021


<a id="orgdc0d257"></a>

## agenda stuff


<a id="org33117f9"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="org2231792"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="org36dd97c"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgcdd6f73"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org2929eaf"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="org44cc8d3"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org8e518a0"></a>

### david christensen talked about a few debian sysadmin issues

dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. sam video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (I'm planning on 10.9).

bg: bumblebee? david: no. <https://wiki.debian.org/Bumblebee> intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition. overprovisioning, a couple of different devices&#x2013; image on usb flash drive.

samsung gb ssd performed better than usb drives, dram cache burn up a sata slot.

seperate version control server can help.


<a id="org23ee43a"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)

predicate functions, "is<sub>string</sub>" etc. demo of small function approach.


<a id="org4a0f15c"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="org5b3ffb3"></a>

## ongoing


<a id="orgbfdb941"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="org7cdc349"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="org7b664b2"></a>

## appendix: the usual links


<a id="orgbb32625"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="org674bdb9"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="org7904747"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org358a034"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgd384bf7"></a>

## bits


<a id="org1dfa9d3"></a>

### bg summarizes

fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways


<a id="org6d578c8"></a>

### announced: going to skip next sunday, thinking about going with every-other week format

suggestion: have someone else host perl5 meetings on the off-weeks. david christensen is interested.


<a id="org29f3b25"></a>

### perl5 cpan module  Filesys::ZFS, david christensen says "not complete"
