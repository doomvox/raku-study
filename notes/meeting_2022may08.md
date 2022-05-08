- [meeting notes May 08, 2022](#orgfc5178b)
  - [the raku study group](#orgf15fa9d)
    - [usual links](#org3832e43)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#org35dfcf7)
    - [<https://news.ycombinator.com/item?id=31259332>](#org0aef137)
  - [finished tests to examine ^methods issues](#orgd05e17c)
  - [review introspection features](#orgf200555)
    - [can you know what traits were used](#orgb07e339)
    - [find all classes](#orga1dec9a)
    - [more mysteries:](#orgc24130e)
  - [Rob's interested in discussing missing basic tools](#org05f5e26)
    - [e.g. counting lines of code: colc](#org6fa0575)
    - [coverage](#org6e73225)
  - [raku's "move" considered ungood](#org3978afb)
    - [move/copy command in Raku doesn't work with directory as second arg](#org1cb90ef)
    - [<https://docs.raku.org/routine/move>](#org2669258)
    - [we've discussed this one already:](#org14352c9)
    - [an issue: the unix "mv" can do a rename or a refile](#org24a3fcf)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#org9fb9a5a)
  - [bruce on the weekly challenge](#org7b4bba3)
  - [rob ransbottom](#orga83d0d4)
    - [topics in mind, which are](#org1978525)
  - [recent raku topics](#org07beb04)
    - [web scraping:](#org460595a)
    - [a new "are" method (what are these?)](#org525cab2)
    - [rakudo weekly news](#orgd36355b)
    - [more dwimmy .all ~~ Type](#org85562b2)
    - [checking a program is on system](#org1c14daf)
    - [parsing wiki syntax, regex vs grammars](#orgec3df5a)
  - [sniping at perl, circa 2009](#orgb819c6a)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org7a8742a)
  - [equilibirum index](#orgc781964)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org78fd3de)
    - [revisit this next time (Rob solution?)](#org1aa59f5)
  - [weekly challenge this week](#org27720c5)
    - [<https://theweeklychallenge.org/>](#org2d49f88)
  - [from previous meetings](#org9ae2543)
    - [an answer to what's Raku for:](#org896f879)
    - [gui toolkits](#org3f9aebf)
  - [bill michels](#org4c7c589)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgc6f99fe)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orge951ef0)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgddc4a80)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org7b3095c)
  - [announcements](#orgdf52b13)
    - [May 22nd: next raku study group meeting](#orga886c0c)
    - [June 21-25: tprc: perl/raku conference](#orgfa0cfa6)


<a id="orgfc5178b"></a>

# meeting notes May 08, 2022


<a id="orgf15fa9d"></a>

## the raku study group


<a id="org3832e43"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org35dfcf7"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="org0aef137"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="orgd05e17c"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>
    
    2.  yary suggests: grep for failure cases, and test whether that list is empty


<a id="orgf200555"></a>

## TODO review introspection features


<a id="orgb07e339"></a>

### can you know what traits were used


<a id="orga1dec9a"></a>

### find all classes

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6


<a id="orgc24130e"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="org05f5e26"></a>

## Rob's interested in discussing missing basic tools


<a id="org6fa0575"></a>

### e.g. counting lines of code: colc


<a id="org6e73225"></a>

### coverage


<a id="org3978afb"></a>

## raku's "move" considered ungood


<a id="org1cb90ef"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org2669258"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on

    the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org14352c9"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>

2.  <https://stackoverflow.com/a/71973303/7270649>


<a id="org24a3fcf"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org9fb9a5a"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="org7b4bba3"></a>

## bruce on the weekly challenge

<https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>


<a id="orga83d0d4"></a>

## rob ransbottom


<a id="org1978525"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="org07beb04"></a>

## recent raku topics


<a id="org460595a"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org525cab2"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="orgd36355b"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org85562b2"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org1c14daf"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="orgec3df5a"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="orgb819c6a"></a>

## sniping at perl, circa 2009


<a id="org7a8742a"></a>

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


<a id="orgc781964"></a>

## equilibirum index


<a id="org78fd3de"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org1aa59f5"></a>

### TODO revisit this next time (Rob solution?)


<a id="org27720c5"></a>

## weekly challenge this week


<a id="org2d49f88"></a>

### <https://theweeklychallenge.org/>


<a id="org9ae2543"></a>

## from previous meetings


<a id="org896f879"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org3f9aebf"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org4c7c589"></a>

## bill michels


<a id="orgc6f99fe"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orge951ef0"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgddc4a80"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org7b3095c"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgdf52b13"></a>

## announcements


<a id="orga886c0c"></a>

### May 22nd: next raku study group meeting


<a id="orgfa0cfa6"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
