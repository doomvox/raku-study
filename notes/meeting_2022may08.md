- [meeting notes May 08, 2022](#org4b54171)
  - [the raku study group](#org34171ac)
    - [usual links](#org8865328)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#orga17e9d1)
    - [<https://news.ycombinator.com/item?id=31259332>](#org2290d49)
  - [finished tests to examine ^methods issues](#orgc4f3214)
  - [review introspection features](#org893d737)
    - [can you know what traits were used](#orge75ee9a)
    - [find all classes](#org5a75c70)
    - [more mysteries:](#org9506676)
  - [Rob's interested in basic tools (some missing?)](#org9fffe07)
    - [e.g. counting lines of code: colc](#org557594c)
    - [coverage](#org42d0aa3)
  - [raku's "move" considered ungood](#org78b9d6c)
    - [move/copy command in Raku doesn't work with directory as second arg](#org3cb164b)
    - [<https://docs.raku.org/routine/move>](#org1d056ed)
    - [we've discussed this one already:](#org148f9f6)
    - [an issue: the unix "mv" can do a rename or a refile](#org97ce788)
    - ["rename" seems to do a **copy**, I needed to manually unlink original](#org8078046)
  - [bruce on the weekly challenge](#org6621b2b)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>](#org21bce3f)
    - [<https://raku-musings.com/sum-sum.html>](#orgad01e98)
  - [rob ransbottom](#org70804e7)
    - [had some topics in mind, which are](#orgdeae498)
  - [recent raku topics](#org57f816b)
    - [rakudo weekly news](#org66e20cb)
    - [web scraping:](#orge36bc42)
    - [a new "are" method (what are these?)](#org76cec04)
    - [more dwimmy .all ~~ Type](#orgfb66e37)
    - [checking a program is on system](#org2a5049a)
    - [parsing wiki syntax, regex vs grammars](#org0bd2434)
  - [sniping at perl, circa 2009](#orgfcf8150)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgb2d3ff4)
  - [equilibirum index](#org3607f59)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgceb89b6)
    - [revisit this next time (Rob solution?)](#orgf0b0e18)
  - [weekly challenge this week](#org7c6ffbe)
    - [<https://theweeklychallenge.org/>](#orgc5b01a5)
  - [from previous meetings](#org8c84cea)
    - [an answer to what's Raku for:](#org40911ac)
    - [gui toolkits](#org4275d6f)
  - [bill michels](#org9d95eb3)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org77c09a2)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgc611590)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org9d54ae3)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org3fbd7b8)
  - [announcements](#orge3b9cb6)
    - [May 22nd: next raku study group meeting](#orgf5dd93a)
    - [June 21-25: tprc: perl/raku conference](#org771bd5e)


<a id="org4b54171"></a>

# meeting notes May 08, 2022


<a id="org34171ac"></a>

## the raku study group


<a id="org8865328"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orga17e9d1"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="org2290d49"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="orgc4f3214"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>
    
    2.  yary suggests: grep for failure cases, and test whether that list is empty


<a id="org893d737"></a>

## TODO review introspection features


<a id="orge75ee9a"></a>

### can you know what traits were used


<a id="org5a75c70"></a>

### find all classes

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    1.  <https://github.com/doomvox/perl6-symbol-scan>
    
    2.  /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6
    
    3.  <https://docs.raku.org/type.html>


<a id="org9506676"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="org9fffe07"></a>

## Rob's interested in basic tools (some missing?)


<a id="org557594c"></a>

### e.g. counting lines of code: colc


<a id="org42d0aa3"></a>

### coverage


<a id="org78b9d6c"></a>

## raku's "move" considered ungood


<a id="org3cb164b"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org1d056ed"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on

    the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org148f9f6"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>

2.  <https://stackoverflow.com/a/71973303/7270649>


<a id="org97ce788"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  handles two separate functions, refile and rename
    
        1.  refile happens if last argument is a directory
        
        2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org8078046"></a>

### "rename" seems to do a **copy**, I needed to manually unlink original

<https://github.com/doomvox/raku-study/bin/2022mar13/tagger.raku>


<a id="org6621b2b"></a>

## bruce on the weekly challenge


<a id="org21bce3f"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>

1.  task1: sum bitwise operator

2.  task2: summations


<a id="orgad01e98"></a>

### <https://raku-musings.com/sum-sum.html>


<a id="org70804e7"></a>

## rob ransbottom


<a id="orgdeae498"></a>

### had some topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="org57f816b"></a>

## recent raku topics


<a id="org66e20cb"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="orge36bc42"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org76cec04"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="orgfb66e37"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org2a5049a"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org0bd2434"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="orgfcf8150"></a>

## sniping at perl, circa 2009


<a id="orgb2d3ff4"></a>

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


<a id="org3607f59"></a>

## equilibirum index


<a id="orgceb89b6"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orgf0b0e18"></a>

### TODO revisit this next time (Rob solution?)


<a id="org7c6ffbe"></a>

## weekly challenge this week


<a id="orgc5b01a5"></a>

### <https://theweeklychallenge.org/>


<a id="org8c84cea"></a>

## from previous meetings


<a id="org40911ac"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org4275d6f"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org9d95eb3"></a>

## bill michels


<a id="org77c09a2"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgc611590"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org9d54ae3"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org3fbd7b8"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orge3b9cb6"></a>

## announcements


<a id="orgf5dd93a"></a>

### May 22nd: next raku study group meeting


<a id="org771bd5e"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
