- [meeting notes May 08, 2022](#orgf06dcac)
  - [the raku study group](#org5eaf524)
    - [usual links](#org4133eae)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#orgb9526a5)
    - [<https://news.ycombinator.com/item?id=31259332>](#org7ecb022)
  - [finished tests to examine ^methods issues](#org2c5fa1a)
  - [review introspection features](#org9b193c4)
    - [can you know what traits were used](#org12d95ee)
    - [find all classes](#orgea770c2)
    - [more mysteries:](#org6d446fe)
  - [Rob's interested in discussing missing basic tools](#org879bd7d)
    - [e.g. counting lines of code: colc](#org957561d)
    - [coverage](#orge9100a3)
  - [raku's "move" considered ungood](#orga217efb)
    - [move/copy command in Raku doesn't work with directory as second arg](#orgcdf8300)
    - [<https://docs.raku.org/routine/move>](#orgde8e533)
    - [we've discussed this one already:](#orgb7755dc)
    - [an issue: the unix "mv" can do a rename or a refile](#org3eb43a2)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#orgc8d62ed)
  - [bruce on the weekly challenge](#orgecd87c9)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>](#org2e41222)
  - [rob ransbottom](#orgbfde6d0)
    - [had some topics in mind, which are](#org4e44d4a)
  - [recent raku topics](#org49e0499)
    - [rakudo weekly news](#orge85d22d)
    - [web scraping:](#org87fda06)
    - [a new "are" method (what are these?)](#orgad23f42)
    - [more dwimmy .all ~~ Type](#org2105cbb)
    - [checking a program is on system](#org1b956fa)
    - [parsing wiki syntax, regex vs grammars](#org555c819)
  - [sniping at perl, circa 2009](#org9de38aa)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org91f09a0)
  - [equilibirum index](#org3a9c452)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orge0c918f)
    - [revisit this next time (Rob solution?)](#org8327a99)
  - [weekly challenge this week](#orgda690a3)
    - [<https://theweeklychallenge.org/>](#org940090f)
  - [from previous meetings](#orgcd8f1e9)
    - [an answer to what's Raku for:](#org83c5395)
    - [gui toolkits](#orgb3bc177)
  - [bill michels](#org13e7d34)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgf9d1e8c)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org51ba5b8)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org77bdc0b)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgdbd584b)
  - [announcements](#org24eaa53)
    - [May 22nd: next raku study group meeting](#org014e30b)
    - [June 21-25: tprc: perl/raku conference](#org7e0b701)


<a id="orgf06dcac"></a>

# meeting notes May 08, 2022


<a id="org5eaf524"></a>

## the raku study group


<a id="org4133eae"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orgb9526a5"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="org7ecb022"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="org2c5fa1a"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>
    
    2.  yary suggests: grep for failure cases, and test whether that list is empty


<a id="org9b193c4"></a>

## TODO review introspection features


<a id="org12d95ee"></a>

### can you know what traits were used


<a id="orgea770c2"></a>

### find all classes

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6


<a id="org6d446fe"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="org879bd7d"></a>

## Rob's interested in discussing missing basic tools


<a id="org957561d"></a>

### e.g. counting lines of code: colc


<a id="orge9100a3"></a>

### coverage


<a id="orga217efb"></a>

## raku's "move" considered ungood


<a id="orgcdf8300"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="orgde8e533"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on

    the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="orgb7755dc"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>

2.  <https://stackoverflow.com/a/71973303/7270649>


<a id="org3eb43a2"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="orgc8d62ed"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="orgecd87c9"></a>

## bruce on the weekly challenge


<a id="org2e41222"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>

1.  task1: sum bitwise operator

2.  task2: summations


<a id="orgbfde6d0"></a>

## rob ransbottom


<a id="org4e44d4a"></a>

### had some topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="org49e0499"></a>

## recent raku topics


<a id="orge85d22d"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org87fda06"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="orgad23f42"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org2105cbb"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org1b956fa"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org555c819"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org9de38aa"></a>

## sniping at perl, circa 2009


<a id="org91f09a0"></a>

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


<a id="org3a9c452"></a>

## equilibirum index


<a id="orge0c918f"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org8327a99"></a>

### TODO revisit this next time (Rob solution?)


<a id="orgda690a3"></a>

## weekly challenge this week


<a id="org940090f"></a>

### <https://theweeklychallenge.org/>


<a id="orgcd8f1e9"></a>

## from previous meetings


<a id="org83c5395"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgb3bc177"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org13e7d34"></a>

## bill michels


<a id="orgf9d1e8c"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org51ba5b8"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org77bdc0b"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgdbd584b"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org24eaa53"></a>

## announcements


<a id="org014e30b"></a>

### May 22nd: next raku study group meeting


<a id="org7e0b701"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
