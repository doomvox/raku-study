- [meeting notes May 08, 2022](#orgd576e20)
  - [the raku study group](#org08b7c46)
    - [usual links](#org7a3c89b)
  - [finished tests to examine ^methods issues](#org215dbc9)
  - [raku's "move" considered screwed-up](#org9923dca)
    - [<https://docs.raku.org/routine/move>](#org0866024)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#orgb399ba8)
    - [move/copy command in Raku doesn't work with directory as second arg](#org30bc382)
    - [we've discussed this one already:](#orgd045cfd)
  - [recent raku topics](#orgb6ae0ef)
    - [web scraping:](#org1033781)
    - [a new "are" method (what are these?)](#orgd9a9cc7)
    - [rakudo weekly news](#org2b03aad)
    - [more dwimmy .all ~~ Type](#org332b2e3)
  - [sniping at perl, circa 2009](#org051cccf)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org6b1b246)
  - [equilibirum index](#orga9c3755)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org8c32bc9)
    - [revisit this next time (Rob solution?)](#org21a8183)
  - [Rob's interested in discussing missing basic tools](#orgb9956a8)
  - [weekly challenge this week](#orga96384e)
    - [<https://theweeklychallenge.org/>](#org2464c5b)
  - [from previous meetings](#org4d1ef31)
    - [an answer to what's Raku for:](#org915876a)
    - [gui toolkits](#orgba181f8)
  - [bill michaels](#orge5c73e4)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org1aaaef0)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orge8dcfb9)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org925f1fb)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org56c6c0c)
  - [announcements](#org19b1154)
    - [May 22nd: next raku study group meeting](#org7fd3554)
    - [June 21-25: tprc: perl/raku conference](#orgb615f53)


<a id="orgd576e20"></a>

# meeting notes May 08, 2022


<a id="org08b7c46"></a>

## the raku study group


<a id="org7a3c89b"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org215dbc9"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="org9923dca"></a>

## raku's "move" considered screwed-up


<a id="org0866024"></a>

### <https://docs.raku.org/routine/move>


<a id="orgb399ba8"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="org30bc382"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="orgd045cfd"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="orgb6ae0ef"></a>

## recent raku topics


<a id="org1033781"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="orgd9a9cc7"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org2b03aad"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org332b2e3"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org051cccf"></a>

## sniping at perl, circa 2009


<a id="org6b1b246"></a>

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


<a id="orga9c3755"></a>

## equilibirum index


<a id="org8c32bc9"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org21a8183"></a>

### TODO revisit this next time (Rob solution?)


<a id="orgb9956a8"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="orga96384e"></a>

## weekly challenge this week


<a id="org2464c5b"></a>

### <https://theweeklychallenge.org/>


<a id="org4d1ef31"></a>

## from previous meetings


<a id="org915876a"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgba181f8"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orge5c73e4"></a>

## bill michaels


<a id="org1aaaef0"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orge8dcfb9"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org925f1fb"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org56c6c0c"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org19b1154"></a>

## announcements


<a id="org7fd3554"></a>

### May 22nd: next raku study group meeting


<a id="orgb615f53"></a>

### June 21-25: tprc: perl/raku conference
