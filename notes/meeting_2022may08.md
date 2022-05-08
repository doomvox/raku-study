- [meeting notes May 08, 2022](#orge48b3f5)
  - [the raku study group](#org2d494de)
    - [usual links](#orgcf24c8e)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#orgd98ae30)
    - [<https://news.ycombinator.com/item?id=31259332>](#org6892398)
  - [finished tests to examine ^methods issues](#org1410574)
  - [review introspection features](#org3cc090a)
    - [can you know what traits were used](#org157f0bc)
    - [find all classes](#org9dab31e)
    - [more mysteries:](#orgfa6bf90)
  - [Rob's interested in discussing missing basic tools](#org04d2fc2)
    - [e.g. counting lines of code: colc](#orgf59e70a)
    - [coverage](#org7636204)
  - [raku's "move" considered ungood](#org50ae6d9)
    - [move/copy command in Raku doesn't work with directory as second arg](#org3dba1be)
    - [<https://docs.raku.org/routine/move>](#orga79eb16)
    - [we've discussed this one already:](#org391b876)
    - [an issue: the unix "mv" can do a rename or a refile](#org78d17ce)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#org6db029a)
  - [bruce on the weekly challenge](#org8e2a57f)
  - [rob ransbottom](#org6745c29)
    - [topics in mind, which are](#org0e5587a)
  - [recent raku topics](#orga123ea6)
    - [web scraping:](#orgdd4f529)
    - [a new "are" method (what are these?)](#orge0a4c6b)
    - [rakudo weekly news](#orgc744f19)
    - [more dwimmy .all ~~ Type](#org323f0f9)
    - [checking a program is on system](#org9a6422b)
    - [parsing wiki syntax, regex vs grammars](#org72ce930)
  - [sniping at perl, circa 2009](#org2cd0a0e)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org939109c)
  - [equilibirum index](#orga908e6c)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org04570ba)
    - [revisit this next time (Rob solution?)](#orgbf66ce7)
  - [weekly challenge this week](#org7313261)
    - [<https://theweeklychallenge.org/>](#orgeee331c)
  - [from previous meetings](#org832df42)
    - [an answer to what's Raku for:](#org61ed5e3)
    - [gui toolkits](#orgd6ed414)
  - [bill michels](#org290744e)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgd3bff25)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org52fc748)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgaf1a192)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgc0e516c)
  - [announcements](#orgc1274bf)
    - [May 22nd: next raku study group meeting](#orgec3bf39)
    - [June 21-25: tprc: perl/raku conference](#orgab9b70b)


<a id="orge48b3f5"></a>

# meeting notes May 08, 2022


<a id="org2d494de"></a>

## the raku study group


<a id="orgcf24c8e"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orgd98ae30"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="org6892398"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="org1410574"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>
    
    2.  yary suggests: grep for failure cases, and test whether that list is empty


<a id="org3cc090a"></a>

## TODO review introspection features


<a id="org157f0bc"></a>

### can you know what traits were used


<a id="org9dab31e"></a>

### find all classes

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6


<a id="orgfa6bf90"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="org04d2fc2"></a>

## Rob's interested in discussing missing basic tools


<a id="orgf59e70a"></a>

### e.g. counting lines of code: colc


<a id="org7636204"></a>

### coverage


<a id="org50ae6d9"></a>

## raku's "move" considered ungood


<a id="org3dba1be"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="orga79eb16"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on

    the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org391b876"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>

2.  <https://stackoverflow.com/a/71973303/7270649>


<a id="org78d17ce"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org6db029a"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="org8e2a57f"></a>

## bruce on the weekly challenge

<https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>


<a id="org6745c29"></a>

## rob ransbottom


<a id="org0e5587a"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="orga123ea6"></a>

## recent raku topics


<a id="orgdd4f529"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="orge0a4c6b"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="orgc744f19"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org323f0f9"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org9a6422b"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org72ce930"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org2cd0a0e"></a>

## sniping at perl, circa 2009


<a id="org939109c"></a>

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


<a id="orga908e6c"></a>

## equilibirum index


<a id="org04570ba"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orgbf66ce7"></a>

### TODO revisit this next time (Rob solution?)


<a id="org7313261"></a>

## weekly challenge this week


<a id="orgeee331c"></a>

### <https://theweeklychallenge.org/>


<a id="org832df42"></a>

## from previous meetings


<a id="org61ed5e3"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgd6ed414"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org290744e"></a>

## bill michels


<a id="orgd3bff25"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org52fc748"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgaf1a192"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgc0e516c"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgc1274bf"></a>

## announcements


<a id="orgec3bf39"></a>

### May 22nd: next raku study group meeting


<a id="orgab9b70b"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial
