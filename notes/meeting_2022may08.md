- [meeting notes May 08, 2022](#org72503c7)
  - [the raku study group](#org45fc3df)
    - [usual links](#org4598428)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#orgf412a15)
    - [<https://news.ycombinator.com/item?id=31259332>](#org7c530a3)
  - [finished tests to examine ^methods issues](#org24aff0d)
  - [review introspection features](#org395a451)
    - [find all classes](#org5344a0d)
    - [can you know what traits were used](#orgfbd3872)
    - [more mysteries:](#orgc7c1146)
  - [raku's "move" considered ungood](#orge4a9cc9)
    - [move/copy command in Raku doesn't work with directory as second arg](#org11e71cf)
    - [<https://docs.raku.org/routine/move>](#org6f2cc99)
    - [we've discussed this one already:](#org19b3169)
    - [an issue: the unix "mv" can do a rename or a refile](#org71c5b3f)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#org5be9bce)
  - [rob ransbottom](#org8b2ddbe)
    - [topics in mind, which are](#org7f93f2f)
  - [recent raku topics](#org79211f6)
    - [web scraping:](#org7673550)
    - [a new "are" method (what are these?)](#org04cd48a)
    - [rakudo weekly news](#org915ea7d)
    - [more dwimmy .all ~~ Type](#org0d306b4)
    - [checking a program is on system](#org04d328a)
    - [parsing wiki syntax, regex vs grammars](#orgeffc173)
  - [sniping at perl, circa 2009](#org1a090cc)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org88591a6)
  - [equilibirum index](#org1ea008f)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orga87e18b)
    - [revisit this next time (Rob solution?)](#orgb756f34)
  - [Rob's interested in discussing missing basic tools](#org7341c44)
  - [weekly challenge this week](#orga319568)
    - [<https://theweeklychallenge.org/>](#orgd65e3cc)
  - [from previous meetings](#org3dbd58b)
    - [an answer to what's Raku for:](#orga4c11d0)
    - [gui toolkits](#orgbc504e4)
  - [bill michels](#org14d2941)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgd9cbbe1)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgbb316cd)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org95659c2)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org9f2a82a)
  - [announcements](#orgc033910)
    - [May 22nd: next raku study group meeting](#org52c0bef)
    - [June 21-25: tprc: perl/raku conference](#orgec2cf27)


<a id="org72503c7"></a>

# meeting notes May 08, 2022


<a id="org45fc3df"></a>

## the raku study group


<a id="org4598428"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orgf412a15"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="org7c530a3"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="org24aff0d"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="org395a451"></a>

## TODO review introspection features


<a id="org5344a0d"></a>

### find all classes


<a id="orgfbd3872"></a>

### can you know what traits were used

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6


<a id="orgc7c1146"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="orge4a9cc9"></a>

## raku's "move" considered ungood


<a id="org11e71cf"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org6f2cc99"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org19b3169"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org71c5b3f"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org5be9bce"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="org8b2ddbe"></a>

## rob ransbottom


<a id="org7f93f2f"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="org79211f6"></a>

## recent raku topics


<a id="org7673550"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org04cd48a"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org915ea7d"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org0d306b4"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org04d328a"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="orgeffc173"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org1a090cc"></a>

## sniping at perl, circa 2009


<a id="org88591a6"></a>

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


<a id="org1ea008f"></a>

## equilibirum index


<a id="orga87e18b"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orgb756f34"></a>

### TODO revisit this next time (Rob solution?)


<a id="org7341c44"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="orga319568"></a>

## weekly challenge this week


<a id="orgd65e3cc"></a>

### <https://theweeklychallenge.org/>


<a id="org3dbd58b"></a>

## from previous meetings


<a id="orga4c11d0"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgbc504e4"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org14d2941"></a>

## bill michels


<a id="orgd9cbbe1"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgbb316cd"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org95659c2"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org9f2a82a"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgc033910"></a>

## announcements


<a id="org52c0bef"></a>

### May 22nd: next raku study group meeting


<a id="orgec2cf27"></a>

### June 21-25: tprc: perl/raku conference
