- [meeting notes May 08, 2022](#org47198a2)
  - [the raku study group](#org7726b98)
    - [usual links](#org61c3350)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#orgc427bbe)
    - [<https://news.ycombinator.com/item?id=31259332>](#org4205797)
  - [finished tests to examine ^methods issues](#org34450e0)
  - [review introspection features](#org8875f8a)
    - [find all classes](#orgb74fc55)
    - [can you know what traits were used](#org40c9038)
  - [raku's "move" considered ungood](#orge8e6409)
    - [move/copy command in Raku doesn't work with directory as second arg](#orged76aa3)
    - [<https://docs.raku.org/routine/move>](#org984907b)
    - [we've discussed this one already:](#org2c8e28f)
    - [an issue: the unix "mv" can do a rename or a refile](#orgabcd7bc)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#orgaa52dd7)
  - [rob ransbottom](#org622bb04)
    - [topics in mind, which are](#org17116df)
  - [recent raku topics](#org7898d1a)
    - [web scraping:](#orgd247fbd)
    - [a new "are" method (what are these?)](#org0b33d29)
    - [rakudo weekly news](#orged0761e)
    - [more dwimmy .all ~~ Type](#orgb237e3b)
    - [checking a program is on system](#orge5bcae9)
    - [parsing wiki syntax, regex vs grammars](#org66c7993)
  - [sniping at perl, circa 2009](#org75fec28)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgc8f1db1)
  - [equilibirum index](#orgeb526aa)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org067cad4)
    - [revisit this next time (Rob solution?)](#org77936dc)
  - [Rob's interested in discussing missing basic tools](#orga89db15)
  - [weekly challenge this week](#org63dda4d)
    - [<https://theweeklychallenge.org/>](#orgf216120)
  - [from previous meetings](#orgc3ec9ee)
    - [an answer to what's Raku for:](#orgb8bedfa)
    - [gui toolkits](#orga3a6fa3)
  - [bill michels](#org6d6a1d1)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgf1e929a)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org1b6c86a)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgb7f2323)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org3a1bb7e)
  - [announcements](#org29da80e)
    - [May 22nd: next raku study group meeting](#org5bac4b4)
    - [June 21-25: tprc: perl/raku conference](#org36e1018)


<a id="org47198a2"></a>

# meeting notes May 08, 2022


<a id="org7726b98"></a>

## the raku study group


<a id="org61c3350"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orgc427bbe"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="org4205797"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="org34450e0"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="org8875f8a"></a>

## review introspection features


<a id="orgb74fc55"></a>

### find all classes


<a id="org40c9038"></a>

### can you know what traits were used


<a id="orge8e6409"></a>

## raku's "move" considered ungood


<a id="orged76aa3"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org984907b"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org2c8e28f"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="orgabcd7bc"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="orgaa52dd7"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="org622bb04"></a>

## rob ransbottom


<a id="org17116df"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="org7898d1a"></a>

## recent raku topics


<a id="orgd247fbd"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org0b33d29"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="orged0761e"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="orgb237e3b"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="orge5bcae9"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org66c7993"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org75fec28"></a>

## sniping at perl, circa 2009


<a id="orgc8f1db1"></a>

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


<a id="orgeb526aa"></a>

## equilibirum index


<a id="org067cad4"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org77936dc"></a>

### TODO revisit this next time (Rob solution?)


<a id="orga89db15"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org63dda4d"></a>

## weekly challenge this week


<a id="orgf216120"></a>

### <https://theweeklychallenge.org/>


<a id="orgc3ec9ee"></a>

## from previous meetings


<a id="orgb8bedfa"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orga3a6fa3"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org6d6a1d1"></a>

## bill michels


<a id="orgf1e929a"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org1b6c86a"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgb7f2323"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org3a1bb7e"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org29da80e"></a>

## announcements


<a id="org5bac4b4"></a>

### May 22nd: next raku study group meeting


<a id="org36e1018"></a>

### June 21-25: tprc: perl/raku conference
