- [meeting notes May 08, 2022](#org70122e9)
  - [the raku study group](#org8b58164)
    - [usual links](#org13dc1a7)
  - [finished test to examine ^methods issues](#org05498f5)
  - [raku's "move" considered screwed-up](#org1b50a66)
    - [<https://docs.raku.org/routine/move>](#org3446ae8)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#org3eeb910)
    - [move/copy command in Raku doesn't work with directory as second arg](#org6c4d5be)
    - [discussed last meeting:](#org0619e61)
  - [recent raku topics](#orgb437e8f)
    - [<https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>](#org86b1878)
    - [<https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>](#orgf12f56a)
  - [sniping at perl, circa 2009](#orgd30fef7)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org078c727)
  - [equilibirum index](#org8e8636b)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org2af270f)
    - [revisit this next time (Rob solution?)](#org7e893e7)
  - [Rob's interested in discussing missing basic tools](#org0c6287f)
  - [weekly challenge this week](#org5233a38)
    - [<https://theweeklychallenge.org/>](#org5267ca2)
  - [from previous meetings](#org18cee28)
    - [an answer to what's Raku for:](#org8d54fd6)
    - [gui toolkits](#org0585309)
  - [bill michaels](#orgae39550)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org1dc9989)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org59b274a)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org0e2a5f6)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgee4e288)
  - [announcements](#org5ef4507)
    - [May 8th: next raku study group meeting](#org6a48912)
    - [June 21-25: tprc: perl/raku conference](#orge069f03)


<a id="org70122e9"></a>

# meeting notes May 08, 2022


<a id="org8b58164"></a>

## the raku study group


<a id="org13dc1a7"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org05498f5"></a>

## finished test to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>


<a id="org1b50a66"></a>

## raku's "move" considered screwed-up


<a id="org3446ae8"></a>

### <https://docs.raku.org/routine/move>


<a id="org3eeb910"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="org6c4d5be"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org0619e61"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="orgb437e8f"></a>

## recent raku topics


<a id="org86b1878"></a>

### <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="orgf12f56a"></a>

### <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="orgd30fef7"></a>

## sniping at perl, circa 2009


<a id="org078c727"></a>

### <https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>

1.  bill michaels brought up this piece from 2009

2.  true: "There are many wonderful modules in CPAN, but learning about them, learning to use them, finding out about their hidden corner-cases and unexpected behaviors takes even more time"

3.  eh: "People hate Perl for the same reason we love it&#x2013; because it makes us feel clever."

    1.  And people attacked perl so they could pose as enlightened insiders.

4.  links to Steve Yegge: <https://sites.google.com/site/steveyegge2/ancient-languages-perl>

5.  my old commentary about Steve Yegge

    1.  <http://obsidianrook.com/doomfiles/GENTLE_ART_OF_PROGRAMMING.html>
    
    2.  <http://obsidianrook.com/doomfiles/SIGILS_OF_POWER.html>
    
    3.  <http://obsidianrook.com/doomfiles/CASE_STUDY_2.html>
    
    4.  <http://obsidianrook.com/doomfiles/THE_PERL_AFFAIR.html>


<a id="org8e8636b"></a>

## equilibirum index


<a id="org2af270f"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org7e893e7"></a>

### TODO revisit this next time (Rob solution?)


<a id="org0c6287f"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org5233a38"></a>

## weekly challenge this week


<a id="org5267ca2"></a>

### <https://theweeklychallenge.org/>


<a id="org18cee28"></a>

## from previous meetings


<a id="org8d54fd6"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org0585309"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgae39550"></a>

## bill michaels


<a id="org1dc9989"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org59b274a"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org0e2a5f6"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgee4e288"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org5ef4507"></a>

## announcements


<a id="org6a48912"></a>

### May 8th: next raku study group meeting


<a id="orge069f03"></a>

### June 21-25: tprc: perl/raku conference
