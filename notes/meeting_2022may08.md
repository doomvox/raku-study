- [meeting notes May 08, 2022](#orga95cc32)
  - [the raku study group](#org130e7a0)
    - [usual links](#orgd3a82cb)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#org1b39099)
    - [<https://news.ycombinator.com/item?id=31259332>](#orgbe5cddc)
  - [finished tests to examine ^methods issues](#org14cbba2)
  - [review introspection](#orga859366)
  - [raku's "move" considered ungood](#orge008379)
    - [move/copy command in Raku doesn't work with directory as second arg](#orga31fa3b)
    - [<https://docs.raku.org/routine/move>](#orgbdae58a)
    - [we've discussed this one already:](#org994a62c)
    - [an issue: the unix "mv" can do a rename or a refile](#org952a1fc)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#orgd0b54ce)
  - [rob ransbottom](#orgd068ba3)
    - [topics in mind, which are](#orge485915)
  - [recent raku topics](#org9b7bb01)
    - [web scraping:](#orgb5b96f5)
    - [a new "are" method (what are these?)](#org29bf2aa)
    - [rakudo weekly news](#org483784b)
    - [more dwimmy .all ~~ Type](#org5290c2f)
    - [checking a program is on system](#org9a6b0cd)
    - [parsing wiki syntax, regex vs grammars](#org20c8f44)
  - [sniping at perl, circa 2009](#org076d4b6)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgd1fdb99)
  - [equilibirum index](#org21b7c74)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org239fcb5)
    - [revisit this next time (Rob solution?)](#org7353fe4)
  - [Rob's interested in discussing missing basic tools](#org68a6e57)
  - [weekly challenge this week](#org36ec023)
    - [<https://theweeklychallenge.org/>](#org6fa5817)
  - [from previous meetings](#orgdec3442)
    - [an answer to what's Raku for:](#org642a989)
    - [gui toolkits](#org6a0505e)
  - [bill michels](#org0455fcd)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org983aebe)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgec2dda9)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org19b4486)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orga1a8739)
  - [announcements](#org924260a)
    - [May 22nd: next raku study group meeting](#orgf32d499)
    - [June 21-25: tprc: perl/raku conference](#org57f974e)


<a id="orga95cc32"></a>

# meeting notes May 08, 2022


<a id="org130e7a0"></a>

## the raku study group


<a id="orgd3a82cb"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org1b39099"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="orgbe5cddc"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="org14cbba2"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="orga859366"></a>

## review introspection


<a id="orge008379"></a>

## raku's "move" considered ungood


<a id="orga31fa3b"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="orgbdae58a"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org994a62c"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org952a1fc"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="orgd0b54ce"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="orgd068ba3"></a>

## rob ransbottom


<a id="orge485915"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="org9b7bb01"></a>

## recent raku topics


<a id="orgb5b96f5"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org29bf2aa"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org483784b"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org5290c2f"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org9a6b0cd"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org20c8f44"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org076d4b6"></a>

## sniping at perl, circa 2009


<a id="orgd1fdb99"></a>

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


<a id="org21b7c74"></a>

## equilibirum index


<a id="org239fcb5"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org7353fe4"></a>

### TODO revisit this next time (Rob solution?)


<a id="org68a6e57"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org36ec023"></a>

## weekly challenge this week


<a id="org6fa5817"></a>

### <https://theweeklychallenge.org/>


<a id="orgdec3442"></a>

## from previous meetings


<a id="org642a989"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org6a0505e"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org0455fcd"></a>

## bill michels


<a id="org983aebe"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgec2dda9"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org19b4486"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orga1a8739"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org924260a"></a>

## announcements


<a id="orgf32d499"></a>

### May 22nd: next raku study group meeting


<a id="org57f974e"></a>

### June 21-25: tprc: perl/raku conference
