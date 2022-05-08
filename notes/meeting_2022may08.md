- [meeting notes May 08, 2022](#org3907cd1)
  - [the raku study group](#org4ee98ab)
    - [usual links](#orgc57753f)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#org8ca39b2)
    - [<https://news.ycombinator.com/item?id=31259332>](#orgec4078f)
  - [finished tests to examine ^methods issues](#orgcb900a9)
  - [review introspection features](#org9a2b431)
    - [find all classes](#org5223460)
    - [can you know what traits were used](#orga32f788)
    - [more mysteries:](#orgfe2b4d2)
  - [raku's "move" considered ungood](#org51da58c)
    - [move/copy command in Raku doesn't work with directory as second arg](#org6583bff)
    - [<https://docs.raku.org/routine/move>](#org8ef933d)
    - [we've discussed this one already:](#org939137e)
    - [an issue: the unix "mv" can do a rename or a refile](#orgc587627)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#org8e17503)
  - [rob ransbottom](#orgc0aa046)
    - [topics in mind, which are](#org7c85a3d)
  - [recent raku topics](#org87223fd)
    - [web scraping:](#orga3cac6e)
    - [a new "are" method (what are these?)](#org2bf8271)
    - [rakudo weekly news](#org37afb7c)
    - [more dwimmy .all ~~ Type](#orgfb9b044)
    - [checking a program is on system](#orgf44af39)
    - [parsing wiki syntax, regex vs grammars](#org7c93343)
  - [sniping at perl, circa 2009](#orgeb14c88)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org5e089c1)
  - [equilibirum index](#orgb0d6151)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org244e455)
    - [revisit this next time (Rob solution?)](#org0ad37f6)
  - [Rob's interested in discussing missing basic tools](#org829be7b)
  - [weekly challenge this week](#org4eab7a1)
    - [<https://theweeklychallenge.org/>](#org22baa41)
  - [from previous meetings](#orgacbad1a)
    - [an answer to what's Raku for:](#org083dd9c)
    - [gui toolkits](#orgc22e3c4)
  - [bill michels](#org441e93e)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgbc3da09)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org2ac2585)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgea31509)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org02fb917)
  - [announcements](#org809d12c)
    - [May 22nd: next raku study group meeting](#org8d1ce3b)
    - [June 21-25: tprc: perl/raku conference](#org3dc39d2)


<a id="org3907cd1"></a>

# meeting notes May 08, 2022


<a id="org4ee98ab"></a>

## the raku study group


<a id="orgc57753f"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org8ca39b2"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="orgec4078f"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="orgcb900a9"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="org9a2b431"></a>

## TODO review introspection features


<a id="org5223460"></a>

### find all classes


<a id="orga32f788"></a>

### can you know what traits were used

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6


<a id="orgfe2b4d2"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="org51da58c"></a>

## raku's "move" considered ungood


<a id="org6583bff"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org8ef933d"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org939137e"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="orgc587627"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org8e17503"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="orgc0aa046"></a>

## rob ransbottom


<a id="org7c85a3d"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="org87223fd"></a>

## recent raku topics


<a id="orga3cac6e"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org2bf8271"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org37afb7c"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="orgfb9b044"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="orgf44af39"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org7c93343"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="orgeb14c88"></a>

## sniping at perl, circa 2009


<a id="org5e089c1"></a>

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


<a id="orgb0d6151"></a>

## equilibirum index


<a id="org244e455"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org0ad37f6"></a>

### TODO revisit this next time (Rob solution?)


<a id="org829be7b"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org4eab7a1"></a>

## weekly challenge this week


<a id="org22baa41"></a>

### <https://theweeklychallenge.org/>


<a id="orgacbad1a"></a>

## from previous meetings


<a id="org083dd9c"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgc22e3c4"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org441e93e"></a>

## bill michels


<a id="orgbc3da09"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org2ac2585"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgea31509"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org02fb917"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org809d12c"></a>

## announcements


<a id="org8d1ce3b"></a>

### May 22nd: next raku study group meeting


<a id="org3dc39d2"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial
