- [meeting notes May 16, 2021](#orgcc6d554)
  - [agenda stuff](#org18458f0)
    - [writing grep variants](#orgcdc17b3)
    - [raku classes as data containers](#org73a90ca)
    - [bruce gray rosettacode entries](#org7de7e43)
    - [argument passing signatures](#org6307112)
    - [super flat](#org820bad5)
    - [type system: what is accepted by what](#org58a0979)
    - [debian sysadmin issue (david christensen)](#orgbfd00ab)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#org7090407)
    - [bill one-liner attempt, removing soft hyphens](#org3645e88)
  - [ongoing](#orgd7efd62)
    - [programming in the large (david christensen)](#org23c3b0a)
    - [raku idioms](#org0525530)
  - [appendix: the usual links](#org52f618e)
    - [code examples](#org688f17b)
    - [meeting notes (material from this file)](#orgb3f63e7)
    - [SF Perl page, has links to mailing list](#orga33cc28)
    - [perl6-users mailing list archive](#orga98a697)
  - [bits](#org29c9465)


<a id="orgcc6d554"></a>

# meeting notes May 16, 2021


<a id="org18458f0"></a>

## agenda stuff


<a id="orgcdc17b3"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="org73a90ca"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="org7de7e43"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org6307112"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org820bad5"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="org58a0979"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgbfd00ab"></a>

### debian sysadmin issue (david christensen)

dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. sam video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (I'm planning on 10.9). bg: bumblebee? david: no. <https://wiki.debian.org/Bumblebee>


<a id="org7090407"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)


<a id="org3645e88"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="orgd7efd62"></a>

## ongoing


<a id="org23c3b0a"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="org0525530"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="org52f618e"></a>

## appendix: the usual links


<a id="org688f17b"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="orgb3f63e7"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="orga33cc28"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orga98a697"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org29c9465"></a>

## bits

bg summarizes fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways
