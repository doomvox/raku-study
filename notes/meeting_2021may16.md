- [meeting notes May 16, 2021](#org612e25d)
  - [agenda stuff](#org1cbb56e)
    - [writing grep variants](#org72f3bf4)
    - [raku classes as data containers](#orge88aee5)
    - [bruce gray rosettacode entries](#org5209aab)
    - [argument passing signatures](#orgd816d1f)
    - [super flat](#org7a74fc3)
    - [type system: what is accepted by what](#org1a53a08)
    - [david christensen talked about a few debian sysadmin issues](#org8d30e57)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#org809f31d)
    - [bill one-liner attempt, removing soft hyphens](#org7656777)
  - [ongoing](#org7f28f93)
    - [programming in the large (david christensen)](#org08f1b4c)
    - [raku idioms](#orgc126af0)
  - [appendix: the usual links](#org91462ee)
    - [code examples](#orga01f35b)
    - [meeting notes (material from this file)](#org15fbfe2)
    - [SF Perl page, has links to mailing list](#org8cb7f7c)
    - [perl6-users mailing list archive](#orgf322835)
  - [bits](#org358bd46)


<a id="org612e25d"></a>

# meeting notes May 16, 2021


<a id="org1cbb56e"></a>

## agenda stuff


<a id="org72f3bf4"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="orge88aee5"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="org5209aab"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgd816d1f"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org7a74fc3"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="org1a53a08"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org8d30e57"></a>

### david christensen talked about a few debian sysadmin issues

dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. sam video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (I'm planning on 10.9). bg: bumblebee? david: no. <https://wiki.debian.org/Bumblebee> intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition. overprovisioning, a couple of different devices&#x2013; image on usb flash drive.

samsung gb ssd performed better than usb drives, dram cache burn up a sata slot.

seperate version control server can help.


<a id="org809f31d"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)

predicate functions, "is<sub>string</sub>" etc. demo of small function approach


<a id="org7656777"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="org7f28f93"></a>

## ongoing


<a id="org08f1b4c"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="orgc126af0"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="org91462ee"></a>

## appendix: the usual links


<a id="orga01f35b"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="org15fbfe2"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="org8cb7f7c"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orgf322835"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org358bd46"></a>

## bits

bg summarizes fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways
