- [meeting notes May 22, 2022](#orgf2f5d16)
  - [the raku study group](#org846eee7)
    - [usual links](#org446d232)
- [meeting notes May 08, 2022](#org087ae56)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#orgb89d5d9)
    - [<https://news.ycombinator.com/item?id=31259332>](#org478c3f5)
  - [finished tests to examine ^methods issues](#org8b85288)
  - [review introspection features](#org237ec85)
    - [can you know what traits were used](#org51a0581)
    - [find all classes](#org21eda19)
    - [more mysteries:](#org9286e22)
  - [Rob's interested in basic tools (some missing?)](#org2141b0d)
    - [e.g. counting lines of code: colc](#orgfb43b0c)
    - [coverage](#org6c63e20)
  - [raku's "move" considered ungood](#orga0798aa)
    - [move/copy command in Raku doesn't work with directory as second arg](#orga6d9587)
    - [<https://docs.raku.org/routine/move>](#orgd52103c)
    - [we've discussed this one already:](#org45341d8)
    - [an issue: the unix "mv" can do a rename or a refile](#org789d40a)
    - ["rename" seems to do a **copy**, I needed to manually unlink original](#orgc24fbf9)
  - [the weekly challenge](#org0d6cd5e)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>](#org6292dd9)
    - [<https://raku-musings.com/sum-sum.html>](#orge6926bb)
  - [recent raku topics](#orgac2a555)
    - [rakudo weekly news](#orgd877d67)
    - [web scraping:](#org7f35239)
    - [a new "are" method (what are these?)](#orgea4bae0)
    - [more dwimmy .all ~~ Type](#org9d0cffb)
    - [checking a program is on system](#org67fce28)
    - [parsing wiki syntax, regex vs grammars](#orgbba9f3a)
  - [sniping at perl, circa 2009](#orge08f9bf)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org68dab4e)
  - [equilibirum index](#orge343abc)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org420b378)
    - [revisit this next time (Rob solution?)](#org734bc1f)
  - [weekly challenge this week](#org1885e2d)
    - [<https://theweeklychallenge.org/>](#org9f1278e)
  - [from previous meetings](#orgc1f12e9)
    - [an answer to what's Raku for:](#orgea7e5b7)
    - [gui toolkits](#orgb4dacbd)
  - [bill michels](#orgbfb6915)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orga714d0a)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgd68e4e8)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgc20193e)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org5b654b7)
  - [announcements](#org8bd261a)
    - [June 5th: next raku study group meeting](#org5187388)
    - [June 21-25: tprc: perl/raku conference](#org36c8e52)


<a id="orgf2f5d16"></a>

# meeting notes May 22, 2022


<a id="org846eee7"></a>

## the raku study group


<a id="org446d232"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may22.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may22>


<a id="org087ae56"></a>

# meeting notes May 08, 2022


<a id="orgb89d5d9"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="org478c3f5"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="org8b85288"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>
    
    2.  yary suggests: grep for failure cases, and test whether that list is empty


<a id="org237ec85"></a>

## TODO review introspection features


<a id="org51a0581"></a>

### can you know what traits were used


<a id="org21eda19"></a>

### find all classes

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    1.  <https://github.com/doomvox/perl6-symbol-scan>
    
    2.  /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6
    
    3.  <https://docs.raku.org/type.html>


<a id="org9286e22"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="org2141b0d"></a>

## Rob's interested in basic tools (some missing?)


<a id="orgfb43b0c"></a>

### e.g. counting lines of code: colc


<a id="org6c63e20"></a>

### coverage

1.  bruce gray talked about system perl vs custom installs


<a id="orga0798aa"></a>

## raku's "move" considered ungood


<a id="orga6d9587"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="orgd52103c"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on

    the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org45341d8"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>

2.  <https://stackoverflow.com/a/71973303/7270649>


<a id="org789d40a"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  handles two separate functions: refile and rename
    
        1.  refile happens if last argument is a directory
        
        2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="orgc24fbf9"></a>

### "rename" seems to do a **copy**, I needed to manually unlink original

1.  <https://github.com/doomvox/raku-study/bin/2022mar13/tagger.raku>


<a id="org0d6cd5e"></a>

## the weekly challenge


<a id="org6292dd9"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>

1.  task1: sum bitwise operator

2.  task2: summations


<a id="orge6926bb"></a>

### <https://raku-musings.com/sum-sum.html>


<a id="orgac2a555"></a>

## recent raku topics


<a id="orgd877d67"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org7f35239"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="orgea4bae0"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org9d0cffb"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org67fce28"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="orgbba9f3a"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="orge08f9bf"></a>

## sniping at perl, circa 2009


<a id="org68dab4e"></a>

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


<a id="orge343abc"></a>

## equilibirum index


<a id="org420b378"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org734bc1f"></a>

### TODO revisit this next time (Rob solution?)


<a id="org1885e2d"></a>

## weekly challenge this week


<a id="org9f1278e"></a>

### <https://theweeklychallenge.org/>


<a id="orgc1f12e9"></a>

## from previous meetings


<a id="orgea7e5b7"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgb4dacbd"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgbfb6915"></a>

## bill michels


<a id="orga714d0a"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgd68e4e8"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgc20193e"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org5b654b7"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org8bd261a"></a>

## announcements


<a id="org5187388"></a>

### June 5th: next raku study group meeting


<a id="org36c8e52"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
