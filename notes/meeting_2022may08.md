- [meeting notes May 08, 2022](#org29e39ce)
  - [the raku study group](#orga65b9ed)
    - [usual links](#orgd95fdd3)
  - [finished test to examine ^methods issues](#orgbb38f5d)
  - [raku's "move" considered screwed-up](#orgb1c9d35)
    - [<https://docs.raku.org/routine/move>](#org976a129)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#org3d5842a)
    - [move/copy command in Raku doesn't work with directory as second arg](#org0e10632)
    - [discussed last meeting:](#orgaa547d5)
  - [recent raku topics](#orgf5b627e)
    - [<https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>](#org4250eae)
    - [<https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>](#org2f34652)
    - [<https://rakudoweekly.blog/2022/05/02/2022-18-period/>](#orge8c4c89)
  - [sniping at perl, circa 2009](#org2e9e635)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org5c08911)
  - [equilibirum index](#org57ca369)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgfc035a4)
    - [revisit this next time (Rob solution?)](#org651db4c)
  - [Rob's interested in discussing missing basic tools](#org3bce9b2)
  - [weekly challenge this week](#org133e36b)
    - [<https://theweeklychallenge.org/>](#org27cfa24)
  - [from previous meetings](#org62471e3)
    - [an answer to what's Raku for:](#org56b5871)
    - [gui toolkits](#org0969284)
  - [bill michaels](#orgaa8e28f)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgaae5e79)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org10e0f03)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org2f62535)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgc3a64f5)
  - [announcements](#org1c95233)
    - [May 8th: next raku study group meeting](#org3b4d0bc)
    - [June 21-25: tprc: perl/raku conference](#orgd07aea3)


<a id="org29e39ce"></a>

# meeting notes May 08, 2022


<a id="orga65b9ed"></a>

## the raku study group


<a id="orgd95fdd3"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orgbb38f5d"></a>

## finished test to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>


<a id="orgb1c9d35"></a>

## raku's "move" considered screwed-up


<a id="org976a129"></a>

### <https://docs.raku.org/routine/move>


<a id="org3d5842a"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="org0e10632"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="orgaa547d5"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="orgf5b627e"></a>

## recent raku topics


<a id="org4250eae"></a>

### <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org2f34652"></a>

### <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="orge8c4c89"></a>

### <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org2e9e635"></a>

## sniping at perl, circa 2009


<a id="org5c08911"></a>

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


<a id="org57ca369"></a>

## equilibirum index


<a id="orgfc035a4"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org651db4c"></a>

### TODO revisit this next time (Rob solution?)


<a id="org3bce9b2"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org133e36b"></a>

## weekly challenge this week


<a id="org27cfa24"></a>

### <https://theweeklychallenge.org/>


<a id="org62471e3"></a>

## from previous meetings


<a id="org56b5871"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org0969284"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgaa8e28f"></a>

## bill michaels


<a id="orgaae5e79"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org10e0f03"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org2f62535"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgc3a64f5"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org1c95233"></a>

## announcements


<a id="org3b4d0bc"></a>

### May 8th: next raku study group meeting


<a id="orgd07aea3"></a>

### June 21-25: tprc: perl/raku conference
