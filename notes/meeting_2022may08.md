- [meeting notes May 08, 2022](#org51d8617)
  - [the raku study group](#org3732e20)
    - [usual links](#org6330c10)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#orgc0ac8a7)
    - [<https://news.ycombinator.com/item?id=31259332>](#org2b664e3)
  - [finished tests to examine ^methods issues](#org0e7f8ce)
  - [review introspection features](#orgf55b382)
    - [find all classes](#orgcb47ff6)
    - [can you know what traits were used](#org926e571)
  - [raku's "move" considered ungood](#orgcfd3d83)
    - [move/copy command in Raku doesn't work with directory as second arg](#org6c8e001)
    - [<https://docs.raku.org/routine/move>](#org0b191e6)
    - [we've discussed this one already:](#orgfc2bbb5)
    - [an issue: the unix "mv" can do a rename or a refile](#org32e3f99)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#org93ae403)
  - [rob ransbottom](#org72b0239)
    - [topics in mind, which are](#org20598a8)
  - [recent raku topics](#org704b562)
    - [web scraping:](#orga15e5c9)
    - [a new "are" method (what are these?)](#org4cc638c)
    - [rakudo weekly news](#org97a7b14)
    - [more dwimmy .all ~~ Type](#org1c35fd2)
    - [checking a program is on system](#org5e26a01)
    - [parsing wiki syntax, regex vs grammars](#orgb320238)
  - [sniping at perl, circa 2009](#org787631d)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org3754ca7)
  - [equilibirum index](#orgb759e14)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org8cd68f0)
    - [revisit this next time (Rob solution?)](#org9f6362d)
  - [Rob's interested in discussing missing basic tools](#org72dbc8c)
  - [weekly challenge this week](#org38bcb7d)
    - [<https://theweeklychallenge.org/>](#org8994300)
  - [from previous meetings](#org0566428)
    - [an answer to what's Raku for:](#org51da776)
    - [gui toolkits](#orgabc6f3f)
  - [bill michels](#orgee8d7af)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgea5e47c)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org7416351)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgac8308a)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgf55bd35)
  - [announcements](#org164d25f)
    - [May 22nd: next raku study group meeting](#orgf8befc7)
    - [June 21-25: tprc: perl/raku conference](#org705a765)


<a id="org51d8617"></a>

# meeting notes May 08, 2022


<a id="org3732e20"></a>

## the raku study group


<a id="org6330c10"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orgc0ac8a7"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="org2b664e3"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="org0e7f8ce"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="orgf55b382"></a>

## TODO review introspection features


<a id="orgcb47ff6"></a>

### find all classes


<a id="org926e571"></a>

### can you know what traits were used

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6


<a id="orgcfd3d83"></a>

## raku's "move" considered ungood


<a id="org6c8e001"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org0b191e6"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="orgfc2bbb5"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org32e3f99"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org93ae403"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="org72b0239"></a>

## rob ransbottom


<a id="org20598a8"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="org704b562"></a>

## recent raku topics


<a id="orga15e5c9"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org4cc638c"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org97a7b14"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org1c35fd2"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org5e26a01"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="orgb320238"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org787631d"></a>

## sniping at perl, circa 2009


<a id="org3754ca7"></a>

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


<a id="orgb759e14"></a>

## equilibirum index


<a id="org8cd68f0"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org9f6362d"></a>

### TODO revisit this next time (Rob solution?)


<a id="org72dbc8c"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org38bcb7d"></a>

## weekly challenge this week


<a id="org8994300"></a>

### <https://theweeklychallenge.org/>


<a id="org0566428"></a>

## from previous meetings


<a id="org51da776"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgabc6f3f"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgee8d7af"></a>

## bill michels


<a id="orgea5e47c"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org7416351"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgac8308a"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgf55bd35"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org164d25f"></a>

## announcements


<a id="orgf8befc7"></a>

### May 22nd: next raku study group meeting


<a id="org705a765"></a>

### June 21-25: tprc: perl/raku conference
