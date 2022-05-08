- [meeting notes May 08, 2022](#org16c5b64)
  - [the raku study group](#org8dca8d6)
    - [usual links](#orga136817)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#orgca62d5f)
    - [<https://news.ycombinator.com/item?id=31259332>](#orgd33ea01)
  - [finished tests to examine ^methods issues](#orgb307955)
  - [review introspection features](#org670e088)
    - [find all classes](#org996f92c)
    - [can you know what traits were used](#org503245d)
    - [more mysteries:](#org381ea14)
  - [raku's "move" considered ungood](#org6af81e9)
    - [move/copy command in Raku doesn't work with directory as second arg](#org8c80b9a)
    - [<https://docs.raku.org/routine/move>](#org6da996c)
    - [we've discussed this one already:](#org96fb869)
    - [an issue: the unix "mv" can do a rename or a refile](#orgb8b6e50)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#org9fb2976)
  - [rob ransbottom](#org368e2b1)
    - [topics in mind, which are](#org611d4cf)
  - [recent raku topics](#org97d526a)
    - [web scraping:](#org5e74b36)
    - [a new "are" method (what are these?)](#orgeaa9799)
    - [rakudo weekly news](#org0eae3f3)
    - [more dwimmy .all ~~ Type](#org3225c2d)
    - [checking a program is on system](#orgd1ab7e2)
    - [parsing wiki syntax, regex vs grammars](#org927aac4)
  - [sniping at perl, circa 2009](#org40e5963)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org6374891)
  - [equilibirum index](#org22b87ac)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org98c92f4)
    - [revisit this next time (Rob solution?)](#org0c8fbf2)
  - [Rob's interested in discussing missing basic tools](#orgfaf24fd)
  - [weekly challenge this week](#org910da45)
    - [<https://theweeklychallenge.org/>](#orged1a07b)
  - [from previous meetings](#org494172c)
    - [an answer to what's Raku for:](#orge5715f4)
    - [gui toolkits](#orgaf7cfae)
  - [bill michels](#orgf0053c9)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org452bf74)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org17541db)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org77380f6)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org5e09abd)
  - [announcements](#orge674eaf)
    - [May 22nd: next raku study group meeting](#org97e37d4)
    - [June 21-25: tprc: perl/raku conference](#orgf8cf292)


<a id="org16c5b64"></a>

# meeting notes May 08, 2022


<a id="org8dca8d6"></a>

## the raku study group


<a id="orga136817"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orgca62d5f"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="orgd33ea01"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="orgb307955"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="org670e088"></a>

## TODO review introspection features


<a id="org996f92c"></a>

### find all classes


<a id="org503245d"></a>

### can you know what traits were used

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6


<a id="org381ea14"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="org6af81e9"></a>

## raku's "move" considered ungood


<a id="org8c80b9a"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org6da996c"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org96fb869"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="orgb8b6e50"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org9fb2976"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="org368e2b1"></a>

## rob ransbottom


<a id="org611d4cf"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="org97d526a"></a>

## recent raku topics


<a id="org5e74b36"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="orgeaa9799"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org0eae3f3"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org3225c2d"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="orgd1ab7e2"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org927aac4"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org40e5963"></a>

## sniping at perl, circa 2009


<a id="org6374891"></a>

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


<a id="org22b87ac"></a>

## equilibirum index


<a id="org98c92f4"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org0c8fbf2"></a>

### TODO revisit this next time (Rob solution?)


<a id="orgfaf24fd"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org910da45"></a>

## weekly challenge this week


<a id="orged1a07b"></a>

### <https://theweeklychallenge.org/>


<a id="org494172c"></a>

## from previous meetings


<a id="orge5715f4"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgaf7cfae"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgf0053c9"></a>

## bill michels


<a id="org452bf74"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org17541db"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org77380f6"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org5e09abd"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orge674eaf"></a>

## announcements


<a id="org97e37d4"></a>

### May 22nd: next raku study group meeting


<a id="orgf8cf292"></a>

### June 21-25: tprc: perl/raku conference
