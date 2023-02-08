- [meeting notes January 29, 2023](#orgae4cca3)
  - [the raku study group](#org6d2a9ec)
  - [topics](#org3be3e97)
    - [Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"](#org4742514)
    - [Issue 4435: "deepmap can mangle hash structures rather than just modify values"](#org17d3939)


<a id="orgae4cca3"></a>

# meeting notes January 29, 2023


<a id="org6d2a9ec"></a>

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


<a id="org3be3e97"></a>

## topics


<a id="org4742514"></a>

### Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"

1.  <https://github.com/rakudo/rakudo/issues/4207>

2.  This has been working for a while with recent builds.  About time I closed it.

3.  Used my "darkroast" repository to add a test file for this:

    1.  <https://github.com/doomvox/darkroast/blob/main/S12-introspection/method_object_gists.t>


<a id="org17d3939"></a>

### Issue 4435: "deepmap can mangle hash structures rather than just modify values"

1.  <https://github.com/rakudo/rakudo/issues/4435>
