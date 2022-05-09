- [meeting notes May 08, 2022](#orgbd782b0)
  - [the raku study group](#orgf96b8f0)
    - [usual links](#orge1fe69f)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#orgb6190c3)
    - [<https://news.ycombinator.com/item?id=31259332>](#org3201ed3)
  - [finished tests to examine ^methods issues](#org1405a43)
  - [review introspection features](#org6d0aa78)
    - [can you know what traits were used](#org7635b31)
    - [find all classes](#org2a98e5e)
    - [more mysteries:](#org52fa514)
  - [Rob's interested in basic tools (some missing?)](#org4ed91b9)
    - [e.g. counting lines of code: colc](#org28b3316)
    - [coverage](#org100319a)
  - [raku's "move" considered ungood](#org101ece7)
    - [move/copy command in Raku doesn't work with directory as second arg](#orgdf11340)
    - [<https://docs.raku.org/routine/move>](#org5e51e36)
    - [we've discussed this one already:](#org73b80eb)
    - [an issue: the unix "mv" can do a rename or a refile](#org85d0382)
    - ["rename" seems to do a **copy**, I needed to manually unlink original](#org7b237f8)
  - [bruce on the weekly challenge](#orgd14c447)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>](#org4129690)
    - [<https://raku-musings.com/sum-sum.html>](#orgfdf8b82)
  - [rob ransbottom](#org17a0cad)
    - [had some topics in mind, which are](#org8d158c9)
  - [recent raku topics](#org38aa52b)
    - [rakudo weekly news](#orgfe4b312)
    - [web scraping:](#orge2253f1)
    - [a new "are" method (what are these?)](#orgff7dc7e)
    - [more dwimmy .all ~~ Type](#org2b21501)
    - [checking a program is on system](#org1a99c9a)
    - [parsing wiki syntax, regex vs grammars](#org6758526)
  - [sniping at perl, circa 2009](#org61d6323)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org52d4a20)
  - [equilibirum index](#orgecf5776)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgfc61fc8)
    - [revisit this next time (Rob solution?)](#orgf213ba5)
  - [weekly challenge this week](#org7d57749)
    - [<https://theweeklychallenge.org/>](#orgc7dd728)
  - [from previous meetings](#orga59985d)
    - [an answer to what's Raku for:](#org94f5ea1)
    - [gui toolkits](#org8eebae5)
  - [bill michels](#orgf31233f)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgc0d5d5a)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgeff5432)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgcbca252)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orge666eb9)
  - [announcements](#orgda98074)
    - [May 22nd: next raku study group meeting](#org588e5ba)
    - [June 21-25: tprc: perl/raku conference](#org7002aed)


<a id="orgbd782b0"></a>

# meeting notes May 08, 2022


<a id="orgf96b8f0"></a>

## the raku study group


<a id="orge1fe69f"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orgb6190c3"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="org3201ed3"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="org1405a43"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>
    
    2.  yary suggests: grep for failure cases, and test whether that list is empty


<a id="org6d0aa78"></a>

## TODO review introspection features


<a id="org7635b31"></a>

### can you know what traits were used


<a id="org2a98e5e"></a>

### find all classes

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    1.  <https://github.com/doomvox/perl6-symbol-scan>
    
    2.  /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6
    
    3.  <https://docs.raku.org/type.html>


<a id="org52fa514"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="org4ed91b9"></a>

## Rob's interested in basic tools (some missing?)


<a id="org28b3316"></a>

### e.g. counting lines of code: colc


<a id="org100319a"></a>

### coverage


<a id="org101ece7"></a>

## raku's "move" considered ungood


<a id="orgdf11340"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org5e51e36"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on

    the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org73b80eb"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>

2.  <https://stackoverflow.com/a/71973303/7270649>


<a id="org85d0382"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  handles two separate functions, refile and rename
    
        1.  refile happens if last argument is a directory
        
        2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org7b237f8"></a>

### "rename" seems to do a **copy**, I needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="orgd14c447"></a>

## bruce on the weekly challenge


<a id="org4129690"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>

1.  task1: sum bitwise operator

2.  task2: summations


<a id="orgfdf8b82"></a>

### <https://raku-musings.com/sum-sum.html>


<a id="org17a0cad"></a>

## rob ransbottom


<a id="org8d158c9"></a>

### had some topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="org38aa52b"></a>

## recent raku topics


<a id="orgfe4b312"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="orge2253f1"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="orgff7dc7e"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org2b21501"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org1a99c9a"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org6758526"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org61d6323"></a>

## sniping at perl, circa 2009


<a id="org52d4a20"></a>

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


<a id="orgecf5776"></a>

## equilibirum index


<a id="orgfc61fc8"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orgf213ba5"></a>

### TODO revisit this next time (Rob solution?)


<a id="org7d57749"></a>

## weekly challenge this week


<a id="orgc7dd728"></a>

### <https://theweeklychallenge.org/>


<a id="orga59985d"></a>

## from previous meetings


<a id="org94f5ea1"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org8eebae5"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgf31233f"></a>

## bill michels


<a id="orgc0d5d5a"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgeff5432"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgcbca252"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orge666eb9"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgda98074"></a>

## announcements


<a id="org588e5ba"></a>

### May 22nd: next raku study group meeting


<a id="org7002aed"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
