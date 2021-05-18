- [meeting notes May 16, 2021](#org185be94)
  - [agenda stuff](#org94e52ed)
    - [writing grep variants](#org004c946)
    - [raku classes as data containers](#orgdd60d55)
    - [bruce gray rosettacode entries](#org24b3925)
    - [argument passing signatures](#org5148d27)
    - [super flat](#orgedf479b)
    - [type system: what is accepted by what](#org41b6c15)
    - [david christensen talked about a few debian sysadmin issues](#org2fc6d73)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#orgc259ccd)
    - [bill michaels asks about one-lines to strip "soft hypens"](#org977f467)
    - [bill found them in this page, notably written by hyphenation nerds:](#org2e45382)
  - [ongoing](#orgc0dac94)
    - [programming in the large (david christensen)](#orgad381f3)
    - [raku idioms](#org75ae305)
  - [appendix: the usual links](#orgcb2124d)
    - [code examples](#orgd9c7c62)
    - [meeting notes (material from this file)](#org69dc28c)
    - [SF Perl page, has links to mailing list](#org05f5134)
    - [perl6-users mailing list archive](#orgc199091)
  - [bits](#org1e0abc1)
    - [bg summarizes](#orge7439c8)
    - [announced: going to skip next sunday, thinking about going with every-other week format](#org8691d5f)
    - [perl5 cpan module  Filesys::ZFS, david christensen says "not complete"](#org162c7e7)


<a id="org185be94"></a>

# meeting notes May 16, 2021


<a id="org94e52ed"></a>

## agenda stuff


<a id="org004c946"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="orgdd60d55"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="org24b3925"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org5148d27"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgedf479b"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="org41b6c15"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org2fc6d73"></a>

### david christensen talked about a few debian sysadmin issues

1.  summary: debian 10.9 is mature enough to deal with all display hardware,

    including nvidia optimus
    
    1.  bruce gray recommends "bumblebee" to deal with nvidia optimus
    
        <https://wiki.debian.org/Bumblebee>

2.  rough notes from david's piece:

    dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. same video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (Note: I've got debian 10.9 slated to install). intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition. overprovisioning, a couple of different devices&#x2013; image on usb flash drive.
    
    samsung gb ssd performed better than usb drives, dram cache burn up a sata slot.


<a id="orgc259ccd"></a>

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


<a id="org977f467"></a>

### bill michaels asks about one-lines to strip "soft hypens"

1.  none of us had ever **seen** a soft hyphen before:

    \## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;

2.  what they do makes some sense:

    they mark a point in a word where it's okay to hyphenate, but when there's no need to hyphenate, they become invisible zero-width markers


<a id="org2e45382"></a>

### bill found them in this page, notably written by hyphenation nerds:

<https://practicaltypography.com/hyphenation.html>


<a id="orgc0dac94"></a>

## ongoing


<a id="orgad381f3"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="org75ae305"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="orgcb2124d"></a>

## appendix: the usual links


<a id="orgd9c7c62"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="org69dc28c"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="org05f5134"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orgc199091"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org1e0abc1"></a>

## bits


<a id="orge7439c8"></a>

### bg summarizes

fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways


<a id="org8691d5f"></a>

### announced: going to skip next sunday, thinking about going with every-other week format

suggestion: have someone else host perl5 meetings on the off-weeks. david christensen is interested.


<a id="org162c7e7"></a>

### perl5 cpan module  Filesys::ZFS, david christensen says "not complete"
