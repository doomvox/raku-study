- [meeting notes May 08, 2022](#org0b4fbdc)
  - [the raku study group](#org8c454b4)
    - [usual links](#org3b56df9)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#org2b7d6df)
    - [<https://news.ycombinator.com/item?id=31259332>](#orgdc0f203)
  - [finished tests to examine ^methods issues](#orgc570581)
  - [review introspection features](#org4e1a8f4)
    - [can you know what traits were used](#org9b9120a)
    - [find all classes](#orgf57e503)
    - [more mysteries:](#orgd5f533b)
  - [raku's "move" considered ungood](#org229de79)
    - [move/copy command in Raku doesn't work with directory as second arg](#org901f5ad)
    - [<https://docs.raku.org/routine/move>](#orgee85e54)
    - [we've discussed this one already:](#org401f9fc)
    - [an issue: the unix "mv" can do a rename or a refile](#org870e818)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#orgc8eff57)
  - [rob ransbottom](#org3abccea)
    - [topics in mind, which are](#orgfa3f845)
  - [recent raku topics](#orgabaa7db)
    - [web scraping:](#org0251e09)
    - [a new "are" method (what are these?)](#orgcf13c4c)
    - [rakudo weekly news](#org72f77bd)
    - [more dwimmy .all ~~ Type](#org3eed4fe)
    - [checking a program is on system](#orga118b0a)
    - [parsing wiki syntax, regex vs grammars](#org6631ddb)
  - [sniping at perl, circa 2009](#org475c8ce)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org89f3d4e)
  - [equilibirum index](#orge58c032)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgc9c27b7)
    - [revisit this next time (Rob solution?)](#orgd4668e0)
  - [Rob's interested in discussing missing basic tools](#org3a4f317)
  - [weekly challenge this week](#org6c6a7b8)
    - [<https://theweeklychallenge.org/>](#org1de5ca9)
  - [from previous meetings](#org468aec3)
    - [an answer to what's Raku for:](#org063572c)
    - [gui toolkits](#orge44b6ce)
  - [bill michels](#org8088e12)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org5f21a0f)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org3252a19)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgbc8eb31)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org78e35c8)
  - [announcements](#org5768026)
    - [May 22nd: next raku study group meeting](#org0fc590b)
    - [June 21-25: tprc: perl/raku conference](#orgf981c82)


<a id="org0b4fbdc"></a>

# meeting notes May 08, 2022


<a id="org8c454b4"></a>

## the raku study group


<a id="org3b56df9"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org2b7d6df"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="orgdc0f203"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="orgc570581"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>
    
    2.  yary suggests: grep for failure cases, and test whether that list is empty


<a id="org4e1a8f4"></a>

## TODO review introspection features


<a id="org9b9120a"></a>

### can you know what traits were used


<a id="orgf57e503"></a>

### find all classes

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6


<a id="orgd5f533b"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="org229de79"></a>

## raku's "move" considered ungood


<a id="org901f5ad"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="orgee85e54"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org401f9fc"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org870e818"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="orgc8eff57"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="org3abccea"></a>

## rob ransbottom


<a id="orgfa3f845"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="orgabaa7db"></a>

## recent raku topics


<a id="org0251e09"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="orgcf13c4c"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org72f77bd"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org3eed4fe"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="orga118b0a"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org6631ddb"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org475c8ce"></a>

## sniping at perl, circa 2009


<a id="org89f3d4e"></a>

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


<a id="orge58c032"></a>

## equilibirum index


<a id="orgc9c27b7"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orgd4668e0"></a>

### TODO revisit this next time (Rob solution?)


<a id="org3a4f317"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org6c6a7b8"></a>

## weekly challenge this week


<a id="org1de5ca9"></a>

### <https://theweeklychallenge.org/>


<a id="org468aec3"></a>

## from previous meetings


<a id="org063572c"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orge44b6ce"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org8088e12"></a>

## bill michels


<a id="org5f21a0f"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org3252a19"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgbc8eb31"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org78e35c8"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org5768026"></a>

## announcements


<a id="org0fc590b"></a>

### May 22nd: next raku study group meeting


<a id="orgf981c82"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial
