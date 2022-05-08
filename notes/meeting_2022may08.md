- [meeting notes May 08, 2022](#org4b585d5)
  - [the raku study group](#org2a01b14)
    - [usual links](#org9a84df3)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#org7dbbf6c)
    - [<https://news.ycombinator.com/item?id=31259332>](#orgb7811ce)
  - [finished tests to examine ^methods issues](#org77a178b)
  - [review introspection features](#org4926ab2)
    - [can you know what traits were used](#org2dca443)
    - [find all classes](#org735c2a0)
    - [more mysteries:](#org0bac103)
  - [Rob's interested in discussing missing basic tools](#org5929776)
    - [e.g. counting lines of code: colc](#org2e7c3f5)
    - [coverage](#orgf611386)
  - [raku's "move" considered ungood](#org5016371)
    - [move/copy command in Raku doesn't work with directory as second arg](#orga6aefc5)
    - [<https://docs.raku.org/routine/move>](#org4ee6d47)
    - [we've discussed this one already:](#orgaae3a5b)
    - [an issue: the unix "mv" can do a rename or a refile](#org0fa5298)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#org6901783)
  - [rob ransbottom](#org6befde2)
    - [topics in mind, which are](#org83b510a)
  - [recent raku topics](#orgb704231)
    - [web scraping:](#org735eeae)
    - [a new "are" method (what are these?)](#orgf2162f5)
    - [rakudo weekly news](#orge3f5ce1)
    - [more dwimmy .all ~~ Type](#org954d0a2)
    - [checking a program is on system](#orgbfe4126)
    - [parsing wiki syntax, regex vs grammars](#org184f6f4)
  - [sniping at perl, circa 2009](#orgbacd5ad)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgba7ae7e)
  - [equilibirum index](#org3f18e85)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org5e2f6e0)
    - [revisit this next time (Rob solution?)](#org5fd35e6)
  - [weekly challenge this week](#org5556b2e)
    - [<https://theweeklychallenge.org/>](#orgd7a4c42)
  - [from previous meetings](#org1e2b563)
    - [an answer to what's Raku for:](#orge782451)
    - [gui toolkits](#orga79ab32)
  - [bill michels](#org3da6804)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org8c4a5bd)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org381afb2)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org083cf52)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org88844cc)
  - [announcements](#org57b591e)
    - [May 22nd: next raku study group meeting](#org07f162c)
    - [June 21-25: tprc: perl/raku conference](#org0be2226)


<a id="org4b585d5"></a>

# meeting notes May 08, 2022


<a id="org2a01b14"></a>

## the raku study group


<a id="org9a84df3"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org7dbbf6c"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="orgb7811ce"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="org77a178b"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>
    
    2.  yary suggests: grep for failure cases, and test whether that list is empty


<a id="org4926ab2"></a>

## TODO review introspection features


<a id="org2dca443"></a>

### can you know what traits were used


<a id="org735c2a0"></a>

### find all classes

1.  rob's;

    raku -e '.say for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> }).grep({ .value.HOW.<sup>name</sup> eq "Perl6::Metamodel::ClassHOW" }).map(\*.key).unique' | sort | less }

2.  bruce's:

    raku -e 'say .value.HOW.<sup>name</sup>, "\t", .key for (|CORE::, |UNIT::, |OUTERS::, |MY::).grep({ .key eq .value.<sup>name</sup> })' | sort | less

3.  joe's

    /home/doom/End/Cave/IntrospectP6/Wall/Symbol-Scan/lib/Symbol/Scan.pm6


<a id="org0bac103"></a>

### more mysteries:

1.  can you get the ^methdods of a submethod?

    1.  "implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific"

2.  can you look up the signature for a method object?

    1.  bruce gray:
    
        raku -e 'my $n = 42; say .signature for $n.can("log")'


<a id="org5929776"></a>

## Rob's interested in discussing missing basic tools


<a id="org2e7c3f5"></a>

### e.g. counting lines of code: colc


<a id="orgf611386"></a>

### coverage


<a id="org5016371"></a>

## raku's "move" considered ungood


<a id="orga6aefc5"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org4ee6d47"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="orgaae3a5b"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>

2.  <https://stackoverflow.com/a/71973303/7270649>


<a id="org0fa5298"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org6901783"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="org6befde2"></a>

## rob ransbottom


<a id="org83b510a"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="orgb704231"></a>

## recent raku topics


<a id="org735eeae"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="orgf2162f5"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="orge3f5ce1"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org954d0a2"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="orgbfe4126"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org184f6f4"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="orgbacd5ad"></a>

## sniping at perl, circa 2009


<a id="orgba7ae7e"></a>

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


<a id="org3f18e85"></a>

## equilibirum index


<a id="org5e2f6e0"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org5fd35e6"></a>

### TODO revisit this next time (Rob solution?)


<a id="org5556b2e"></a>

## weekly challenge this week


<a id="orgd7a4c42"></a>

### <https://theweeklychallenge.org/>


<a id="org1e2b563"></a>

## from previous meetings


<a id="orge782451"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orga79ab32"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org3da6804"></a>

## bill michels


<a id="org8c4a5bd"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org381afb2"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org083cf52"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org88844cc"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org57b591e"></a>

## announcements


<a id="org07f162c"></a>

### May 22nd: next raku study group meeting


<a id="org0be2226"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial
