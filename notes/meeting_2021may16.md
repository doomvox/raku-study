- [meeting notes May 16, 2021](#orgf686cea)
  - [agenda stuff](#org775f9e5)
    - [writing grep variants](#orgac0eabb)
    - [raku classes as data containers](#org91c6bbc)
    - [bruce gray rosettacode entries](#orgc4a218f)
    - [argument passing signatures](#org4fc986d)
    - [super flat](#orgecca2a4)
    - [type system: what is accepted by what](#orgf1ea4b4)
    - [debian sysadmin issue (david christensen)](#orgf38836c)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#orge2612fd)
    - [bill one-liner attempt, removing soft hyphens](#org62d5fea)
  - [ongoing](#org19a722c)
    - [programming in the large (david christensen)](#org7d36c2f)
    - [raku idioms](#org6d3b47c)
  - [appendix: the usual links](#orgd71d6dc)
    - [code examples](#org403edcd)
    - [meeting notes (material from this file)](#orge50d7fd)
    - [SF Perl page, has links to mailing list](#orgfb20d88)
    - [perl6-users mailing list archive](#org91e54e3)
  - [bits](#org978fefc)


<a id="orgf686cea"></a>

# meeting notes May 16, 2021


<a id="org775f9e5"></a>

## agenda stuff


<a id="orgac0eabb"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="org91c6bbc"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="orgc4a218f"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org4fc986d"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgecca2a4"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="orgf1ea4b4"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgf38836c"></a>

### debian sysadmin issue (david christensen)

dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. sam video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed


<a id="orge2612fd"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)


<a id="org62d5fea"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="org19a722c"></a>

## ongoing


<a id="org7d36c2f"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="org6d3b47c"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="orgd71d6dc"></a>

## appendix: the usual links


<a id="org403edcd"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="orge50d7fd"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="orgfb20d88"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org91e54e3"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org978fefc"></a>

## bits

bg summarizes fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways
