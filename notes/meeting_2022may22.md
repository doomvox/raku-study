- [meeting notes May 22, 2022](#orge7372b9)
  - [the raku study group](#orgf026ad1)
    - [usual links](#orgfd68d25)
  - [topics](#orgb6e7a97)
    - [add new stuff, raid list below (copied from last meeting) for ideas](#orgb897aab)
  - [announcements](#orgf655eb0)
    - [June 5th: next raku study group meeting](#org8e5069e)
    - [June 21-25: tprc: perl/raku conference](#org44cec8a)
- [meeting notes May 08, 2022](#orgcf19da5)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#orgdefb447)
    - [<https://news.ycombinator.com/item?id=31259332>](#org41e0561)
  - [finished tests to examine ^methods issues](#orgb845693)
  - [review introspection features](#org175f5d1)
    - [can you know what traits were used](#orgc69cddc)
    - [find all classes](#org931e40b)
    - [more mysteries:](#orgaff9516)
  - [Rob's interested in basic tools (some missing?)](#org6928b44)
    - [e.g. counting lines of code: colc](#org253e2f9)
    - [coverage](#org75a06f6)
  - [raku's "move" considered ungood](#org631603a)
    - [move/copy command in Raku doesn't work with directory as second arg](#orgd4aabb0)
    - [<https://docs.raku.org/routine/move>](#orga98965c)
    - [we've discussed this one already:](#orga8a37b6)
    - [an issue: the unix "mv" can do a rename or a refile](#org78dd104)
    - ["rename" seems to do a **copy**, I needed to manually unlink original](#org23afaa9)
  - [the weekly challenge](#orgf3e58b3)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>](#orgf0a5345)
    - [<https://raku-musings.com/sum-sum.html>](#orgc872d5f)
  - [recent raku topics](#orgd063817)
    - [rakudo weekly news](#org9e46333)
    - [web scraping:](#org79bdb6f)
    - [a new "are" method (what are these?)](#orga01eabc)
    - [more dwimmy .all ~~ Type](#org7c97619)
    - [checking a program is on system](#org51e5def)
    - [parsing wiki syntax, regex vs grammars](#org962456d)
  - [sniping at perl, circa 2009](#orgdfc3963)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org92131cf)
  - [equilibirum index](#orge51e9f0)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgc5f795e)
    - [revisit this next time (Rob solution?)](#org9383c11)
  - [weekly challenge this week](#org0d358c1)
    - [<https://theweeklychallenge.org/>](#org4f84e58)
  - [from previous meetings](#orgc6e75aa)
    - [an answer to what's Raku for:](#orga68c648)
    - [gui toolkits](#org1a3d9b2)
  - [bill michels](#orga3b266d)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org35f9531)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgae120f5)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgae7bcce)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org549e4f4)


<a id="orge7372b9"></a>

# meeting notes May 22, 2022


<a id="orgf026ad1"></a>

## the raku study group


<a id="orgfd68d25"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may22.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may22>


<a id="orgb6e7a97"></a>

## topics


<a id="orgb897aab"></a>

### TODO add new stuff, raid list below (copied from last meeting) for ideas


<a id="orgf655eb0"></a>

## announcements


<a id="org8e5069e"></a>

### June 5th: next raku study group meeting


<a id="org44cec8a"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>


<a id="orgcf19da5"></a>

# meeting notes May 08, 2022


<a id="orgdefb447"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="org41e0561"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="orgb845693"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>
    
    2.  yary suggests: grep for failure cases, and test whether that list is empty


<a id="org175f5d1"></a>

## TODO review introspection features


<a id="orgc69cddc"></a>

### can you know what traits were used


<a id="org931e40b"></a>

### find all classes

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    1.  <https://github.com/doomvox/perl6-symbol-scan>
    
    2.  /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6
    
    3.  <https://docs.raku.org/type.html>


<a id="orgaff9516"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="org6928b44"></a>

## Rob's interested in basic tools (some missing?)


<a id="org253e2f9"></a>

### e.g. counting lines of code: colc


<a id="org75a06f6"></a>

### coverage

1.  bruce gray talked about system perl vs custom installs


<a id="org631603a"></a>

## raku's "move" considered ungood


<a id="orgd4aabb0"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="orga98965c"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on

    the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="orga8a37b6"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>

2.  <https://stackoverflow.com/a/71973303/7270649>


<a id="org78dd104"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  handles two separate functions: refile and rename
    
        1.  refile happens if last argument is a directory
        
        2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org23afaa9"></a>

### "rename" seems to do a **copy**, I needed to manually unlink original

1.  <https://github.com/doomvox/raku-study/bin/2022mar13/tagger.raku>


<a id="orgf3e58b3"></a>

## the weekly challenge


<a id="orgf0a5345"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>

1.  task1: sum bitwise operator

2.  task2: summations


<a id="orgc872d5f"></a>

### <https://raku-musings.com/sum-sum.html>


<a id="orgd063817"></a>

## recent raku topics


<a id="org9e46333"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org79bdb6f"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="orga01eabc"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org7c97619"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org51e5def"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org962456d"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="orgdfc3963"></a>

## sniping at perl, circa 2009


<a id="org92131cf"></a>

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


<a id="orge51e9f0"></a>

## equilibirum index


<a id="orgc5f795e"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org9383c11"></a>

### TODO revisit this next time (Rob solution?)


<a id="org0d358c1"></a>

## weekly challenge this week


<a id="org4f84e58"></a>

### <https://theweeklychallenge.org/>


<a id="orgc6e75aa"></a>

## from previous meetings


<a id="orga68c648"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org1a3d9b2"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orga3b266d"></a>

## bill michels


<a id="org35f9531"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgae120f5"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgae7bcce"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org549e4f4"></a>

### <https://unix.stackexchange.com/a/699338/227738>
