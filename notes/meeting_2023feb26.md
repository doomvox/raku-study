- [meeting notes February 26, 2023](#org3bcb9ed)
  - [the raku study group](#org8e7cf72)
  - [topics](#orgc24383a)
    - [Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"](#org8c9a1b4)
    - [Issue 4435: "deepmap can mangle hash structures rather than just modify values"](#org189f649)
    - [topic variables question](#orgff4f8b0)
    - [bruce gray on SEND + MORE = MONEY](#orgb85251a)
    - [marton: some rakudo dev thoughts](#orgb145ca3)
    - [the ever popular weekly challenge](#orge56d339)
    - [being a better raku citizen](#org4baf2d4)
    - [jj merelo raku recipies code examples](#org694348d)
  - [announcements](#org3a650d8)
    - [next meeting: February 26th](#org0ccee4d)
    - [doc meeting:  jit.sy issues?](#org32e6c7f)


<a id="org3bcb9ed"></a>

# meeting notes February 26, 2023


<a id="org8e7cf72"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2023feb26.md>
        
        2.  source file (for corrections, etc)
        
            1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2023feb26.org>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2023feb26>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb12.md>


<a id="orgc24383a"></a>

## topics


<a id="org8c9a1b4"></a>

### Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"

1.  <https://github.com/rakudo/rakudo/issues/4207>

2.  This has been working for a while with recent builds.  About time I closed it.

3.  Used my "darkroast" repository to add a test file for this:

    1.  <https://github.com/doomvox/darkroast/blob/main/S12-introspection/method_object_gists.t>
    
    2.  bruce gray suggests looking into adding tests to roast


<a id="org189f649"></a>

### Issue 4435: "deepmap can mangle hash structures rather than just modify values"

1.  <https://github.com/rakudo/rakudo/issues/4435>

2.  Existing roast test for deepmap:

    1.  <https://github.com/Raku/roast/blob/master/S32-list/deepmap.t>
    
    2.  locally: /home/doom/End/Cave/Raku/Wall/roast/S32-list/deepmap.t
    
        1.  interesting bit ("gfldex++" is someone's handle)
        
            ```raku
            # regression spotted by gfldex++
            `is <a b c>.deepmap({ next if $_ eq "b"; $_ }), "a c", 'did next work';
            is <a b c>.nodemap({ next if $_ eq "b"; $_ }), "a c", 'did next work';
            ```
        
        2.  Note: explicitly passes through "$\_".
        
            1.  if this is understood to be a requirement, the docs should say so

3.  Adding some darkroast tests (needs work):

    1.  <https://github.com/doomvox/darkroast/blob/main/S32-list/deepmap_array_of_hashes.t>
    
    2.  locally: /home/doom/End/Cave/Raku/Wall/darkroast/S32-list/deepmap<sub>array</sub><sub>of</sub><sub>hashes.t</sub>


<a id="orgff4f8b0"></a>

### topic variables question


<a id="orgb85251a"></a>

### bruce gray on SEND + MORE = MONEY

1.  <https://mindyourdecisions.com/blog/2018/09/06/send-more-money-a-great-puzzle/>

2.  <https://rosettacode.org/wiki/SEND_%2B_MORE_%3D_MONEY#Raku>


<a id="orgb145ca3"></a>

### marton: some rakudo dev thoughts

1.  .EVAL always works, no MONKEY needed

    1.  bug?

2.  work on a bug

3.  raku ast

    1.  RAKUDO<sub>RAKUAST</sub> = 1


<a id="orge56d339"></a>

### the ever popular weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-201/>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-202/>


<a id="org4baf2d4"></a>

### being a better raku citizen

1.  lizmat reminds she needs advance notice of meeting schedule for

2.  do we need a joint events calendar?

3.  irc

4.  vadim class

5.  marton meetings on docs

    1.  first one was yesterday
    
    2.  squashathon
    
        1.  <https://github.com/2colours/Raku-ideas/blob/main/Squashathon%20reborn.md>


<a id="org694348d"></a>

### jj merelo raku recipies code examples

1.  <https://github.com/Apress/raku-recipes>


<a id="org3a650d8"></a>

## announcements


<a id="org0ccee4d"></a>

### next meeting: February 26th


<a id="org32e6c7f"></a>

### doc meeting:  jit.sy issues?
