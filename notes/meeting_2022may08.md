- [meeting notes May 08, 2022](#orgf07731f)
  - [the raku study group](#orgd2c1e40)
    - [usual links](#org60acd4d)
  - [finished tests to examine ^methods issues](#orgafd0436)
  - [raku's "move" considered ungood](#orgea00805)
    - [move/copy command in Raku doesn't work with directory as second arg](#org513677b)
    - [<https://docs.raku.org/routine/move>](#org98e18fa)
    - [we've discussed this one already:](#orga8f3597)
    - [an issue: the unix "mv" can do a rename or a refile](#org3508125)
  - [recent raku topics](#orgbf9a663)
    - [web scraping:](#org68ebbeb)
    - [a new "are" method (what are these?)](#orgfbd6da5)
    - [rakudo weekly news](#orgc056e80)
    - [more dwimmy .all ~~ Type](#orga5b7e2c)
    - [checking a program is on system](#org33a7bac)
    - [parsing wiki syntax, regex vs grammars](#org3d9eccb)
  - [sniping at perl, circa 2009](#org88c510a)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orge1f5376)
  - [equilibirum index](#orgd5b7095)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orga5779f8)
    - [revisit this next time (Rob solution?)](#orgaf50c35)
  - [Rob's interested in discussing missing basic tools](#orge53665a)
  - [weekly challenge this week](#org7b1e8d4)
    - [<https://theweeklychallenge.org/>](#org13bbee1)
  - [from previous meetings](#org82521ea)
    - [an answer to what's Raku for:](#orgb2849cf)
    - [gui toolkits](#orgb207f6e)
  - [bill michaels](#orgac08ff8)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgd90e988)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org47933d0)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgab51aa6)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org3c96a97)
  - [announcements](#org3ace457)
    - [May 22nd: next raku study group meeting](#orgcbb002e)
    - [June 21-25: tprc: perl/raku conference](#org8c5820b)


<a id="orgf07731f"></a>

# meeting notes May 08, 2022


<a id="orgd2c1e40"></a>

## the raku study group


<a id="org60acd4d"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orgafd0436"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="orgea00805"></a>

## raku's "move" considered ungood


<a id="org513677b"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org98e18fa"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="orga8f3597"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org3508125"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="orgbf9a663"></a>

## recent raku topics


<a id="org68ebbeb"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="orgfbd6da5"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="orgc056e80"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="orga5b7e2c"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org33a7bac"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org3d9eccb"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org88c510a"></a>

## sniping at perl, circa 2009


<a id="orge1f5376"></a>

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


<a id="orgd5b7095"></a>

## equilibirum index


<a id="orga5779f8"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orgaf50c35"></a>

### TODO revisit this next time (Rob solution?)


<a id="orge53665a"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org7b1e8d4"></a>

## weekly challenge this week


<a id="org13bbee1"></a>

### <https://theweeklychallenge.org/>


<a id="org82521ea"></a>

## from previous meetings


<a id="orgb2849cf"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgb207f6e"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgac08ff8"></a>

## bill michaels


<a id="orgd90e988"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org47933d0"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgab51aa6"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org3c96a97"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org3ace457"></a>

## announcements


<a id="orgcbb002e"></a>

### May 22nd: next raku study group meeting


<a id="org8c5820b"></a>

### June 21-25: tprc: perl/raku conference
