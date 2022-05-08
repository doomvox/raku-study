- [meeting notes May 08, 2022](#org119f803)
  - [the raku study group](#org7836575)
    - [usual links](#org3e90c52)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#org0679d74)
    - [<https://news.ycombinator.com/item?id=31259332>](#orgc6cf529)
  - [finished tests to examine ^methods issues](#orga80e552)
  - [review introspection features](#org925bbc9)
    - [find all classes](#org011f917)
    - [can you know what traits were used](#orgc97d583)
    - [more mysteries:](#orgbc307bf)
  - [raku's "move" considered ungood](#org6ffc814)
    - [move/copy command in Raku doesn't work with directory as second arg](#org44f1a3a)
    - [<https://docs.raku.org/routine/move>](#org6af4e5b)
    - [we've discussed this one already:](#org303372f)
    - [an issue: the unix "mv" can do a rename or a refile](#orgf7fd726)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#org6d5eff6)
  - [rob ransbottom](#orgfd53ac8)
    - [topics in mind, which are](#org69f048f)
  - [recent raku topics](#org758c799)
    - [web scraping:](#orgb3bc34d)
    - [a new "are" method (what are these?)](#orgdc44ed0)
    - [rakudo weekly news](#org7a0b569)
    - [more dwimmy .all ~~ Type](#orgd6ed54a)
    - [checking a program is on system](#org8be6e93)
    - [parsing wiki syntax, regex vs grammars](#org64fcb6e)
  - [sniping at perl, circa 2009](#org739be00)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org1c28429)
  - [equilibirum index](#orge601d36)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgf8fdd27)
    - [revisit this next time (Rob solution?)](#org18d1dd3)
  - [Rob's interested in discussing missing basic tools](#orgb2aee39)
  - [weekly challenge this week](#orga71614a)
    - [<https://theweeklychallenge.org/>](#org4c6ba54)
  - [from previous meetings](#orgc616548)
    - [an answer to what's Raku for:](#org28f80b0)
    - [gui toolkits](#orga8d363c)
  - [bill michels](#org6ce80e9)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org387a845)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org9f4ad24)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org31011de)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org667722d)
  - [announcements](#org5119712)
    - [May 22nd: next raku study group meeting](#org9459b2a)
    - [June 21-25: tprc: perl/raku conference](#org08ccc16)


<a id="org119f803"></a>

# meeting notes May 08, 2022


<a id="org7836575"></a>

## the raku study group


<a id="org3e90c52"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org0679d74"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="orgc6cf529"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="orga80e552"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="org925bbc9"></a>

## TODO review introspection features


<a id="org011f917"></a>

### find all classes


<a id="orgc97d583"></a>

### can you know what traits were used

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6


<a id="orgbc307bf"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="org6ffc814"></a>

## raku's "move" considered ungood


<a id="org44f1a3a"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org6af4e5b"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org303372f"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="orgf7fd726"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org6d5eff6"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="orgfd53ac8"></a>

## rob ransbottom


<a id="org69f048f"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="org758c799"></a>

## recent raku topics


<a id="orgb3bc34d"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="orgdc44ed0"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org7a0b569"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="orgd6ed54a"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org8be6e93"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org64fcb6e"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org739be00"></a>

## sniping at perl, circa 2009


<a id="org1c28429"></a>

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


<a id="orge601d36"></a>

## equilibirum index


<a id="orgf8fdd27"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org18d1dd3"></a>

### TODO revisit this next time (Rob solution?)


<a id="orgb2aee39"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="orga71614a"></a>

## weekly challenge this week


<a id="org4c6ba54"></a>

### <https://theweeklychallenge.org/>


<a id="orgc616548"></a>

## from previous meetings


<a id="org28f80b0"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orga8d363c"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org6ce80e9"></a>

## bill michels


<a id="org387a845"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org9f4ad24"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org31011de"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org667722d"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org5119712"></a>

## announcements


<a id="org9459b2a"></a>

### May 22nd: next raku study group meeting


<a id="org08ccc16"></a>

### June 21-25: tprc: perl/raku conference
