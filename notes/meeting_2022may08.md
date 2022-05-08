- [meeting notes May 08, 2022](#org8aaec6d)
  - [the raku study group](#org5a7c247)
    - [usual links](#org88659b0)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#org23ab500)
  - [finished tests to examine ^methods issues](#orgcec18f8)
  - [raku's "move" considered ungood](#org101af4c)
    - [move/copy command in Raku doesn't work with directory as second arg](#org82f5acd)
    - [<https://docs.raku.org/routine/move>](#org642d761)
    - [we've discussed this one already:](#orgb822edd)
    - [an issue: the unix "mv" can do a rename or a refile](#org11bf053)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#orgc00fd95)
  - [rob ransbottom](#orgae185ce)
    - [topics in mind, which are](#org37d74c2)
  - [recent raku topics](#orgb9b4177)
    - [web scraping:](#org0b3f3f2)
    - [a new "are" method (what are these?)](#org42481ee)
    - [rakudo weekly news](#orgf4c1035)
    - [more dwimmy .all ~~ Type](#orgac4acd5)
    - [checking a program is on system](#orgb989ef7)
    - [parsing wiki syntax, regex vs grammars](#orgd3ac38c)
  - [sniping at perl, circa 2009](#orgfacff12)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org1c27d0e)
  - [equilibirum index](#orgb482404)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org86593cc)
    - [revisit this next time (Rob solution?)](#orgd84635e)
  - [Rob's interested in discussing missing basic tools](#org67099b4)
  - [weekly challenge this week](#orga703f60)
    - [<https://theweeklychallenge.org/>](#org910f832)
  - [from previous meetings](#orgedc5133)
    - [an answer to what's Raku for:](#org1378731)
    - [gui toolkits](#org52d9480)
  - [bill michels](#orgac0361d)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgc186830)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org8729b3a)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgc52f9f5)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org71e499f)
  - [announcements](#orge1ef99f)
    - [May 22nd: next raku study group meeting](#org8ed13a6)
    - [June 21-25: tprc: perl/raku conference](#orgc6ca2e2)


<a id="org8aaec6d"></a>

# meeting notes May 08, 2022


<a id="org5a7c247"></a>

## the raku study group


<a id="org88659b0"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org23ab500"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="orgcec18f8"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="org101af4c"></a>

## raku's "move" considered ungood


<a id="org82f5acd"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org642d761"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="orgb822edd"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org11bf053"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="orgc00fd95"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="orgae185ce"></a>

## rob ransbottom


<a id="org37d74c2"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="orgb9b4177"></a>

## recent raku topics


<a id="org0b3f3f2"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org42481ee"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="orgf4c1035"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="orgac4acd5"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="orgb989ef7"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="orgd3ac38c"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="orgfacff12"></a>

## sniping at perl, circa 2009


<a id="org1c27d0e"></a>

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


<a id="orgb482404"></a>

## equilibirum index


<a id="org86593cc"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orgd84635e"></a>

### TODO revisit this next time (Rob solution?)


<a id="org67099b4"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="orga703f60"></a>

## weekly challenge this week


<a id="org910f832"></a>

### <https://theweeklychallenge.org/>


<a id="orgedc5133"></a>

## from previous meetings


<a id="org1378731"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org52d9480"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgac0361d"></a>

## bill michels


<a id="orgc186830"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org8729b3a"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgc52f9f5"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org71e499f"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orge1ef99f"></a>

## announcements


<a id="org8ed13a6"></a>

### May 22nd: next raku study group meeting


<a id="orgc6ca2e2"></a>

### June 21-25: tprc: perl/raku conference
