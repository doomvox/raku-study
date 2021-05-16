- [meeting notes May 16, 2021](#org006d7ce)
  - [agenda stuff](#org0d56aef)
    - [writing grep variants](#orgde7fd9c)
    - [raku classes as data containers](#org5817e6a)
    - [bruce gray rosettacode entries](#org70390fa)
    - [argument passing signatures](#org6b09ae7)
    - [super flat](#org9816706)
    - [type system: what is accepted by what](#org5eef035)
    - [debian sysadmin issue (david christensen)](#orgbb9cf6c)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#orgc5fdd6b)
    - [bill one-liner attempt, removing soft hyphens](#orgc832d45)
  - [ongoing](#org56fad1d)
    - [programming in the large (david christensen)](#org646e079)
    - [raku idioms](#org053930e)
  - [appendix: the usual links](#orgeeffe56)
    - [code examples](#org7dcb17b)
    - [meeting notes (material from this file)](#org573b212)
    - [SF Perl page, has links to mailing list](#org0362ee2)
    - [perl6-users mailing list archive](#org708c723)
  - [bits](#orgf666534)


<a id="org006d7ce"></a>

# meeting notes May 16, 2021


<a id="org0d56aef"></a>

## agenda stuff


<a id="orgde7fd9c"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="org5817e6a"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="org70390fa"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org6b09ae7"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org9816706"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="org5eef035"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgbb9cf6c"></a>

### debian sysadmin issue (david christensen)

dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. sam video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (I'm planning on 10.9). bg: bumblebee? david: no. <https://wiki.debian.org/Bumblebee> intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition. overprovisioning


<a id="orgc5fdd6b"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)


<a id="orgc832d45"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="org56fad1d"></a>

## ongoing


<a id="org646e079"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="org053930e"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="orgeeffe56"></a>

## appendix: the usual links


<a id="org7dcb17b"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="org573b212"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="org0362ee2"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org708c723"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgf666534"></a>

## bits

bg summarizes fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways
