- [meeting notes May 08, 2022](#org8de6c3f)
  - [the raku study group](#orgcfaab8f)
    - [usual links](#org169c946)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#org98f8b60)
    - [<https://news.ycombinator.com/item?id=31259332>](#orgf8b0a52)
  - [finished tests to examine ^methods issues](#org4dc56ec)
  - [review introspection features](#orga650694)
    - [can you know what traits were used](#org9b454b3)
    - [find all classes](#org258519e)
    - [more mysteries:](#org3e517ab)
  - [Rob's interested in discussing missing basic tools](#org9c39af2)
    - [e.g. counting lines of code: colc](#orgd710e5c)
    - [coverage](#org1f369ca)
  - [raku's "move" considered ungood](#org97ee762)
    - [move/copy command in Raku doesn't work with directory as second arg](#org90ba65d)
    - [<https://docs.raku.org/routine/move>](#orgd791f65)
    - [we've discussed this one already:](#orgd152cdf)
    - [an issue: the unix "mv" can do a rename or a refile](#orgd7ca286)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#orga29f6df)
  - [bruce on the weekly challenge](#org851cdfd)
  - [rob ransbottom](#org6ef245b)
    - [topics in mind, which are](#orgf171369)
  - [recent raku topics](#org060495a)
    - [web scraping:](#orgaa99c81)
    - [a new "are" method (what are these?)](#org7f025e6)
    - [rakudo weekly news](#org9cc8c19)
    - [more dwimmy .all ~~ Type](#orgd4019c0)
    - [checking a program is on system](#orgaf41eca)
    - [parsing wiki syntax, regex vs grammars](#org3f3547d)
  - [sniping at perl, circa 2009](#org33675fd)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org1519d93)
  - [equilibirum index](#org8bfd07b)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org82a7393)
    - [revisit this next time (Rob solution?)](#orgce20ac2)
  - [weekly challenge this week](#org47ff97d)
    - [<https://theweeklychallenge.org/>](#orgb5267a8)
  - [from previous meetings](#org9f74607)
    - [an answer to what's Raku for:](#orge829d42)
    - [gui toolkits](#orgc9815bb)
  - [bill michels](#orgfc1990a)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgabeb3ea)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org3edfa7b)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgc67e9f6)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org66c8863)
  - [announcements](#orgfb2b2ed)
    - [May 22nd: next raku study group meeting](#org514ed5c)
    - [June 21-25: tprc: perl/raku conference](#org44e3fd1)


<a id="org8de6c3f"></a>

# meeting notes May 08, 2022


<a id="orgcfaab8f"></a>

## the raku study group


<a id="org169c946"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org98f8b60"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="orgf8b0a52"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="org4dc56ec"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>
    
    2.  yary suggests: grep for failure cases, and test whether that list is empty


<a id="orga650694"></a>

## TODO review introspection features


<a id="org9b454b3"></a>

### can you know what traits were used


<a id="org258519e"></a>

### find all classes

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6


<a id="org3e517ab"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="org9c39af2"></a>

## Rob's interested in discussing missing basic tools


<a id="orgd710e5c"></a>

### e.g. counting lines of code: colc


<a id="org1f369ca"></a>

### coverage


<a id="org97ee762"></a>

## raku's "move" considered ungood


<a id="org90ba65d"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="orgd791f65"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on

    the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="orgd152cdf"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>

2.  <https://stackoverflow.com/a/71973303/7270649>


<a id="orgd7ca286"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="orga29f6df"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="org851cdfd"></a>

## bruce on the weekly challenge

<https://theweeklychallenge.org/blog/perl-weekly-challenge-163/#TASK1>


<a id="org6ef245b"></a>

## rob ransbottom


<a id="orgf171369"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="org060495a"></a>

## recent raku topics


<a id="orgaa99c81"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org7f025e6"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org9cc8c19"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="orgd4019c0"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="orgaf41eca"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org3f3547d"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org33675fd"></a>

## sniping at perl, circa 2009


<a id="org1519d93"></a>

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


<a id="org8bfd07b"></a>

## equilibirum index


<a id="org82a7393"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orgce20ac2"></a>

### TODO revisit this next time (Rob solution?)


<a id="org47ff97d"></a>

## weekly challenge this week


<a id="orgb5267a8"></a>

### <https://theweeklychallenge.org/>


<a id="org9f74607"></a>

## from previous meetings


<a id="orge829d42"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgc9815bb"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgfc1990a"></a>

## bill michels


<a id="orgabeb3ea"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org3edfa7b"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgc67e9f6"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org66c8863"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgfb2b2ed"></a>

## announcements


<a id="org514ed5c"></a>

### May 22nd: next raku study group meeting


<a id="org44e3fd1"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
