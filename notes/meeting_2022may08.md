- [meeting notes May 08, 2022](#org14808b6)
  - [the raku study group](#orgf01e66e)
    - [usual links](#org244d953)
  - [finished tests to examine ^methods issues](#org07bdd3f)
  - [raku's "move" considered ungood](#orged9d49f)
    - [move/copy command in Raku doesn't work with directory as second arg](#orgeabbe32)
    - [<https://docs.raku.org/routine/move>](#org7648da9)
    - [we've discussed this one already:](#org07afc88)
    - [an issue: the unix "mv" can do a rename or a refile](#orgc25df83)
  - [recent raku topics](#org73b4547)
    - [web scraping:](#org0b60c5b)
    - [a new "are" method (what are these?)](#org79b42d0)
    - [rakudo weekly news](#org16e2e90)
    - [more dwimmy .all ~~ Type](#orgcc10485)
    - [checking a program is on system](#orged93079)
    - [parsing wiki syntax, regex vs grammars](#org6c4688f)
  - [sniping at perl, circa 2009](#orge08ca55)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org1e79d46)
  - [equilibirum index](#org6643502)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org939bf2e)
    - [revisit this next time (Rob solution?)](#org40a26e5)
  - [Rob's interested in discussing missing basic tools](#orgdcbc759)
  - [weekly challenge this week](#org250a3ce)
    - [<https://theweeklychallenge.org/>](#orgef0a889)
  - [from previous meetings](#org0d6b85d)
    - [an answer to what's Raku for:](#orgb383139)
    - [gui toolkits](#orgab5802f)
  - [bill michaels](#org9441519)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org7b1106e)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgb2cdd34)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgf1f50b3)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org182f0f3)
  - [announcements](#org32fec68)
    - [May 22nd: next raku study group meeting](#org364e0c7)
    - [June 21-25: tprc: perl/raku conference](#orgdc4292a)


<a id="org14808b6"></a>

# meeting notes May 08, 2022


<a id="orgf01e66e"></a>

## the raku study group


<a id="org244d953"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org07bdd3f"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="orged9d49f"></a>

## raku's "move" considered ungood


<a id="orgeabbe32"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org7648da9"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org07afc88"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="orgc25df83"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix


<a id="org73b4547"></a>

## recent raku topics


<a id="org0b60c5b"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org79b42d0"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org16e2e90"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="orgcc10485"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="orged93079"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org6c4688f"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="orge08ca55"></a>

## sniping at perl, circa 2009


<a id="org1e79d46"></a>

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


<a id="org6643502"></a>

## equilibirum index


<a id="org939bf2e"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org40a26e5"></a>

### TODO revisit this next time (Rob solution?)


<a id="orgdcbc759"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org250a3ce"></a>

## weekly challenge this week


<a id="orgef0a889"></a>

### <https://theweeklychallenge.org/>


<a id="org0d6b85d"></a>

## from previous meetings


<a id="orgb383139"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgab5802f"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org9441519"></a>

## bill michaels


<a id="org7b1106e"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgb2cdd34"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgf1f50b3"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org182f0f3"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org32fec68"></a>

## announcements


<a id="org364e0c7"></a>

### May 22nd: next raku study group meeting


<a id="orgdc4292a"></a>

### June 21-25: tprc: perl/raku conference
