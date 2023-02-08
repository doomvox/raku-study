- [meeting notes January 29, 2023](#org54b959d)
  - [the raku study group](#orgd8781d2)
  - [topics](#org943a467)
    - [Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"](#org14a05d4)
    - [Issue 4435: "deepmap can mangle hash structures rather than just modify values"](#org92e6bba)
  - [announcements](#org6e8d7cb)
    - [next meeting: February 26th](#org24b19ab)


<a id="org54b959d"></a>

# meeting notes January 29, 2023


<a id="orgd8781d2"></a>

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


<a id="org943a467"></a>

## topics


<a id="org14a05d4"></a>

### Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"

1.  <https://github.com/rakudo/rakudo/issues/4207>

2.  This has been working for a while with recent builds.  About time I closed it.

3.  Used my "darkroast" repository to add a test file for this:

    1.  <https://github.com/doomvox/darkroast/blob/main/S12-introspection/method_object_gists.t>


<a id="org92e6bba"></a>

### Issue 4435: "deepmap can mangle hash structures rather than just modify values"

1.  <https://github.com/rakudo/rakudo/issues/4435>

2.  Existing roast test for deepmap:

    /home/doom/End/Cave/Raku/Wall/roast/S32-list/deepmap.t
    
    1.  <https://github.com/Raku/roast/blob/master/S32-list/deepmap.t>
    
    2.  locally: /home/doom/End/Cave/Raku/Wall/roast/S32-list/deepmap.t
    
        is <a b c>.deepmap({ next if $\_ eq "b"; $\_ }), "a c", 'did next work'; is <a b c>.nodemap({ next if $\_ eq "b"; $\_ }), "a c", 'did next work';


<a id="org6e8d7cb"></a>

## announcements


<a id="org24b19ab"></a>

### next meeting: February 26th
