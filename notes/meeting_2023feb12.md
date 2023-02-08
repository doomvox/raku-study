- [meeting notes January 29, 2023](#org61625ed)
  - [the raku study group](#org2f133ac)
  - [topics](#org20d782a)
    - [Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"](#org661b626)
    - [Issue 4435: "deepmap can mangle hash structures rather than just modify values"](#orgd4d5acd)


<a id="org61625ed"></a>

# meeting notes January 29, 2023


<a id="org2f133ac"></a>

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


<a id="org20d782a"></a>

## topics


<a id="org661b626"></a>

### Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"

1.  <https://github.com/rakudo/rakudo/issues/4207>

2.  This has been working for a while with recent builds.  About time I closed it.

3.  Used my "darkroast" repository to add a test file for this:

    1.  <https://github.com/doomvox/darkroast/blob/main/S12-introspection/method_object_gists.t>


<a id="orgd4d5acd"></a>

### Issue 4435: "deepmap can mangle hash structures rather than just modify values"

1.  <https://github.com/rakudo/rakudo/issues/4435>

2.  Existing roast test for deepmap:

    /home/doom/End/Cave/Raku/Wall/roast/S32-list/deepmap.t
    
    1.  <https://github.com/Raku/roast/blob/master/S32-list/deepmap.t>
    
    2.  locally: /home/doom/End/Cave/Raku/Wall/roast/S32-list/deepmap.t
    
        <https://github.com/doomvox/darkroast/blob/main/S32-list/deepmap.t>
        
        is <a b c>.deepmap({ next if $\_ eq "b"; $\_ }), "a c", 'did next work'; is <a b c>.nodemap({ next if $\_ eq "b"; $\_ }), "a c", 'did next work';
