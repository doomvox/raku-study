- [meeting notes May 08, 2022](#org67d995e)
  - [the raku study group](#orgb4d9b1e)
    - [usual links](#orge7cd782)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#orgadf8c26)
    - [<https://news.ycombinator.com/item?id=31259332>](#org7d7b27d)
  - [finished tests to examine ^methods issues](#orgdeefe90)
  - [review introspection features](#org64d3c84)
    - [can you know what traits were used](#org77bb1f6)
    - [find all classes](#org5784115)
    - [more mysteries:](#org34f0e69)
  - [Rob's interested in basic tools (some missing?)](#org51aeea8)
    - [e.g. counting lines of code: colc](#org5e56e83)
    - [coverage](#orgc37d217)
  - [raku's "move" considered ungood](#orgf7d31db)
    - [move/copy command in Raku doesn't work with directory as second arg](#org5960bf8)
    - [<https://docs.raku.org/routine/move>](#org51bc0b0)
    - [we've discussed this one already:](#orgb2bbecf)
    - [an issue: the unix "mv" can do a rename or a refile](#org840661e)
    - ["rename" seems to do a **copy**, I needed to manually unlink original](#org3119228)
  - [bruce on the weekly challenge](#org1972413)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>](#org5fdb1df)
    - [<https://raku-musings.com/sum-sum.html>](#org8a3424a)
  - [recent raku topics](#orgb53472f)
    - [rakudo weekly news](#org4235a00)
    - [web scraping:](#orgfb01fd5)
    - [a new "are" method (what are these?)](#orgce0d38a)
    - [more dwimmy .all ~~ Type](#org8ae9036)
    - [checking a program is on system](#orga24b4fc)
    - [parsing wiki syntax, regex vs grammars](#org2305f31)
  - [sniping at perl, circa 2009](#org50de87f)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org1c0224e)
  - [equilibirum index](#orgfd1599d)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org96f8b29)
    - [revisit this next time (Rob solution?)](#org33e7a24)
  - [weekly challenge this week](#orgcc46d31)
    - [<https://theweeklychallenge.org/>](#org23419f2)
  - [from previous meetings](#org69252e7)
    - [an answer to what's Raku for:](#org12234b7)
    - [gui toolkits](#org3fec6f4)
  - [bill michels](#org13fb98b)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orge26e6db)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orga0b65cf)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org8f52a70)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org6814c00)
  - [announcements](#org5bc40fd)
    - [May 22nd: next raku study group meeting](#orgb8348fd)
    - [June 21-25: tprc: perl/raku conference](#org55b9ac7)


<a id="org67d995e"></a>

# meeting notes May 08, 2022


<a id="orgb4d9b1e"></a>

## the raku study group


<a id="orge7cd782"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orgadf8c26"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="org7d7b27d"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="orgdeefe90"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>
    
    2.  yary suggests: grep for failure cases, and test whether that list is empty


<a id="org64d3c84"></a>

## TODO review introspection features


<a id="org77bb1f6"></a>

### can you know what traits were used


<a id="org5784115"></a>

### find all classes

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    1.  <https://github.com/doomvox/perl6-symbol-scan>
    
    2.  /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6
    
    3.  <https://docs.raku.org/type.html>


<a id="org34f0e69"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="org51aeea8"></a>

## Rob's interested in basic tools (some missing?)


<a id="org5e56e83"></a>

### e.g. counting lines of code: colc


<a id="orgc37d217"></a>

### coverage

1.  bruce gray talked about system perl vs custom installs


<a id="orgf7d31db"></a>

## raku's "move" considered ungood


<a id="org5960bf8"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org51bc0b0"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on

    the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="orgb2bbecf"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>

2.  <https://stackoverflow.com/a/71973303/7270649>


<a id="org840661e"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  handles two separate functions, refile and rename
    
        1.  refile happens if last argument is a directory
        
        2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org3119228"></a>

### "rename" seems to do a **copy**, I needed to manually unlink original

1.  <https://github.com/doomvox/raku-study/bin/2022mar13/tagger.raku>


<a id="org1972413"></a>

## bruce on the weekly challenge


<a id="org5fdb1df"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>

1.  task1: sum bitwise operator

2.  task2: summations


<a id="org8a3424a"></a>

### <https://raku-musings.com/sum-sum.html>


<a id="orgb53472f"></a>

## recent raku topics


<a id="org4235a00"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="orgfb01fd5"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="orgce0d38a"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org8ae9036"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="orga24b4fc"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org2305f31"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org50de87f"></a>

## sniping at perl, circa 2009


<a id="org1c0224e"></a>

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


<a id="orgfd1599d"></a>

## equilibirum index


<a id="org96f8b29"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org33e7a24"></a>

### TODO revisit this next time (Rob solution?)


<a id="orgcc46d31"></a>

## weekly challenge this week


<a id="org23419f2"></a>

### <https://theweeklychallenge.org/>


<a id="org69252e7"></a>

## from previous meetings


<a id="org12234b7"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org3fec6f4"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org13fb98b"></a>

## bill michels


<a id="orge26e6db"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orga0b65cf"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org8f52a70"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org6814c00"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org5bc40fd"></a>

## announcements


<a id="orgb8348fd"></a>

### May 22nd: next raku study group meeting


<a id="org55b9ac7"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
