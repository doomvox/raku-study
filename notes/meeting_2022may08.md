- [meeting notes May 08, 2022](#org99fe270)
  - [the raku study group](#org08fcbcf)
    - [usual links](#orgf233589)
  - [finished test to examine ^methods issues](#orga310c59)
  - [raku's "move" considered screwed-up](#org5d663ae)
    - [<https://docs.raku.org/routine/move>](#org8fc6636)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#orgb83a573)
    - [move/copy command in Raku doesn't work with directory as second arg](#org991ce86)
    - [discussed last meeting:](#orgf1daa5f)
  - [recent raku topics](#orgcb67ee7)
    - [<https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>](#orga1a886e)
    - [<https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>](#orgb874bbf)
    - [<https://rakudoweekly.blog/2022/05/02/2022-18-period/>](#orgb096369)
  - [sniping at perl, circa 2009](#orgcb5bdb0)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org98cb0cd)
  - [equilibirum index](#orgdd502e2)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgd1105b5)
    - [revisit this next time (Rob solution?)](#orgfb37535)
  - [Rob's interested in discussing missing basic tools](#orga1c64cb)
  - [weekly challenge this week](#org7f5ea0b)
    - [<https://theweeklychallenge.org/>](#orgd5dd343)
  - [from previous meetings](#orge1c3a08)
    - [an answer to what's Raku for:](#org6e76152)
    - [gui toolkits](#orgacc52f1)
  - [bill michaels](#orgb6b6608)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgdf34a0b)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org47f971b)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgde01552)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org23c0076)
  - [announcements](#org131f7c4)
    - [May 8th: next raku study group meeting](#org052b690)
    - [June 21-25: tprc: perl/raku conference](#org646ce01)


<a id="org99fe270"></a>

# meeting notes May 08, 2022


<a id="org08fcbcf"></a>

## the raku study group


<a id="orgf233589"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orga310c59"></a>

## finished test to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="org5d663ae"></a>

## raku's "move" considered screwed-up


<a id="org8fc6636"></a>

### <https://docs.raku.org/routine/move>


<a id="orgb83a573"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="org991ce86"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="orgf1daa5f"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="orgcb67ee7"></a>

## recent raku topics


<a id="orga1a886e"></a>

### <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="orgb874bbf"></a>

### <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="orgb096369"></a>

### <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="orgcb5bdb0"></a>

## sniping at perl, circa 2009


<a id="org98cb0cd"></a>

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


<a id="orgdd502e2"></a>

## equilibirum index


<a id="orgd1105b5"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orgfb37535"></a>

### TODO revisit this next time (Rob solution?)


<a id="orga1c64cb"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org7f5ea0b"></a>

## weekly challenge this week


<a id="orgd5dd343"></a>

### <https://theweeklychallenge.org/>


<a id="orge1c3a08"></a>

## from previous meetings


<a id="org6e76152"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgacc52f1"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgb6b6608"></a>

## bill michaels


<a id="orgdf34a0b"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org47f971b"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgde01552"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org23c0076"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org131f7c4"></a>

## announcements


<a id="org052b690"></a>

### May 8th: next raku study group meeting


<a id="org646ce01"></a>

### June 21-25: tprc: perl/raku conference
