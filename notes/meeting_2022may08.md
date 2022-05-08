- [meeting notes May 08, 2022](#org41f6c06)
  - [the raku study group](#org9e17378)
    - [usual links](#org8cf83af)
  - [finished tests to examine ^methods issues](#org100c2c8)
  - [raku's "move" considered screwed-up](#orgd98f4a2)
    - [<https://docs.raku.org/routine/move>](#org2a46756)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#orgc70474e)
    - [move/copy command in Raku doesn't work with directory as second arg](#orgfa855d6)
    - [we've discussed this one already:](#org4563945)
  - [recent raku topics](#orgeffea08)
    - [<https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>](#org73aec38)
    - [<https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>](#org3f10346)
    - [<https://rakudoweekly.blog/2022/05/02/2022-18-period/>](#orgac80559)
  - [sniping at perl, circa 2009](#orgb8c60dc)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org6771309)
  - [equilibirum index](#org8a10a0c)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orge9888b5)
    - [revisit this next time (Rob solution?)](#org78002fa)
  - [Rob's interested in discussing missing basic tools](#orge9d660d)
  - [weekly challenge this week](#org93407ff)
    - [<https://theweeklychallenge.org/>](#org8af3b9c)
  - [from previous meetings](#org9f0ba15)
    - [an answer to what's Raku for:](#orgdf0172b)
    - [gui toolkits](#org076fb0b)
  - [bill michaels](#org84737ed)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgd5c34f1)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgf9d383b)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org189cfb4)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgef3c398)
  - [announcements](#org32e7f88)
    - [May 8th: next raku study group meeting](#org2415ddb)
    - [June 21-25: tprc: perl/raku conference](#orgf3ae243)


<a id="org41f6c06"></a>

# meeting notes May 08, 2022


<a id="org9e17378"></a>

## the raku study group


<a id="org8cf83af"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org100c2c8"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="orgd98f4a2"></a>

## raku's "move" considered screwed-up


<a id="org2a46756"></a>

### <https://docs.raku.org/routine/move>


<a id="orgc70474e"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="orgfa855d6"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org4563945"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="orgeffea08"></a>

## recent raku topics


<a id="org73aec38"></a>

### <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org3f10346"></a>

### <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="orgac80559"></a>

### <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="orgb8c60dc"></a>

## sniping at perl, circa 2009


<a id="org6771309"></a>

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


<a id="org8a10a0c"></a>

## equilibirum index


<a id="orge9888b5"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org78002fa"></a>

### TODO revisit this next time (Rob solution?)


<a id="orge9d660d"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org93407ff"></a>

## weekly challenge this week


<a id="org8af3b9c"></a>

### <https://theweeklychallenge.org/>


<a id="org9f0ba15"></a>

## from previous meetings


<a id="orgdf0172b"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org076fb0b"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org84737ed"></a>

## bill michaels


<a id="orgd5c34f1"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgf9d383b"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org189cfb4"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgef3c398"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org32e7f88"></a>

## announcements


<a id="org2415ddb"></a>

### May 8th: next raku study group meeting


<a id="orgf3ae243"></a>

### June 21-25: tprc: perl/raku conference
