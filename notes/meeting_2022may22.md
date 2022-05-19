- [meeting notes May 22, 2022](#org2ec4947)
  - [the raku study group](#org1cc59ac)
    - [usual links](#orgaf58810)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#org45433af)
    - [<https://news.ycombinator.com/item?id=31259332>](#org4f2b870)
  - [finished tests to examine ^methods issues](#orgef45ecd)
  - [review introspection features](#org7e68c3f)
    - [can you know what traits were used](#orgd71276a)
    - [find all classes](#org8fc58c4)
    - [more mysteries:](#orge8b7001)
  - [Rob's interested in basic tools (some missing?)](#org6c64dcc)
    - [e.g. counting lines of code: colc](#org803d896)
    - [coverage](#org86561f5)
  - [raku's "move" considered ungood](#orgf9f9978)
    - [move/copy command in Raku doesn't work with directory as second arg](#orgebb9d06)
    - [<https://docs.raku.org/routine/move>](#org5d74b76)
    - [we've discussed this one already:](#org2f3b8c3)
    - [an issue: the unix "mv" can do a rename or a refile](#org24aa2c9)
    - ["rename" seems to do a **copy**, I needed to manually unlink original](#org478f992)
  - [the weekly challenge](#org4aca612)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>](#org286cbb6)
    - [<https://raku-musings.com/sum-sum.html>](#orgf212f29)
  - [recent raku topics](#org115c77a)
    - [rakudo weekly news](#org8ff5271)
    - [web scraping:](#orgc73c07f)
    - [a new "are" method (what are these?)](#orgbfc0244)
    - [more dwimmy .all ~~ Type](#orgf885e17)
    - [checking a program is on system](#org6ec7f0e)
    - [parsing wiki syntax, regex vs grammars](#orgc4928bd)
  - [sniping at perl, circa 2009](#org4598006)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org128e239)
  - [equilibirum index](#org8b99c14)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgdc7dba3)
    - [revisit this next time (Rob solution?)](#org82709d6)
  - [weekly challenge this week](#org2c86ac7)
    - [<https://theweeklychallenge.org/>](#orgfecc1d1)
  - [from previous meetings](#org0454fa2)
    - [an answer to what's Raku for:](#orgeb36515)
    - [gui toolkits](#orgf0f60c6)
  - [bill michels](#org0dc6929)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgf66b374)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org1fedfc8)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgf63f2ad)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org74b9224)
  - [announcements](#org3beace6)
    - [June 5th: next raku study group meeting](#org9bdd880)
    - [June 21-25: tprc: perl/raku conference](#orge1fdb20)


<a id="org2ec4947"></a>

# meeting notes May 22, 2022


<a id="org1cc59ac"></a>

## the raku study group


<a id="orgaf58810"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may22.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may22>


<a id="org45433af"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="org4f2b870"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="orgef45ecd"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>
    
    2.  yary suggests: grep for failure cases, and test whether that list is empty


<a id="org7e68c3f"></a>

## TODO review introspection features


<a id="orgd71276a"></a>

### can you know what traits were used


<a id="org8fc58c4"></a>

### find all classes

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    1.  <https://github.com/doomvox/perl6-symbol-scan>
    
    2.  /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6
    
    3.  <https://docs.raku.org/type.html>


<a id="orge8b7001"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="org6c64dcc"></a>

## Rob's interested in basic tools (some missing?)


<a id="org803d896"></a>

### e.g. counting lines of code: colc


<a id="org86561f5"></a>

### coverage

1.  bruce gray talked about system perl vs custom installs


<a id="orgf9f9978"></a>

## raku's "move" considered ungood


<a id="orgebb9d06"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org5d74b76"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on

    the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org2f3b8c3"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>

2.  <https://stackoverflow.com/a/71973303/7270649>


<a id="org24aa2c9"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  handles two separate functions: refile and rename
    
        1.  refile happens if last argument is a directory
        
        2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org478f992"></a>

### "rename" seems to do a **copy**, I needed to manually unlink original

1.  <https://github.com/doomvox/raku-study/bin/2022mar13/tagger.raku>


<a id="org4aca612"></a>

## the weekly challenge


<a id="org286cbb6"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>

1.  task1: sum bitwise operator

2.  task2: summations


<a id="orgf212f29"></a>

### <https://raku-musings.com/sum-sum.html>


<a id="org115c77a"></a>

## recent raku topics


<a id="org8ff5271"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="orgc73c07f"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="orgbfc0244"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="orgf885e17"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org6ec7f0e"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="orgc4928bd"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org4598006"></a>

## sniping at perl, circa 2009


<a id="org128e239"></a>

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


<a id="org8b99c14"></a>

## equilibirum index


<a id="orgdc7dba3"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org82709d6"></a>

### TODO revisit this next time (Rob solution?)


<a id="org2c86ac7"></a>

## weekly challenge this week


<a id="orgfecc1d1"></a>

### <https://theweeklychallenge.org/>


<a id="org0454fa2"></a>

## from previous meetings


<a id="orgeb36515"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgf0f60c6"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org0dc6929"></a>

## bill michels


<a id="orgf66b374"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org1fedfc8"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgf63f2ad"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org74b9224"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org3beace6"></a>

## announcements


<a id="org9bdd880"></a>

### June 5th: next raku study group meeting


<a id="orge1fdb20"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
