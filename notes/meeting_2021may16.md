- [meeting notes May 16, 2021](#org9201e93)
  - [agenda stuff](#org8fde5e7)
    - [writing grep variants](#org54f5281)
    - [raku classes as data containers](#orgcb9a9ea)
    - [bruce gray rosettacode entries](#orge0dd9a8)
    - [argument passing signatures](#org47b0f89)
    - [super flat](#org2012ba6)
    - [type system: what is accepted by what](#org293d2ac)
    - [debian sysadmin issue (david christensen)](#org75e147d)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#orgabdf753)
    - [bill one-liner attempt, removing soft hyphens](#orge33b1e7)
  - [ongoing](#org8d8f1c7)
    - [programming in the large (david christensen)](#orgb86953d)
    - [raku idioms](#org5df9199)
  - [appendix: the usual links](#orga963528)
    - [code examples](#org21d3968)
    - [meeting notes (material from this file)](#org229a7ce)
    - [SF Perl page, has links to mailing list](#orgd614ba2)
    - [perl6-users mailing list archive](#orgf7c770b)
  - [bits](#org64dd402)


<a id="org9201e93"></a>

# meeting notes May 16, 2021


<a id="org8fde5e7"></a>

## agenda stuff


<a id="org54f5281"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="orgcb9a9ea"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="orge0dd9a8"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org47b0f89"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org2012ba6"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="org293d2ac"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org75e147d"></a>

### debian sysadmin issue (david christensen)

dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. sam video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (I'm planning on 10.9). bg: bumblebee? david: no. <https://wiki.debian.org/Bumblebee> intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses em-crypt for swap, nbr partitioning, not gpt.


<a id="orgabdf753"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)


<a id="orge33b1e7"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="org8d8f1c7"></a>

## ongoing


<a id="orgb86953d"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="org5df9199"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="orga963528"></a>

## appendix: the usual links


<a id="org21d3968"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="org229a7ce"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="orgd614ba2"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orgf7c770b"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org64dd402"></a>

## bits

bg summarizes fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways
