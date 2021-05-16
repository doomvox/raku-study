- [meeting notes May 16, 2021](#orgb53bce3)
  - [agenda stuff](#orgeaf742d)
    - [writing grep variants](#org3bbeff9)
    - [raku classes as data containers](#org5a9095e)
    - [bruce gray rosettacode entries](#org3fc4636)
    - [argument passing signatures](#org0113cbc)
    - [super flat](#orge57fd4b)
    - [type system: what is accepted by what](#org77eacdc)
    - [debian sysadmin issue (david christensen)](#orgc266e38)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#org0000da5)
    - [bill one-liner attempt, removing soft hyphens](#orgeaa076b)
  - [ongoing](#org80e1f2a)
    - [programming in the large (david christensen)](#org46f187a)
    - [raku idioms](#org15e1199)
  - [appendix: the usual links](#org194b5f8)
    - [code examples](#orgfdc7cfd)
    - [meeting notes (material from this file)](#org80deeae)
    - [SF Perl page, has links to mailing list](#orgd911674)
    - [perl6-users mailing list archive](#org49ca9d3)
  - [bits](#org3d4ae52)


<a id="orgb53bce3"></a>

# meeting notes May 16, 2021


<a id="orgeaf742d"></a>

## agenda stuff


<a id="org3bbeff9"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="org5a9095e"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="org3fc4636"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org0113cbc"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orge57fd4b"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="org77eacdc"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgc266e38"></a>

### debian sysadmin issue (david christensen)

dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed.


<a id="org0000da5"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)


<a id="orgeaa076b"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="org80e1f2a"></a>

## ongoing


<a id="org46f187a"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="org15e1199"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="org194b5f8"></a>

## appendix: the usual links


<a id="orgfdc7cfd"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="org80deeae"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="orgd911674"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org49ca9d3"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org3d4ae52"></a>

## bits

bg summarizes fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways
