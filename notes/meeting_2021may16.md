- [meeting notes May 16, 2021](#orgae24ced)
  - [agenda stuff](#orgf38cabe)
    - [writing grep variants](#org05657bc)
    - [raku classes as data containers](#org1fc6c0f)
    - [bruce gray rosettacode entries](#org158f189)
    - [argument passing signatures](#org6c345e4)
    - [super flat](#org4236c74)
    - [type system: what is accepted by what](#orgc91f48a)
    - [david christensen talked about a few debian sysadmin issues](#org7289b9b)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#orgb24d5a1)
    - [William Michels asks about one-lines to strip "soft hypens"](#org2086cc7)
    - [bill found them in this page, notably written by hyphenation nerds:](#orgcd55c10)
  - [ongoing](#org3b37f81)
    - [programming in the large (david christensen)](#org9a248f5)
    - [raku idioms](#orgdba57f7)
  - [appendix: the usual links](#org840e313)
    - [code examples](#orgdacab2b)
    - [meeting notes (material from this file)](#orgd5d1c18)
    - [SF Perl page, has links to mailing list](#org37d9de0)
    - [perl6-users mailing list archive](#orga846f86)
  - [bits](#orgc0bd9cd)
    - [bg summarizes](#org171d311)
    - [announced: going to skip next sunday, thinking about going with every-other week format](#orgd345137)
    - [perl5 cpan module  Filesys::ZFS, david christensen says "not complete"](#org3ff357e)


<a id="orgae24ced"></a>

# meeting notes May 16, 2021


<a id="orgf38cabe"></a>

## agenda stuff


<a id="org05657bc"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="org1fc6c0f"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="org158f189"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org6c345e4"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org4236c74"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="orgc91f48a"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org7289b9b"></a>

### david christensen talked about a few debian sysadmin issues

1.  summary: debian 10.9 is mature enough to deal with all display hardware,

    including nvidia optimus
    
    1.  bruce gray recommends "bumblebee" to deal with nvidia optimus
    
        <https://wiki.debian.org/Bumblebee>

2.  rough notes from david's piece:

    dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. same video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (Note: I've got debian 10.9 slated to install). intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition. overprovisioning, a couple of different devices&#x2013; image on usb flash drive.
    
    samsung gb ssd performed better than usb drives, dram cache burn up a sata slot.


<a id="orgb24d5a1"></a>

### higher-order programming as a substitute for macros (perl5)  (david christensen)

As a demo of functional programming, david christensen showed us his code for generating type validation predicate functions ("is<sub>string</sub>", etc).

1.  other approaches

    1.  bruce gray suggests Params::Util
    
    2.  <https://metacpan.org/pod/Params::Util>
    
    3.  there are a number of cpan modules to do parameter validation, e.g
    
        1.  <https://metacpan.org/pod/Type::Tiny#Predicate-methods>
        
        2.  <https://metacpan.org/pod/Params::ValidationCompiler>
    
    4.  a package I wrote that does something similar
    
        1.  <https://metacpan.org/pod/Scalar::Classify>
        
            1.  comparing david's code to mine:
            
                1.  david's is certainly tighter, and is very consistent
                
                2.  mine does fewer sub calls&#x2013; probably performs better
                
                3.  mine returns an expanded set of string codes like the built-in "ref"
                
                    1.  need to do string comparisons later might seem inelegant


<a id="org2086cc7"></a>

### William Michels asks about one-lines to strip "soft hypens"

1.  none of us had ever **seen** a soft hyphen before:

    \## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;

2.  what they do makes some sense:

    they mark a point in a word where it's okay to hyphenate, but when there's no need to hyphenate, they become invisible zero-width markers


<a id="orgcd55c10"></a>

### bill found them in this page, notably written by hyphenation nerds:

<https://practicaltypography.com/hyphenation.html>


<a id="org3b37f81"></a>

## ongoing


<a id="org9a248f5"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="orgdba57f7"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="org840e313"></a>

## appendix: the usual links


<a id="orgdacab2b"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="orgd5d1c18"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="org37d9de0"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orga846f86"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgc0bd9cd"></a>

## bits


<a id="org171d311"></a>

### bg summarizes

fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways


<a id="orgd345137"></a>

### announced: going to skip next sunday, thinking about going with every-other week format

suggestion: have someone else host perl5 meetings on the off-weeks. david christensen is interested.


<a id="org3ff357e"></a>

### perl5 cpan module  Filesys::ZFS, david christensen says "not complete"
