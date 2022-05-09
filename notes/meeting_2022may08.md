- [meeting notes May 08, 2022](#org8060ae4)
  - [the raku study group](#org19ed942)
    - [usual links](#orgc581b8b)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#org14df8f6)
    - [<https://news.ycombinator.com/item?id=31259332>](#org8b0d3d1)
  - [finished tests to examine ^methods issues](#org5159bf2)
  - [review introspection features](#orgae2b7e3)
    - [can you know what traits were used](#org7cda781)
    - [find all classes](#org56a559d)
    - [more mysteries:](#org5b4bf41)
  - [Rob's interested in discussing missing basic tools](#org832e210)
    - [e.g. counting lines of code: colc](#orgc704f9b)
    - [coverage](#org57ac9d6)
  - [raku's "move" considered ungood](#org24d8c96)
    - [move/copy command in Raku doesn't work with directory as second arg](#org3536495)
    - [<https://docs.raku.org/routine/move>](#orgc8f8466)
    - [we've discussed this one already:](#orgeeb4ef9)
    - [an issue: the unix "mv" can do a rename or a refile](#org67dbed0)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#org8ec2914)
  - [bruce on the weekly challenge](#orgcae86ac)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>](#org585e8b2)
    - [<https://raku-musings.com/sum-sum.html>](#org3517d21)
  - [rob ransbottom](#org2e38f9f)
    - [had some topics in mind, which are](#org34b392a)
  - [recent raku topics](#orge408a1e)
    - [rakudo weekly news](#org87690c6)
    - [web scraping:](#org776e0e2)
    - [a new "are" method (what are these?)](#org716d7ac)
    - [more dwimmy .all ~~ Type](#org7294d37)
    - [checking a program is on system](#org8693f73)
    - [parsing wiki syntax, regex vs grammars](#org4d52b8c)
  - [sniping at perl, circa 2009](#org540d55a)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org840d6f4)
  - [equilibirum index](#org0930d9f)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org61d8e2a)
    - [revisit this next time (Rob solution?)](#org319affc)
  - [weekly challenge this week](#org1bc58e7)
    - [<https://theweeklychallenge.org/>](#org617d0a8)
  - [from previous meetings](#org3177a3a)
    - [an answer to what's Raku for:](#orgc40c569)
    - [gui toolkits](#org8c4dda5)
  - [bill michels](#orgf676438)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org8e66764)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org353d5bb)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org572b6c2)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org88e639d)
  - [announcements](#org0d1e73c)
    - [May 22nd: next raku study group meeting](#orgcb1229f)
    - [June 21-25: tprc: perl/raku conference](#org5103246)


<a id="org8060ae4"></a>

# meeting notes May 08, 2022


<a id="org19ed942"></a>

## the raku study group


<a id="orgc581b8b"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org14df8f6"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="org8b0d3d1"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="org5159bf2"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>
    
    2.  yary suggests: grep for failure cases, and test whether that list is empty


<a id="orgae2b7e3"></a>

## TODO review introspection features


<a id="org7cda781"></a>

### can you know what traits were used


<a id="org56a559d"></a>

### find all classes

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    1.  <https://github.com/doomvox/perl6-symbol-scan>
    
    2.  /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6
    
    3.  <https://docs.raku.org/type.html>


<a id="org5b4bf41"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="org832e210"></a>

## Rob's interested in discussing missing basic tools


<a id="orgc704f9b"></a>

### e.g. counting lines of code: colc


<a id="org57ac9d6"></a>

### coverage


<a id="org24d8c96"></a>

## raku's "move" considered ungood


<a id="org3536495"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="orgc8f8466"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on

    the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="orgeeb4ef9"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>

2.  <https://stackoverflow.com/a/71973303/7270649>


<a id="org67dbed0"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org8ec2914"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="orgcae86ac"></a>

## bruce on the weekly challenge


<a id="org585e8b2"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>

1.  task1: sum bitwise operator

2.  task2: summations


<a id="org3517d21"></a>

### <https://raku-musings.com/sum-sum.html>


<a id="org2e38f9f"></a>

## rob ransbottom


<a id="org34b392a"></a>

### had some topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="orge408a1e"></a>

## recent raku topics


<a id="org87690c6"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org776e0e2"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org716d7ac"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org7294d37"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org8693f73"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org4d52b8c"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org540d55a"></a>

## sniping at perl, circa 2009


<a id="org840d6f4"></a>

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


<a id="org0930d9f"></a>

## equilibirum index


<a id="org61d8e2a"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org319affc"></a>

### TODO revisit this next time (Rob solution?)


<a id="org1bc58e7"></a>

## weekly challenge this week


<a id="org617d0a8"></a>

### <https://theweeklychallenge.org/>


<a id="org3177a3a"></a>

## from previous meetings


<a id="orgc40c569"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org8c4dda5"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgf676438"></a>

## bill michels


<a id="org8e66764"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org353d5bb"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org572b6c2"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org88e639d"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org0d1e73c"></a>

## announcements


<a id="orgcb1229f"></a>

### May 22nd: next raku study group meeting


<a id="org5103246"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
