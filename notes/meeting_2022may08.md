- [meeting notes May 08, 2022](#org63dbe4f)
  - [the raku study group](#orgd491232)
    - [usual links](#orgcf9a6cc)
  - [finished tests to examine ^methods issues](#orgf1a208f)
  - [raku's "move" considered ungood](#org069d3ba)
    - [move/copy command in Raku doesn't work with directory as second arg](#org26c2581)
    - [<https://docs.raku.org/routine/move>](#org95a6992)
    - [we've discussed this one already:](#org790ee80)
    - [an issue: the unix "mv" can do a rename or a refile](#org283f6f5)
  - [rob ransbottom](#org13fce1d)
    - [topics in mind, which are](#orgb754cd3)
  - [recent raku topics](#org8c379a8)
    - [web scraping:](#org560d226)
    - [a new "are" method (what are these?)](#org25ac524)
    - [rakudo weekly news](#org9ace6da)
    - [more dwimmy .all ~~ Type](#org18d1a90)
    - [checking a program is on system](#org3174b6a)
    - [parsing wiki syntax, regex vs grammars](#orgef312d0)
  - [sniping at perl, circa 2009](#org94af563)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org429c5b9)
  - [equilibirum index](#org78da592)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org7b096ca)
    - [revisit this next time (Rob solution?)](#org3293256)
  - [Rob's interested in discussing missing basic tools](#org7861729)
  - [weekly challenge this week](#org7d1676f)
    - [<https://theweeklychallenge.org/>](#org5c0b28f)
  - [from previous meetings](#orga7ae721)
    - [an answer to what's Raku for:](#org31882f5)
    - [gui toolkits](#org575de0d)
  - [bill michels](#orgd61bc4b)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org905e172)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgd08f314)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgaf9446d)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org73cd43a)
  - [announcements](#org6a43f19)
    - [May 22nd: next raku study group meeting](#orgf457e56)
    - [June 21-25: tprc: perl/raku conference](#orgd0016ab)


<a id="org63dbe4f"></a>

# meeting notes May 08, 2022


<a id="orgd491232"></a>

## the raku study group


<a id="orgcf9a6cc"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orgf1a208f"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="org069d3ba"></a>

## raku's "move" considered ungood


<a id="org26c2581"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org95a6992"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org790ee80"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org283f6f5"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org13fce1d"></a>

## rob ransbottom


<a id="orgb754cd3"></a>

### topics in mind, which are

1.  bruce gray

    system install


<a id="org8c379a8"></a>

## recent raku topics


<a id="org560d226"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org25ac524"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org9ace6da"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org18d1a90"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org3174b6a"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="orgef312d0"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org94af563"></a>

## sniping at perl, circa 2009


<a id="org429c5b9"></a>

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


<a id="org78da592"></a>

## equilibirum index


<a id="org7b096ca"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org3293256"></a>

### TODO revisit this next time (Rob solution?)


<a id="org7861729"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org7d1676f"></a>

## weekly challenge this week


<a id="org5c0b28f"></a>

### <https://theweeklychallenge.org/>


<a id="orga7ae721"></a>

## from previous meetings


<a id="org31882f5"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org575de0d"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgd61bc4b"></a>

## bill michels


<a id="org905e172"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgd08f314"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgaf9446d"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org73cd43a"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org6a43f19"></a>

## announcements


<a id="orgf457e56"></a>

### May 22nd: next raku study group meeting


<a id="orgd0016ab"></a>

### June 21-25: tprc: perl/raku conference
