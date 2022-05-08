- [meeting notes May 08, 2022](#org49aa078)
  - [the raku study group](#org5346e02)
    - [usual links](#orgf633527)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#org9e6a8e5)
    - [<https://news.ycombinator.com/item?id=31259332>](#org2771f1a)
  - [finished tests to examine ^methods issues](#orge5fad2c)
  - [review introspection features](#org8f30576)
    - [can you know what traits were used](#org08e1e03)
    - [find all classes](#org1b564d1)
    - [more mysteries:](#org6fe1d7c)
  - [raku's "move" considered ungood](#orgb03afca)
    - [move/copy command in Raku doesn't work with directory as second arg](#orgfa4e6f2)
    - [<https://docs.raku.org/routine/move>](#org33ae30e)
    - [we've discussed this one already:](#orgd43fc42)
    - [an issue: the unix "mv" can do a rename or a refile](#org44c473e)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#org2640392)
  - [rob ransbottom](#orgb76b509)
    - [topics in mind, which are](#orgdc045c5)
  - [recent raku topics](#orgf19e36b)
    - [web scraping:](#org6a725d8)
    - [a new "are" method (what are these?)](#org3475c6b)
    - [rakudo weekly news](#orgd9b56f2)
    - [more dwimmy .all ~~ Type](#org43b144a)
    - [checking a program is on system](#orgf63a18b)
    - [parsing wiki syntax, regex vs grammars](#orgeae6388)
  - [sniping at perl, circa 2009](#org21771d8)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgfea84e6)
  - [equilibirum index](#org24e308c)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org411f314)
    - [revisit this next time (Rob solution?)](#org039187a)
  - [Rob's interested in discussing missing basic tools](#orgf80605d)
  - [weekly challenge this week](#orgb6a0f6e)
    - [<https://theweeklychallenge.org/>](#orgca3e864)
  - [from previous meetings](#org3926190)
    - [an answer to what's Raku for:](#orgc7783d7)
    - [gui toolkits](#org5cdd93e)
  - [bill michels](#org3e23ff1)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org4f66181)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org1012e79)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org4b0b453)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgc9f9768)
  - [announcements](#orgadf2782)
    - [May 22nd: next raku study group meeting](#org1250d9e)
    - [June 21-25: tprc: perl/raku conference](#orgf25da2a)


<a id="org49aa078"></a>

# meeting notes May 08, 2022


<a id="org5346e02"></a>

## the raku study group


<a id="orgf633527"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org9e6a8e5"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="org2771f1a"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="orge5fad2c"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="org8f30576"></a>

## TODO review introspection features


<a id="org08e1e03"></a>

### can you know what traits were used


<a id="org1b564d1"></a>

### find all classes

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6


<a id="org6fe1d7c"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="orgb03afca"></a>

## raku's "move" considered ungood


<a id="orgfa4e6f2"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org33ae30e"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="orgd43fc42"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org44c473e"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org2640392"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="orgb76b509"></a>

## rob ransbottom


<a id="orgdc045c5"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="orgf19e36b"></a>

## recent raku topics


<a id="org6a725d8"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org3475c6b"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="orgd9b56f2"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org43b144a"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="orgf63a18b"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="orgeae6388"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org21771d8"></a>

## sniping at perl, circa 2009


<a id="orgfea84e6"></a>

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


<a id="org24e308c"></a>

## equilibirum index


<a id="org411f314"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org039187a"></a>

### TODO revisit this next time (Rob solution?)


<a id="orgf80605d"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="orgb6a0f6e"></a>

## weekly challenge this week


<a id="orgca3e864"></a>

### <https://theweeklychallenge.org/>


<a id="org3926190"></a>

## from previous meetings


<a id="orgc7783d7"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org5cdd93e"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org3e23ff1"></a>

## bill michels


<a id="org4f66181"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org1012e79"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org4b0b453"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgc9f9768"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgadf2782"></a>

## announcements


<a id="org1250d9e"></a>

### May 22nd: next raku study group meeting


<a id="orgf25da2a"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial
