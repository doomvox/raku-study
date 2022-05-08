- [meeting notes May 08, 2022](#org453866a)
  - [the raku study group](#orgd7149ec)
    - [usual links](#org163f926)
  - [finished tests to examine ^methods issues](#org87b72a6)
  - [raku's "move" considered screwed-up](#org61146e9)
    - [<https://docs.raku.org/routine/move>](#org672b5f6)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#org89cbc81)
    - [move/copy command in Raku doesn't work with directory as second arg](#orgde32d27)
    - [we've discussed this one already:](#orgd827adc)
  - [recent raku topics](#org01356d0)
    - [<https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>](#org2138abb)
    - [<https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>](#org1d4f9d4)
    - [<https://rakudoweekly.blog/2022/05/02/2022-18-period/>](#org7d66cf3)
  - [sniping at perl, circa 2009](#org918e558)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org00c6dd1)
  - [equilibirum index](#org9491dc0)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgdb038ea)
    - [revisit this next time (Rob solution?)](#org047a819)
  - [Rob's interested in discussing missing basic tools](#org0bda0a7)
  - [weekly challenge this week](#org17768c3)
    - [<https://theweeklychallenge.org/>](#orgb737766)
  - [from previous meetings](#org2efd800)
    - [an answer to what's Raku for:](#org5396eb1)
    - [gui toolkits](#orgf494ea7)
  - [bill michaels](#org71d2fe9)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org255aad4)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org93d3ea3)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org5c62c05)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgcc0d3aa)
  - [announcements](#orgb904ef0)
    - [May 22nd: next raku study group meeting](#orge3d341c)
    - [June 21-25: tprc: perl/raku conference](#org7f05684)


<a id="org453866a"></a>

# meeting notes May 08, 2022


<a id="orgd7149ec"></a>

## the raku study group


<a id="org163f926"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org87b72a6"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="org61146e9"></a>

## raku's "move" considered screwed-up


<a id="org672b5f6"></a>

### <https://docs.raku.org/routine/move>


<a id="org89cbc81"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="orgde32d27"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="orgd827adc"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org01356d0"></a>

## recent raku topics


<a id="org2138abb"></a>

### <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org1d4f9d4"></a>

### <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org7d66cf3"></a>

### <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org918e558"></a>

## sniping at perl, circa 2009


<a id="org00c6dd1"></a>

### <https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>

1.  William Michaels brought up this piece from 2009

2.  true: "There are many wonderful modules in CPAN, but learning about them, learning to use them &#x2026; takes even more time"

3.  eh: "People hate Perl for the same reason we love it&#x2013; because it makes us feel clever."

    1.  And people attacked perl so they could feel clever&#x2013; or at least pose as enlightened insiders.

4.  links to Steve Yegge: <https://sites.google.com/site/steveyegge2/ancient-languages-perl>

5.  my old commentary about Steve Yegge

    1.  <http://obsidianrook.com/doomfiles/GENTLE_ART_OF_PROGRAMMING.html>
    
    2.  <http://obsidianrook.com/doomfiles/SIGILS_OF_POWER.html>
    
    3.  <http://obsidianrook.com/doomfiles/CASE_STUDY_2.html>
    
    4.  <http://obsidianrook.com/doomfiles/THE_PERL_AFFAIR.html>


<a id="org9491dc0"></a>

## equilibirum index


<a id="orgdb038ea"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org047a819"></a>

### TODO revisit this next time (Rob solution?)


<a id="org0bda0a7"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org17768c3"></a>

## weekly challenge this week


<a id="orgb737766"></a>

### <https://theweeklychallenge.org/>


<a id="org2efd800"></a>

## from previous meetings


<a id="org5396eb1"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgf494ea7"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org71d2fe9"></a>

## bill michaels


<a id="org255aad4"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org93d3ea3"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org5c62c05"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgcc0d3aa"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgb904ef0"></a>

## announcements


<a id="orge3d341c"></a>

### May 22nd: next raku study group meeting


<a id="org7f05684"></a>

### June 21-25: tprc: perl/raku conference
