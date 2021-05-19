- [meeting notes May 16, 2021](#org052cc41)
  - [agenda stuff](#org20673e3)
    - [writing grep variants](#orgbf15221)
    - [raku classes as data containers](#orge85f8b9)
    - [bruce gray rosettacode entries](#org7ebf7ce)
    - [argument passing signatures](#org7b6319d)
    - [super flat](#org3443ba8)
    - [type system: what is accepted by what](#orgd480ab1)
    - [david christensen talked about a few debian sysadmin issues](#org9f6ee57)
    - [higher-order programming as a substitute for macros (perl5)  (david christensen)](#org4128956)
    - [william michels asks about one-liners to strip "soft hypens"](#orgd5cadcf)
    - [bill found them in this page, notably written by hyphenation nerds:](#orgf10e563)
    - [William Michels : Q. Should Raku create pre-defined (so-called) "Grey-space" character classes?](#org48802cc)
    - [bruce gray supplies some requested one-liners:](#org8a39c3b)
    - [he also makes the point you can do a chained operation to strip whitespace as well](#orgd814faa)
    - [raku also lets you define custom character classes extending pre-defined ones](#org5110861)
  - [ongoing](#orgf1b1d10)
    - [programming in the large (david christensen)](#orgd7ec59e)
    - [raku idioms](#org23b7b58)
  - [appendix: the usual links](#org5c019f0)
    - [code examples](#org69b80f3)
    - [meeting notes (material from this file)](#org2347b2c)
    - [SF Perl page, has links to mailing list](#org0a7c14d)
    - [perl6-users mailing list archive](#org8a04302)
  - [bits](#orga83d901)
    - [bg summarizes](#org59fea34)
    - [announced: going to skip next sunday, thinking about going with every-other week format](#org0e943ce)
    - [perl5 cpan module  Filesys::ZFS, david christensen says "not complete"](#org68ea4e4)
    - [there's a raku documentation mailing list, created by lizmat](#org33113ea)


<a id="org052cc41"></a>

# meeting notes May 16, 2021


<a id="org20673e3"></a>

## agenda stuff


<a id="orgbf15221"></a>

### writing grep variants

1.  my first attempt: /home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="orge85f8b9"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="org7ebf7ce"></a>

### bruce gray rosettacode entries

1.  <http://rosettacode.org/wiki/Barnsley_fern#Raku>

2.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

3.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org7b6319d"></a>

### argument passing signatures

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org3443ba8"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"


<a id="orgd480ab1"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org9f6ee57"></a>

### david christensen talked about a few debian sysadmin issues

1.  summary: debian 10.9 is mature enough to deal with all display hardware,

    including nvidia optimus
    
    1.  bruce gray recommends "bumblebee" to deal with nvidia optimus
    
        <https://wiki.debian.org/Bumblebee>

2.  rough notes from david's piece:

    dell two slots 4gb, certain dells have quiet motherboard upgrades, two 8gb, 16gb, dual channel memory. good for virtualization. SSD sata drive bay (sata two or three?) nvidia optimus (two graphics spliced together) debian version 7 wouldn't boot, video issues. eventually fixed. put win7 pro on it for awhile, support yanked 1.5 new used laptop win10 debian 10 was n.g. same video problem debian 9 needed some point revisions to get there interested in debian 10, may have it fixed (Note: I've got debian 10.9 slated to install). intel model 520 ssds enterprise desktop drive, sata 3, self-encrypting (?), on linux uses dm-crypt for swap, nbr partitioning, not gpt. 1gig unencrypted boot partition. overprovisioning, a couple of different devices&#x2013; image on usb flash drive.
    
    samsung gb ssd performed better than usb drives, dram cache burn up a sata slot.


<a id="org4128956"></a>

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


<a id="orgd5cadcf"></a>

### william michels asks about one-liners to strip "soft hypens"

1.  none of us had ever **seen** a soft hyphen before:

    \## 00AD;SOFT HYPHEN;Cf;0;BN;;;;;N;;;;;

2.  what they do makes some sense:

    they mark a point in a word where it's okay to hyphenate, but when there's no need to hyphenate, they become invisible zero-width markers


<a id="orgf10e563"></a>

### bill found them in this page, notably written by hyphenation nerds:

<https://practicaltypography.com/hyphenation.html>

1.  example

    Hy­phen­ation is the au­to­mated process of break­ing words be­tween lines to cre­ate more con­sis­tency across a text block.


<a id="org48802cc"></a>

### William Michels : Q. Should Raku create pre-defined (so-called) "Grey-space" character classes?


<a id="org8a39c3b"></a>

### bruce gray supplies some requested one-liners:

1.  raku -e 'say .trans("\c[SOFT HYPHEN]" => "") for lines()'

2.  raku -e 'say .trans("\c[SOFT HYPHEN]" => "").chars for lines();'


<a id="orgd814faa"></a>

### he also makes the point you can do a chained operation to strip whitespace as well

1.  raku -e 'say .trans("\c[SOFT HYPHEN]" => "").trans("\s" => "").chars for lines();'


<a id="org5110861"></a>

### raku also lets you define custom character classes extending pre-defined ones

```perl6
# strip soft hyphens (U+00AD) as well as whitespace (\s)
$text_no_gs ~~ s:g/<[\s\x[00ad]]>//;
```


<a id="orgf1b1d10"></a>

## ongoing


<a id="orgd7ec59e"></a>

### programming in the large (david christensen)

1.  larger applications

2.  raku die handlers


<a id="org23b7b58"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="org5c019f0"></a>

## appendix: the usual links


<a id="org69b80f3"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="org2347b2c"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="org0a7c14d"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org8a04302"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orga83d901"></a>

## bits


<a id="org59fea34"></a>

### bg summarizes

fosdem codesection langs for opensource corporate backed typescript go java raku optimized in other ways


<a id="org0e943ce"></a>

### announced: going to skip next sunday, thinking about going with every-other week format

suggestion: have someone else host perl5 meetings on the off-weeks. david christensen is interested.


<a id="org68ea4e4"></a>

### perl5 cpan module  Filesys::ZFS, david christensen says "not complete"


<a id="org33113ea"></a>

### there's a raku documentation mailing list, created by lizmat

1.  Richard Hainsworth : documentation@raku.org

2.  don't know how to subscribe, or if it's archived somewhere

    <https://github.com/Raku/Raku-Steering-Council/blob/main/announcements/20200720.md>
