- [meeting notes May 16, 2021](#orgf4ce30e)
  - [agenda stuff](#org9806995)
    - [writing grep variants](#orga83abe5)
    - [raku classes as data containers](#orgebe5981)
    - [bruce gray rosettacode entries](#org1ba4f06)
    - [argument passing signatures](#org6529646)
    - [super flat](#org783774c)
    - [type system: what is accepted by what](#orge3ac98b)
    - [debian sysadmin issue (david christensen)](#org26cdd03)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#org6131c54)
    - [bill one-liner attempt, removing soft hyphens](#org809a47f)
  - [ongoing](#orge129c4f)
    - [programming in the large (david christensen)](#orgea02e8f)
    - [raku idioms](#org61e1d67)
  - [appendix: the usual links](#orgac03a2d)
    - [code examples](#org2d49ad8)
    - [meeting notes (material from this file)](#org580a244)
    - [SF Perl page, has links to mailing list](#org0a0c546)
    - [perl6-users mailing list archive](#org8ca6a11)
  - [bits](#org14e5d04)


<a id="orgf4ce30e"></a>

# meeting notes May 16, 2021


<a id="org9806995"></a>

## agenda stuff


<a id="orga83abe5"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="orgebe5981"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="org1ba4f06"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org6529646"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org783774c"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="orge3ac98b"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org26cdd03"></a>

### debian sysadmin issue (david christensen)

dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. sam video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (I'm planning on 10.9). bg: bumblebee? david: no.


<a id="org6131c54"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)


<a id="org809a47f"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="orge129c4f"></a>

## ongoing


<a id="orgea02e8f"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="org61e1d67"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="orgac03a2d"></a>

## appendix: the usual links


<a id="org2d49ad8"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="org580a244"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="org0a0c546"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org8ca6a11"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org14e5d04"></a>

## bits

bg summarizes fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways
