- [meeting notes May 16, 2021](#org342d764)
  - [agenda stuff](#orgc175819)
    - [writing grep variants](#org1591e58)
    - [raku classes as data containers](#org001b602)
    - [bruce gray rosettacode entries](#orgac36990)
    - [argument passing signatures](#org2106e96)
    - [super flat](#orgf0f0252)
    - [type system: what is accepted by what](#org3d1221b)
    - [debian sysadmin issue (david christensen)](#orga72e20c)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#orgc0a78b0)
    - [bill one-liner attempt, removing soft hyphens](#org6835d73)
  - [ongoing](#org6029e38)
    - [programming in the large (david christensen)](#orgd78bfba)
    - [raku idioms](#orga3337e5)
  - [appendix: the usual links](#orgebfc2b1)
    - [code examples](#org8a55b97)
    - [meeting notes (material from this file)](#orgd51b412)
    - [SF Perl page, has links to mailing list](#org60f500a)
    - [perl6-users mailing list archive](#org4076a55)
  - [bits](#orgb67f2ce)


<a id="org342d764"></a>

# meeting notes May 16, 2021


<a id="orgc175819"></a>

## agenda stuff


<a id="org1591e58"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="org001b602"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="orgac36990"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org2106e96"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgf0f0252"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="org3d1221b"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orga72e20c"></a>

### debian sysadmin issue (david christensen)

dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. sam video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (I'm planning on 10.9). bg: bumblebee? david: no.


<a id="orgc0a78b0"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)


<a id="org6835d73"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="org6029e38"></a>

## ongoing


<a id="orgd78bfba"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="orga3337e5"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="orgebfc2b1"></a>

## appendix: the usual links


<a id="org8a55b97"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="orgd51b412"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="org60f500a"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org4076a55"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgb67f2ce"></a>

## bits

bg summarizes fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways
