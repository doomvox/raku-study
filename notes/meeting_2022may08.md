- [meeting notes May 08, 2022](#orgaa1a97b)
  - [the raku study group](#orga5b2c9a)
    - [usual links](#org2cb114e)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#orgee87cd3)
    - [<https://news.ycombinator.com/item?id=31259332>](#org4b16b8e)
  - [finished tests to examine ^methods issues](#org947da8d)
  - [review introspection features](#org3684605)
    - [can you know what traits were used](#org662b21b)
    - [find all classes](#org1466845)
    - [more mysteries:](#org5bddb13)
  - [Rob's interested in basic tools (some missing?)](#org7b8f22d)
    - [e.g. counting lines of code: colc](#org9024e91)
    - [coverage](#org4a386ce)
  - [raku's "move" considered ungood](#org3435d8b)
    - [move/copy command in Raku doesn't work with directory as second arg](#org5f9bcf1)
    - [<https://docs.raku.org/routine/move>](#org79d290c)
    - [we've discussed this one already:](#orgf9da31a)
    - [an issue: the unix "mv" can do a rename or a refile](#org00f3f1d)
    - ["rename" seems to do a **copy**, I needed to manually unlink original](#org2333d7e)
  - [the weekly challenge](#org9a20d81)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>](#org2098bae)
    - [dshttps://raku-musings.com/sum-sum.html](#org724c4f0)
  - [recent raku topics](#org8263756)
    - [rakudo weekly news](#org1158ca5)
    - [web scraping:](#org0b45282)
    - [a new "are" method (what are these?)](#org9abeaf8)
    - [more dwimmy .all ~~ Type](#org9c75313)
    - [checking a program is on system](#orge8e12eb)
    - [parsing wiki syntax, regex vs grammars](#orge3c6122)
  - [sniping at perl, circa 2009](#org1c167c2)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgb74ecd4)
  - [equilibirum index](#orgd6b4680)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgb0d8bba)
    - [revisit this next time (Rob solution?)](#org62404ee)
  - [weekly challenge this week](#orge4fdaa0)
    - [<https://theweeklychallenge.org/>](#orgda49aca)
  - [from previous meetings](#org64ce6a1)
    - [an answer to what's Raku for:](#org06815f2)
    - [gui toolkits](#org57fa064)
  - [bill michels](#orgfff5972)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org7cdd16c)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org005451d)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org02c6323)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org8374941)
  - [announcements](#org62c8312)
    - [May 22nd: next raku study group meeting](#org93f9a76)
    - [June 21-25: tprc: perl/raku conference](#org44ef8e0)


<a id="orgaa1a97b"></a>

# meeting notes May 08, 2022


<a id="orga5b2c9a"></a>

## the raku study group


<a id="org2cb114e"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orgee87cd3"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="org4b16b8e"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="org947da8d"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>
    
    2.  yary suggests: grep for failure cases, and test whether that list is empty


<a id="org3684605"></a>

## TODO review introspection features


<a id="org662b21b"></a>

### can you know what traits were used


<a id="org1466845"></a>

### find all classes

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    1.  <https://github.com/doomvox/perl6-symbol-scan>
    
    2.  /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6
    
    3.  <https://docs.raku.org/type.html>


<a id="org5bddb13"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="org7b8f22d"></a>

## Rob's interested in basic tools (some missing?)


<a id="org9024e91"></a>

### e.g. counting lines of code: colc


<a id="org4a386ce"></a>

### coverage

1.  bruce gray talked about system perl vs custom installs


<a id="org3435d8b"></a>

## raku's "move" considered ungood


<a id="org5f9bcf1"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org79d290c"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on

    the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="orgf9da31a"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>

2.  <https://stackoverflow.com/a/71973303/7270649>


<a id="org00f3f1d"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  handles two separate functions: refile and rename
    
        1.  refile happens if last argument is a directory
        
        2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org2333d7e"></a>

### "rename" seems to do a **copy**, I needed to manually unlink original

1.  <https://github.com/doomvox/raku-study/bin/2022mar13/tagger.raku>


<a id="org9a20d81"></a>

## the weekly challenge


<a id="org2098bae"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>

1.  task1: sum bitwise operator

2.  task2: summations


<a id="org724c4f0"></a>

### dshttps://raku-musings.com/sum-sum.html


<a id="org8263756"></a>

## recent raku topics


<a id="org1158ca5"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org0b45282"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org9abeaf8"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org9c75313"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="orge8e12eb"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="orge3c6122"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org1c167c2"></a>

## sniping at perl, circa 2009


<a id="orgb74ecd4"></a>

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


<a id="orgd6b4680"></a>

## equilibirum index


<a id="orgb0d8bba"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org62404ee"></a>

### TODO revisit this next time (Rob solution?)


<a id="orge4fdaa0"></a>

## weekly challenge this week


<a id="orgda49aca"></a>

### <https://theweeklychallenge.org/>


<a id="org64ce6a1"></a>

## from previous meetings


<a id="org06815f2"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org57fa064"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgfff5972"></a>

## bill michels


<a id="org7cdd16c"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org005451d"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org02c6323"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org8374941"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org62c8312"></a>

## announcements


<a id="org93f9a76"></a>

### May 22nd: next raku study group meeting


<a id="org44ef8e0"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
