- [meeting notes February 12, 2023](#orgcf97d42)
  - [the raku study group](#org99f132c)
  - [topics](#org9e1f33d)
    - [Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"](#orgd46d2b9)
    - [Issue 4435: "deepmap can mangle hash structures rather than just modify values"](#org832f551)
    - [bruce gray issue from rosetta code](#org76ed137)
    - [topic variables question](#org973f62b)
    - [marton: some rakudo dev thoughts](#org8f7b3fa)
    - [the ever popular weekly challenge](#org30b4562)
    - [being a better raku citizen](#org80e36c9)
    - [jj merelo raku recipies code examples](#org3321fe6)
  - [announcements](#orgc5995cc)
    - [next meeting: February 26th](#orge1eebfb)


<a id="orgcf97d42"></a>

# meeting notes February 12, 2023


<a id="org99f132c"></a>

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


<a id="org9e1f33d"></a>

## topics


<a id="orgd46d2b9"></a>

### Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"

1.  <https://github.com/rakudo/rakudo/issues/4207>

2.  This has been working for a while with recent builds.  About time I closed it.

3.  Used my "darkroast" repository to add a test file for this:

    1.  <https://github.com/doomvox/darkroast/blob/main/S12-introspection/method_object_gists.t>


<a id="org832f551"></a>

### Issue 4435: "deepmap can mangle hash structures rather than just modify values"

1.  <https://github.com/rakudo/rakudo/issues/4435>

2.  Existing roast test for deepmap:

    1.  <https://github.com/Raku/roast/blob/master/S32-list/deepmap.t>
    
    2.  locally: /home/doom/End/Cave/Raku/Wall/roast/S32-list/deepmap.t
    
        1.  interesting bit ("gfldex++" is someone's handle)
        
            ```raku
            # regression spotted by gfldex++
            is <a b c>.deepmap({ next if $_ eq "b"; $_ }), "a c", 'did next work';
            is <a b c>.nodemap({ next if $_ eq "b"; $_ }), "a c", 'did next work';
            ```
        
        2.  Note: explicitly passes through "$\_".
        
            1.  if this is understood to be a requirement, the docs should say so

3.  Adding some darkroast tests (needs work):

    1.  <https://github.com/doomvox/darkroast/blob/main/S32-list/deepmap_array_of_hashes.t>
    
    2.  locally: /home/doom/End/Cave/Raku/Wall/darkroast/S32-list/deepmap<sub>array</sub><sub>of</sub><sub>hashes.t</sub>


<a id="org76ed137"></a>

### bruce gray issue from rosetta code


<a id="org973f62b"></a>

### topic variables question


<a id="org8f7b3fa"></a>

### marton: some rakudo dev thoughts


<a id="org30b4562"></a>

### the ever popular weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-201/>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-202/>


<a id="org80e36c9"></a>

### being a better raku citizen

1.  lizmat reminds she needs advance notice of meeting schedule for

2.  do we need a joint events calendar?

3.  irc

4.  vadim class

5.  marton meetings on docs

    1.  first one was **yesterday**
    
    2.  squashathon
    
        1.  <https://github.com/2colours/Raku-ideas/blob/main/Squashathon%20reborn.md>


<a id="org3321fe6"></a>

### jj merelo raku recipies code examples

1.  <https://github.com/Apress/raku-recipes>


<a id="orgc5995cc"></a>

## announcements


<a id="orge1eebfb"></a>

### next meeting: February 26th
