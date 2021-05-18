- [meeting notes May 16, 2021](#org6b8e93a)
  - [agenda stuff](#org5147217)
    - [writing grep variants](#orga393f2f)
    - [raku classes as data containers](#org1511005)
    - [bruce gray rosettacode entries](#orgf9ccf62)
    - [argument passing signatures](#org4a650ea)
    - [super flat](#org346a5de)
    - [type system: what is accepted by what](#org619a2dd)
    - [david christensen talked about a few debian sysadmin issues](#org8fa580a)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#orgc9ecd6b)
    - [bill one-liner attempt, removing soft hyphens](#orgc8fe5d5)
  - [ongoing](#org98ce24a)
    - [programming in the large (david christensen)](#org43d6e08)
    - [raku idioms](#orge5d6d94)
  - [appendix: the usual links](#org6b0a7fb)
    - [code examples](#org7797fb6)
    - [meeting notes (material from this file)](#org9a9b4d3)
    - [SF Perl page, has links to mailing list](#org2b5af99)
    - [perl6-users mailing list archive](#org735b851)
  - [bits](#org6f3af99)
    - [bg summarizes](#org92c0103)
    - [announced: going to skip next sunday, thinking about going with every-other week format](#org523fa67)
    - [perl5 cpan module  Filesys::ZFS, david christensen says "not complete"](#org9d201e3)


<a id="org6b8e93a"></a>

# meeting notes May 16, 2021


<a id="org5147217"></a>

## agenda stuff


<a id="orga393f2f"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="org1511005"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="orgf9ccf62"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org4a650ea"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org346a5de"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="org619a2dd"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org8fa580a"></a>

### david christensen talked about a few debian sysadmin issues

1.  summary: debian 10.9 is mature enough to deal with all display hardware,

    including nvidia optimus
    
    1.  bruce gray recommends "bumblebee" to deal with nvidia optimus
    
        <https://wiki.debian.org/Bumblebee>

2.  rough notes from david's piece:

    dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. same video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (Note: I've got debian 10.9 slated to install). intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition. overprovisioning, a couple of different devices&#x2013; image on usb flash drive.
    
    samsung gb ssd performed better than usb drives, dram cache burn up a sata slot.


<a id="orgc9ecd6b"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)

As a demo of functional programming, david christensen showed us his code for generating type validation predicate functions.

predicate functions, "is<sub>string</sub>" etc. demo of a small routine functional approach.

1.  bruce gray suggests Params::Util

    1.  <https://metacpan.org/pod/Params::Util>

2.  there are a number of cpan modules to do parameter validation, e.g

    1.  <https://metacpan.org/pod/Type::Tiny#Predicate-methods>
    
    2.  <https://metacpan.org/pod/Params::ValidationCompiler>


<a id="orgc8fe5d5"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="org98ce24a"></a>

## ongoing


<a id="org43d6e08"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="orge5d6d94"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="org6b0a7fb"></a>

## appendix: the usual links


<a id="org7797fb6"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="org9a9b4d3"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="org2b5af99"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org735b851"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org6f3af99"></a>

## bits


<a id="org92c0103"></a>

### bg summarizes

fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways


<a id="org523fa67"></a>

### announced: going to skip next sunday, thinking about going with every-other week format

suggestion: have someone else host perl5 meetings on the off-weeks. david christensen is interested.


<a id="org9d201e3"></a>

### perl5 cpan module  Filesys::ZFS, david christensen says "not complete"
