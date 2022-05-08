- [meeting notes May 08, 2022](#orgf222982)
  - [the raku study group](#org579c8c9)
    - [usual links](#org56e9660)
  - [finished tests to examine ^methods issues](#orgded07cf)
  - [raku's "move" considered screwed-up](#org0dab1c9)
    - [<https://docs.raku.org/routine/move>](#org89338f4)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#org5b5dae5)
    - [move/copy command in Raku doesn't work with directory as second arg](#org65906ed)
    - [we've discussed this one already:](#org21f6cf4)
  - [recent raku topics](#org4ebd7ea)
    - [<https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>](#org1cc7c4e)
    - [<https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>](#org6b10646)
    - [<https://rakudoweekly.blog/2022/05/02/2022-18-period/>](#org1486d81)
  - [sniping at perl, circa 2009](#org0e61fb4)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org8a5f1c7)
  - [equilibirum index](#org8dbe12c)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org2f8826d)
    - [revisit this next time (Rob solution?)](#orgb6641ec)
  - [Rob's interested in discussing missing basic tools](#orgd5aecf5)
  - [weekly challenge this week](#orgfd87362)
    - [<https://theweeklychallenge.org/>](#orgc84d952)
  - [from previous meetings](#org2e26f80)
    - [an answer to what's Raku for:](#org8775f1d)
    - [gui toolkits](#orgf3b66f0)
  - [bill michaels](#org129208c)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orga422066)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org341a2f7)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orge88f06e)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgb8a6a04)
  - [announcements](#org0a3088a)
    - [May 22nd: next raku study group meeting](#orgbb06bff)
    - [June 21-25: tprc: perl/raku conference](#org38d277c)


<a id="orgf222982"></a>

# meeting notes May 08, 2022


<a id="org579c8c9"></a>

## the raku study group


<a id="org56e9660"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orgded07cf"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="org0dab1c9"></a>

## raku's "move" considered screwed-up


<a id="org89338f4"></a>

### <https://docs.raku.org/routine/move>


<a id="org5b5dae5"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="org65906ed"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org21f6cf4"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org4ebd7ea"></a>

## recent raku topics


<a id="org1cc7c4e"></a>

### <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org6b10646"></a>

### <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org1486d81"></a>

### <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org0e61fb4"></a>

## sniping at perl, circa 2009


<a id="org8a5f1c7"></a>

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


<a id="org8dbe12c"></a>

## equilibirum index


<a id="org2f8826d"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orgb6641ec"></a>

### TODO revisit this next time (Rob solution?)


<a id="orgd5aecf5"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="orgfd87362"></a>

## weekly challenge this week


<a id="orgc84d952"></a>

### <https://theweeklychallenge.org/>


<a id="org2e26f80"></a>

## from previous meetings


<a id="org8775f1d"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgf3b66f0"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org129208c"></a>

## bill michaels


<a id="orga422066"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org341a2f7"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orge88f06e"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgb8a6a04"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org0a3088a"></a>

## announcements


<a id="orgbb06bff"></a>

### May 22nd: next raku study group meeting


<a id="org38d277c"></a>

### June 21-25: tprc: perl/raku conference
