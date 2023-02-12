- [meeting notes February 12, 2023](#orgb6d1147)
  - [the raku study group](#orgf5a3bf7)
  - [topics](#org896f1dc)
    - [Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"](#org2b9c45b)
    - [Issue 4435: "deepmap can mangle hash structures rather than just modify values"](#org7ee0b08)
    - [topic variables question](#orgd49959d)
    - [bruce gray on SEND + MORE = MONEY](#org443c9f0)
    - [marton: some rakudo dev thoughts](#org0693c15)
    - [the ever popular weekly challenge](#org0dd1b9d)
    - [being a better raku citizen](#org39e0e3f)
    - [jj merelo raku recipies code examples](#orgbd34276)
  - [announcements](#orgb4ac38c)
    - [next meeting: February 26th](#org1222771)


<a id="orgb6d1147"></a>

# meeting notes February 12, 2023


<a id="orgf5a3bf7"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2023feb12.md>
        
        2.  source file (for corrections, etc)
        
            1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2023feb12.org>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2023feb12>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan29.md>


<a id="org896f1dc"></a>

## topics


<a id="org2b9c45b"></a>

### Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"

1.  <https://github.com/rakudo/rakudo/issues/4207>

2.  This has been working for a while with recent builds.  About time I closed it.

3.  Used my "darkroast" repository to add a test file for this:

    1.  <https://github.com/doomvox/darkroast/blob/main/S12-introspection/method_object_gists.t>
    
    2.  bruce gray suggests looking into adding tests to roast


<a id="org7ee0b08"></a>

### Issue 4435: "deepmap can mangle hash structures rather than just modify values"

1.  <https://github.com/rakudo/rakudo/issues/4435>

2.  Existing roast test for deepmap:

    1.  <https://github.com/Raku/roast/blob/master/S32-list/deepmap.t>
    
    2.  locally: /home/doom/End/Cave/Raku/Wall/roast/S32-list/deepmap.t
    
        1.  interesting bit ("gfldex++" is someone's handle)
        
            ```raku
            # regression spotted by gfldex++
            `is <a b c>.deepmap({ next if $_ eq "b"; $_ }), "a c", 'did next work';
            is <a b c>.nodemap({ next if $_ eq "b"; $_ }), "a c", 'did next work';
            ```
        
        2.  Note: explicitly passes through "$\_".
        
            1.  if this is understood to be a requirement, the docs should say so

3.  Adding some darkroast tests (needs work):

    1.  <https://github.com/doomvox/darkroast/blob/main/S32-list/deepmap_array_of_hashes.t>
    
    2.  locally: /home/doom/End/Cave/Raku/Wall/darkroast/S32-list/deepmap<sub>array</sub><sub>of</sub><sub>hashes.t</sub>


<a id="orgd49959d"></a>

### topic variables question


<a id="org443c9f0"></a>

### bruce gray on SEND + MORE = MONEY

1.  <https://mindyourdecisions.com/blog/2018/09/06/send-more-money-a-great-puzzle/>

2.  <https://rosettacode.org/wiki/SEND_%2B_MORE_%3D_MONEY#Raku>


<a id="org0693c15"></a>

### marton: some rakudo dev thoughts

1.  work on a bug

2.  raku ast


<a id="org0dd1b9d"></a>

### the ever popular weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-201/>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-202/>


<a id="org39e0e3f"></a>

### being a better raku citizen

1.  lizmat reminds she needs advance notice of meeting schedule for

2.  do we need a joint events calendar?

3.  irc

4.  vadim class

5.  marton meetings on docs

    1.  first one was **yesterday**
    
    2.  squashathon
    
        1.  <https://github.com/2colours/Raku-ideas/blob/main/Squashathon%20reborn.md>


<a id="orgbd34276"></a>

### jj merelo raku recipies code examples

1.  <https://github.com/Apress/raku-recipes>


<a id="orgb4ac38c"></a>

## announcements


<a id="org1222771"></a>

### next meeting: February 26th
