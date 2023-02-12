- [meeting notes February 12, 2023](#orgdb5cb2e)
  - [the raku study group](#org6759e3d)
  - [topics](#orgade7b0e)
    - [Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"](#org8ab9599)
    - [Issue 4435: "deepmap can mangle hash structures rather than just modify values"](#orgdf0e95f)
    - [topic variables question](#org6a86629)
    - [bruce gray issue from rosetta code](#org2332b85)
    - [marton: some rakudo dev thoughts](#orged131b5)
    - [the ever popular weekly challenge](#orgeb6f42b)
    - [being a better raku citizen](#org603747d)
    - [jj merelo raku recipies code examples](#orga68cafa)
  - [announcements](#org187c47d)
    - [next meeting: February 26th](#org359ca73)


<a id="orgdb5cb2e"></a>

# meeting notes February 12, 2023


<a id="org6759e3d"></a>

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


<a id="orgade7b0e"></a>

## topics


<a id="org8ab9599"></a>

### Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"

1.  <https://github.com/rakudo/rakudo/issues/4207>

2.  This has been working for a while with recent builds.  About time I closed it.

3.  Used my "darkroast" repository to add a test file for this:

    1.  <https://github.com/doomvox/darkroast/blob/main/S12-introspection/method_object_gists.t>
    
    2.  bruce gray suggests looking into adding tests to roast


<a id="orgdf0e95f"></a>

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


<a id="org6a86629"></a>

### topic variables question


<a id="org2332b85"></a>

### bruce gray issue from rosetta code


<a id="orged131b5"></a>

### marton: some rakudo dev thoughts

1.  work on a bug

2.  raku ast


<a id="orgeb6f42b"></a>

### the ever popular weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-201/>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-202/>


<a id="org603747d"></a>

### being a better raku citizen

1.  lizmat reminds she needs advance notice of meeting schedule for

2.  do we need a joint events calendar?

3.  irc

4.  vadim class

5.  marton meetings on docs

    1.  first one was **yesterday**
    
    2.  squashathon
    
        1.  <https://github.com/2colours/Raku-ideas/blob/main/Squashathon%20reborn.md>


<a id="orga68cafa"></a>

### jj merelo raku recipies code examples

1.  <https://github.com/Apress/raku-recipes>


<a id="org187c47d"></a>

## announcements


<a id="org359ca73"></a>

### next meeting: February 26th
