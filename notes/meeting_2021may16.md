- [meeting notes May 16, 2021](#org59d4ea1)
  - [agenda stuff](#org9bbb4cb)
    - [writing grep variants](#orgf20dc27)
    - [raku classes as data containers](#orgc892986)
    - [bruce gray rosettacode entries](#orgc24c8e4)
    - [argument passing signatures](#orgec8018d)
    - [super flat](#org6d6462c)
    - [type system: what is accepted by what](#org075b328)
    - [david christensen talked about a few debian sysadmin issues](#org7e6dc4e)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#org6b5ad33)
    - [bill one-liner attempt, removing soft hyphens](#org13e1557)
  - [ongoing](#org4531839)
    - [programming in the large (david christensen)](#org2f7ca9c)
    - [raku idioms](#orge0fe9cf)
  - [appendix: the usual links](#org92611b0)
    - [code examples](#org4a1fd65)
    - [meeting notes (material from this file)](#org3953eaa)
    - [SF Perl page, has links to mailing list](#org1638063)
    - [perl6-users mailing list archive](#org19ce581)
  - [bits](#org4fba3bd)
    - [bg summarizes](#orgf012513)
    - [announced: going to skip next sunday, thinking about going with every-other week format](#org555a20c)
    - [perl5 cpan module  Filesys::ZFS, david christensen says "not complete"](#orgc4a9091)


<a id="org59d4ea1"></a>

# meeting notes May 16, 2021


<a id="org9bbb4cb"></a>

## agenda stuff


<a id="orgf20dc27"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="orgc892986"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="orgc24c8e4"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgec8018d"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org6d6462c"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="org075b328"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org7e6dc4e"></a>

### david christensen talked about a few debian sysadmin issues

1.  summary: debian 10.9 is mature enough to deal with all display hardware,

    including nvidia optimus
    
    1.  bruce gray recommends "bumblebee" to deal with nvidia optimus
    
        <https://wiki.debian.org/Bumblebee>

2.  rough notes from david's piece:

    dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. same video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (Note: I've got debian 10.9 slated to install). intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition. overprovisioning, a couple of different devices&#x2013; image on usb flash drive.
    
    samsung gb ssd performed better than usb drives, dram cache burn up a sata slot.


<a id="org6b5ad33"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)

predicate functions, "is<sub>string</sub>" etc. demo of a small routine functional approach.


<a id="org13e1557"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="org4531839"></a>

## ongoing


<a id="org2f7ca9c"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="orge0fe9cf"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="org92611b0"></a>

## appendix: the usual links


<a id="org4a1fd65"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="org3953eaa"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="org1638063"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org19ce581"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org4fba3bd"></a>

## bits


<a id="orgf012513"></a>

### bg summarizes

fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways


<a id="org555a20c"></a>

### announced: going to skip next sunday, thinking about going with every-other week format

suggestion: have someone else host perl5 meetings on the off-weeks. david christensen is interested.


<a id="orgc4a9091"></a>

### perl5 cpan module  Filesys::ZFS, david christensen says "not complete"
