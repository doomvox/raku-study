- [meeting notes May 08, 2022](#org0af7add)
  - [the raku study group](#org171176f)
    - [usual links](#orgc1ac7ba)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#org67144fc)
    - [<https://news.ycombinator.com/item?id=31259332>](#org8c62ff6)
  - [finished tests to examine ^methods issues](#orgf74e6cf)
  - [review introspection features](#orgfcdc43d)
    - [can you know what traits were used](#org0097448)
    - [find all classes](#orgae95ea1)
    - [more mysteries:](#org9213ca8)
  - [Rob's interested in discussing missing basic tools](#org6e8b65f)
    - [e.g. counting lines of code: colc](#org4a07cd0)
    - [coverage](#org7e4071a)
  - [raku's "move" considered ungood](#org1d0c76c)
    - [move/copy command in Raku doesn't work with directory as second arg](#org24da976)
    - [<https://docs.raku.org/routine/move>](#org9691248)
    - [we've discussed this one already:](#org6bfcd6d)
    - [an issue: the unix "mv" can do a rename or a refile](#orge3e83b8)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#orgca5318f)
  - [bruce on the weekly challenge](#orgb125a7f)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>](#org8d88a05)
  - [rob ransbottom](#org2e22a81)
    - [topics in mind, which are](#orgd61d37a)
  - [recent raku topics](#org3a3aebe)
    - [rakudo weekly news](#orge3d0f9b)
    - [web scraping:](#orge8ceb8c)
    - [a new "are" method (what are these?)](#orgcf1500e)
    - [more dwimmy .all ~~ Type](#org405aba1)
    - [checking a program is on system](#org2495c42)
    - [parsing wiki syntax, regex vs grammars](#orgc889189)
  - [sniping at perl, circa 2009](#org9a27706)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org6997ee9)
  - [equilibirum index](#orgbe3a9df)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgaa17e5f)
    - [revisit this next time (Rob solution?)](#orga47200c)
  - [weekly challenge this week](#org30392c8)
    - [<https://theweeklychallenge.org/>](#org917a5c2)
  - [from previous meetings](#org8608063)
    - [an answer to what's Raku for:](#orgd3e006b)
    - [gui toolkits](#org8654414)
  - [bill michels](#org8102db6)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orga2cd699)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgfeabd44)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org27d27c2)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org94db72b)
  - [announcements](#org119535a)
    - [May 22nd: next raku study group meeting](#org205de7b)
    - [June 21-25: tprc: perl/raku conference](#org60572df)


<a id="org0af7add"></a>

# meeting notes May 08, 2022


<a id="org171176f"></a>

## the raku study group


<a id="orgc1ac7ba"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org67144fc"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="org8c62ff6"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="orgf74e6cf"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>
    
    2.  yary suggests: grep for failure cases, and test whether that list is empty


<a id="orgfcdc43d"></a>

## TODO review introspection features


<a id="org0097448"></a>

### can you know what traits were used


<a id="orgae95ea1"></a>

### find all classes

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6


<a id="org9213ca8"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="org6e8b65f"></a>

## Rob's interested in discussing missing basic tools


<a id="org4a07cd0"></a>

### e.g. counting lines of code: colc


<a id="org7e4071a"></a>

### coverage


<a id="org1d0c76c"></a>

## raku's "move" considered ungood


<a id="org24da976"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org9691248"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on

    the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org6bfcd6d"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>

2.  <https://stackoverflow.com/a/71973303/7270649>


<a id="orge3e83b8"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="orgca5318f"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="orgb125a7f"></a>

## bruce on the weekly challenge


<a id="org8d88a05"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>

1.  task1: sum bitwise operator

2.  task2: summations


<a id="org2e22a81"></a>

## rob ransbottom


<a id="orgd61d37a"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="org3a3aebe"></a>

## recent raku topics


<a id="orge3d0f9b"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="orge8ceb8c"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="orgcf1500e"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org405aba1"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org2495c42"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="orgc889189"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org9a27706"></a>

## sniping at perl, circa 2009


<a id="org6997ee9"></a>

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


<a id="orgbe3a9df"></a>

## equilibirum index


<a id="orgaa17e5f"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orga47200c"></a>

### TODO revisit this next time (Rob solution?)


<a id="org30392c8"></a>

## weekly challenge this week


<a id="org917a5c2"></a>

### <https://theweeklychallenge.org/>


<a id="org8608063"></a>

## from previous meetings


<a id="orgd3e006b"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org8654414"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org8102db6"></a>

## bill michels


<a id="orga2cd699"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgfeabd44"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org27d27c2"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org94db72b"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org119535a"></a>

## announcements


<a id="org205de7b"></a>

### May 22nd: next raku study group meeting


<a id="org60572df"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
