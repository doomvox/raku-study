- [meeting notes May 16, 2021](#org92a70ca)
  - [agenda stuff](#org6d08775)
    - [writing grep variants](#org4a47d3e)
    - [raku classes as data containers](#orga4afe4e)
    - [bruce gray rosettacode entries](#org96702da)
    - [argument passing signatures](#org557ea85)
    - [super flat](#org9e9b86b)
    - [type system: what is accepted by what](#orgc864bde)
    - [david christensen talked about a few debian sysadmin issues](#orgf02606d)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#org528dcc6)
    - [bill one-liner attempt, removing soft hyphens](#org883d426)
  - [ongoing](#org3549acc)
    - [programming in the large (david christensen)](#org117d7fa)
    - [raku idioms](#orgfd60720)
  - [appendix: the usual links](#orgc063ae9)
    - [code examples](#orgebcff6b)
    - [meeting notes (material from this file)](#org13105ef)
    - [SF Perl page, has links to mailing list](#orge0c70e4)
    - [perl6-users mailing list archive](#org1a1b574)
  - [bits](#orgabba2aa)
    - [bg summarizes](#org1206535)
    - [announced: going to skip next sunday, thinking about going with every-other week format](#org1717050)
    - [perl5 cpan module  Filesys::ZFS, david christensen says "not complete"](#orgfa7181f)


<a id="org92a70ca"></a>

# meeting notes May 16, 2021


<a id="org6d08775"></a>

## agenda stuff


<a id="org4a47d3e"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="orga4afe4e"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="org96702da"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org557ea85"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org9e9b86b"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="orgc864bde"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgf02606d"></a>

### david christensen talked about a few debian sysadmin issues

1.  summary: debian 10.9 is mature enough to deal with all display hardware,

    including nvidia optimus
    
    1.  bruce gray recommends "bumblebee" to deal with nvidia optimus
    
        <https://wiki.debian.org/Bumblebee>

2.  rough notes from david's piece:

    dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. same video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (Note: I've got debian 10.9 slated to install). intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition. overprovisioning, a couple of different devices&#x2013; image on usb flash drive.
    
    samsung gb ssd performed better than usb drives, dram cache burn up a sata slot.


<a id="org528dcc6"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)

predicate functions, "is<sub>string</sub>" etc. demo of a small routine functional approach.

1.  bruce gray suggests Params::Util

    <https://metacpan.org/pod/Params::Util>

2.  there are a number of cpan modules to do parameter validation, e.g

    <https://metacpan.org/pod/Params::ValidationCompiler>


<a id="org883d426"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="org3549acc"></a>

## ongoing


<a id="org117d7fa"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="orgfd60720"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="orgc063ae9"></a>

## appendix: the usual links


<a id="orgebcff6b"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="org13105ef"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="orge0c70e4"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org1a1b574"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgabba2aa"></a>

## bits


<a id="org1206535"></a>

### bg summarizes

fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways


<a id="org1717050"></a>

### announced: going to skip next sunday, thinking about going with every-other week format

suggestion: have someone else host perl5 meetings on the off-weeks. david christensen is interested.


<a id="orgfa7181f"></a>

### perl5 cpan module  Filesys::ZFS, david christensen says "not complete"
