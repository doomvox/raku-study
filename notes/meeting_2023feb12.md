- [meeting notes January 29, 2023](#org4f8082c)
  - [the raku study group](#org268ce65)
  - [topics](#org9296753)
    - [Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"](#orge8590cd)
    - [Issue 4435: "deepmap can mangle hash structures rather than just modify values"](#orge335884)
    - [weekly challenge](#org747adfd)
  - [announcements](#org65c4d96)
    - [next meeting: February 26th](#org67ad27d)


<a id="org4f8082c"></a>

# meeting notes January 29, 2023


<a id="org268ce65"></a>

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


<a id="org9296753"></a>

## topics


<a id="orge8590cd"></a>

### Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"

1.  <https://github.com/rakudo/rakudo/issues/4207>

2.  This has been working for a while with recent builds.  About time I closed it.

3.  Used my "darkroast" repository to add a test file for this:

    1.  <https://github.com/doomvox/darkroast/blob/main/S12-introspection/method_object_gists.t>


<a id="orge335884"></a>

### Issue 4435: "deepmap can mangle hash structures rather than just modify values"

1.  <https://github.com/rakudo/rakudo/issues/4435>

2.  Existing roast test for deepmap:

    /home/doom/End/Cave/Raku/Wall/roast/S32-list/deepmap.t
    
    1.  <https://github.com/Raku/roast/blob/master/S32-list/deepmap.t>
    
    2.  locally: /home/doom/End/Cave/Raku/Wall/roast/S32-list/deepmap.t
    
        is <a b c>.deepmap({ next if $\_ eq "b"; $\_ }), "a c", 'did next work'; is <a b c>.nodemap({ next if $\_ eq "b"; $\_ }), "a c", 'did next work';


<a id="org747adfd"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-201/>


<a id="org65c4d96"></a>

## announcements


<a id="org67ad27d"></a>

### next meeting: February 26th
