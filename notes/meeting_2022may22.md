- [meeting notes May 22, 2022](#org3fb14eb)
  - [the raku study group](#org61e2f75)
    - [usual links](#org34e31bb)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#org444609d)
    - [<https://news.ycombinator.com/item?id=31259332>](#org61a35e6)
  - [finished tests to examine ^methods issues](#org4e3f830)
  - [review introspection features](#orgb11aa6a)
    - [can you know what traits were used](#orgecb32f5)
    - [find all classes](#org959a75d)
    - [more mysteries:](#org5d5bb9d)
  - [Rob's interested in basic tools (some missing?)](#org07e7f02)
    - [e.g. counting lines of code: colc](#orga917538)
    - [coverage](#org5757160)
  - [raku's "move" considered ungood](#org5ff7a85)
    - [move/copy command in Raku doesn't work with directory as second arg](#org7e7cc78)
    - [<https://docs.raku.org/routine/move>](#org93244ce)
    - [we've discussed this one already:](#orgc990ae7)
    - [an issue: the unix "mv" can do a rename or a refile](#org090a70a)
    - ["rename" seems to do a **copy**, I needed to manually unlink original](#orge09ab5c)
  - [the weekly challenge](#org2d89ff7)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>](#orgf94990b)
    - [<https://raku-musings.com/sum-sum.html>](#orgcedd968)
  - [recent raku topics](#org46a060a)
    - [rakudo weekly news](#orgfdd4aae)
    - [web scraping:](#org256d8e0)
    - [a new "are" method (what are these?)](#org3388f5d)
    - [more dwimmy .all ~~ Type](#org4bc6ea4)
    - [checking a program is on system](#org86203ca)
    - [parsing wiki syntax, regex vs grammars](#org812caf6)
  - [sniping at perl, circa 2009](#org39ab183)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgb699e0a)
  - [equilibirum index](#org0af7b4a)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org2ce0169)
    - [revisit this next time (Rob solution?)](#org145b1ea)
  - [weekly challenge this week](#orgedc0dab)
    - [<https://theweeklychallenge.org/>](#org8d7206a)
  - [from previous meetings](#org34dbadd)
    - [an answer to what's Raku for:](#orgc2da4ea)
    - [gui toolkits](#orgd7ec023)
  - [bill michels](#orgdaaa8cb)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org71468d5)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org4081ac9)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org70aa422)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgb61bd4e)
  - [announcements](#org4d043f4)
    - [May 22nd: next raku study group meeting](#orgcd3cda2)
    - [June 21-25: tprc: perl/raku conference](#orgf496e95)


<a id="org3fb14eb"></a>

# meeting notes May 22, 2022


<a id="org61e2f75"></a>

## the raku study group


<a id="org34e31bb"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may22.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may22>


<a id="org444609d"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="org61a35e6"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="org4e3f830"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>
    
    2.  yary suggests: grep for failure cases, and test whether that list is empty


<a id="orgb11aa6a"></a>

## TODO review introspection features


<a id="orgecb32f5"></a>

### can you know what traits were used


<a id="org959a75d"></a>

### find all classes

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    1.  <https://github.com/doomvox/perl6-symbol-scan>
    
    2.  /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6
    
    3.  <https://docs.raku.org/type.html>


<a id="org5d5bb9d"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="org07e7f02"></a>

## Rob's interested in basic tools (some missing?)


<a id="orga917538"></a>

### e.g. counting lines of code: colc


<a id="org5757160"></a>

### coverage

1.  bruce gray talked about system perl vs custom installs


<a id="org5ff7a85"></a>

## raku's "move" considered ungood


<a id="org7e7cc78"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org93244ce"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on

    the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="orgc990ae7"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>

2.  <https://stackoverflow.com/a/71973303/7270649>


<a id="org090a70a"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  handles two separate functions: refile and rename
    
        1.  refile happens if last argument is a directory
        
        2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="orge09ab5c"></a>

### "rename" seems to do a **copy**, I needed to manually unlink original

1.  <https://github.com/doomvox/raku-study/bin/2022mar13/tagger.raku>


<a id="org2d89ff7"></a>

## the weekly challenge


<a id="orgf94990b"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>

1.  task1: sum bitwise operator

2.  task2: summations


<a id="orgcedd968"></a>

### <https://raku-musings.com/sum-sum.html>


<a id="org46a060a"></a>

## recent raku topics


<a id="orgfdd4aae"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org256d8e0"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org3388f5d"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org4bc6ea4"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org86203ca"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org812caf6"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org39ab183"></a>

## sniping at perl, circa 2009


<a id="orgb699e0a"></a>

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


<a id="org0af7b4a"></a>

## equilibirum index


<a id="org2ce0169"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org145b1ea"></a>

### TODO revisit this next time (Rob solution?)


<a id="orgedc0dab"></a>

## weekly challenge this week


<a id="org8d7206a"></a>

### <https://theweeklychallenge.org/>


<a id="org34dbadd"></a>

## from previous meetings


<a id="orgc2da4ea"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgd7ec023"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgdaaa8cb"></a>

## bill michels


<a id="org71468d5"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org4081ac9"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org70aa422"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgb61bd4e"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org4d043f4"></a>

## announcements


<a id="orgcd3cda2"></a>

### May 22nd: next raku study group meeting


<a id="orgf496e95"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
