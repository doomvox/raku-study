- [meeting notes February 12, 2023](#org68215ee)
  - [the raku study group](#org4641b19)
  - [topics](#org826cf83)
    - [Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"](#org8a96f1c)
    - [Issue 4435: "deepmap can mangle hash structures rather than just modify values"](#org1179ac3)
    - [bruce gray issue from rosetta code](#org82f04c9)
    - [topic variables question](#org0e8befa)
    - [the ever popular weekly challenge](#org036e94e)
    - [being a better raku citizen](#orgcca3a82)
    - [jj merelo raku recipies code examples](#org77b1f23)
  - [announcements](#org554a83d)
    - [next meeting: February 26th](#org6fb0a88)


<a id="org68215ee"></a>

# meeting notes February 12, 2023


<a id="org4641b19"></a>

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


<a id="org826cf83"></a>

## topics


<a id="org8a96f1c"></a>

### Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"

1.  <https://github.com/rakudo/rakudo/issues/4207>

2.  This has been working for a while with recent builds.  About time I closed it.

3.  Used my "darkroast" repository to add a test file for this:

    1.  <https://github.com/doomvox/darkroast/blob/main/S12-introspection/method_object_gists.t>


<a id="org1179ac3"></a>

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


<a id="org82f04c9"></a>

### bruce gray issue from rosetta code


<a id="org0e8befa"></a>

### topic variables question


<a id="org036e94e"></a>

### the ever popular weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-201/>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-202/>


<a id="orgcca3a82"></a>

### being a better raku citizen

1.  lizmat reminds she needs advance notice of meeting schedule for

2.  do we need a joint events calendar?

3.  irc

4.  vadim class

5.  marton meetings on docs

    1.  first one was **yesterday**
    
    2.  squashathon
    
        1.  <https://github.com/2colours/Raku-ideas/blob/main/Squashathon%20reborn.md>


<a id="org77b1f23"></a>

### jj merelo raku recipies code examples

1.  <https://github.com/Apress/raku-recipes>


<a id="org554a83d"></a>

## announcements


<a id="org6fb0a88"></a>

### next meeting: February 26th
