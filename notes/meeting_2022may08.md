- [meeting notes May 08, 2022](#orgf734277)
  - [the raku study group](#org5657181)
    - [usual links](#org8feef9a)
  - [finished tests to examine ^methods issues](#orgdd6bfd9)
  - [raku's "move" considered screwed-up](#org9b7a6a2)
    - [<https://docs.raku.org/routine/move>](#org833b39d)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#orgdf58a9e)
    - [move/copy command in Raku doesn't work with directory as second arg](#orgd3f8ccc)
    - [we've discussed this one already:](#orgbd2c036)
  - [recent raku topics](#org1f79104)
    - [web scraping:](#org85075b0)
    - [a new "are" method (what are these?)](#org27a5b39)
    - [rakudo weekly news](#org6c12fbc)
    - [more dwimmy .all ~~ Type](#orgb2815fa)
    - [checking a program is on system](#org6040b62)
  - [sniping at perl, circa 2009](#org08e5709)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgeb02ad9)
  - [equilibirum index](#orgec2f0f6)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org7492be4)
    - [revisit this next time (Rob solution?)](#orga45a704)
  - [Rob's interested in discussing missing basic tools](#org319db94)
  - [weekly challenge this week](#orgc1dfff8)
    - [<https://theweeklychallenge.org/>](#orge8646b5)
  - [from previous meetings](#org6787745)
    - [an answer to what's Raku for:](#org8f9ace7)
    - [gui toolkits](#org7ff8591)
  - [bill michaels](#org08542da)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgdc7ab80)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgc1268fd)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgbb7c975)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org52db483)
  - [announcements](#org79b4ff8)
    - [May 22nd: next raku study group meeting](#org18f8387)
    - [June 21-25: tprc: perl/raku conference](#orged0729f)


<a id="orgf734277"></a>

# meeting notes May 08, 2022


<a id="org5657181"></a>

## the raku study group


<a id="org8feef9a"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orgdd6bfd9"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="org9b7a6a2"></a>

## raku's "move" considered screwed-up


<a id="org833b39d"></a>

### <https://docs.raku.org/routine/move>


<a id="orgdf58a9e"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="orgd3f8ccc"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="orgbd2c036"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org1f79104"></a>

## recent raku topics


<a id="org85075b0"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org27a5b39"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org6c12fbc"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="orgb2815fa"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org6040b62"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org08e5709"></a>

## sniping at perl, circa 2009


<a id="orgeb02ad9"></a>

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


<a id="orgec2f0f6"></a>

## equilibirum index


<a id="org7492be4"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orga45a704"></a>

### TODO revisit this next time (Rob solution?)


<a id="org319db94"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="orgc1dfff8"></a>

## weekly challenge this week


<a id="orge8646b5"></a>

### <https://theweeklychallenge.org/>


<a id="org6787745"></a>

## from previous meetings


<a id="org8f9ace7"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org7ff8591"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org08542da"></a>

## bill michaels


<a id="orgdc7ab80"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgc1268fd"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgbb7c975"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org52db483"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org79b4ff8"></a>

## announcements


<a id="org18f8387"></a>

### May 22nd: next raku study group meeting


<a id="orged0729f"></a>

### June 21-25: tprc: perl/raku conference
