- [meeting notes May 16, 2021](#orgf389ec4)
  - [agenda stuff](#org40701b9)
    - [writing grep variants](#org2c904f0)
    - [raku classes as data containers](#org06eddbd)
    - [bruce gray rosettacode entries](#orgf49d6c9)
    - [argument passing signatures](#org2846fec)
    - [super flat](#org4edc438)
    - [type system: what is accepted by what](#orgf89519b)
    - [david christensen talked about a few debian sysadmin issues](#org0737420)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#orgfff52d4)
    - [bill one-liner attempt, removing soft hyphens](#org83f7f54)
  - [ongoing](#org4dbc58e)
    - [programming in the large (david christensen)](#org430fcd7)
    - [raku idioms](#orge39d097)
  - [appendix: the usual links](#org441cccb)
    - [code examples](#orgdfa9728)
    - [meeting notes (material from this file)](#orgdc060eb)
    - [SF Perl page, has links to mailing list](#org3d23be4)
    - [perl6-users mailing list archive](#orgd6ec0a0)
  - [bits](#org8bf3a3c)
    - [bg summarizes](#orgdfa6e30)
    - [announced: going to skip next sunday, thinking about going with every-other week format](#orgfe72f4d)
    - [perl5 cpan module  Filesys::ZFS, david christensen says "not complete"](#org24e7bd0)


<a id="orgf389ec4"></a>

# meeting notes May 16, 2021


<a id="org40701b9"></a>

## agenda stuff


<a id="org2c904f0"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="org06eddbd"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="orgf49d6c9"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org2846fec"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org4edc438"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="orgf89519b"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org0737420"></a>

### david christensen talked about a few debian sysadmin issues

1.  summary: debian 10.9 is mature enough to deal with all display hardware,

    including nvidia optimus

2.  bruce gray recommends "bumblebee" to deal with nvidia optimus

    <https://wiki.debian.org/Bumblebee>

3.  rough notes from david's piece:

    dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. same video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (Note: I've got debian 10.9 slated to install).
    
    bruce gray suggests that "bumblebee" can get you out of trouble: <https://wiki.debian.org/Bumblebee>
    
    intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition. overprovisioning, a couple of different devices&#x2013; image on usb flash drive.
    
    samsung gb ssd performed better than usb drives, dram cache burn up a sata slot.
    
    seperate version control server can help.


<a id="orgfff52d4"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)

predicate functions, "is<sub>string</sub>" etc. demo of a small routine functional approach.


<a id="org83f7f54"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="org4dbc58e"></a>

## ongoing


<a id="org430fcd7"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="orge39d097"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="org441cccb"></a>

## appendix: the usual links


<a id="orgdfa9728"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="orgdc060eb"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="org3d23be4"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orgd6ec0a0"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org8bf3a3c"></a>

## bits


<a id="orgdfa6e30"></a>

### bg summarizes

fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways


<a id="orgfe72f4d"></a>

### announced: going to skip next sunday, thinking about going with every-other week format

suggestion: have someone else host perl5 meetings on the off-weeks. david christensen is interested.


<a id="org24e7bd0"></a>

### perl5 cpan module  Filesys::ZFS, david christensen says "not complete"
