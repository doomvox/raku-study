- [meeting notes January 29, 2023](#org5440777)
  - [the raku study group](#org611dcf6)
  - [topics](#orgebd776c)
    - [Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"](#orgfc91e89)
    - [Issue 4435: "deepmap can mangle hash structures rather than just modify values"](#org3b1c29e)
    - [weekly challenge](#org5d42e8b)
  - [announcements](#orgc2c25d7)
    - [next meeting: February 26th](#org7851fe3)


<a id="org5440777"></a>

# meeting notes January 29, 2023


<a id="org611dcf6"></a>

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


<a id="orgebd776c"></a>

## topics


<a id="orgfc91e89"></a>

### Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"

1.  <https://github.com/rakudo/rakudo/issues/4207>

2.  This has been working for a while with recent builds.  About time I closed it.

3.  Used my "darkroast" repository to add a test file for this:

    1.  <https://github.com/doomvox/darkroast/blob/main/S12-introspection/method_object_gists.t>


<a id="org3b1c29e"></a>

### Issue 4435: "deepmap can mangle hash structures rather than just modify values"

1.  <https://github.com/rakudo/rakudo/issues/4435>

2.  Existing roast test for deepmap:

    /home/doom/End/Cave/Raku/Wall/roast/S32-list/deepmap.t
    
    1.  <https://github.com/Raku/roast/blob/master/S32-list/deepmap.t>
    
    2.  locally: /home/doom/End/Cave/Raku/Wall/roast/S32-list/deepmap.t
    
        ```raku
        # regression spotted by gfldex++
        is <a b c>.deepmap({ next if $_ eq "b"; $_ }), "a c", 'did next work';
        is <a b c>.nodemap({ next if $_ eq "b"; $_ }), "a c", 'did next work';
        ```


<a id="org5d42e8b"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-201/>


<a id="orgc2c25d7"></a>

## announcements


<a id="org7851fe3"></a>

### next meeting: February 26th
