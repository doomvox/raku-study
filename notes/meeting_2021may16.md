- [meeting notes May 16, 2021](#orgc050e70)
  - [agenda stuff](#org9d210dd)
    - [writing grep variants](#orgfdadea9)
    - [raku classes as data containers](#orgf95403a)
    - [bruce gray rosettacode entries](#orgeb7101b)
    - [argument passing signatures](#org99b539f)
    - [super flat](#org04c27c2)
    - [type system: what is accepted by what](#orgf99e29d)
    - [debian sysadmin issue (david christensen)](#org2918522)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#org65259c3)
    - [bill one-liner attempt, removing soft hyphens](#orgd78d072)
  - [ongoing](#orgd91fc45)
    - [programming in the large (david christensen)](#orge8b64be)
    - [raku idioms](#orgf1e0fae)
  - [appendix: the usual links](#orge58c588)
    - [code examples](#orgdf08943)
    - [meeting notes (material from this file)](#org62e3ebe)
    - [SF Perl page, has links to mailing list](#orgc6464d9)
    - [perl6-users mailing list archive](#org2b87e6b)
  - [bits](#org4b807eb)


<a id="orgc050e70"></a>

# meeting notes May 16, 2021


<a id="org9d210dd"></a>

## agenda stuff


<a id="orgfdadea9"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="orgf95403a"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="orgeb7101b"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org99b539f"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org04c27c2"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="orgf99e29d"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org2918522"></a>

### debian sysadmin issue (david christensen)

dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?)


<a id="org65259c3"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)


<a id="orgd78d072"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="orgd91fc45"></a>

## ongoing


<a id="orge8b64be"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="orgf1e0fae"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="orge58c588"></a>

## appendix: the usual links


<a id="orgdf08943"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="org62e3ebe"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="orgc6464d9"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org2b87e6b"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org4b807eb"></a>

## bits

bg summarizes fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways
