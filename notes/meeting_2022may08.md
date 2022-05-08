- [meeting notes May 08, 2022](#org438bf1e)
  - [the raku study group](#orgbb9fd26)
    - [usual links](#org384c3e2)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#orgd2ab97d)
    - [<https://news.ycombinator.com/item?id=31259332>](#orgbea5a1e)
  - [finished tests to examine ^methods issues](#orgc732c48)
  - [review introspection features](#org8c71a5e)
    - [can you know what traits were used](#orge19bdd8)
    - [find all classes](#orgb084648)
    - [more mysteries:](#orgcfc5995)
  - [Rob's interested in discussing missing basic tools](#org7e9cb2b)
    - [e.g. counting lines of code: colc](#org886b0b6)
    - [coverage](#org8dab1a5)
  - [raku's "move" considered ungood](#org44459fb)
    - [move/copy command in Raku doesn't work with directory as second arg](#org0b499c2)
    - [<https://docs.raku.org/routine/move>](#org2cd05b6)
    - [we've discussed this one already:](#orge6bb340)
    - [an issue: the unix "mv" can do a rename or a refile](#orge113d42)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#org8d3326c)
  - [bruce on the weekly challenge](#orgbffafe4)
  - [rob ransbottom](#org9ff92c4)
    - [topics in mind, which are](#org4fc9708)
  - [recent raku topics](#org3589a3f)
    - [rakudo weekly news](#org26f69a8)
    - [web scraping:](#org076dc5a)
    - [a new "are" method (what are these?)](#org81c963c)
    - [more dwimmy .all ~~ Type](#orgabcffc0)
    - [checking a program is on system](#org5547551)
    - [parsing wiki syntax, regex vs grammars](#org02363f7)
  - [sniping at perl, circa 2009](#org705879c)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org15bc712)
  - [equilibirum index](#orge955f7e)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org8b49dc1)
    - [revisit this next time (Rob solution?)](#orgdf53dd7)
  - [weekly challenge this week](#org8013f52)
    - [<https://theweeklychallenge.org/>](#org2d08b65)
  - [from previous meetings](#orgcccac0f)
    - [an answer to what's Raku for:](#org51fe9fe)
    - [gui toolkits](#org2727ded)
  - [bill michels](#org73673ea)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgd3cd642)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orga825510)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org47303df)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org1da6c6e)
  - [announcements](#org4eb653a)
    - [May 22nd: next raku study group meeting](#org420496b)
    - [June 21-25: tprc: perl/raku conference](#org4700da1)


<a id="org438bf1e"></a>

# meeting notes May 08, 2022


<a id="orgbb9fd26"></a>

## the raku study group


<a id="org384c3e2"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orgd2ab97d"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="orgbea5a1e"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="orgc732c48"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>
    
    2.  yary suggests: grep for failure cases, and test whether that list is empty


<a id="org8c71a5e"></a>

## TODO review introspection features


<a id="orge19bdd8"></a>

### can you know what traits were used


<a id="orgb084648"></a>

### find all classes

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6


<a id="orgcfc5995"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="org7e9cb2b"></a>

## Rob's interested in discussing missing basic tools


<a id="org886b0b6"></a>

### e.g. counting lines of code: colc


<a id="org8dab1a5"></a>

### coverage


<a id="org44459fb"></a>

## raku's "move" considered ungood


<a id="org0b499c2"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org2cd05b6"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on

    the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="orge6bb340"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>

2.  <https://stackoverflow.com/a/71973303/7270649>


<a id="orge113d42"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org8d3326c"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="orgbffafe4"></a>

## bruce on the weekly challenge

<https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>


<a id="org9ff92c4"></a>

## rob ransbottom


<a id="org4fc9708"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="org3589a3f"></a>

## recent raku topics


<a id="org26f69a8"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org076dc5a"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org81c963c"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="orgabcffc0"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org5547551"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org02363f7"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org705879c"></a>

## sniping at perl, circa 2009


<a id="org15bc712"></a>

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


<a id="orge955f7e"></a>

## equilibirum index


<a id="org8b49dc1"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orgdf53dd7"></a>

### TODO revisit this next time (Rob solution?)


<a id="org8013f52"></a>

## weekly challenge this week


<a id="org2d08b65"></a>

### <https://theweeklychallenge.org/>


<a id="orgcccac0f"></a>

## from previous meetings


<a id="org51fe9fe"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org2727ded"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org73673ea"></a>

## bill michels


<a id="orgd3cd642"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orga825510"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org47303df"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org1da6c6e"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org4eb653a"></a>

## announcements


<a id="org420496b"></a>

### May 22nd: next raku study group meeting


<a id="org4700da1"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
