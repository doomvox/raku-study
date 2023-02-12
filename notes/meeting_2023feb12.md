- [meeting notes February 12, 2023](#orgf82c85b)
  - [the raku study group](#org604d61c)
  - [topics](#orgc5c8f94)
    - [Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"](#orgb16c8dd)
    - [Issue 4435: "deepmap can mangle hash structures rather than just modify values"](#org612072c)
    - [the ever popular weekly challenge](#org6c1fc4a)
    - [being a better raku citizen](#orgb34a14c)
    - [jj merelo raku recipies code examples](#orgfbaaa23)
  - [announcements](#orgb301c30)
    - [next meeting: February 26th](#org60c303f)


<a id="orgf82c85b"></a>

# meeting notes February 12, 2023


<a id="org604d61c"></a>

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


<a id="orgc5c8f94"></a>

## topics


<a id="orgb16c8dd"></a>

### Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"

1.  <https://github.com/rakudo/rakudo/issues/4207>

2.  This has been working for a while with recent builds.  About time I closed it.

3.  Used my "darkroast" repository to add a test file for this:

    1.  <https://github.com/doomvox/darkroast/blob/main/S12-introspection/method_object_gists.t>


<a id="org612072c"></a>

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


<a id="org6c1fc4a"></a>

### the ever popular weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-201/>


<a id="orgb34a14c"></a>

### being a better raku citizen

1.  lizmat reminds she needs advance notice of meeting schedule for

2.  do we need a joint events calendar?

3.  irc

4.  vadim class

5.  marton meetings on docs

    1.  first one was **yesterday**
    
    2.  squashathon
    
        1.  <https://github.com/2colours/Raku-ideas/blob/main/Squashathon%20reborn.md>


<a id="orgfbaaa23"></a>

### jj merelo raku recipies code examples

1.  <https://github.com/Apress/raku-recipes>


<a id="orgb301c30"></a>

## announcements


<a id="org60c303f"></a>

### next meeting: February 26th
