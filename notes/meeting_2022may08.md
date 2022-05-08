- [meeting notes May 08, 2022](#org717b91e)
  - [the raku study group](#orgaf1f167)
    - [usual links](#org893f700)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#org16c7c1f)
    - [<https://news.ycombinator.com/item?id=31259332>](#org9018070)
  - [finished tests to examine ^methods issues](#org862afb2)
  - [raku's "move" considered ungood](#org952eda8)
    - [move/copy command in Raku doesn't work with directory as second arg](#org115c561)
    - [<https://docs.raku.org/routine/move>](#orgf62a8a4)
    - [we've discussed this one already:](#orgd06e0dc)
    - [an issue: the unix "mv" can do a rename or a refile](#org94ca371)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#org34c80e2)
  - [rob ransbottom](#orgf10094c)
    - [topics in mind, which are](#orgcd490fd)
  - [recent raku topics](#org544df3e)
    - [web scraping:](#org970750e)
    - [a new "are" method (what are these?)](#org113b533)
    - [rakudo weekly news](#org4b4af78)
    - [more dwimmy .all ~~ Type](#orgc21df08)
    - [checking a program is on system](#org1d13eda)
    - [parsing wiki syntax, regex vs grammars](#orgb46fa77)
  - [sniping at perl, circa 2009](#orgb7aaa5b)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org4710b39)
  - [equilibirum index](#orgc18d055)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org54150ec)
    - [revisit this next time (Rob solution?)](#org5b0b034)
  - [Rob's interested in discussing missing basic tools](#org6fc72bf)
  - [weekly challenge this week](#org4ba22e4)
    - [<https://theweeklychallenge.org/>](#org5fcbc71)
  - [from previous meetings](#orge0d2a12)
    - [an answer to what's Raku for:](#org94e6d97)
    - [gui toolkits](#org9669c4d)
  - [bill michels](#org9028052)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org1742d6f)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org721d0da)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgdca14f2)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org1522c3a)
  - [announcements](#org0345df5)
    - [May 22nd: next raku study group meeting](#org564cb04)
    - [June 21-25: tprc: perl/raku conference](#org3d3ee41)


<a id="org717b91e"></a>

# meeting notes May 08, 2022


<a id="orgaf1f167"></a>

## the raku study group


<a id="org893f700"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org16c7c1f"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="org9018070"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="org862afb2"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="org952eda8"></a>

## raku's "move" considered ungood


<a id="org115c561"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="orgf62a8a4"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="orgd06e0dc"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org94ca371"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org34c80e2"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="orgf10094c"></a>

## rob ransbottom


<a id="orgcd490fd"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="org544df3e"></a>

## recent raku topics


<a id="org970750e"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org113b533"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org4b4af78"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="orgc21df08"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org1d13eda"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="orgb46fa77"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="orgb7aaa5b"></a>

## sniping at perl, circa 2009


<a id="org4710b39"></a>

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


<a id="orgc18d055"></a>

## equilibirum index


<a id="org54150ec"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org5b0b034"></a>

### TODO revisit this next time (Rob solution?)


<a id="org6fc72bf"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org4ba22e4"></a>

## weekly challenge this week


<a id="org5fcbc71"></a>

### <https://theweeklychallenge.org/>


<a id="orge0d2a12"></a>

## from previous meetings


<a id="org94e6d97"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org9669c4d"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org9028052"></a>

## bill michels


<a id="org1742d6f"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org721d0da"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgdca14f2"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org1522c3a"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org0345df5"></a>

## announcements


<a id="org564cb04"></a>

### May 22nd: next raku study group meeting


<a id="org3d3ee41"></a>

### June 21-25: tprc: perl/raku conference
