- [meeting notes February 12, 2023](#org42282da)
  - [the raku study group](#org7199734)
  - [topics](#org749f02f)
    - [Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"](#org71bbf78)
    - [Issue 4435: "deepmap can mangle hash structures rather than just modify values"](#orge358285)
    - [the ever popular weekly challenge](#orgf27221c)
    - [raku citizenship](#org62ccb43)
    - [jj merelo raku recipies code examples](#org5ee10ab)
  - [announcements](#org8d2374d)
    - [next meeting: February 26th](#org1c2233d)


<a id="org42282da"></a>

# meeting notes February 12, 2023


<a id="org7199734"></a>

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


<a id="org749f02f"></a>

## topics


<a id="org71bbf78"></a>

### Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"

1.  <https://github.com/rakudo/rakudo/issues/4207>

2.  This has been working for a while with recent builds.  About time I closed it.

3.  Used my "darkroast" repository to add a test file for this:

    1.  <https://github.com/doomvox/darkroast/blob/main/S12-introspection/method_object_gists.t>


<a id="orge358285"></a>

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


<a id="orgf27221c"></a>

### the ever popular weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-201/>


<a id="org62ccb43"></a>

### raku citizenship

1.  events calendar?

2.  irc

3.  vadim class

4.  marton on docs

    1.  squashathon
    
        1.  <https://github.com/2colours/Raku-ideas/blob/main/Squashathon%20reborn.md>


<a id="org5ee10ab"></a>

### jj merelo raku recipies code examples

1.  <https://github.com/Apress/raku-recipes>


<a id="org8d2374d"></a>

## announcements


<a id="org1c2233d"></a>

### next meeting: February 26th
