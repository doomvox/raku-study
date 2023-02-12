- [meeting notes February 12, 2023](#orgb04ebcd)
  - [the raku study group](#org691fb63)
  - [topics](#orgc7d08e0)
    - [Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"](#org8019dae)
    - [Issue 4435: "deepmap can mangle hash structures rather than just modify values"](#org4341e83)
    - [the ever popular weekly challenge](#org8f7e1d9)
    - [being a better raku citizen](#org3694583)
    - [jj merelo raku recipies code examples](#orgc1118b2)
  - [announcements](#orgc898d5d)
    - [next meeting: February 26th](#org022eb1d)


<a id="orgb04ebcd"></a>

# meeting notes February 12, 2023


<a id="org691fb63"></a>

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


<a id="orgc7d08e0"></a>

## topics


<a id="org8019dae"></a>

### Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"

1.  <https://github.com/rakudo/rakudo/issues/4207>

2.  This has been working for a while with recent builds.  About time I closed it.

3.  Used my "darkroast" repository to add a test file for this:

    1.  <https://github.com/doomvox/darkroast/blob/main/S12-introspection/method_object_gists.t>


<a id="org4341e83"></a>

### Issue 4435: "deepmap can mangle hash structures rather than just modify values"

1.  <https://github.com/rakudo/rakudo/issues/4435>

2.  Existing roast test for deepmap:

    1.  <https://github.com/Raku/roast/blob/master/S32-list/deepmap.t>
    
    2.  locally: /home/doom/End/Cave/Raku/Wall/roast/S32-list/deepmap.t
    
        1.  interesting bit (is "gfldex" someone's handle?)
        
            ```raku
            # regression spotted by gfldex++
            is <a b c>.deepmap({ next if $_ eq "b"; $_ }), "a c", 'did next work';
            is <a b c>.nodemap({ next if $_ eq "b"; $_ }), "a c", 'did next work';
            ```

3.  Adding some darkroast tests (needs work):

    1.  <https://github.com/doomvox/darkroast/blob/main/S32-list/deepmap_array_of_hashes.t>
    
    2.  locally: /home/doom/End/Cave/Raku/Wall/darkroast/S32-list/deepmap<sub>array</sub><sub>of</sub><sub>hashes.t</sub>


<a id="org8f7e1d9"></a>

### the ever popular weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-201/>


<a id="org3694583"></a>

### being a better raku citizen

1.  lizmat reminds she needs advance notice of meeting schedule for

2.  do we need a joint events calendar?

3.  irc

4.  vadim class

5.  marton meetings on docs

    1.  first one was **yesterday**
    
    2.  squashathon
    
        1.  <https://github.com/2colours/Raku-ideas/blob/main/Squashathon%20reborn.md>


<a id="orgc1118b2"></a>

### jj merelo raku recipies code examples

1.  <https://github.com/Apress/raku-recipes>


<a id="orgc898d5d"></a>

## announcements


<a id="org022eb1d"></a>

### next meeting: February 26th
