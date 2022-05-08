- [meeting notes May 08, 2022](#org180542c)
  - [the raku study group](#orgda7a31d)
    - [usual links](#orgf581847)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#org8104e13)
    - [<https://news.ycombinator.com/item?id=31259332>](#org4db89bd)
  - [finished tests to examine ^methods issues](#org41c21a4)
  - [review introspection features](#orge9510ed)
    - [find all classes](#orge1856fe)
    - [can you know what traits were used](#orgfcb0ff2)
    - [more mysteries:](#org97ebd73)
  - [raku's "move" considered ungood](#org7272509)
    - [move/copy command in Raku doesn't work with directory as second arg](#org2a4e7d7)
    - [<https://docs.raku.org/routine/move>](#orgc3a7455)
    - [we've discussed this one already:](#org39bf0a3)
    - [an issue: the unix "mv" can do a rename or a refile](#orgd1b1003)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#org4004f27)
  - [rob ransbottom](#org1486f28)
    - [topics in mind, which are](#org70aff74)
  - [recent raku topics](#org4c77c32)
    - [web scraping:](#org9310cdf)
    - [a new "are" method (what are these?)](#org693f64c)
    - [rakudo weekly news](#org75f79de)
    - [more dwimmy .all ~~ Type](#orgebb6d8c)
    - [checking a program is on system](#org19a1c4d)
    - [parsing wiki syntax, regex vs grammars](#orgf847d21)
  - [sniping at perl, circa 2009](#org5c5e8b2)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org70ded92)
  - [equilibirum index](#orge0ac71b)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org241684a)
    - [revisit this next time (Rob solution?)](#org0bc94e2)
  - [Rob's interested in discussing missing basic tools](#orgb679931)
  - [weekly challenge this week](#orgee4634d)
    - [<https://theweeklychallenge.org/>](#org9dc3e28)
  - [from previous meetings](#org5d66ee9)
    - [an answer to what's Raku for:](#org2b9d23c)
    - [gui toolkits](#org10eecc6)
  - [bill michels](#org6d1d728)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgec8bd20)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgac71a5b)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org712fbe2)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org8fb4b08)
  - [announcements](#org0ad3e22)
    - [May 22nd: next raku study group meeting](#orga3b0cb4)
    - [June 21-25: tprc: perl/raku conference](#org9da9ed1)


<a id="org180542c"></a>

# meeting notes May 08, 2022


<a id="orgda7a31d"></a>

## the raku study group


<a id="orgf581847"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org8104e13"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="org4db89bd"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="org41c21a4"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="orge9510ed"></a>

## TODO review introspection features


<a id="orge1856fe"></a>

### find all classes


<a id="orgfcb0ff2"></a>

### can you know what traits were used

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6


<a id="org97ebd73"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="org7272509"></a>

## raku's "move" considered ungood


<a id="org2a4e7d7"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="orgc3a7455"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org39bf0a3"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="orgd1b1003"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org4004f27"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="org1486f28"></a>

## rob ransbottom


<a id="org70aff74"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="org4c77c32"></a>

## recent raku topics


<a id="org9310cdf"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org693f64c"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org75f79de"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="orgebb6d8c"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org19a1c4d"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="orgf847d21"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org5c5e8b2"></a>

## sniping at perl, circa 2009


<a id="org70ded92"></a>

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


<a id="orge0ac71b"></a>

## equilibirum index


<a id="org241684a"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org0bc94e2"></a>

### TODO revisit this next time (Rob solution?)


<a id="orgb679931"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="orgee4634d"></a>

## weekly challenge this week


<a id="org9dc3e28"></a>

### <https://theweeklychallenge.org/>


<a id="org5d66ee9"></a>

## from previous meetings


<a id="org2b9d23c"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org10eecc6"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org6d1d728"></a>

## bill michels


<a id="orgec8bd20"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgac71a5b"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org712fbe2"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org8fb4b08"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org0ad3e22"></a>

## announcements


<a id="orga3b0cb4"></a>

### May 22nd: next raku study group meeting


<a id="org9da9ed1"></a>

### June 21-25: tprc: perl/raku conference
