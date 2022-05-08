- [meeting notes May 08, 2022](#org5b82472)
  - [the raku study group](#org6295526)
    - [usual links](#org8cddc23)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#orga4043b2)
    - [<https://news.ycombinator.com/item?id=31259332>](#org64aa98a)
  - [finished tests to examine ^methods issues](#org21e5b05)
  - [review introspection features](#org046c80e)
    - [find all classes](#orga6c2974)
    - [can you know what traits were used](#orga3a527c)
  - [raku's "move" considered ungood](#org5b44791)
    - [move/copy command in Raku doesn't work with directory as second arg](#org1dd5b4a)
    - [<https://docs.raku.org/routine/move>](#orgbd5243c)
    - [we've discussed this one already:](#org4b61ba4)
    - [an issue: the unix "mv" can do a rename or a refile](#org7a4d35a)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#org843935f)
  - [rob ransbottom](#org5475aa0)
    - [topics in mind, which are](#orgc5e096f)
  - [recent raku topics](#org14f447c)
    - [web scraping:](#org4948565)
    - [a new "are" method (what are these?)](#org3677d6c)
    - [rakudo weekly news](#orgbd70b7a)
    - [more dwimmy .all ~~ Type](#org8c8bef6)
    - [checking a program is on system](#org8960abb)
    - [parsing wiki syntax, regex vs grammars](#org4628eb3)
  - [sniping at perl, circa 2009](#orgd4e9437)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org150da56)
  - [equilibirum index](#org93d5052)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org49a7d5b)
    - [revisit this next time (Rob solution?)](#orge867d65)
  - [Rob's interested in discussing missing basic tools](#orgb686076)
  - [weekly challenge this week](#orga3d9cc3)
    - [<https://theweeklychallenge.org/>](#orgd9f551a)
  - [from previous meetings](#org2c77fba)
    - [an answer to what's Raku for:](#org6b1c243)
    - [gui toolkits](#org2561ed1)
  - [bill michels](#orgbee07ac)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgb752a9c)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org6aad8c6)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgae98619)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org25f5d57)
  - [announcements](#org1850974)
    - [May 22nd: next raku study group meeting](#orgb28fd9d)
    - [June 21-25: tprc: perl/raku conference](#orgb7c4c9b)


<a id="org5b82472"></a>

# meeting notes May 08, 2022


<a id="org6295526"></a>

## the raku study group


<a id="org8cddc23"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orga4043b2"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="org64aa98a"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="org21e5b05"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="org046c80e"></a>

## TODO review introspection features


<a id="orga6c2974"></a>

### find all classes


<a id="orga3a527c"></a>

### can you know what traits were used

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6


<a id="org5b44791"></a>

## raku's "move" considered ungood


<a id="org1dd5b4a"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="orgbd5243c"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org4b61ba4"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org7a4d35a"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org843935f"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="org5475aa0"></a>

## rob ransbottom


<a id="orgc5e096f"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="org14f447c"></a>

## recent raku topics


<a id="org4948565"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org3677d6c"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="orgbd70b7a"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org8c8bef6"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org8960abb"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org4628eb3"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="orgd4e9437"></a>

## sniping at perl, circa 2009


<a id="org150da56"></a>

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


<a id="org93d5052"></a>

## equilibirum index


<a id="org49a7d5b"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orge867d65"></a>

### TODO revisit this next time (Rob solution?)


<a id="orgb686076"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="orga3d9cc3"></a>

## weekly challenge this week


<a id="orgd9f551a"></a>

### <https://theweeklychallenge.org/>


<a id="org2c77fba"></a>

## from previous meetings


<a id="org6b1c243"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org2561ed1"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgbee07ac"></a>

## bill michels


<a id="orgb752a9c"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org6aad8c6"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgae98619"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org25f5d57"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org1850974"></a>

## announcements


<a id="orgb28fd9d"></a>

### May 22nd: next raku study group meeting


<a id="orgb7c4c9b"></a>

### June 21-25: tprc: perl/raku conference
