- [meeting notes May 08, 2022](#org125927e)
  - [the raku study group](#org2115cc4)
    - [usual links](#org6937d29)
  - [finished tests to examine ^methods issues](#org8b601b4)
  - [raku's "move" considered ungood](#orgb0f3017)
    - [move/copy command in Raku doesn't work with directory as second arg](#org9ab0ecb)
    - [<https://docs.raku.org/routine/move>](#org786fa0d)
    - [we've discussed this one already:](#org3e6238c)
    - [an issue: the unix "mv" can do a rename or a refile](#org8afa12a)
  - [rob ransbottom](#org40dc59c)
    - [topics in mind, which are](#orgd443478)
  - [recent raku topics](#org790d878)
    - [web scraping:](#org722c7ac)
    - [a new "are" method (what are these?)](#orgdb379e7)
    - [rakudo weekly news](#org280253a)
    - [more dwimmy .all ~~ Type](#org743f430)
    - [checking a program is on system](#orgae3e051)
    - [parsing wiki syntax, regex vs grammars](#org4453d0e)
  - [sniping at perl, circa 2009](#orgbfb6df7)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org51adba0)
  - [equilibirum index](#orgef5f860)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgc3e0c77)
    - [revisit this next time (Rob solution?)](#orga8432fb)
  - [Rob's interested in discussing missing basic tools](#org98d3545)
  - [weekly challenge this week](#org98b0eb2)
    - [<https://theweeklychallenge.org/>](#org4cdc374)
  - [from previous meetings](#org3585fad)
    - [an answer to what's Raku for:](#org984d1fb)
    - [gui toolkits](#org66ffad3)
  - [bill michels](#org3f5239d)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgf712df3)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org538dcfc)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org9bce744)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgd60607f)
  - [announcements](#org3255243)
    - [May 22nd: next raku study group meeting](#org83ff602)
    - [June 21-25: tprc: perl/raku conference](#org268bf1b)


<a id="org125927e"></a>

# meeting notes May 08, 2022


<a id="org2115cc4"></a>

## the raku study group


<a id="org6937d29"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org8b601b4"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="orgb0f3017"></a>

## raku's "move" considered ungood


<a id="org9ab0ecb"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org786fa0d"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org3e6238c"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org8afa12a"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org40dc59c"></a>

## rob ransbottom


<a id="orgd443478"></a>

### topics in mind, which are

1.  bruce gray

    system install


<a id="org790d878"></a>

## recent raku topics


<a id="org722c7ac"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="orgdb379e7"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org280253a"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org743f430"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="orgae3e051"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org4453d0e"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="orgbfb6df7"></a>

## sniping at perl, circa 2009


<a id="org51adba0"></a>

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


<a id="orgef5f860"></a>

## equilibirum index


<a id="orgc3e0c77"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orga8432fb"></a>

### TODO revisit this next time (Rob solution?)


<a id="org98d3545"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org98b0eb2"></a>

## weekly challenge this week


<a id="org4cdc374"></a>

### <https://theweeklychallenge.org/>


<a id="org3585fad"></a>

## from previous meetings


<a id="org984d1fb"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org66ffad3"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org3f5239d"></a>

## bill michels


<a id="orgf712df3"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org538dcfc"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org9bce744"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgd60607f"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org3255243"></a>

## announcements


<a id="org83ff602"></a>

### May 22nd: next raku study group meeting


<a id="org268bf1b"></a>

### June 21-25: tprc: perl/raku conference
