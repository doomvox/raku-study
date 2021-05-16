- [meeting notes May 16, 2021](#orgc0277ae)
  - [agenda stuff](#org2d32422)
    - [writing grep variants](#orgb65634b)
    - [raku classes as data containers](#org9c8b83c)
    - [bruce gray rosettacode entries](#org429ef6d)
    - [argument passing signatures](#org377eaeb)
    - [super flat](#org57ddc6b)
    - [type system: what is accepted by what](#orgbfad538)
    - [debian sysadmin issue (david christensen)](#orge07f5a3)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#orgf1af89d)
    - [bill one-liner attempt, removing soft hyphens](#org6bf6391)
  - [ongoing](#org3a080d7)
    - [programming in the large (david christensen)](#org398bb73)
    - [raku idioms](#orgb7173cb)
  - [appendix: the usual links](#org2700ee0)
    - [code examples](#orgf750041)
    - [meeting notes (material from this file)](#orga79c609)
    - [SF Perl page, has links to mailing list](#org9793bc6)
    - [perl6-users mailing list archive](#org81977db)
  - [bits](#org0feaa04)


<a id="orgc0277ae"></a>

# meeting notes May 16, 2021


<a id="org2d32422"></a>

## agenda stuff


<a id="orgb65634b"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="org9c8b83c"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="org429ef6d"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org377eaeb"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org57ddc6b"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="orgbfad538"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orge07f5a3"></a>

### debian sysadmin issue (david christensen)

dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. sam video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (I'm planning on 10.9). bg: bumblebee? david: no. <https://wiki.debian.org/Bumblebee> intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition. overprovisioning, a couple of different devices&#x2013; image on usb flash drive.

samsung gb ssd performed better than usb drives, dram cache burn up a sata slot.

seperate version control server can help.


<a id="orgf1af89d"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)

predicate functions, "is<sub>string</sub>" etc.


<a id="org6bf6391"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="org3a080d7"></a>

## ongoing


<a id="org398bb73"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="orgb7173cb"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="org2700ee0"></a>

## appendix: the usual links


<a id="orgf750041"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="orga79c609"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="org9793bc6"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org81977db"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org0feaa04"></a>

## bits

bg summarizes fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways
