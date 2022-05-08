- [meeting notes May 08, 2022](#org323eba3)
  - [the raku study group](#org86ff0d9)
    - [usual links](#org78be6a8)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#org31a8042)
    - [<https://news.ycombinator.com/item?id=31259332>](#org8842fc4)
  - [finished tests to examine ^methods issues](#org8b9405a)
  - [review introspection features](#orge6c6e02)
    - [can you know what traits were used](#org9c1adeb)
    - [find all classes](#orgd46936b)
    - [more mysteries:](#orgeedf182)
  - [Rob's interested in discussing missing basic tools](#org20a2f1c)
    - [e.g. counting lines of code: colc](#orge30f4b4)
    - [coverage](#orgd2b74ad)
  - [raku's "move" considered ungood](#org43d5b59)
    - [move/copy command in Raku doesn't work with directory as second arg](#orga6fb549)
    - [<https://docs.raku.org/routine/move>](#org6577609)
    - [we've discussed this one already:](#org03f1e23)
    - [an issue: the unix "mv" can do a rename or a refile](#org16bd06e)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#org1d40062)
  - [bruce on the weekly challenge](#orgce368f7)
  - [rob ransbottom](#orge29dfaf)
    - [topics in mind, which are](#org70e1082)
  - [recent raku topics](#org45f036e)
    - [web scraping:](#orge8b61d9)
    - [a new "are" method (what are these?)](#org05dd63f)
    - [rakudo weekly news](#orgd397005)
    - [more dwimmy .all ~~ Type](#orga038ee1)
    - [checking a program is on system](#org2c7d033)
    - [parsing wiki syntax, regex vs grammars](#org32d948d)
  - [sniping at perl, circa 2009](#org1cc48d7)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgd760a09)
  - [equilibirum index](#org624b8d5)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org59e9921)
    - [revisit this next time (Rob solution?)](#org5264c50)
  - [weekly challenge this week](#org686b7e3)
    - [<https://theweeklychallenge.org/>](#org6b274ae)
  - [from previous meetings](#orgdb45abf)
    - [an answer to what's Raku for:](#orgb202822)
    - [gui toolkits](#orgfcfe596)
  - [bill michels](#org79024ff)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgc400713)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgf1fa124)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org1927a00)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org7ec1c55)
  - [announcements](#orgced1bc6)
    - [May 22nd: next raku study group meeting](#orgddefe63)
    - [June 21-25: tprc: perl/raku conference](#org6f51929)


<a id="org323eba3"></a>

# meeting notes May 08, 2022


<a id="org86ff0d9"></a>

## the raku study group


<a id="org78be6a8"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org31a8042"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="org8842fc4"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="org8b9405a"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>
    
    2.  yary suggests: grep for failure cases, and test whether that list is empty


<a id="orge6c6e02"></a>

## TODO review introspection features


<a id="org9c1adeb"></a>

### can you know what traits were used


<a id="orgd46936b"></a>

### find all classes

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6


<a id="orgeedf182"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="org20a2f1c"></a>

## Rob's interested in discussing missing basic tools


<a id="orge30f4b4"></a>

### e.g. counting lines of code: colc


<a id="orgd2b74ad"></a>

### coverage


<a id="org43d5b59"></a>

## raku's "move" considered ungood


<a id="orga6fb549"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org6577609"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org03f1e23"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>

2.  <https://stackoverflow.com/a/71973303/7270649>


<a id="org16bd06e"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org1d40062"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="orgce368f7"></a>

## bruce on the weekly challenge

<https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>


<a id="orge29dfaf"></a>

## rob ransbottom


<a id="org70e1082"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="org45f036e"></a>

## recent raku topics


<a id="orge8b61d9"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org05dd63f"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="orgd397005"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="orga038ee1"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org2c7d033"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org32d948d"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org1cc48d7"></a>

## sniping at perl, circa 2009


<a id="orgd760a09"></a>

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


<a id="org624b8d5"></a>

## equilibirum index


<a id="org59e9921"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org5264c50"></a>

### TODO revisit this next time (Rob solution?)


<a id="org686b7e3"></a>

## weekly challenge this week


<a id="org6b274ae"></a>

### <https://theweeklychallenge.org/>


<a id="orgdb45abf"></a>

## from previous meetings


<a id="orgb202822"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgfcfe596"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org79024ff"></a>

## bill michels


<a id="orgc400713"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgf1fa124"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org1927a00"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org7ec1c55"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgced1bc6"></a>

## announcements


<a id="orgddefe63"></a>

### May 22nd: next raku study group meeting


<a id="org6f51929"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial
