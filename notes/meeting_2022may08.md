- [meeting notes May 08, 2022](#org9d2426c)
  - [the raku study group](#orgfc5035b)
    - [usual links](#org2aa1e67)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#orgda102ce)
    - [<https://news.ycombinator.com/item?id=31259332>](#orgc9c9bfb)
  - [finished tests to examine ^methods issues](#orgcd69b0d)
  - [review introspection features](#orgd9f7471)
    - [can you know what traits were used](#orgffe9869)
    - [find all classes](#org9e6ae23)
    - [more mysteries:](#orgd7e9655)
  - [Rob's interested in basic tools (some missing?)](#orgfe5913a)
    - [e.g. counting lines of code: colc](#org7d40bc0)
    - [coverage](#org6988446)
  - [raku's "move" considered ungood](#orgf45a63a)
    - [move/copy command in Raku doesn't work with directory as second arg](#orgb3913a9)
    - [<https://docs.raku.org/routine/move>](#orgc61dec0)
    - [we've discussed this one already:](#org69de392)
    - [an issue: the unix "mv" can do a rename or a refile](#org37a9f40)
    - ["rename" seems to do a **copy**, I needed to manually unlink original](#orgc8b83e3)
  - [the weekly challenge](#orgc2aa5a5)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>](#org3ec3464)
    - [<https://raku-musings.com/sum-sum.html>](#org79684bc)
  - [recent raku topics](#org855f660)
    - [rakudo weekly news](#org6ded400)
    - [web scraping:](#org66f3f41)
    - [a new "are" method (what are these?)](#org49a6d6e)
    - [more dwimmy .all ~~ Type](#org426cac9)
    - [checking a program is on system](#orga487fa2)
    - [parsing wiki syntax, regex vs grammars](#orgee96363)
  - [sniping at perl, circa 2009](#org4aa4e0d)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org65ce294)
  - [equilibirum index](#org9d0d541)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgaeb8527)
    - [revisit this next time (Rob solution?)](#org6b4d65a)
  - [weekly challenge this week](#org74b903e)
    - [<https://theweeklychallenge.org/>](#orgd1201eb)
  - [from previous meetings](#orgce04116)
    - [an answer to what's Raku for:](#org6b22402)
    - [gui toolkits](#org24b902a)
  - [bill michels](#orgd04b9a9)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org84d4656)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgb7299bb)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org1c085a6)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org237d1a3)
  - [announcements](#org4188b11)
    - [May 22nd: next raku study group meeting](#org39b78d7)
    - [June 21-25: tprc: perl/raku conference](#orgf7c4d65)


<a id="org9d2426c"></a>

# meeting notes May 08, 2022


<a id="orgfc5035b"></a>

## the raku study group


<a id="org2aa1e67"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orgda102ce"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="orgc9c9bfb"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="orgcd69b0d"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>
    
    2.  yary suggests: grep for failure cases, and test whether that list is empty


<a id="orgd9f7471"></a>

## TODO review introspection features


<a id="orgffe9869"></a>

### can you know what traits were used


<a id="org9e6ae23"></a>

### find all classes

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    1.  <https://github.com/doomvox/perl6-symbol-scan>
    
    2.  /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6
    
    3.  <https://docs.raku.org/type.html>


<a id="orgd7e9655"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="orgfe5913a"></a>

## Rob's interested in basic tools (some missing?)


<a id="org7d40bc0"></a>

### e.g. counting lines of code: colc


<a id="org6988446"></a>

### coverage

1.  bruce gray talked about system perl vs custom installs


<a id="orgf45a63a"></a>

## raku's "move" considered ungood


<a id="orgb3913a9"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="orgc61dec0"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on

    the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org69de392"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>

2.  <https://stackoverflow.com/a/71973303/7270649>


<a id="org37a9f40"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  handles two separate functions, refile and rename
    
        1.  refile happens if last argument is a directory
        
        2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="orgc8b83e3"></a>

### "rename" seems to do a **copy**, I needed to manually unlink original

1.  <https://github.com/doomvox/raku-study/bin/2022mar13/tagger.raku>


<a id="orgc2aa5a5"></a>

## the weekly challenge


<a id="org3ec3464"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>

1.  task1: sum bitwise operator

2.  task2: summations


<a id="org79684bc"></a>

### <https://raku-musings.com/sum-sum.html>


<a id="org855f660"></a>

## recent raku topics


<a id="org6ded400"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org66f3f41"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org49a6d6e"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org426cac9"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="orga487fa2"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="orgee96363"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org4aa4e0d"></a>

## sniping at perl, circa 2009


<a id="org65ce294"></a>

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


<a id="org9d0d541"></a>

## equilibirum index


<a id="orgaeb8527"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org6b4d65a"></a>

### TODO revisit this next time (Rob solution?)


<a id="org74b903e"></a>

## weekly challenge this week


<a id="orgd1201eb"></a>

### <https://theweeklychallenge.org/>


<a id="orgce04116"></a>

## from previous meetings


<a id="org6b22402"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org24b902a"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgd04b9a9"></a>

## bill michels


<a id="org84d4656"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgb7299bb"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org1c085a6"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org237d1a3"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org4188b11"></a>

## announcements


<a id="org39b78d7"></a>

### May 22nd: next raku study group meeting


<a id="orgf7c4d65"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
