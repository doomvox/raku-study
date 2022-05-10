- [meeting notes May 08, 2022](#orge7eed80)
  - [the raku study group](#org96e9d91)
    - [usual links](#org89f8291)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#orgf5fef20)
    - [<https://news.ycombinator.com/item?id=31259332>](#orga70b2e4)
  - [finished tests to examine ^methods issues](#orgae82a53)
  - [review introspection features](#orgb42f5e3)
    - [can you know what traits were used](#org3688e6d)
    - [find all classes](#org08f5ed9)
    - [more mysteries:](#org01c951f)
  - [Rob's interested in basic tools (some missing?)](#org2293acd)
    - [e.g. counting lines of code: colc](#orgc92daa6)
    - [coverage](#orge9ed68a)
  - [raku's "move" considered ungood](#orgc9f9b70)
    - [move/copy command in Raku doesn't work with directory as second arg](#org11cdf10)
    - [<https://docs.raku.org/routine/move>](#org49e55d1)
    - [we've discussed this one already:](#org86bdb5e)
    - [an issue: the unix "mv" can do a rename or a refile](#org2fc26ea)
    - ["rename" seems to do a **copy**, I needed to manually unlink original](#orgccf1cd7)
  - [the weekly challenge](#org7e309d1)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>](#org11236a6)
    - [<https://raku-musings.com/sum-sum.html>](#orgdc9609c)
  - [recent raku topics](#org75def5a)
    - [rakudo weekly news](#org5f4fdc8)
    - [web scraping:](#orga0004b8)
    - [a new "are" method (what are these?)](#orgddee9f1)
    - [more dwimmy .all ~~ Type](#org35b07dc)
    - [checking a program is on system](#org95bfbb9)
    - [parsing wiki syntax, regex vs grammars](#orgab725ee)
  - [sniping at perl, circa 2009](#org26c59f1)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org3db9489)
  - [equilibirum index](#orgbd289b3)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org0d39103)
    - [revisit this next time (Rob solution?)](#org62be0a6)
  - [weekly challenge this week](#orga4a2be3)
    - [<https://theweeklychallenge.org/>](#org4f6dd08)
  - [from previous meetings](#org0836f34)
    - [an answer to what's Raku for:](#orgb938ce1)
    - [gui toolkits](#org6bd09fd)
  - [bill michels](#org54955ec)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org4c6b2a1)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org07ff59f)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgfd41dec)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgd525bae)
  - [announcements](#orgf9ab302)
    - [May 22nd: next raku study group meeting](#orgb9aae58)
    - [June 21-25: tprc: perl/raku conference](#orgc71430d)


<a id="orge7eed80"></a>

# meeting notes May 08, 2022


<a id="org96e9d91"></a>

## the raku study group


<a id="org89f8291"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orgf5fef20"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="orga70b2e4"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="orgae82a53"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>
    
    2.  yary suggests: grep for failure cases, and test whether that list is empty


<a id="orgb42f5e3"></a>

## TODO review introspection features


<a id="org3688e6d"></a>

### can you know what traits were used


<a id="org08f5ed9"></a>

### find all classes

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    1.  <https://github.com/doomvox/perl6-symbol-scan>
    
    2.  /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6
    
    3.  <https://docs.raku.org/type.html>


<a id="org01c951f"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="org2293acd"></a>

## Rob's interested in basic tools (some missing?)


<a id="orgc92daa6"></a>

### e.g. counting lines of code: colc


<a id="orge9ed68a"></a>

### coverage

1.  bruce gray talked about system perl vs custom installs


<a id="orgc9f9b70"></a>

## raku's "move" considered ungood


<a id="org11cdf10"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org49e55d1"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on

    the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org86bdb5e"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>

2.  <https://stackoverflow.com/a/71973303/7270649>


<a id="org2fc26ea"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  handles two separate functions: refile and rename
    
        1.  refile happens if last argument is a directory
        
        2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="orgccf1cd7"></a>

### "rename" seems to do a **copy**, I needed to manually unlink original

1.  <https://github.com/doomvox/raku-study/bin/2022mar13/tagger.raku>


<a id="org7e309d1"></a>

## the weekly challenge


<a id="org11236a6"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>

1.  task1: sum bitwise operator

2.  task2: summations


<a id="orgdc9609c"></a>

### <https://raku-musings.com/sum-sum.html>


<a id="org75def5a"></a>

## recent raku topics


<a id="org5f4fdc8"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="orga0004b8"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="orgddee9f1"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org35b07dc"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org95bfbb9"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="orgab725ee"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org26c59f1"></a>

## sniping at perl, circa 2009


<a id="org3db9489"></a>

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


<a id="orgbd289b3"></a>

## equilibirum index


<a id="org0d39103"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org62be0a6"></a>

### TODO revisit this next time (Rob solution?)


<a id="orga4a2be3"></a>

## weekly challenge this week


<a id="org4f6dd08"></a>

### <https://theweeklychallenge.org/>


<a id="org0836f34"></a>

## from previous meetings


<a id="orgb938ce1"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org6bd09fd"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org54955ec"></a>

## bill michels


<a id="org4c6b2a1"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org07ff59f"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgfd41dec"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgd525bae"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgf9ab302"></a>

## announcements


<a id="orgb9aae58"></a>

### May 22nd: next raku study group meeting


<a id="orgc71430d"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
