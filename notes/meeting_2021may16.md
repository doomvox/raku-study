- [meeting notes May 16, 2021](#org5590eeb)
  - [agenda stuff](#org92b3f3d)
    - [writing grep variants](#org302df75)
    - [raku classes as data containers](#org767fff4)
    - [bruce gray rosettacode entries](#org3c36ccd)
    - [argument passing signatures](#org1ad98de)
    - [super flat](#org3fcd6c0)
    - [type system: what is accepted by what](#orgacb2d1e)
    - [david christensen talked about a few debian sysadmin issues](#orgf024b0c)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#orgd29298b)
    - [bill one-liner attempt, removing soft hyphens](#org4708ee3)
  - [ongoing](#orga59ef74)
    - [programming in the large (david christensen)](#orge3d4255)
    - [raku idioms](#org9cc96d2)
  - [appendix: the usual links](#orgc14ab29)
    - [code examples](#orgcae69f9)
    - [meeting notes (material from this file)](#orgb17e417)
    - [SF Perl page, has links to mailing list](#org00e986a)
    - [perl6-users mailing list archive](#org8f4fff7)
  - [bits](#org3ea1244)
    - [bg summarizes](#org4b1031d)
    - [announced: going to skip next sunday, thinking about going with every-other week format](#org3eea3a9)
    - [perl5 cpan module  Filesys::ZFS, david christensen says "not complete"](#orgfe6b170)


<a id="org5590eeb"></a>

# meeting notes May 16, 2021


<a id="org92b3f3d"></a>

## agenda stuff


<a id="org302df75"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="org767fff4"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="org3c36ccd"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org1ad98de"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org3fcd6c0"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="orgacb2d1e"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgf024b0c"></a>

### david christensen talked about a few debian sysadmin issues

1.  summary: debian 10.9 is mature enough to deal with all display hardware,

    including nvidia optimus
    
    1.  bruce gray recommends "bumblebee" to deal with nvidia optimus
    
        <https://wiki.debian.org/Bumblebee>

2.  rough notes from david's piece:

    dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. same video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (Note: I've got debian 10.9 slated to install). intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition. overprovisioning, a couple of different devices&#x2013; image on usb flash drive.
    
    samsung gb ssd performed better than usb drives, dram cache burn up a sata slot.


<a id="orgd29298b"></a>

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
        
            1.  david's is certainly tighter, and is very consistent
            
            2.  mine does fewer sub calls&#x2013; probably performs better
            
            3.  returns and expanded set of string codes like the built-in "ref"
            
                1.  need to do string comparisons later might seem inelegant


<a id="org4708ee3"></a>

### bill one-liner attempt, removing soft hyphens

<https://practicaltypography.com/hyphenation.html> \\## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;


<a id="orga59ef74"></a>

## ongoing


<a id="orge3d4255"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="org9cc96d2"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="orgc14ab29"></a>

## appendix: the usual links


<a id="orgcae69f9"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="orgb17e417"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="org00e986a"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org8f4fff7"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org3ea1244"></a>

## bits


<a id="org4b1031d"></a>

### bg summarizes

fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways


<a id="org3eea3a9"></a>

### announced: going to skip next sunday, thinking about going with every-other week format

suggestion: have someone else host perl5 meetings on the off-weeks. david christensen is interested.


<a id="orgfe6b170"></a>

### perl5 cpan module  Filesys::ZFS, david christensen says "not complete"
