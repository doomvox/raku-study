- [meeting notes May 16, 2021](#org4974b18)
  - [agenda stuff](#org6356245)
    - [writing grep variants](#org18fb0a4)
    - [raku classes as data containers](#orgf453161)
    - [bruce gray rosettacode entries](#org14696ba)
    - [argument passing signatures](#orga977fe9)
    - [super flat](#orgae86c0d)
    - [type system: what is accepted by what](#orge006dfd)
    - [debian sysadmin issue (david christensen)](#orgc6162f7)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#orgc441246)
    - [bill one-liner attempt, removing soft hyphens](#orga9190c4)
  - [ongoing](#org12bbf3c)
    - [programming in the large (david christensen)](#orgf1cd8d7)
    - [raku idioms](#org5c4eaba)
  - [appendix: the usual links](#org09ac3ac)
    - [code examples](#orgce2b595)
    - [meeting notes (material from this file)](#org57593ee)
    - [SF Perl page, has links to mailing list](#org86dfa5d)
    - [perl6-users mailing list archive](#orgcb1f5c2)
  - [bits](#org80077be)


<a id="org4974b18"></a>

# meeting notes May 16, 2021


<a id="org6356245"></a>

## agenda stuff


<a id="org18fb0a4"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="orgf453161"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="org14696ba"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orga977fe9"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgae86c0d"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="orge006dfd"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgc6162f7"></a>

### debian sysadmin issue (david christensen)

dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. sam video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (I'm planning on 10.9). bg: bumblebee? david: no. <https://wiki.debian.org/Bumblebee> intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses em-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition.


<a id="orgc441246"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)


<a id="orga9190c4"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="org12bbf3c"></a>

## ongoing


<a id="orgf1cd8d7"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="org5c4eaba"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="org09ac3ac"></a>

## appendix: the usual links


<a id="orgce2b595"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="org57593ee"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="org86dfa5d"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orgcb1f5c2"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org80077be"></a>

## bits

bg summarizes fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways
