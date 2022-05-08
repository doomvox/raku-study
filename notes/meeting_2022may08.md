- [meeting notes May 08, 2022](#org8260961)
  - [the raku study group](#orgef6e202)
    - [usual links](#org48ea8e0)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#org06714b4)
    - [<https://news.ycombinator.com/item?id=31259332>](#orgaf96932)
  - [finished tests to examine ^methods issues](#orgc1ad646)
  - [review introspection features](#orgc3b31df)
    - [can you know what traits were used](#org7a5c71a)
    - [find all classes](#org899bf73)
    - [more mysteries:](#org0a1428b)
  - [Rob's interested in discussing missing basic tools](#org93cdebb)
    - [e.g. counting lines of code: colc](#org7b060b9)
    - [coverage](#orgc46e7d2)
  - [raku's "move" considered ungood](#org28b28bd)
    - [move/copy command in Raku doesn't work with directory as second arg](#org5a109b0)
    - [<https://docs.raku.org/routine/move>](#org4ba3dd4)
    - [we've discussed this one already:](#orgf369c6d)
    - [an issue: the unix "mv" can do a rename or a refile](#org89f1302)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#org544cb06)
  - [bruce on the weekly challenge](#org2b86f49)
  - [rob ransbottom](#org05c99cc)
    - [topics in mind, which are](#orgbe0d7e7)
  - [recent raku topics](#orgb4a556e)
    - [rakudo weekly news](#org3e03b0c)
    - [web scraping:](#orgc30db3f)
    - [a new "are" method (what are these?)](#orgd7f73fe)
    - [more dwimmy .all ~~ Type](#orgc532b9e)
    - [checking a program is on system](#orgef5915f)
    - [parsing wiki syntax, regex vs grammars](#org73d33f5)
  - [sniping at perl, circa 2009](#org4e0e226)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgb264389)
  - [equilibirum index](#org8b82a1a)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgc4de606)
    - [revisit this next time (Rob solution?)](#org512d137)
  - [weekly challenge this week](#orga9494f4)
    - [<https://theweeklychallenge.org/>](#org93d152c)
  - [from previous meetings](#org1841d04)
    - [an answer to what's Raku for:](#orgba14b73)
    - [gui toolkits](#orge392dc4)
  - [bill michels](#org91bcc32)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org8c07232)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orga77bf39)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org4caca46)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgdac9d28)
  - [announcements](#org1cf7758)
    - [May 22nd: next raku study group meeting](#orga50d81d)
    - [June 21-25: tprc: perl/raku conference](#orgbd5ca31)


<a id="org8260961"></a>

# meeting notes May 08, 2022


<a id="orgef6e202"></a>

## the raku study group


<a id="org48ea8e0"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org06714b4"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="orgaf96932"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="orgc1ad646"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>
    
    2.  yary suggests: grep for failure cases, and test whether that list is empty


<a id="orgc3b31df"></a>

## TODO review introspection features


<a id="org7a5c71a"></a>

### can you know what traits were used


<a id="org899bf73"></a>

### find all classes

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6


<a id="org0a1428b"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="org93cdebb"></a>

## Rob's interested in discussing missing basic tools


<a id="org7b060b9"></a>

### e.g. counting lines of code: colc


<a id="orgc46e7d2"></a>

### coverage


<a id="org28b28bd"></a>

## raku's "move" considered ungood


<a id="org5a109b0"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org4ba3dd4"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on

    the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="orgf369c6d"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>

2.  <https://stackoverflow.com/a/71973303/7270649>


<a id="org89f1302"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org544cb06"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="org2b86f49"></a>

## bruce on the weekly challenge

<https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>


<a id="org05c99cc"></a>

## rob ransbottom


<a id="orgbe0d7e7"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="orgb4a556e"></a>

## recent raku topics


<a id="org3e03b0c"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="orgc30db3f"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="orgd7f73fe"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="orgc532b9e"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="orgef5915f"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org73d33f5"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org4e0e226"></a>

## sniping at perl, circa 2009


<a id="orgb264389"></a>

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


<a id="org8b82a1a"></a>

## equilibirum index


<a id="orgc4de606"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org512d137"></a>

### TODO revisit this next time (Rob solution?)


<a id="orga9494f4"></a>

## weekly challenge this week


<a id="org93d152c"></a>

### <https://theweeklychallenge.org/>


<a id="org1841d04"></a>

## from previous meetings


<a id="orgba14b73"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orge392dc4"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org91bcc32"></a>

## bill michels


<a id="org8c07232"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orga77bf39"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org4caca46"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgdac9d28"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org1cf7758"></a>

## announcements


<a id="orga50d81d"></a>

### May 22nd: next raku study group meeting


<a id="orgbd5ca31"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
