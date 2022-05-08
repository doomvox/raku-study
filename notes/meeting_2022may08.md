- [meeting notes May 08, 2022](#org1810772)
  - [the raku study group](#org29399a5)
    - [usual links](#org8d1ab49)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#orgaae19b0)
    - [<https://news.ycombinator.com/item?id=31259332>](#org94bebc1)
  - [finished tests to examine ^methods issues](#orgf98017a)
  - [review introspection features](#org91b2f38)
    - [find all classes](#org1b3c8e0)
    - [can you know what traits were used](#orgea3b9c5)
    - [more mysteries:](#org8df3cfd)
  - [raku's "move" considered ungood](#org54cce28)
    - [move/copy command in Raku doesn't work with directory as second arg](#orgc751c2d)
    - [<https://docs.raku.org/routine/move>](#orga4b81a1)
    - [we've discussed this one already:](#org464e7fb)
    - [an issue: the unix "mv" can do a rename or a refile](#org74b08ca)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#org73d8fbc)
  - [rob ransbottom](#org42b1d06)
    - [topics in mind, which are](#orgff76235)
  - [recent raku topics](#org8d10ea2)
    - [web scraping:](#org788fdba)
    - [a new "are" method (what are these?)](#org90a76b8)
    - [rakudo weekly news](#org3f20d55)
    - [more dwimmy .all ~~ Type](#org1d09d16)
    - [checking a program is on system](#org45cb06c)
    - [parsing wiki syntax, regex vs grammars](#org4b578f0)
  - [sniping at perl, circa 2009](#org31607b6)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgb6ef8ff)
  - [equilibirum index](#orgee8efc6)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org6d583fd)
    - [revisit this next time (Rob solution?)](#org85bf7b4)
  - [Rob's interested in discussing missing basic tools](#org93c47a3)
  - [weekly challenge this week](#org9021753)
    - [<https://theweeklychallenge.org/>](#org7791c26)
  - [from previous meetings](#orgab0bd16)
    - [an answer to what's Raku for:](#org6ebb263)
    - [gui toolkits](#org788ab2b)
  - [bill michels](#org2399226)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgae15444)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org0474e75)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org21e3fab)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org8c72072)
  - [announcements](#org0583a6b)
    - [May 22nd: next raku study group meeting](#orgce10276)
    - [June 21-25: tprc: perl/raku conference](#org1585635)


<a id="org1810772"></a>

# meeting notes May 08, 2022


<a id="org29399a5"></a>

## the raku study group


<a id="org8d1ab49"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orgaae19b0"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="org94bebc1"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="orgf98017a"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="org91b2f38"></a>

## TODO review introspection features


<a id="org1b3c8e0"></a>

### find all classes


<a id="orgea3b9c5"></a>

### can you know what traits were used

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6


<a id="org8df3cfd"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

2.  can you look up the signature for a method object?


<a id="org54cce28"></a>

## raku's "move" considered ungood


<a id="orgc751c2d"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="orga4b81a1"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org464e7fb"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org74b08ca"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org73d8fbc"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="org42b1d06"></a>

## rob ransbottom


<a id="orgff76235"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="org8d10ea2"></a>

## recent raku topics


<a id="org788fdba"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org90a76b8"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org3f20d55"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org1d09d16"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org45cb06c"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org4b578f0"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org31607b6"></a>

## sniping at perl, circa 2009


<a id="orgb6ef8ff"></a>

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


<a id="orgee8efc6"></a>

## equilibirum index


<a id="org6d583fd"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org85bf7b4"></a>

### TODO revisit this next time (Rob solution?)


<a id="org93c47a3"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org9021753"></a>

## weekly challenge this week


<a id="org7791c26"></a>

### <https://theweeklychallenge.org/>


<a id="orgab0bd16"></a>

## from previous meetings


<a id="org6ebb263"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org788ab2b"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org2399226"></a>

## bill michels


<a id="orgae15444"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org0474e75"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org21e3fab"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org8c72072"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org0583a6b"></a>

## announcements


<a id="orgce10276"></a>

### May 22nd: next raku study group meeting


<a id="org1585635"></a>

### June 21-25: tprc: perl/raku conference
