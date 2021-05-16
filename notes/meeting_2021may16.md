- [meeting notes May 16, 2021](#orgdec65b3)
  - [agenda stuff](#org3bbee11)
    - [writing grep variants](#org8ecabc3)
    - [raku classes as data containers](#orgeeda291)
    - [bruce gray rosettacode entries](#org170decd)
    - [argument passing signatures](#org5640e8d)
    - [super flat](#org163376b)
    - [type system: what is accepted by what](#org2ed3474)
    - [debian sysadmin issue (david christensen)](#org17c4b40)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#org9041006)
    - [bill one-liner attempt, removing soft hyphens](#org10973c3)
  - [ongoing](#orgdcf6e61)
    - [programming in the large (david christensen)](#org2b88c49)
    - [raku idioms](#org6697aa6)
  - [appendix: the usual links](#orge19d8be)
    - [code examples](#orgc2f1393)
    - [meeting notes (material from this file)](#org7d2a2b6)
    - [SF Perl page, has links to mailing list](#org2bcc9d3)
    - [perl6-users mailing list archive](#orgb7d56e5)
  - [bits](#orgdc0c0a5)


<a id="orgdec65b3"></a>

# meeting notes May 16, 2021


<a id="org3bbee11"></a>

## agenda stuff


<a id="org8ecabc3"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="orgeeda291"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="org170decd"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org5640e8d"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org163376b"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="org2ed3474"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org17c4b40"></a>

### debian sysadmin issue (david christensen)

dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. sam video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed


<a id="org9041006"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)


<a id="org10973c3"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="orgdcf6e61"></a>

## ongoing


<a id="org2b88c49"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="org6697aa6"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="orge19d8be"></a>

## appendix: the usual links


<a id="orgc2f1393"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="org7d2a2b6"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="org2bcc9d3"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orgb7d56e5"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgdc0c0a5"></a>

## bits

bg summarizes fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways
