- [meeting notes February 12, 2023](#orgde4b470)
  - [the raku study group](#orge40501e)
  - [topics](#org85deff2)
    - [Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"](#org12c36a4)
    - [Issue 4435: "deepmap can mangle hash structures rather than just modify values"](#orgbf508a7)
    - [weekly challenge](#orgb67391c)
    - [raku citizenship](#org41a42da)
    - [jj merelo raku recipies code examples](#org9ccb83e)
  - [announcements](#org74ccc76)
    - [next meeting: February 26th](#org821ea6c)


<a id="orgde4b470"></a>

# meeting notes February 12, 2023


<a id="orge40501e"></a>

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


<a id="org85deff2"></a>

## topics


<a id="org12c36a4"></a>

### Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"

1.  <https://github.com/rakudo/rakudo/issues/4207>

2.  This has been working for a while with recent builds.  About time I closed it.

3.  Used my "darkroast" repository to add a test file for this:

    1.  <https://github.com/doomvox/darkroast/blob/main/S12-introspection/method_object_gists.t>


<a id="orgbf508a7"></a>

### Issue 4435: "deepmap can mangle hash structures rather than just modify values"

1.  <https://github.com/rakudo/rakudo/issues/4435>

2.  Existing roast test for deepmap:

    /home/doom/End/Cave/Raku/Wall/roast/S32-list/deepmap.t
    
    1.  <https://github.com/Raku/roast/blob/master/S32-list/deepmap.t>
    
    2.  locally: /home/doom/End/Cave/Raku/Wall/roast/S32-list/deepmap.t
    
        1.  interesting bit (gfldex?)
        
            ```raku
            # regression spotted by gfldex++
            is <a b c>.deepmap({ next if $_ eq "b"; $_ }), "a c", 'did next work';
            is <a b c>.nodemap({ next if $_ eq "b"; $_ }), "a c", 'did next work';
            ```

3.  Adding some darkroast tests (needs work):

    1.  locally: /home/doom/End/Cave/Raku/Wall/darkroast/S32-list/deepmap<sub>array</sub><sub>of</sub><sub>hashes.t</sub>
    
    2.  <https://github.com/doomvox/darkroast/blob/main/S32-list/deepmap_array_of_hashes.t>


<a id="orgb67391c"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-201/>


<a id="org41a42da"></a>

### raku citizenship

1.  events calendar?

2.  irc

3.  vadim class

4.  marton on docs

    1.  squashathon
    
        1.  <https://github.com/2colours/Raku-ideas/blob/main/Squashathon%20reborn.md>


<a id="org9ccb83e"></a>

### jj merelo raku recipies code examples

1.  <https://github.com/Apress/raku-recipes>


<a id="org74ccc76"></a>

## announcements


<a id="org821ea6c"></a>

### next meeting: February 26th
