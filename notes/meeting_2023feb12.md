- [meeting notes February 12, 2023](#org72bb5bd)
  - [the raku study group](#orga41bc1d)
  - [topics](#orga90694f)
    - [Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"](#org2830ab1)
    - [Issue 4435: "deepmap can mangle hash structures rather than just modify values"](#org16bfdc8)
    - [bruce gray issue from rosetta code](#org7a8beed)
    - [topic variables question](#orgc46cf82)
    - [marton: some rakudo dev thoughts](#org2828ab9)
    - [the ever popular weekly challenge](#org8593845)
    - [being a better raku citizen](#orgefe8037)
    - [jj merelo raku recipies code examples](#org599b5d7)
  - [announcements](#orgdebd8c2)
    - [next meeting: February 26th](#org02502e6)


<a id="org72bb5bd"></a>

# meeting notes February 12, 2023


<a id="orga41bc1d"></a>

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


<a id="orga90694f"></a>

## topics


<a id="org2830ab1"></a>

### Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"

1.  <https://github.com/rakudo/rakudo/issues/4207>

2.  This has been working for a while with recent builds.  About time I closed it.

3.  Used my "darkroast" repository to add a test file for this:

    1.  <https://github.com/doomvox/darkroast/blob/main/S12-introspection/method_object_gists.t>
    
    2.  bruce gray suggests looking into adding tests to roast


<a id="org16bfdc8"></a>

### Issue 4435: "deepmap can mangle hash structures rather than just modify values"

1.  <https://github.com/rakudo/rakudo/issues/4435>

2.  Existing roast test for deepmap:

    1.  <https://github.com/Raku/roast/blob/master/S32-list/deepmap.t>
    
    2.  locally: /home/doom/End/Cave/Raku/Wall/roast/S32-list/deepmap.t
    
        1.  interesting bit ("gfldex++" is someone's handle)
        
            ```raku
            # regression spotted by gfldex++
            is <a b c>.deepmap({ next if $_ eq "b"; $_ }), "a c", 'did next work';
            is <a b c>.nodemap({ next if $_ eq "b"; $_ }), "a c", 'did next work';
            ```
        
        2.  Note: explicitly passes through "$\_".
        
            1.  if this is understood to be a requirement, the docs should say so

3.  Adding some darkroast tests (needs work):

    1.  <https://github.com/doomvox/darkroast/blob/main/S32-list/deepmap_array_of_hashes.t>
    
    2.  locally: /home/doom/End/Cave/Raku/Wall/darkroast/S32-list/deepmap<sub>array</sub><sub>of</sub><sub>hashes.t</sub>


<a id="org7a8beed"></a>

### bruce gray issue from rosetta code


<a id="orgc46cf82"></a>

### topic variables question


<a id="org2828ab9"></a>

### marton: some rakudo dev thoughts

1.  work on a bug

2.  raku ast


<a id="org8593845"></a>

### the ever popular weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-201/>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-202/>


<a id="orgefe8037"></a>

### being a better raku citizen

1.  lizmat reminds she needs advance notice of meeting schedule for

2.  do we need a joint events calendar?

3.  irc

4.  vadim class

5.  marton meetings on docs

    1.  first one was **yesterday**
    
    2.  squashathon
    
        1.  <https://github.com/2colours/Raku-ideas/blob/main/Squashathon%20reborn.md>


<a id="org599b5d7"></a>

### jj merelo raku recipies code examples

1.  <https://github.com/Apress/raku-recipes>


<a id="orgdebd8c2"></a>

## announcements


<a id="org02502e6"></a>

### next meeting: February 26th
