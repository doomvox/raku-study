- [meeting notes May 08, 2022](#org48669b5)
  - [the raku study group](#org382e138)
    - [usual links](#org79f5b3f)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#org2de53f0)
    - [<https://news.ycombinator.com/item?id=31259332>](#orgacf15aa)
  - [finished tests to examine ^methods issues](#org097217d)
  - [review introspection features](#orgd3010cd)
    - [find all classes](#org92f415f)
    - [can you know what traits were used](#org89cf242)
    - [more mysteries:](#orgca54ae2)
  - [raku's "move" considered ungood](#orgd33f47a)
    - [move/copy command in Raku doesn't work with directory as second arg](#org29740d7)
    - [<https://docs.raku.org/routine/move>](#org647ff4f)
    - [we've discussed this one already:](#org338b4f2)
    - [an issue: the unix "mv" can do a rename or a refile](#orgad89e53)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#org4f04fa5)
  - [rob ransbottom](#orgcd3e41a)
    - [topics in mind, which are](#org83f651a)
  - [recent raku topics](#org32a79f3)
    - [web scraping:](#orgd1173b0)
    - [a new "are" method (what are these?)](#org0999c27)
    - [rakudo weekly news](#org1b44d23)
    - [more dwimmy .all ~~ Type](#org9a9cad5)
    - [checking a program is on system](#org5256fc4)
    - [parsing wiki syntax, regex vs grammars](#org0396654)
  - [sniping at perl, circa 2009](#org2b6c9bc)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org1087de9)
  - [equilibirum index](#org0973d49)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgdb4d8e2)
    - [revisit this next time (Rob solution?)](#org2b98d58)
  - [Rob's interested in discussing missing basic tools](#org8b65e2e)
  - [weekly challenge this week](#org3ccc90e)
    - [<https://theweeklychallenge.org/>](#orgeeef1ba)
  - [from previous meetings](#org6b05553)
    - [an answer to what's Raku for:](#orgaca755a)
    - [gui toolkits](#org641ae05)
  - [bill michels](#orgfe1bc2a)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org9c60ca6)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgc8e610e)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgc2432ba)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org2f99b19)
  - [announcements](#org0a49eac)
    - [May 22nd: next raku study group meeting](#org88be787)
    - [June 21-25: tprc: perl/raku conference](#orgb2ce091)


<a id="org48669b5"></a>

# meeting notes May 08, 2022


<a id="org382e138"></a>

## the raku study group


<a id="org79f5b3f"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org2de53f0"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="orgacf15aa"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="org097217d"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="orgd3010cd"></a>

## TODO review introspection features


<a id="org92f415f"></a>

### find all classes


<a id="org89cf242"></a>

### can you know what traits were used

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6


<a id="orgca54ae2"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="orgd33f47a"></a>

## raku's "move" considered ungood


<a id="org29740d7"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org647ff4f"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org338b4f2"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="orgad89e53"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org4f04fa5"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="orgcd3e41a"></a>

## rob ransbottom


<a id="org83f651a"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="org32a79f3"></a>

## recent raku topics


<a id="orgd1173b0"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org0999c27"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org1b44d23"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org9a9cad5"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org5256fc4"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org0396654"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org2b6c9bc"></a>

## sniping at perl, circa 2009


<a id="org1087de9"></a>

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


<a id="org0973d49"></a>

## equilibirum index


<a id="orgdb4d8e2"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org2b98d58"></a>

### TODO revisit this next time (Rob solution?)


<a id="org8b65e2e"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org3ccc90e"></a>

## weekly challenge this week


<a id="orgeeef1ba"></a>

### <https://theweeklychallenge.org/>


<a id="org6b05553"></a>

## from previous meetings


<a id="orgaca755a"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org641ae05"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgfe1bc2a"></a>

## bill michels


<a id="org9c60ca6"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgc8e610e"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgc2432ba"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org2f99b19"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org0a49eac"></a>

## announcements


<a id="org88be787"></a>

### May 22nd: next raku study group meeting


<a id="orgb2ce091"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial
