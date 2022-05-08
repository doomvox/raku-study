- [meeting notes May 08, 2022](#orgac64233)
  - [the raku study group](#org590e968)
    - [usual links](#orgaba1f32)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#orgb954473)
    - [<https://news.ycombinator.com/item?id=31259332>](#org93293ba)
  - [finished tests to examine ^methods issues](#org6823dec)
  - [review introspection features](#org3c624da)
    - [find all classes](#org69a5fb4)
    - [can you know what traits were used](#orgafa8347)
  - [raku's "move" considered ungood](#orga449b4f)
    - [move/copy command in Raku doesn't work with directory as second arg](#org969ae3d)
    - [<https://docs.raku.org/routine/move>](#org70247da)
    - [we've discussed this one already:](#org0433ae6)
    - [an issue: the unix "mv" can do a rename or a refile](#orgae729e3)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#orgea8c1f3)
  - [rob ransbottom](#org8c77c3e)
    - [topics in mind, which are](#org591607c)
  - [recent raku topics](#orgdacb0ab)
    - [web scraping:](#orgdfcfee7)
    - [a new "are" method (what are these?)](#orgd9babf1)
    - [rakudo weekly news](#orge32b474)
    - [more dwimmy .all ~~ Type](#org33fc9f1)
    - [checking a program is on system](#org1b6149a)
    - [parsing wiki syntax, regex vs grammars](#orgd92fbea)
  - [sniping at perl, circa 2009](#orgd4c8f16)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org9f24372)
  - [equilibirum index](#org467ea12)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org9cfbc84)
    - [revisit this next time (Rob solution?)](#org2a15323)
  - [Rob's interested in discussing missing basic tools](#org37c4776)
  - [weekly challenge this week](#org9c2f923)
    - [<https://theweeklychallenge.org/>](#orgd22e4b4)
  - [from previous meetings](#orgb8be3cd)
    - [an answer to what's Raku for:](#org2791587)
    - [gui toolkits](#orgf5cf51f)
  - [bill michels](#org6742b1b)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org553a497)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org495a017)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org0af9f85)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org9c5f221)
  - [announcements](#orgb9e0e9e)
    - [May 22nd: next raku study group meeting](#org51ff1bb)
    - [June 21-25: tprc: perl/raku conference](#org8fd3e94)


<a id="orgac64233"></a>

# meeting notes May 08, 2022


<a id="org590e968"></a>

## the raku study group


<a id="orgaba1f32"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orgb954473"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="org93293ba"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="org6823dec"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="org3c624da"></a>

## TODO review introspection features


<a id="org69a5fb4"></a>

### find all classes


<a id="orgafa8347"></a>

### can you know what traits were used

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less


<a id="orga449b4f"></a>

## raku's "move" considered ungood


<a id="org969ae3d"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org70247da"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org0433ae6"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="orgae729e3"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="orgea8c1f3"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="org8c77c3e"></a>

## rob ransbottom


<a id="org591607c"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="orgdacb0ab"></a>

## recent raku topics


<a id="orgdfcfee7"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="orgd9babf1"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="orge32b474"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org33fc9f1"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org1b6149a"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="orgd92fbea"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="orgd4c8f16"></a>

## sniping at perl, circa 2009


<a id="org9f24372"></a>

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


<a id="org467ea12"></a>

## equilibirum index


<a id="org9cfbc84"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org2a15323"></a>

### TODO revisit this next time (Rob solution?)


<a id="org37c4776"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org9c2f923"></a>

## weekly challenge this week


<a id="orgd22e4b4"></a>

### <https://theweeklychallenge.org/>


<a id="orgb8be3cd"></a>

## from previous meetings


<a id="org2791587"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgf5cf51f"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org6742b1b"></a>

## bill michels


<a id="org553a497"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org495a017"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org0af9f85"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org9c5f221"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgb9e0e9e"></a>

## announcements


<a id="org51ff1bb"></a>

### May 22nd: next raku study group meeting


<a id="org8fd3e94"></a>

### June 21-25: tprc: perl/raku conference
