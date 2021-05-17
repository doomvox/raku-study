- [meeting notes May 16, 2021](#org3f4a04d)
  - [agenda stuff](#orgf3e1a18)
    - [writing grep variants](#orgf998b32)
    - [raku classes as data containers](#org03905ba)
    - [bruce gray rosettacode entries](#orge1fc429)
    - [argument passing signatures](#org2d94c1f)
    - [super flat](#org4dc3c13)
    - [type system: what is accepted by what](#org67bfcad)
    - [david christensen talked about a few debian sysadmin issues](#org74179fb)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#org9bd4fb9)
    - [bill one-liner attempt, removing soft hyphens](#org73436ec)
  - [ongoing](#orgd7b4532)
    - [programming in the large (david christensen)](#org9dc464f)
    - [raku idioms](#orgd9c8293)
  - [appendix: the usual links](#org5b7ec4e)
    - [code examples](#orga30f583)
    - [meeting notes (material from this file)](#org86c578d)
    - [SF Perl page, has links to mailing list](#orgcc2cbfc)
    - [perl6-users mailing list archive](#orgefb6841)
  - [bits](#orga259622)
    - [bg summarizes](#orgecc464c)
    - [announced: going to skip next sunday, thinking about going with every-other week format](#org084ac68)
    - [perl5 cpan module  Filesys::ZFS, david christensen says "not complete"](#orgdab97cd)


<a id="org3f4a04d"></a>

# meeting notes May 16, 2021


<a id="orgf3e1a18"></a>

## agenda stuff


<a id="orgf998b32"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="org03905ba"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="orge1fc429"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org2d94c1f"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org4dc3c13"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="org67bfcad"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org74179fb"></a>

### david christensen talked about a few debian sysadmin issues

dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. sam video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (Note: I've got debian 10.9 slated to install).

bruce gray suggests that "bumblebee" can get you out of trouble: <https://wiki.debian.org/Bumblebee>

intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition. overprovisioning, a couple of different devices&#x2013; image on usb flash drive.

samsung gb ssd performed better than usb drives, dram cache burn up a sata slot.

seperate version control server can help.


<a id="org9bd4fb9"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)

predicate functions, "is<sub>string</sub>" etc. demo of a small routine functional approach.


<a id="org73436ec"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="orgd7b4532"></a>

## ongoing


<a id="org9dc464f"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="orgd9c8293"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="org5b7ec4e"></a>

## appendix: the usual links


<a id="orga30f583"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="org86c578d"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="orgcc2cbfc"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orgefb6841"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orga259622"></a>

## bits


<a id="orgecc464c"></a>

### bg summarizes

fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways


<a id="org084ac68"></a>

### announced: going to skip next sunday, thinking about going with every-other week format

suggestion: have someone else host perl5 meetings on the off-weeks. david christensen is interested.


<a id="orgdab97cd"></a>

### perl5 cpan module  Filesys::ZFS, david christensen says "not complete"
