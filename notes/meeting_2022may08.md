- [meeting notes May 08, 2022](#orgeb8fbcd)
  - [the raku study group](#org1b3ca35)
    - [usual links](#org4755528)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#org2b87fad)
    - [<https://news.ycombinator.com/item?id=31259332>](#org8ff55f1)
  - [finished tests to examine ^methods issues](#orge955bbc)
  - [review introspection features](#orgc89568d)
    - [can you know what traits were used](#orge94d4c5)
    - [find all classes](#org943b4e1)
    - [more mysteries:](#orgc6a4e51)
  - [Rob's interested in basic tools (some missing?)](#org04f0f38)
    - [e.g. counting lines of code: colc](#orge7b083f)
    - [coverage](#org1b7efe0)
  - [raku's "move" considered ungood](#org09f8e08)
    - [move/copy command in Raku doesn't work with directory as second arg](#org277ebe9)
    - [<https://docs.raku.org/routine/move>](#org0ca89cf)
    - [we've discussed this one already:](#orgf9a9704)
    - [an issue: the unix "mv" can do a rename or a refile](#orgeca689a)
    - ["rename" seems to do a **copy**, I needed to manually unlink original](#org075348c)
  - [the weekly challenge](#orgbed2c27)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>](#org71b5986)
    - [<https://raku-musings.com/sum-sum.html>](#orgd670499)
  - [recent raku topics](#org8184826)
    - [rakudo weekly news](#org339778f)
    - [web scraping:](#orgffb6db9)
    - [a new "are" method (what are these?)](#orgb49d653)
    - [more dwimmy .all ~~ Type](#org75a65f6)
    - [checking a program is on system](#orge66a7a1)
    - [parsing wiki syntax, regex vs grammars](#org41f74ff)
  - [sniping at perl, circa 2009](#org163e170)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orge804f8f)
  - [equilibirum index](#org4c22870)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org4772164)
    - [revisit this next time (Rob solution?)](#org000f788)
  - [weekly challenge this week](#org3ade26f)
    - [<https://theweeklychallenge.org/>](#orgb741ef5)
  - [from previous meetings](#org01273cb)
    - [an answer to what's Raku for:](#org5e0b1f8)
    - [gui toolkits](#org73a69a0)
  - [bill michels](#org71f9aa3)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org4f8ba8a)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org79cc45e)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgd49cfab)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org1e9c8c4)
  - [announcements](#orgae4a088)
    - [May 22nd: next raku study group meeting](#org1840513)
    - [June 21-25: tprc: perl/raku conference](#org30550d4)


<a id="orgeb8fbcd"></a>

# meeting notes May 08, 2022


<a id="org1b3ca35"></a>

## the raku study group


<a id="org4755528"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org2b87fad"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="org8ff55f1"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="orge955bbc"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>
    
    2.  yary suggests: grep for failure cases, and test whether that list is empty


<a id="orgc89568d"></a>

## TODO review introspection features


<a id="orge94d4c5"></a>

### can you know what traits were used


<a id="org943b4e1"></a>

### find all classes

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    1.  <https://github.com/doomvox/perl6-symbol-scan>
    
    2.  /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6
    
    3.  <https://docs.raku.org/type.html>


<a id="orgc6a4e51"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="org04f0f38"></a>

## Rob's interested in basic tools (some missing?)


<a id="orge7b083f"></a>

### e.g. counting lines of code: colc


<a id="org1b7efe0"></a>

### coverage

1.  bruce gray talked about system perl vs custom installs


<a id="org09f8e08"></a>

## raku's "move" considered ungood


<a id="org277ebe9"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org0ca89cf"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on

    the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="orgf9a9704"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>

2.  <https://stackoverflow.com/a/71973303/7270649>


<a id="orgeca689a"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  handles two separate functions: refile and rename
    
        1.  refile happens if last argument is a directory
        
        2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org075348c"></a>

### "rename" seems to do a **copy**, I needed to manually unlink original

1.  <https://github.com/doomvox/raku-study/bin/2022mar13/tagger.raku>


<a id="orgbed2c27"></a>

## the weekly challenge


<a id="org71b5986"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>

1.  task1: sum bitwise operator

2.  task2: summations


<a id="orgd670499"></a>

### <https://raku-musings.com/sum-sum.html>


<a id="org8184826"></a>

## recent raku topics


<a id="org339778f"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="orgffb6db9"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="orgb49d653"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org75a65f6"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="orge66a7a1"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org41f74ff"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org163e170"></a>

## sniping at perl, circa 2009


<a id="orge804f8f"></a>

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


<a id="org4c22870"></a>

## equilibirum index


<a id="org4772164"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org000f788"></a>

### TODO revisit this next time (Rob solution?)


<a id="org3ade26f"></a>

## weekly challenge this week


<a id="orgb741ef5"></a>

### <https://theweeklychallenge.org/>


<a id="org01273cb"></a>

## from previous meetings


<a id="org5e0b1f8"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org73a69a0"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org71f9aa3"></a>

## bill michels


<a id="org4f8ba8a"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org79cc45e"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgd49cfab"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org1e9c8c4"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgae4a088"></a>

## announcements


<a id="org1840513"></a>

### May 22nd: next raku study group meeting


<a id="org30550d4"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
