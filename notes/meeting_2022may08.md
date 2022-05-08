- [meeting notes May 08, 2022](#org4652ee0)
  - [the raku study group](#orgde6a15e)
    - [usual links](#orgd3558a1)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#orgc83b49e)
    - [<https://news.ycombinator.com/item?id=31259332>](#org7c9647a)
  - [finished tests to examine ^methods issues](#orgdc8b9dc)
  - [review introspection features](#org1af0a2c)
    - [can you know what traits were used](#orgfa7e467)
    - [find all classes](#org9da0df0)
    - [more mysteries:](#orge72ce27)
  - [raku's "move" considered ungood](#org0201869)
    - [move/copy command in Raku doesn't work with directory as second arg](#org41e1a8e)
    - [<https://docs.raku.org/routine/move>](#orge8b8d22)
    - [we've discussed this one already:](#org264b44b)
    - [an issue: the unix "mv" can do a rename or a refile](#org9d92a37)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#org7f21d2e)
  - [rob ransbottom](#org847fb59)
    - [topics in mind, which are](#orgca37f85)
  - [recent raku topics](#orgd847a58)
    - [web scraping:](#orga79417d)
    - [a new "are" method (what are these?)](#org68a6d02)
    - [rakudo weekly news](#org042b1cd)
    - [more dwimmy .all ~~ Type](#org7f3a701)
    - [checking a program is on system](#org6afa21b)
    - [parsing wiki syntax, regex vs grammars](#org5f41f1e)
  - [sniping at perl, circa 2009](#org9348b92)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orge448a7e)
  - [equilibirum index](#orge03a522)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org1da4cb5)
    - [revisit this next time (Rob solution?)](#orga71bda4)
  - [Rob's interested in discussing missing basic tools](#orga6751d2)
  - [weekly challenge this week](#orgfaecd30)
    - [<https://theweeklychallenge.org/>](#org5a51bb2)
  - [from previous meetings](#org925f8ec)
    - [an answer to what's Raku for:](#orgcf90c83)
    - [gui toolkits](#org6b13c06)
  - [bill michels](#orgd67e381)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgc166dc2)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org7d3b8c0)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org73736fe)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org715b6ba)
  - [announcements](#orgd5907da)
    - [May 22nd: next raku study group meeting](#org809d8bb)
    - [June 21-25: tprc: perl/raku conference](#org624ef95)


<a id="org4652ee0"></a>

# meeting notes May 08, 2022


<a id="orgde6a15e"></a>

## the raku study group


<a id="orgd3558a1"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orgc83b49e"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="org7c9647a"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="orgdc8b9dc"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>


<a id="org1af0a2c"></a>

## TODO review introspection features


<a id="orgfa7e467"></a>

### can you know what traits were used


<a id="org9da0df0"></a>

### find all classes

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6


<a id="orge72ce27"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="org0201869"></a>

## raku's "move" considered ungood


<a id="org41e1a8e"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="orge8b8d22"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org264b44b"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org9d92a37"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org7f21d2e"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="org847fb59"></a>

## rob ransbottom


<a id="orgca37f85"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="orgd847a58"></a>

## recent raku topics


<a id="orga79417d"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org68a6d02"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org042b1cd"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org7f3a701"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org6afa21b"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org5f41f1e"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org9348b92"></a>

## sniping at perl, circa 2009


<a id="orge448a7e"></a>

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


<a id="orge03a522"></a>

## equilibirum index


<a id="org1da4cb5"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orga71bda4"></a>

### TODO revisit this next time (Rob solution?)


<a id="orga6751d2"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="orgfaecd30"></a>

## weekly challenge this week


<a id="org5a51bb2"></a>

### <https://theweeklychallenge.org/>


<a id="org925f8ec"></a>

## from previous meetings


<a id="orgcf90c83"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org6b13c06"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgd67e381"></a>

## bill michels


<a id="orgc166dc2"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org7d3b8c0"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org73736fe"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org715b6ba"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgd5907da"></a>

## announcements


<a id="org809d8bb"></a>

### May 22nd: next raku study group meeting


<a id="org624ef95"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial
