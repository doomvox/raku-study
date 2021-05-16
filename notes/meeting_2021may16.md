- [meeting notes May 16, 2021](#orga881dd1)
  - [agenda stuff](#orgbfd2836)
    - [writing grep variants](#orgfbea030)
    - [raku classes as data containers](#orgc0a4769)
    - [bruce gray rosettacode entries](#orgbe1ca0a)
    - [argument passing signatures](#orgf8889d2)
    - [super flat](#org011606f)
    - [type system: what is accepted by what](#org02eca97)
    - [debian sysadmin issue (david christensen)](#org3282582)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#org9f9f4e5)
    - [bill one-liner attempt, removing soft hyphens](#org0ca52ce)
  - [ongoing](#org4b91fa5)
    - [programming in the large (david christensen)](#org4c5e19b)
    - [raku idioms](#org29ffdeb)
  - [appendix: the usual links](#orgecd264d)
    - [code examples](#org18b9aa0)
    - [meeting notes (material from this file)](#org17cac44)
    - [SF Perl page, has links to mailing list](#org8a137d7)
    - [perl6-users mailing list archive](#org139ebda)
  - [bits](#org2b47c74)


<a id="orga881dd1"></a>

# meeting notes May 16, 2021


<a id="orgbfd2836"></a>

## agenda stuff


<a id="orgfbea030"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="orgc0a4769"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="orgbe1ca0a"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgf8889d2"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org011606f"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="org02eca97"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org3282582"></a>

### debian sysadmin issue (david christensen)

dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. sam video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (I'm planning on 10.9). bg: bumblebee? david: no. <https://wiki.debian.org/Bumblebee> intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?)


<a id="org9f9f4e5"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)


<a id="org0ca52ce"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="org4b91fa5"></a>

## ongoing


<a id="org4c5e19b"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="org29ffdeb"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="orgecd264d"></a>

## appendix: the usual links


<a id="org18b9aa0"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="org17cac44"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="org8a137d7"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org139ebda"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org2b47c74"></a>

## bits

bg summarizes fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways
