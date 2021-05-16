- [meeting notes May 16, 2021](#orge839a99)
  - [agenda stuff](#orgceec95a)
    - [writing grep variants](#orgd146bc0)
    - [raku classes as data containers](#orge480011)
    - [bruce gray rosettacode entries](#org75e9385)
    - [argument passing signatures](#org3a79d10)
    - [super flat](#org78567d9)
    - [type system: what is accepted by what](#orgf0b61dc)
    - [debian sysadmin issue (david christensen)](#org56f3b5d)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#org9e6ffd7)
    - [bill one-liner attempt, removing soft hyphens](#orge851b50)
  - [ongoing](#org3f578fc)
    - [programming in the large (david christensen)](#org7bbc62c)
    - [raku idioms](#orgf71c103)
  - [appendix: the usual links](#orgbda63ec)
    - [code examples](#org6dd4657)
    - [meeting notes (material from this file)](#org3c19d09)
    - [SF Perl page, has links to mailing list](#org18d78e7)
    - [perl6-users mailing list archive](#org1db043b)
  - [bits](#orgde72d2d)


<a id="orge839a99"></a>

# meeting notes May 16, 2021


<a id="orgceec95a"></a>

## agenda stuff


<a id="orgd146bc0"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="orge480011"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="org75e9385"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org3a79d10"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org78567d9"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="orgf0b61dc"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org56f3b5d"></a>

### debian sysadmin issue (david christensen)

dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. sam video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (I'm planning on 10.9). bg: bumblebee? david: no. <https://wiki.debian.org/Bumblebee> intel model 520 ssds


<a id="org9e6ffd7"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)


<a id="orge851b50"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="org3f578fc"></a>

## ongoing


<a id="org7bbc62c"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="orgf71c103"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="orgbda63ec"></a>

## appendix: the usual links


<a id="org6dd4657"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="org3c19d09"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="org18d78e7"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org1db043b"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgde72d2d"></a>

## bits

bg summarizes fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways
