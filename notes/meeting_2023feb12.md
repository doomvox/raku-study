- [meeting notes January 29, 2023](#org373ac4c)
  - [the raku study group](#org8016a62)
  - [topics](#org6a4ef31)
    - [Issue 4207: closed](#org91980ad)


<a id="org373ac4c"></a>

# meeting notes January 29, 2023


<a id="org8016a62"></a>

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


<a id="org6a4ef31"></a>

## topics


<a id="org91980ad"></a>

### Issue 4207: closed

1.  "'say $obj.<sup>methods</sup>' does not list all methods"

2.  <https://github.com/rakudo/rakudo/issues/4207>

3.  This has been working for a while with recent builds.  About time I closed it.

4.  Used my "darkroast" repository to add a test file for this:

    1.  <https://github.com/doomvox/darkroast/blob/main/S12-introspection/method_object_gists.t>
