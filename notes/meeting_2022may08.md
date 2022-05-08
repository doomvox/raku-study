- [meeting notes May 08, 2022](#org65a3c01)
  - [the raku study group](#org15a4ab8)
    - [usual links](#orgd9e3596)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#org9c97eae)
    - [<https://news.ycombinator.com/item?id=31259332>](#orgd04e80a)
  - [finished tests to examine ^methods issues](#org75db3c1)
  - [review introspection features](#org0cae086)
    - [can you know what traits were used](#org0df52b2)
    - [find all classes](#orga6f648b)
    - [more mysteries:](#orga65a76e)
  - [Rob's interested in discussing missing basic tools](#org0b5b1b7)
    - [e.g. counting lines of code: colc](#org2bc0fc3)
    - [coverage](#org118d796)
  - [raku's "move" considered ungood](#org80201ec)
    - [move/copy command in Raku doesn't work with directory as second arg](#orge1e27f3)
    - [<https://docs.raku.org/routine/move>](#orgd7d78c7)
    - [we've discussed this one already:](#org2c9e08b)
    - [an issue: the unix "mv" can do a rename or a refile](#orga83a341)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#org4ab103e)
  - [rob ransbottom](#orgf8052d6)
    - [topics in mind, which are](#orgeb7557b)
  - [recent raku topics](#org789afea)
    - [web scraping:](#org1f33263)
    - [a new "are" method (what are these?)](#org9dcd2e8)
    - [rakudo weekly news](#orgb69c4fc)
    - [more dwimmy .all ~~ Type](#orgabe5ecd)
    - [checking a program is on system](#org6dfae45)
    - [parsing wiki syntax, regex vs grammars](#orgaf230a9)
  - [sniping at perl, circa 2009](#org453b246)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org0431627)
  - [equilibirum index](#orgede02c7)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org603603c)
    - [revisit this next time (Rob solution?)](#orgf5793d7)
  - [weekly challenge this week](#orgcf768a4)
    - [<https://theweeklychallenge.org/>](#org4462401)
  - [from previous meetings](#orge420bbb)
    - [an answer to what's Raku for:](#org3b5b1ff)
    - [gui toolkits](#orgea4d312)
  - [bill michels](#org40730f9)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orga3e1802)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org8a0bb78)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org854a093)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org8f24169)
  - [announcements](#org8626459)
    - [May 22nd: next raku study group meeting](#org783101d)
    - [June 21-25: tprc: perl/raku conference](#orgb73fdaf)


<a id="org65a3c01"></a>

# meeting notes May 08, 2022


<a id="org15a4ab8"></a>

## the raku study group


<a id="orgd9e3596"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org9c97eae"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="orgd04e80a"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="org75db3c1"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>
    
    2.  yary suggests: grep for failure cases, and test whether that list is empty


<a id="org0cae086"></a>

## TODO review introspection features


<a id="org0df52b2"></a>

### can you know what traits were used


<a id="orga6f648b"></a>

### find all classes

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6


<a id="orga65a76e"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="org0b5b1b7"></a>

## Rob's interested in discussing missing basic tools


<a id="org2bc0fc3"></a>

### e.g. counting lines of code: colc


<a id="org118d796"></a>

### coverage


<a id="org80201ec"></a>

## raku's "move" considered ungood


<a id="orge1e27f3"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="orgd7d78c7"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org2c9e08b"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="orga83a341"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org4ab103e"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="orgf8052d6"></a>

## rob ransbottom


<a id="orgeb7557b"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="org789afea"></a>

## recent raku topics


<a id="org1f33263"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org9dcd2e8"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="orgb69c4fc"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="orgabe5ecd"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org6dfae45"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="orgaf230a9"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org453b246"></a>

## sniping at perl, circa 2009


<a id="org0431627"></a>

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


<a id="orgede02c7"></a>

## equilibirum index


<a id="org603603c"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orgf5793d7"></a>

### TODO revisit this next time (Rob solution?)


<a id="orgcf768a4"></a>

## weekly challenge this week


<a id="org4462401"></a>

### <https://theweeklychallenge.org/>


<a id="orge420bbb"></a>

## from previous meetings


<a id="org3b5b1ff"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgea4d312"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org40730f9"></a>

## bill michels


<a id="orga3e1802"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org8a0bb78"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org854a093"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org8f24169"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org8626459"></a>

## announcements


<a id="org783101d"></a>

### May 22nd: next raku study group meeting


<a id="orgb73fdaf"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial
