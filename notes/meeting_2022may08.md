- [meeting notes May 08, 2022](#org6b6d68e)
  - [the raku study group](#orgb419f55)
    - [usual links](#orge6c2a19)
  - [finished tests to examine ^methods issues](#orgbbf57ec)
  - [raku's "move" considered ungood](#org8142160)
    - [move/copy command in Raku doesn't work with directory as second arg](#orga664cdf)
    - [<https://docs.raku.org/routine/move>](#org3303693)
    - [we've discussed this one already:](#org9959d6a)
    - [an issue: the unix "mv" can do a rename or a refile](#orge7d6711)
  - [recent raku topics](#orgf0b318d)
    - [web scraping:](#org70a5c8a)
    - [a new "are" method (what are these?)](#orgf4ea719)
    - [rakudo weekly news](#orgfeddd40)
    - [more dwimmy .all ~~ Type](#org69ba16b)
    - [checking a program is on system](#orgbcd5389)
    - [parsing wiki syntax, regex vs grammars](#org2b5b7e1)
  - [sniping at perl, circa 2009](#org4dc9f14)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org126efeb)
  - [equilibirum index](#orga0635f5)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org0c0b465)
    - [revisit this next time (Rob solution?)](#orgec8f801)
  - [Rob's interested in discussing missing basic tools](#org751f6e7)
  - [weekly challenge this week](#orgeb26ab8)
    - [<https://theweeklychallenge.org/>](#org38cc6c6)
  - [from previous meetings](#org8cc4021)
    - [an answer to what's Raku for:](#org011e878)
    - [gui toolkits](#org38af4ac)
  - [bill michaels](#orge919483)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org521eeef)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org72c1bdc)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org76d2e84)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org64b54e8)
  - [announcements](#org096a946)
    - [May 22nd: next raku study group meeting](#org515e6be)
    - [June 21-25: tprc: perl/raku conference](#orgf46ea45)


<a id="org6b6d68e"></a>

# meeting notes May 08, 2022


<a id="orgb419f55"></a>

## the raku study group


<a id="orge6c2a19"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orgbbf57ec"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="org8142160"></a>

## raku's "move" considered ungood


<a id="orga664cdf"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org3303693"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org9959d6a"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="orge7d6711"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku
    
    2.  


<a id="orgf0b318d"></a>

## recent raku topics


<a id="org70a5c8a"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="orgf4ea719"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="orgfeddd40"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org69ba16b"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="orgbcd5389"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org2b5b7e1"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org4dc9f14"></a>

## sniping at perl, circa 2009


<a id="org126efeb"></a>

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


<a id="orga0635f5"></a>

## equilibirum index


<a id="org0c0b465"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orgec8f801"></a>

### TODO revisit this next time (Rob solution?)


<a id="org751f6e7"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="orgeb26ab8"></a>

## weekly challenge this week


<a id="org38cc6c6"></a>

### <https://theweeklychallenge.org/>


<a id="org8cc4021"></a>

## from previous meetings


<a id="org011e878"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org38af4ac"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orge919483"></a>

## bill michaels


<a id="org521eeef"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org72c1bdc"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org76d2e84"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org64b54e8"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org096a946"></a>

## announcements


<a id="org515e6be"></a>

### May 22nd: next raku study group meeting


<a id="orgf46ea45"></a>

### June 21-25: tprc: perl/raku conference
