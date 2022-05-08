- [meeting notes May 08, 2022](#orga4e4020)
  - [the raku study group](#orge8930eb)
    - [usual links](#org322e342)
  - [finished tests to examine ^methods issues](#org05b2af0)
  - [raku's "move" considered ungood](#orgc10eae6)
    - [move/copy command in Raku doesn't work with directory as second arg](#org16f8287)
    - [<https://docs.raku.org/routine/move>](#orgab4d74d)
    - [we've discussed this one already:](#org5b66749)
    - [an issue: the unix "mv" can do a rename or a refile](#org2a93ade)
  - [rob ransbottom](#org9bcea60)
    - [topics in mind, which are](#orgda7debc)
  - [recent raku topics](#org543bedf)
    - [web scraping:](#org231a19e)
    - [a new "are" method (what are these?)](#org7604e68)
    - [rakudo weekly news](#orge891b9b)
    - [more dwimmy .all ~~ Type](#org38e2fbb)
    - [checking a program is on system](#orgc32f7c7)
    - [parsing wiki syntax, regex vs grammars](#orga0e406b)
  - [sniping at perl, circa 2009](#org06dd9da)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org71c9f38)
  - [equilibirum index](#org4fa924b)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org81b4aac)
    - [revisit this next time (Rob solution?)](#org158f105)
  - [Rob's interested in discussing missing basic tools](#orgad961f7)
  - [weekly challenge this week](#org3fb49aa)
    - [<https://theweeklychallenge.org/>](#org0751d5f)
  - [from previous meetings](#orgbd29844)
    - [an answer to what's Raku for:](#org328ddc4)
    - [gui toolkits](#orgbdd4293)
  - [bill michaels](#org4aeaa01)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org7febd31)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org5370fbd)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org45c045f)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orga65a064)
  - [announcements](#org2cbb696)
    - [May 22nd: next raku study group meeting](#orge9e5231)
    - [June 21-25: tprc: perl/raku conference](#org133ec36)


<a id="orga4e4020"></a>

# meeting notes May 08, 2022


<a id="orge8930eb"></a>

## the raku study group


<a id="org322e342"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org05b2af0"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="orgc10eae6"></a>

## raku's "move" considered ungood


<a id="org16f8287"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="orgab4d74d"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org5b66749"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org2a93ade"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org9bcea60"></a>

## rob ransbottom


<a id="orgda7debc"></a>

### topics in mind, which are


<a id="org543bedf"></a>

## recent raku topics


<a id="org231a19e"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org7604e68"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="orge891b9b"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org38e2fbb"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="orgc32f7c7"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="orga0e406b"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org06dd9da"></a>

## sniping at perl, circa 2009


<a id="org71c9f38"></a>

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


<a id="org4fa924b"></a>

## equilibirum index


<a id="org81b4aac"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org158f105"></a>

### TODO revisit this next time (Rob solution?)


<a id="orgad961f7"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org3fb49aa"></a>

## weekly challenge this week


<a id="org0751d5f"></a>

### <https://theweeklychallenge.org/>


<a id="orgbd29844"></a>

## from previous meetings


<a id="org328ddc4"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgbdd4293"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org4aeaa01"></a>

## bill michaels


<a id="org7febd31"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org5370fbd"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org45c045f"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orga65a064"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org2cbb696"></a>

## announcements


<a id="orge9e5231"></a>

### May 22nd: next raku study group meeting


<a id="org133ec36"></a>

### June 21-25: tprc: perl/raku conference
