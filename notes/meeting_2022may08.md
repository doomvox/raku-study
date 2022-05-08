- [meeting notes May 08, 2022](#org543460d)
  - [the raku study group](#org45f1541)
    - [usual links](#orge7f523d)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#orge2fa152)
  - [finished tests to examine ^methods issues](#org6957d3d)
  - [raku's "move" considered ungood](#org6c70b28)
    - [move/copy command in Raku doesn't work with directory as second arg](#org636e7cb)
    - [<https://docs.raku.org/routine/move>](#orgc485dcd)
    - [we've discussed this one already:](#org9b2e94b)
    - [an issue: the unix "mv" can do a rename or a refile](#orga1fcf40)
  - [rob ransbottom](#org7027304)
    - [topics in mind, which are](#org299f629)
  - [recent raku topics](#orgdc94d55)
    - [web scraping:](#org1b96887)
    - [a new "are" method (what are these?)](#org2acc4c4)
    - [rakudo weekly news](#orgadbd056)
    - [more dwimmy .all ~~ Type](#org6761f57)
    - [checking a program is on system](#orgc44fb56)
    - [parsing wiki syntax, regex vs grammars](#org55b08e2)
  - [sniping at perl, circa 2009](#org1f6782b)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org05f6b6e)
  - [equilibirum index](#org6602572)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org19f525c)
    - [revisit this next time (Rob solution?)](#org8afc386)
  - [Rob's interested in discussing missing basic tools](#orga3c2536)
  - [weekly challenge this week](#orga1f6af9)
    - [<https://theweeklychallenge.org/>](#org2847862)
  - [from previous meetings](#orge8c34b6)
    - [an answer to what's Raku for:](#org7fad42a)
    - [gui toolkits](#orgc170aec)
  - [bill michels](#orgf84abc0)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org7fc0765)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org63d18d0)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgcbb151c)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orge2985ce)
  - [announcements](#org4a8c573)
    - [May 22nd: next raku study group meeting](#org1bfc2b7)
    - [June 21-25: tprc: perl/raku conference](#org0a2a6f3)


<a id="org543460d"></a>

# meeting notes May 08, 2022


<a id="org45f1541"></a>

## the raku study group


<a id="orge7f523d"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orge2fa152"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="org6957d3d"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="org6c70b28"></a>

## raku's "move" considered ungood


<a id="org636e7cb"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="orgc485dcd"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org9b2e94b"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="orga1fcf40"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org7027304"></a>

## rob ransbottom


<a id="org299f629"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="orgdc94d55"></a>

## recent raku topics


<a id="org1b96887"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org2acc4c4"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="orgadbd056"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org6761f57"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="orgc44fb56"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org55b08e2"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org1f6782b"></a>

## sniping at perl, circa 2009


<a id="org05f6b6e"></a>

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


<a id="org6602572"></a>

## equilibirum index


<a id="org19f525c"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org8afc386"></a>

### TODO revisit this next time (Rob solution?)


<a id="orga3c2536"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="orga1f6af9"></a>

## weekly challenge this week


<a id="org2847862"></a>

### <https://theweeklychallenge.org/>


<a id="orge8c34b6"></a>

## from previous meetings


<a id="org7fad42a"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgc170aec"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgf84abc0"></a>

## bill michels


<a id="org7fc0765"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org63d18d0"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgcbb151c"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orge2985ce"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org4a8c573"></a>

## announcements


<a id="org1bfc2b7"></a>

### May 22nd: next raku study group meeting


<a id="org0a2a6f3"></a>

### June 21-25: tprc: perl/raku conference
