- [meeting notes May 08, 2022](#org32ea9c8)
  - [the raku study group](#orgacf6dd6)
    - [usual links](#orge80111d)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#orgba7dbf2)
    - [<https://news.ycombinator.com/item?id=31259332>](#org67fe062)
  - [finished tests to examine ^methods issues](#org25135db)
  - [review introspection features](#org3aa1136)
    - [can you know what traits were used](#org8bb1d59)
    - [find all classes](#org1520182)
    - [more mysteries:](#org5fdc7bc)
  - [Rob's interested in discussing missing basic tools](#orgfaadd60)
    - [e.g. counting lines of code: colc](#orgb929e40)
    - [coverage](#org4282fed)
  - [raku's "move" considered ungood](#orgb7a70a7)
    - [move/copy command in Raku doesn't work with directory as second arg](#orgf8bfcae)
    - [<https://docs.raku.org/routine/move>](#orgf77481a)
    - [we've discussed this one already:](#org6e04f9d)
    - [an issue: the unix "mv" can do a rename or a refile](#orge801615)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#org1e8fb51)
  - [bruce on the weekly challenge](#orgb338c4a)
  - [rob ransbottom](#org67063db)
    - [topics in mind, which are](#orga8e684d)
  - [recent raku topics](#org8022d15)
    - [web scraping:](#orgb517acf)
    - [a new "are" method (what are these?)](#org0e0417c)
    - [rakudo weekly news](#org4bb870c)
    - [more dwimmy .all ~~ Type](#org0293aeb)
    - [checking a program is on system](#orgebdaae4)
    - [parsing wiki syntax, regex vs grammars](#orge69fe91)
  - [sniping at perl, circa 2009](#org78568d5)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org9511d03)
  - [equilibirum index](#org1c62927)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org13c689d)
    - [revisit this next time (Rob solution?)](#orgf11870e)
  - [weekly challenge this week](#orgd061baa)
    - [<https://theweeklychallenge.org/>](#orgb1b6e9a)
  - [from previous meetings](#org0bc496d)
    - [an answer to what's Raku for:](#org44a7c75)
    - [gui toolkits](#org4463829)
  - [bill michels](#orga4c6ed2)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org3c210e9)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org7b4a66d)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org153c06c)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orga38360f)
  - [announcements](#org3de2256)
    - [May 22nd: next raku study group meeting](#org1fbbbec)
    - [June 21-25: tprc: perl/raku conference](#org1bb8434)


<a id="org32ea9c8"></a>

# meeting notes May 08, 2022


<a id="orgacf6dd6"></a>

## the raku study group


<a id="orge80111d"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orgba7dbf2"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="org67fe062"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="org25135db"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>
    
    2.  yary suggests: grep for failure cases, and test whether that list is empty


<a id="org3aa1136"></a>

## TODO review introspection features


<a id="org8bb1d59"></a>

### can you know what traits were used


<a id="org1520182"></a>

### find all classes

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6


<a id="org5fdc7bc"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="orgfaadd60"></a>

## Rob's interested in discussing missing basic tools


<a id="orgb929e40"></a>

### e.g. counting lines of code: colc


<a id="org4282fed"></a>

### coverage


<a id="orgb7a70a7"></a>

## raku's "move" considered ungood


<a id="orgf8bfcae"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="orgf77481a"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org6e04f9d"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>

2.  <https://stackoverflow.com/a/71973303/7270649>


<a id="orge801615"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org1e8fb51"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="orgb338c4a"></a>

## bruce on the weekly challenge

<https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>


<a id="org67063db"></a>

## rob ransbottom


<a id="orga8e684d"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="org8022d15"></a>

## recent raku topics


<a id="orgb517acf"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org0e0417c"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org4bb870c"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org0293aeb"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="orgebdaae4"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="orge69fe91"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org78568d5"></a>

## sniping at perl, circa 2009


<a id="org9511d03"></a>

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


<a id="org1c62927"></a>

## equilibirum index


<a id="org13c689d"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orgf11870e"></a>

### TODO revisit this next time (Rob solution?)


<a id="orgd061baa"></a>

## weekly challenge this week


<a id="orgb1b6e9a"></a>

### <https://theweeklychallenge.org/>


<a id="org0bc496d"></a>

## from previous meetings


<a id="org44a7c75"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org4463829"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orga4c6ed2"></a>

## bill michels


<a id="org3c210e9"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org7b4a66d"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org153c06c"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orga38360f"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org3de2256"></a>

## announcements


<a id="org1fbbbec"></a>

### May 22nd: next raku study group meeting


<a id="org1bb8434"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial
