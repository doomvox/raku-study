- [meeting notes May 16, 2021](#orgdbf38a1)
  - [agenda stuff](#org2535bd9)
    - [writing grep variants](#orged494b8)
    - [raku classes as data containers](#org6d1fba9)
    - [bruce gray rosettacode entries](#org15a8f47)
    - [argument passing signatures](#orgf23da00)
    - [super flat](#org01104af)
    - [type system: what is accepted by what](#orgac09750)
    - [david christensen talked about a few debian sysadmin issues](#org8a54b91)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#orgc67eac6)
    - [bill one-liner attempt, removing soft hyphens](#org6f82c8e)
  - [ongoing](#orga2e6f18)
    - [programming in the large (david christensen)](#orgaed7631)
    - [raku idioms](#orgf722ff8)
  - [appendix: the usual links](#org32486c4)
    - [code examples](#org76a53f5)
    - [meeting notes (material from this file)](#org07d3809)
    - [SF Perl page, has links to mailing list](#orgc855cd7)
    - [perl6-users mailing list archive](#orgf675748)
  - [bits](#org9cc0962)
    - [bg summarizes](#org432ae41)
    - [announced: going to skip next sunday, thinking about going with every-other week format](#org00ed73a)
    - [perl5 cpan module  Filesys::ZFS, david christensen says "not complete"](#orga045cc7)


<a id="orgdbf38a1"></a>

# meeting notes May 16, 2021


<a id="org2535bd9"></a>

## agenda stuff


<a id="orged494b8"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="org6d1fba9"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="org15a8f47"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgf23da00"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org01104af"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="orgac09750"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org8a54b91"></a>

### david christensen talked about a few debian sysadmin issues

1.  summary: debian 10.9 is mature enough to deal with all display hardware

2.  rough notes:

    dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. same video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (Note: I've got debian 10.9 slated to install).
    
    bruce gray suggests that "bumblebee" can get you out of trouble: <https://wiki.debian.org/Bumblebee>
    
    intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition. overprovisioning, a couple of different devices&#x2013; image on usb flash drive.
    
    samsung gb ssd performed better than usb drives, dram cache burn up a sata slot.
    
    seperate version control server can help.


<a id="orgc67eac6"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)

predicate functions, "is<sub>string</sub>" etc. demo of a small routine functional approach.


<a id="org6f82c8e"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="orga2e6f18"></a>

## ongoing


<a id="orgaed7631"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="orgf722ff8"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="org32486c4"></a>

## appendix: the usual links


<a id="org76a53f5"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="org07d3809"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="orgc855cd7"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orgf675748"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org9cc0962"></a>

## bits


<a id="org432ae41"></a>

### bg summarizes

fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways


<a id="org00ed73a"></a>

### announced: going to skip next sunday, thinking about going with every-other week format

suggestion: have someone else host perl5 meetings on the off-weeks. david christensen is interested.


<a id="orga045cc7"></a>

### perl5 cpan module  Filesys::ZFS, david christensen says "not complete"
