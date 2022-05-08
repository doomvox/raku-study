- [meeting notes May 08, 2022](#org59c523f)
  - [the raku study group](#orgec3eddc)
    - [usual links](#orgb891586)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#org4bbb3a2)
    - [<https://news.ycombinator.com/item?id=31259332>](#orgdb8e8f3)
  - [finished tests to examine ^methods issues](#org9ee1809)
  - [review introspection features](#orge24f21d)
    - [find all classes](#org28dd207)
    - [can you know what traits were used](#org9a3228d)
    - [more mysteries:](#org9a77b18)
  - [raku's "move" considered ungood](#org7ab57b9)
    - [move/copy command in Raku doesn't work with directory as second arg](#org2a74e7f)
    - [<https://docs.raku.org/routine/move>](#org2f35a51)
    - [we've discussed this one already:](#orge2eab51)
    - [an issue: the unix "mv" can do a rename or a refile](#orgf93e497)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#org593b0d7)
  - [rob ransbottom](#org21632ba)
    - [topics in mind, which are](#orge4cf5f4)
  - [recent raku topics](#org86c86db)
    - [web scraping:](#org0e1190c)
    - [a new "are" method (what are these?)](#org1139be0)
    - [rakudo weekly news](#org2dbf0ab)
    - [more dwimmy .all ~~ Type](#org214a04f)
    - [checking a program is on system](#org3ce542c)
    - [parsing wiki syntax, regex vs grammars](#orgd2cf3dd)
  - [sniping at perl, circa 2009](#org156f679)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org325a7a1)
  - [equilibirum index](#org7c480e8)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgc93baf9)
    - [revisit this next time (Rob solution?)](#orgd4cd881)
  - [Rob's interested in discussing missing basic tools](#org3125193)
  - [weekly challenge this week](#orgcab597a)
    - [<https://theweeklychallenge.org/>](#org693e2d0)
  - [from previous meetings](#org0a22a4c)
    - [an answer to what's Raku for:](#org5484c07)
    - [gui toolkits](#org211a35a)
  - [bill michels](#orgdab6706)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org7cad6fb)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org6c35bf2)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org52adc5e)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org1ddfd7e)
  - [announcements](#orge2a4ea7)
    - [May 22nd: next raku study group meeting](#org2628616)
    - [June 21-25: tprc: perl/raku conference](#org065918c)


<a id="org59c523f"></a>

# meeting notes May 08, 2022


<a id="orgec3eddc"></a>

## the raku study group


<a id="orgb891586"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org4bbb3a2"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="orgdb8e8f3"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="org9ee1809"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="orge24f21d"></a>

## TODO review introspection features


<a id="org28dd207"></a>

### find all classes


<a id="org9a3228d"></a>

### can you know what traits were used

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6


<a id="org9a77b18"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="org7ab57b9"></a>

## raku's "move" considered ungood


<a id="org2a74e7f"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org2f35a51"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="orge2eab51"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="orgf93e497"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org593b0d7"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="org21632ba"></a>

## rob ransbottom


<a id="orge4cf5f4"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="org86c86db"></a>

## recent raku topics


<a id="org0e1190c"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org1139be0"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org2dbf0ab"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org214a04f"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org3ce542c"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="orgd2cf3dd"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org156f679"></a>

## sniping at perl, circa 2009


<a id="org325a7a1"></a>

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


<a id="org7c480e8"></a>

## equilibirum index


<a id="orgc93baf9"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orgd4cd881"></a>

### TODO revisit this next time (Rob solution?)


<a id="org3125193"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="orgcab597a"></a>

## weekly challenge this week


<a id="org693e2d0"></a>

### <https://theweeklychallenge.org/>


<a id="org0a22a4c"></a>

## from previous meetings


<a id="org5484c07"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org211a35a"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgdab6706"></a>

## bill michels


<a id="org7cad6fb"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org6c35bf2"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org52adc5e"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org1ddfd7e"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orge2a4ea7"></a>

## announcements


<a id="org2628616"></a>

### May 22nd: next raku study group meeting


<a id="org065918c"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial
