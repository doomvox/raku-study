- [meeting notes May 16, 2021](#orgf560308)
  - [agenda stuff](#orgd6b051d)
    - [writing grep variants](#org38f6943)
    - [raku classes as data containers](#org4ad1242)
    - [bruce gray rosettacode entries](#org3089db2)
    - [argument passing signatures](#org5c99200)
    - [super flat](#orgaaed284)
    - [type system: what is accepted by what](#org47c3e0f)
    - [debian sysadmin issue (david christensen)](#org393666a)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#orgcacde30)
    - [bill one-liner attempt, removing soft hyphens](#org7c4cdcc)
  - [ongoing](#org1152d40)
    - [programming in the large (david christensen)](#org00579b3)
    - [raku idioms](#orgc58a631)
  - [appendix: the usual links](#orgc6d92cb)
    - [code examples](#orgbc12cc7)
    - [meeting notes (material from this file)](#orga6e68d4)
    - [SF Perl page, has links to mailing list](#org6e80f86)
    - [perl6-users mailing list archive](#org05bf5fa)
  - [bits](#orgf5568a7)


<a id="orgf560308"></a>

# meeting notes May 16, 2021


<a id="orgd6b051d"></a>

## agenda stuff


<a id="org38f6943"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="org4ad1242"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="org3089db2"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org5c99200"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgaaed284"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="org47c3e0f"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org393666a"></a>

### debian sysadmin issue (david christensen)

dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. sam video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (I'm planning on 10.9).


<a id="orgcacde30"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)


<a id="org7c4cdcc"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="org1152d40"></a>

## ongoing


<a id="org00579b3"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="orgc58a631"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="orgc6d92cb"></a>

## appendix: the usual links


<a id="orgbc12cc7"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="orga6e68d4"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="org6e80f86"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org05bf5fa"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgf5568a7"></a>

## bits

bg summarizes fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways
