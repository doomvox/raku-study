- [meeting notes May 08, 2022](#orga44d6e1)
  - [the raku study group](#org3b3eb12)
    - [usual links](#orgab8921c)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#orgb1bda7e)
    - [<https://news.ycombinator.com/item?id=31259332>](#orgd9f9876)
  - [finished tests to examine ^methods issues](#org21e261d)
  - [review introspection features](#orga78d5a5)
    - [can you know what traits were used](#orgd7ce585)
    - [find all classes](#orgdcb01c5)
    - [more mysteries:](#orgd26e133)
  - [Rob's interested in basic tools (some missing?)](#org3251d82)
    - [e.g. counting lines of code: colc](#org3036f04)
    - [coverage](#org18d1354)
  - [raku's "move" considered ungood](#orga2fb0f0)
    - [move/copy command in Raku doesn't work with directory as second arg](#orgb8b6f61)
    - [<https://docs.raku.org/routine/move>](#org475034f)
    - [we've discussed this one already:](#org905c510)
    - [an issue: the unix "mv" can do a rename or a refile](#org85e8d92)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#orgdf81785)
  - [bruce on the weekly challenge](#org54ea1aa)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>](#orgc101650)
    - [<https://raku-musings.com/sum-sum.html>](#org2ad4886)
  - [rob ransbottom](#orgc8ee89f)
    - [had some topics in mind, which are](#org9715850)
  - [recent raku topics](#org917ff42)
    - [rakudo weekly news](#org61610b8)
    - [web scraping:](#orge4e71d8)
    - [a new "are" method (what are these?)](#org9ebb44c)
    - [more dwimmy .all ~~ Type](#orgf76ea68)
    - [checking a program is on system](#org1e5d62c)
    - [parsing wiki syntax, regex vs grammars](#orgf51b31f)
  - [sniping at perl, circa 2009](#org8d4651b)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org085c206)
  - [equilibirum index](#org058d83c)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orga0daefa)
    - [revisit this next time (Rob solution?)](#org54ad31a)
  - [weekly challenge this week](#org722e793)
    - [<https://theweeklychallenge.org/>](#org051f13c)
  - [from previous meetings](#org241e358)
    - [an answer to what's Raku for:](#org108a675)
    - [gui toolkits](#orgb4983a9)
  - [bill michels](#orgd28c2ef)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orge72e4df)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org7c070a4)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org3bf61c2)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgc0cb439)
  - [announcements](#org8da7ea6)
    - [May 22nd: next raku study group meeting](#orgec9c05d)
    - [June 21-25: tprc: perl/raku conference](#orge59da24)


<a id="orga44d6e1"></a>

# meeting notes May 08, 2022


<a id="org3b3eb12"></a>

## the raku study group


<a id="orgab8921c"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orgb1bda7e"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="orgd9f9876"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="org21e261d"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>
    
    2.  yary suggests: grep for failure cases, and test whether that list is empty


<a id="orga78d5a5"></a>

## TODO review introspection features


<a id="orgd7ce585"></a>

### can you know what traits were used


<a id="orgdcb01c5"></a>

### find all classes

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    1.  <https://github.com/doomvox/perl6-symbol-scan>
    
    2.  /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6
    
    3.  <https://docs.raku.org/type.html>


<a id="orgd26e133"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="org3251d82"></a>

## Rob's interested in basic tools (some missing?)


<a id="org3036f04"></a>

### e.g. counting lines of code: colc


<a id="org18d1354"></a>

### coverage


<a id="orga2fb0f0"></a>

## raku's "move" considered ungood


<a id="orgb8b6f61"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org475034f"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on

    the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org905c510"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>

2.  <https://stackoverflow.com/a/71973303/7270649>


<a id="org85e8d92"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="orgdf81785"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="org54ea1aa"></a>

## bruce on the weekly challenge


<a id="orgc101650"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>

1.  task1: sum bitwise operator

2.  task2: summations


<a id="org2ad4886"></a>

### <https://raku-musings.com/sum-sum.html>


<a id="orgc8ee89f"></a>

## rob ransbottom


<a id="org9715850"></a>

### had some topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="org917ff42"></a>

## recent raku topics


<a id="org61610b8"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="orge4e71d8"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org9ebb44c"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="orgf76ea68"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org1e5d62c"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="orgf51b31f"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org8d4651b"></a>

## sniping at perl, circa 2009


<a id="org085c206"></a>

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


<a id="org058d83c"></a>

## equilibirum index


<a id="orga0daefa"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org54ad31a"></a>

### TODO revisit this next time (Rob solution?)


<a id="org722e793"></a>

## weekly challenge this week


<a id="org051f13c"></a>

### <https://theweeklychallenge.org/>


<a id="org241e358"></a>

## from previous meetings


<a id="org108a675"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgb4983a9"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgd28c2ef"></a>

## bill michels


<a id="orge72e4df"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org7c070a4"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org3bf61c2"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgc0cb439"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org8da7ea6"></a>

## announcements


<a id="orgec9c05d"></a>

### May 22nd: next raku study group meeting


<a id="orge59da24"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
