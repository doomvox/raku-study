- [meeting notes January 29, 2023](#org05b3f8f)
  - [the raku study group](#org995ed48)
  - [topics](#orgbafb33a)
    - [Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"](#orga0ae3e6)
    - [Issue 4435: "deepmap can mangle hash structures rather than just modify values"](#orge117177)
    - [weekly challenge](#org7f5d78e)
  - [announcements](#org6ea25d2)
    - [next meeting: February 26th](#org71208d7)


<a id="org05b3f8f"></a>

# meeting notes January 29, 2023


<a id="org995ed48"></a>

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


<a id="orgbafb33a"></a>

## topics


<a id="orga0ae3e6"></a>

### Issue 4207: "'say $obj.<sup>methods</sup>' does not list all methods"

1.  <https://github.com/rakudo/rakudo/issues/4207>

2.  This has been working for a while with recent builds.  About time I closed it.

3.  Used my "darkroast" repository to add a test file for this:

    1.  <https://github.com/doomvox/darkroast/blob/main/S12-introspection/method_object_gists.t>


<a id="orge117177"></a>

### Issue 4435: "deepmap can mangle hash structures rather than just modify values"

1.  <https://github.com/rakudo/rakudo/issues/4435>

2.  Existing roast test for deepmap:

    /home/doom/End/Cave/Raku/Wall/roast/S32-list/deepmap.t
    
    1.  <https://github.com/Raku/roast/blob/master/S32-list/deepmap.t>
    
    2.  locally: /home/doom/End/Cave/Raku/Wall/roast/S32-list/deepmap.t
    
        1.  interesting bit (gfldex?)
        
            ```raku
            # regression spotted by gfldex++
            is <a b c>.deepmap({ next if $_ eq "b"; $_ }), "a c", 'did next work';
            is <a b c>.nodemap({ next if $_ eq "b"; $_ }), "a c", 'did next work';
            ```


<a id="org7f5d78e"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-201/>


<a id="org6ea25d2"></a>

## announcements


<a id="org71208d7"></a>

### next meeting: February 26th
