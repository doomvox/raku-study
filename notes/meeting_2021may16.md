- [meeting notes May 16, 2021](#org105b4f7)
  - [agenda stuff](#org9cb3efc)
    - [writing grep variants](#org042fbf0)
    - [raku classes as data containers](#orgcd56756)
    - [bruce gray rosettacode entries](#orgd7c9d78)
    - [argument passing signatures](#org42cf23e)
    - [super flat](#org019167b)
    - [type system: what is accepted by what](#org41a4db5)
    - [david christensen talked about a few debian sysadmin issues](#orgb86fe3f)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#org142a65c)
    - [bill one-liner attempt, removing soft hyphens](#orgb3b7d85)
  - [ongoing](#org98cc63d)
    - [programming in the large (david christensen)](#org4dc4bc5)
    - [raku idioms](#org380b8ee)
  - [appendix: the usual links](#org5b6aee4)
    - [code examples](#orgf94c567)
    - [meeting notes (material from this file)](#org4533f94)
    - [SF Perl page, has links to mailing list](#orgdaab8e2)
    - [perl6-users mailing list archive](#org7cf7174)
  - [bits](#org2812dd9)
    - [bg summarizes](#org898d271)
    - [announced: going to skip next sunday, thinking about going with every-other week format](#orgbc9678b)
    - [perl5 cpan module  Filesys::ZFS, david christensen says "not complete"](#org2d8d320)


<a id="org105b4f7"></a>

# meeting notes May 16, 2021


<a id="org9cb3efc"></a>

## agenda stuff


<a id="org042fbf0"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="orgcd56756"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="orgd7c9d78"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org42cf23e"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org019167b"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="org41a4db5"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgb86fe3f"></a>

### david christensen talked about a few debian sysadmin issues

1.  summary: debian 10.9 is mature enough to deal with all display hardware,

    including nvidia optimus
    
    1.  bruce gray recommends "bumblebee" to deal with nvidia optimus
    
        <https://wiki.debian.org/Bumblebee>

2.  rough notes from david's piece:

    dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. same video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (Note: I've got debian 10.9 slated to install). intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition. overprovisioning, a couple of different devices&#x2013; image on usb flash drive.
    
    samsung gb ssd performed better than usb drives, dram cache burn up a sata slot.


<a id="org142a65c"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)

As a demo of functional programming, david christensen showed us his code for generating type validation predicate functions ("is<sub>string</sub>", etc).

1.  other ways of handling the problem

2.  bruce gray suggests Params::Util

    1.  <https://metacpan.org/pod/Params::Util>

3.  there are a number of cpan modules to do parameter validation, e.g

    1.  <https://metacpan.org/pod/Type::Tiny#Predicate-methods>
    
    2.  <https://metacpan.org/pod/Params::ValidationCompiler>

4.  a package I wrote that does something similar

    1.  <https://metacpan.org/pod/Scalar::Classify>
    
        1.  comparing david's code to mine:
        
            1.  david's is certainly tighter
            
            2.  mine does fewer sub calls&#x2013; probably performs better
            
            3.  returns and expanded set of string codes like the built-in "ref"
            
                1.  need to do string comparisons later might seem inelegant


<a id="orgb3b7d85"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="org98cc63d"></a>

## ongoing


<a id="org4dc4bc5"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="org380b8ee"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="org5b6aee4"></a>

## appendix: the usual links


<a id="orgf94c567"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="org4533f94"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="orgdaab8e2"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org7cf7174"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org2812dd9"></a>

## bits


<a id="org898d271"></a>

### bg summarizes

fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways


<a id="orgbc9678b"></a>

### announced: going to skip next sunday, thinking about going with every-other week format

suggestion: have someone else host perl5 meetings on the off-weeks. david christensen is interested.


<a id="org2d8d320"></a>

### perl5 cpan module  Filesys::ZFS, david christensen says "not complete"
