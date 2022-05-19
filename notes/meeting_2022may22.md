- [meeting notes May 22, 2022](#orgb8df406)
  - [the raku study group](#org780bbbb)
    - [usual links](#orgff8e2aa)
  - [topics](#orga4ef3ee)
  - [announcements](#orge8495f6)
    - [June 5th: next raku study group meeting](#org242076c)
    - [June 21-25: tprc: perl/raku conference](#org74a25f7)
- [meeting notes May 08, 2022](#org3ccb146)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#orga36741c)
    - [<https://news.ycombinator.com/item?id=31259332>](#org1cccefd)
  - [finished tests to examine ^methods issues](#orgf2816ca)
  - [review introspection features](#org74d27c3)
    - [can you know what traits were used](#org31384ba)
    - [find all classes](#orga147a98)
    - [more mysteries:](#org202e36e)
  - [Rob's interested in basic tools (some missing?)](#orgc0c0881)
    - [e.g. counting lines of code: colc](#org82d5d6f)
    - [coverage](#org24b86ba)
  - [raku's "move" considered ungood](#org5cf21b3)
    - [move/copy command in Raku doesn't work with directory as second arg](#org9ceaa54)
    - [<https://docs.raku.org/routine/move>](#org6d39fdc)
    - [we've discussed this one already:](#orgd318027)
    - [an issue: the unix "mv" can do a rename or a refile](#org31b153b)
    - ["rename" seems to do a **copy**, I needed to manually unlink original](#org45a3ec5)
  - [the weekly challenge](#org4e5b5c8)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>](#org19a1b04)
    - [<https://raku-musings.com/sum-sum.html>](#org757ba9d)
  - [recent raku topics](#org4a20154)
    - [rakudo weekly news](#org8079a9d)
    - [web scraping:](#org6a4f61e)
    - [a new "are" method (what are these?)](#org89e631a)
    - [more dwimmy .all ~~ Type](#org4b3ad5e)
    - [checking a program is on system](#org6d057d3)
    - [parsing wiki syntax, regex vs grammars](#orgbb4c74f)
  - [sniping at perl, circa 2009](#orga3a19cf)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org46eb2b5)
  - [equilibirum index](#orgab4e4bd)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org079c6e8)
    - [revisit this next time (Rob solution?)](#org11244d8)
  - [weekly challenge this week](#org7bbd789)
    - [<https://theweeklychallenge.org/>](#org9a149d8)
  - [from previous meetings](#org25340b3)
    - [an answer to what's Raku for:](#org03ba179)
    - [gui toolkits](#org271efe8)
  - [bill michels](#org6c65a1e)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org255db2f)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org411a117)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgd6b42f9)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org8590b49)


<a id="orgb8df406"></a>

# meeting notes May 22, 2022


<a id="org780bbbb"></a>

## the raku study group


<a id="orgff8e2aa"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may22.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may22>


<a id="orga4ef3ee"></a>

## topics


<a id="orge8495f6"></a>

## announcements


<a id="org242076c"></a>

### June 5th: next raku study group meeting


<a id="org74a25f7"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>


<a id="org3ccb146"></a>

# meeting notes May 08, 2022


<a id="orga36741c"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="org1cccefd"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="orgf2816ca"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>
    
    2.  yary suggests: grep for failure cases, and test whether that list is empty


<a id="org74d27c3"></a>

## TODO review introspection features


<a id="org31384ba"></a>

### can you know what traits were used


<a id="orga147a98"></a>

### find all classes

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    1.  <https://github.com/doomvox/perl6-symbol-scan>
    
    2.  /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6
    
    3.  <https://docs.raku.org/type.html>


<a id="org202e36e"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="orgc0c0881"></a>

## Rob's interested in basic tools (some missing?)


<a id="org82d5d6f"></a>

### e.g. counting lines of code: colc


<a id="org24b86ba"></a>

### coverage

1.  bruce gray talked about system perl vs custom installs


<a id="org5cf21b3"></a>

## raku's "move" considered ungood


<a id="org9ceaa54"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org6d39fdc"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on

    the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="orgd318027"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>

2.  <https://stackoverflow.com/a/71973303/7270649>


<a id="org31b153b"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  handles two separate functions: refile and rename
    
        1.  refile happens if last argument is a directory
        
        2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org45a3ec5"></a>

### "rename" seems to do a **copy**, I needed to manually unlink original

1.  <https://github.com/doomvox/raku-study/bin/2022mar13/tagger.raku>


<a id="org4e5b5c8"></a>

## the weekly challenge


<a id="org19a1b04"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>

1.  task1: sum bitwise operator

2.  task2: summations


<a id="org757ba9d"></a>

### <https://raku-musings.com/sum-sum.html>


<a id="org4a20154"></a>

## recent raku topics


<a id="org8079a9d"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org6a4f61e"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org89e631a"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org4b3ad5e"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org6d057d3"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="orgbb4c74f"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="orga3a19cf"></a>

## sniping at perl, circa 2009


<a id="org46eb2b5"></a>

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


<a id="orgab4e4bd"></a>

## equilibirum index


<a id="org079c6e8"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org11244d8"></a>

### TODO revisit this next time (Rob solution?)


<a id="org7bbd789"></a>

## weekly challenge this week


<a id="org9a149d8"></a>

### <https://theweeklychallenge.org/>


<a id="org25340b3"></a>

## from previous meetings


<a id="org03ba179"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org271efe8"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org6c65a1e"></a>

## bill michels


<a id="org255db2f"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org411a117"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgd6b42f9"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org8590b49"></a>

### <https://unix.stackexchange.com/a/699338/227738>
