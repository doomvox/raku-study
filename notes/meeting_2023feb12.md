- [meeting notes January 29, 2023](#orgb756e36)
  - [the raku study group](#org41f8cb0)
  - [topics](#org81ba2bd)
    - [Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"](#org0fdc139)
    - [Issue 4435: "deepmap can mangle hash structures rather than just modify values"](#orgd234b60)
    - [weekly challenge](#orge4cf519)
  - [announcements](#org49638cb)
    - [next meeting: February 26th](#orga3c46ca)


<a id="orgb756e36"></a>

# meeting notes January 29, 2023


<a id="org41f8cb0"></a>

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


<a id="org81ba2bd"></a>

## topics


<a id="org0fdc139"></a>

### Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"

1.  <https://github.com/rakudo/rakudo/issues/4207>

2.  This has been working for a while with recent builds.  About time I closed it.

3.  Used my "darkroast" repository to add a test file for this:

    1.  <https://github.com/doomvox/darkroast/blob/main/S12-introspection/method_object_gists.t>


<a id="orgd234b60"></a>

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

3.  Adding some darkroast tests:

    1.  locally: /home/doom/End/Cave/Raku/Wall/darkroast/S32-list/deepmap<sub>array</sub><sub>of</sub><sub>hashes.t</sub>
    
    2.  <https://github.com/doomvox/darkroast/blob/main/S32-list/deepmap_array_of_hashes.t>


<a id="orge4cf519"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-201/>


<a id="org49638cb"></a>

## announcements


<a id="orga3c46ca"></a>

### next meeting: February 26th
