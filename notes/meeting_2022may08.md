- [meeting notes May 08, 2022](#orgdba572c)
  - [the raku study group](#orgc8cd2fe)
    - [usual links](#org57f41c8)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#org83f5731)
    - [<https://news.ycombinator.com/item?id=31259332>](#org4f5a1c7)
  - [finished tests to examine ^methods issues](#orgbbf5134)
  - [raku's "move" considered ungood](#orga6df394)
    - [move/copy command in Raku doesn't work with directory as second arg](#orgb3e3b0d)
    - [<https://docs.raku.org/routine/move>](#orgd00c864)
    - [we've discussed this one already:](#org4c60207)
    - [an issue: the unix "mv" can do a rename or a refile](#org89a01b3)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#org1d4eb54)
  - [rob ransbottom](#orgbf39ac9)
    - [topics in mind, which are](#orga9043fb)
  - [recent raku topics](#orga991cdb)
    - [web scraping:](#org00d87f4)
    - [a new "are" method (what are these?)](#org89b3ed6)
    - [rakudo weekly news](#org63dd530)
    - [more dwimmy .all ~~ Type](#org1ead2ce)
    - [checking a program is on system](#org7403d7b)
    - [parsing wiki syntax, regex vs grammars](#org5538467)
  - [sniping at perl, circa 2009](#org14b10dc)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org88ef917)
  - [equilibirum index](#orgb29ec9a)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgf8516a2)
    - [revisit this next time (Rob solution?)](#orgb8851e9)
  - [Rob's interested in discussing missing basic tools](#org76f7793)
  - [weekly challenge this week](#orge988c73)
    - [<https://theweeklychallenge.org/>](#orgd235d5c)
  - [from previous meetings](#org35e6fcb)
    - [an answer to what's Raku for:](#orgee2fb01)
    - [gui toolkits](#org9d8e124)
  - [bill michels](#orgc2bc012)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org9dbc14c)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org7ebae59)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org42ba796)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgd236af1)
  - [announcements](#orgadbe5a3)
    - [May 22nd: next raku study group meeting](#orga2bcd19)
    - [June 21-25: tprc: perl/raku conference](#org1529138)


<a id="orgdba572c"></a>

# meeting notes May 08, 2022


<a id="orgc8cd2fe"></a>

## the raku study group


<a id="org57f41c8"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org83f5731"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="org4f5a1c7"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="orgbbf5134"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="orga6df394"></a>

## raku's "move" considered ungood


<a id="orgb3e3b0d"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="orgd00c864"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org4c60207"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org89a01b3"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org1d4eb54"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="orgbf39ac9"></a>

## rob ransbottom


<a id="orga9043fb"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="orga991cdb"></a>

## recent raku topics


<a id="org00d87f4"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org89b3ed6"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org63dd530"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org1ead2ce"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org7403d7b"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org5538467"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org14b10dc"></a>

## sniping at perl, circa 2009


<a id="org88ef917"></a>

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


<a id="orgb29ec9a"></a>

## equilibirum index


<a id="orgf8516a2"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orgb8851e9"></a>

### TODO revisit this next time (Rob solution?)


<a id="org76f7793"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="orge988c73"></a>

## weekly challenge this week


<a id="orgd235d5c"></a>

### <https://theweeklychallenge.org/>


<a id="org35e6fcb"></a>

## from previous meetings


<a id="orgee2fb01"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org9d8e124"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgc2bc012"></a>

## bill michels


<a id="org9dbc14c"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org7ebae59"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org42ba796"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgd236af1"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgadbe5a3"></a>

## announcements


<a id="orga2bcd19"></a>

### May 22nd: next raku study group meeting


<a id="org1529138"></a>

### June 21-25: tprc: perl/raku conference
