- [meeting notes May 08, 2022](#orgd3996b4)
  - [the raku study group](#org99126ef)
    - [usual links](#orgdbbfdec)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#org711387c)
    - [<https://news.ycombinator.com/item?id=31259332>](#orgaedf18f)
  - [finished tests to examine ^methods issues](#orgc2104f9)
  - [review introspection features](#org87484fc)
    - [can you know what traits were used](#org257fff6)
    - [find all classes](#org3a47816)
    - [more mysteries:](#org36331bc)
  - [Rob's interested in basic tools (some missing?)](#orgb1ae7bc)
    - [e.g. counting lines of code: colc](#orgff875b6)
    - [coverage](#org874b206)
  - [raku's "move" considered ungood](#org305b985)
    - [move/copy command in Raku doesn't work with directory as second arg](#org5a19157)
    - [<https://docs.raku.org/routine/move>](#org94bb21a)
    - [we've discussed this one already:](#org0f4094f)
    - [an issue: the unix "mv" can do a rename or a refile](#org1d3aab8)
    - ["rename" seems to do a **copy**, I needed to manually unlink original](#orgdb39640)
  - [bruce on the weekly challenge](#org7091172)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>](#org180dfcf)
    - [<https://raku-musings.com/sum-sum.html>](#org92724aa)
  - [rob ransbottom](#org745d75f)
    - [had some topics in mind, which are](#org21d2a85)
  - [recent raku topics](#orgc6655d1)
    - [rakudo weekly news](#orgf589493)
    - [web scraping:](#org57ea55b)
    - [a new "are" method (what are these?)](#org688316d)
    - [more dwimmy .all ~~ Type](#org099ac65)
    - [checking a program is on system](#org602236f)
    - [parsing wiki syntax, regex vs grammars](#org77c01d0)
  - [sniping at perl, circa 2009](#org32ab40f)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orga63387e)
  - [equilibirum index](#org20cc8c2)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org3508164)
    - [revisit this next time (Rob solution?)](#orgb117cd7)
  - [weekly challenge this week](#orgb2fc9b3)
    - [<https://theweeklychallenge.org/>](#org0b1703e)
  - [from previous meetings](#orgb0eb3ef)
    - [an answer to what's Raku for:](#org58ab1a6)
    - [gui toolkits](#org51e54f4)
  - [bill michels](#orgd76e862)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orga83c5e3)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org2d64301)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgd7c9407)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgd319710)
  - [announcements](#org2833fcb)
    - [May 22nd: next raku study group meeting](#org869ac2e)
    - [June 21-25: tprc: perl/raku conference](#org6ae942a)


<a id="orgd3996b4"></a>

# meeting notes May 08, 2022


<a id="org99126ef"></a>

## the raku study group


<a id="orgdbbfdec"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org711387c"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="orgaedf18f"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="orgc2104f9"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>
    
    2.  yary suggests: grep for failure cases, and test whether that list is empty


<a id="org87484fc"></a>

## TODO review introspection features


<a id="org257fff6"></a>

### can you know what traits were used


<a id="org3a47816"></a>

### find all classes

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    1.  <https://github.com/doomvox/perl6-symbol-scan>
    
    2.  /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6
    
    3.  <https://docs.raku.org/type.html>


<a id="org36331bc"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="orgb1ae7bc"></a>

## Rob's interested in basic tools (some missing?)


<a id="orgff875b6"></a>

### e.g. counting lines of code: colc


<a id="org874b206"></a>

### coverage


<a id="org305b985"></a>

## raku's "move" considered ungood


<a id="org5a19157"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org94bb21a"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on

    the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org0f4094f"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>

2.  <https://stackoverflow.com/a/71973303/7270649>


<a id="org1d3aab8"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  handles two separate functions, refile and rename
    
        1.  refile happens if last argument is a directory
        
        2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="orgdb39640"></a>

### "rename" seems to do a **copy**, I needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="org7091172"></a>

## bruce on the weekly challenge


<a id="org180dfcf"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>

1.  task1: sum bitwise operator

2.  task2: summations


<a id="org92724aa"></a>

### <https://raku-musings.com/sum-sum.html>


<a id="org745d75f"></a>

## rob ransbottom


<a id="org21d2a85"></a>

### had some topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="orgc6655d1"></a>

## recent raku topics


<a id="orgf589493"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org57ea55b"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org688316d"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org099ac65"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org602236f"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org77c01d0"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org32ab40f"></a>

## sniping at perl, circa 2009


<a id="orga63387e"></a>

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


<a id="org20cc8c2"></a>

## equilibirum index


<a id="org3508164"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orgb117cd7"></a>

### TODO revisit this next time (Rob solution?)


<a id="orgb2fc9b3"></a>

## weekly challenge this week


<a id="org0b1703e"></a>

### <https://theweeklychallenge.org/>


<a id="orgb0eb3ef"></a>

## from previous meetings


<a id="org58ab1a6"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org51e54f4"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgd76e862"></a>

## bill michels


<a id="orga83c5e3"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org2d64301"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgd7c9407"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgd319710"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org2833fcb"></a>

## announcements


<a id="org869ac2e"></a>

### May 22nd: next raku study group meeting


<a id="org6ae942a"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
