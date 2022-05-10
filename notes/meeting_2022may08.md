- [meeting notes May 08, 2022](#orgbb263ae)
  - [the raku study group](#org4fa51fc)
    - [usual links](#orgd8089df)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#org2705e95)
    - [<https://news.ycombinator.com/item?id=31259332>](#org7534be8)
  - [finished tests to examine ^methods issues](#orgf28abe5)
  - [review introspection features](#orgfbf5eb5)
    - [can you know what traits were used](#org5452ec6)
    - [find all classes](#org37b4e82)
    - [more mysteries:](#org820f626)
  - [Rob's interested in basic tools (some missing?)](#orgb5fb0d6)
    - [e.g. counting lines of code: colc](#orgbcd8bf9)
    - [coverage](#org6135f90)
  - [raku's "move" considered ungood](#org2d31ade)
    - [move/copy command in Raku doesn't work with directory as second arg](#orgf1bb021)
    - [<https://docs.raku.org/routine/move>](#org090582f)
    - [we've discussed this one already:](#org424aef6)
    - [an issue: the unix "mv" can do a rename or a refile](#orgf6126e6)
    - ["rename" seems to do a **copy**, I needed to manually unlink original](#orgaba8963)
  - [the weekly challenge](#org2321c9f)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>](#org4fec925)
    - [<https://raku-musings.com/sum-sum.html>](#orgbb59760)
  - [recent raku topics](#org3d6498b)
    - [rakudo weekly news](#org6ed9dff)
    - [web scraping:](#org07c3c37)
    - [a new "are" method (what are these?)](#org2a99231)
    - [more dwimmy .all ~~ Type](#org6777ba5)
    - [checking a program is on system](#orga4a1902)
    - [parsing wiki syntax, regex vs grammars](#org2651c83)
  - [sniping at perl, circa 2009](#org886f94d)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgc16cfb5)
  - [equilibirum index](#org2b242db)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org5d9b2f6)
    - [revisit this next time (Rob solution?)](#org2ecbbd0)
  - [weekly challenge this week](#org12e56a8)
    - [<https://theweeklychallenge.org/>](#org793fc11)
  - [from previous meetings](#org0d5e15c)
    - [an answer to what's Raku for:](#org7f2dae2)
    - [gui toolkits](#orga10f370)
  - [bill michels](#orgdc92e5c)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org6c896d6)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orga07848a)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org5f305f3)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org9947e0c)
  - [announcements](#org98801d5)
    - [May 22nd: next raku study group meeting](#org2946fd0)
    - [June 21-25: tprc: perl/raku conference](#org5603535)


<a id="orgbb263ae"></a>

# meeting notes May 08, 2022


<a id="org4fa51fc"></a>

## the raku study group


<a id="orgd8089df"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org2705e95"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="org7534be8"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="orgf28abe5"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>
    
    2.  yary suggests: grep for failure cases, and test whether that list is empty


<a id="orgfbf5eb5"></a>

## TODO review introspection features


<a id="org5452ec6"></a>

### can you know what traits were used


<a id="org37b4e82"></a>

### find all classes

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    1.  <https://github.com/doomvox/perl6-symbol-scan>
    
    2.  /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6
    
    3.  <https://docs.raku.org/type.html>


<a id="org820f626"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="orgb5fb0d6"></a>

## Rob's interested in basic tools (some missing?)


<a id="orgbcd8bf9"></a>

### e.g. counting lines of code: colc


<a id="org6135f90"></a>

### coverage

1.  bruce gray talked about system perl vs custom installs


<a id="org2d31ade"></a>

## raku's "move" considered ungood


<a id="orgf1bb021"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org090582f"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on

    the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org424aef6"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>

2.  <https://stackoverflow.com/a/71973303/7270649>


<a id="orgf6126e6"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  handles two separate functions: refile and rename
    
        1.  refile happens if last argument is a directory
        
        2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="orgaba8963"></a>

### "rename" seems to do a **copy**, I needed to manually unlink original

1.  <https://github.com/doomvox/raku-study/bin/2022mar13/tagger.raku>


<a id="org2321c9f"></a>

## the weekly challenge


<a id="org4fec925"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>

1.  task1: sum bitwise operator

2.  task2: summations


<a id="orgbb59760"></a>

### <https://raku-musings.com/sum-sum.html>


<a id="org3d6498b"></a>

## recent raku topics


<a id="org6ed9dff"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org07c3c37"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org2a99231"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org6777ba5"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="orga4a1902"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org2651c83"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org886f94d"></a>

## sniping at perl, circa 2009


<a id="orgc16cfb5"></a>

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


<a id="org2b242db"></a>

## equilibirum index


<a id="org5d9b2f6"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org2ecbbd0"></a>

### TODO revisit this next time (Rob solution?)


<a id="org12e56a8"></a>

## weekly challenge this week


<a id="org793fc11"></a>

### <https://theweeklychallenge.org/>


<a id="org0d5e15c"></a>

## from previous meetings


<a id="org7f2dae2"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orga10f370"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgdc92e5c"></a>

## bill michels


<a id="org6c896d6"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orga07848a"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org5f305f3"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org9947e0c"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org98801d5"></a>

## announcements


<a id="org2946fd0"></a>

### May 22nd: next raku study group meeting


<a id="org5603535"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
