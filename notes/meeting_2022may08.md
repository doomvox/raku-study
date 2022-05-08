- [meeting notes May 08, 2022](#orgd9626de)
  - [the raku study group](#org5e53e73)
    - [usual links](#org5a4a62d)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#org1caeca7)
  - [finished tests to examine ^methods issues](#org9423006)
  - [raku's "move" considered ungood](#orgd02c008)
    - [move/copy command in Raku doesn't work with directory as second arg](#org43ad5e2)
    - [<https://docs.raku.org/routine/move>](#orgfcbe3ed)
    - [we've discussed this one already:](#org9212de5)
    - [an issue: the unix "mv" can do a rename or a refile](#org1b99d15)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#org5da4b3a)
  - [rob ransbottom](#org904f33b)
    - [topics in mind, which are](#orgab01376)
  - [recent raku topics](#org0fbfe15)
    - [web scraping:](#orgdb7a903)
    - [a new "are" method (what are these?)](#org2b93c2f)
    - [rakudo weekly news](#org96570a6)
    - [more dwimmy .all ~~ Type](#orgb0b7295)
    - [checking a program is on system](#org8585acb)
    - [parsing wiki syntax, regex vs grammars](#org5f1cbb8)
  - [sniping at perl, circa 2009](#orgfe1e6a9)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org189e762)
  - [equilibirum index](#orge453252)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org70fdbac)
    - [revisit this next time (Rob solution?)](#org5845379)
  - [Rob's interested in discussing missing basic tools](#org4b84128)
  - [weekly challenge this week](#orgd0fb04b)
    - [<https://theweeklychallenge.org/>](#orgd910079)
  - [from previous meetings](#org21fc40e)
    - [an answer to what's Raku for:](#orgd0a0f24)
    - [gui toolkits](#org28efd08)
  - [bill michels](#org9cb9d0a)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgd45398a)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org46825c5)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org9eebd46)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orga9f679a)
  - [announcements](#org4197dbb)
    - [May 22nd: next raku study group meeting](#org70a6a01)
    - [June 21-25: tprc: perl/raku conference](#org1fcd2e9)


<a id="orgd9626de"></a>

# meeting notes May 08, 2022


<a id="org5e53e73"></a>

## the raku study group


<a id="org5a4a62d"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org1caeca7"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="org9423006"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="orgd02c008"></a>

## raku's "move" considered ungood


<a id="org43ad5e2"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="orgfcbe3ed"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org9212de5"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org1b99d15"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org5da4b3a"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="org904f33b"></a>

## rob ransbottom


<a id="orgab01376"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="org0fbfe15"></a>

## recent raku topics


<a id="orgdb7a903"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org2b93c2f"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org96570a6"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="orgb0b7295"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org8585acb"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org5f1cbb8"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="orgfe1e6a9"></a>

## sniping at perl, circa 2009


<a id="org189e762"></a>

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


<a id="orge453252"></a>

## equilibirum index


<a id="org70fdbac"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org5845379"></a>

### TODO revisit this next time (Rob solution?)


<a id="org4b84128"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="orgd0fb04b"></a>

## weekly challenge this week


<a id="orgd910079"></a>

### <https://theweeklychallenge.org/>


<a id="org21fc40e"></a>

## from previous meetings


<a id="orgd0a0f24"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org28efd08"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org9cb9d0a"></a>

## bill michels


<a id="orgd45398a"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org46825c5"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org9eebd46"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orga9f679a"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org4197dbb"></a>

## announcements


<a id="org70a6a01"></a>

### May 22nd: next raku study group meeting


<a id="org1fcd2e9"></a>

### June 21-25: tprc: perl/raku conference
