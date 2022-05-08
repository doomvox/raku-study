- [meeting notes May 08, 2022](#org29f6eee)
  - [the raku study group](#orga41b76c)
    - [usual links](#orgaedd5c4)
  - [editorial: perl5-porters are in good shape, and backwards compatibility is a priority again](#org966a1f3)
    - [<https://news.ycombinator.com/item?id=31259332>](#org24bd35a)
  - [finished tests to examine ^methods issues](#org33d3c7d)
  - [raku's "move" considered ungood](#org245a963)
    - [move/copy command in Raku doesn't work with directory as second arg](#orge8ec583)
    - [<https://docs.raku.org/routine/move>](#org9ee307a)
    - [we've discussed this one already:](#org490c417)
    - [an issue: the unix "mv" can do a rename or a refile](#orgc96a406)
    - [tried using "rename" here, found it did a **copy**, needed to manually unlink original](#org8dd8b3a)
  - [rob ransbottom](#org0703835)
    - [topics in mind, which are](#orgad0d626)
  - [recent raku topics](#org23bfebe)
    - [web scraping:](#org6371093)
    - [a new "are" method (what are these?)](#orga5ba363)
    - [rakudo weekly news](#org958f610)
    - [more dwimmy .all ~~ Type](#org8be00cd)
    - [checking a program is on system](#org90c0dbb)
    - [parsing wiki syntax, regex vs grammars](#org9c35c7b)
  - [sniping at perl, circa 2009](#org9aa688b)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org7b3bbd1)
  - [equilibirum index](#orgfa384f4)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgda062f4)
    - [revisit this next time (Rob solution?)](#org38b639f)
  - [Rob's interested in discussing missing basic tools](#org95e4f5b)
  - [weekly challenge this week](#org14cf77c)
    - [<https://theweeklychallenge.org/>](#orgf5bb77a)
  - [from previous meetings](#org0a566e9)
    - [an answer to what's Raku for:](#orgceeb6c8)
    - [gui toolkits](#org3358241)
  - [bill michels](#org9e1e4bc)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgf5517cb)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org92600c3)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org218151d)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org698fa69)
  - [announcements](#org5c5e8b2)
    - [May 22nd: next raku study group meeting](#orgcee8c55)
    - [June 21-25: tprc: perl/raku conference](#orgbefbd74)


<a id="org29f6eee"></a>

# meeting notes May 08, 2022


<a id="orga41b76c"></a>

## the raku study group


<a id="orgaedd5c4"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org966a1f3"></a>

## editorial: perl5-porters are in good shape, and backwards compatibility is a priority again


<a id="org24bd35a"></a>

### <https://news.ycombinator.com/item?id=31259332>


<a id="org33d3c7d"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="org245a963"></a>

## raku's "move" considered ungood


<a id="orge8ec583"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org9ee307a"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org490c417"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="orgc96a406"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org8dd8b3a"></a>

### tried using "rename" here, found it did a **copy**, needed to manually unlink original

/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku


<a id="org0703835"></a>

## rob ransbottom


<a id="orgad0d626"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="org23bfebe"></a>

## recent raku topics


<a id="org6371093"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="orga5ba363"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org958f610"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org8be00cd"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org90c0dbb"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org9c35c7b"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org9aa688b"></a>

## sniping at perl, circa 2009


<a id="org7b3bbd1"></a>

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


<a id="orgfa384f4"></a>

## equilibirum index


<a id="orgda062f4"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org38b639f"></a>

### TODO revisit this next time (Rob solution?)


<a id="org95e4f5b"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org14cf77c"></a>

## weekly challenge this week


<a id="orgf5bb77a"></a>

### <https://theweeklychallenge.org/>


<a id="org0a566e9"></a>

## from previous meetings


<a id="orgceeb6c8"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org3358241"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org9e1e4bc"></a>

## bill michels


<a id="orgf5517cb"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org92600c3"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org218151d"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org698fa69"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org5c5e8b2"></a>

## announcements


<a id="orgcee8c55"></a>

### May 22nd: next raku study group meeting


<a id="orgbefbd74"></a>

### June 21-25: tprc: perl/raku conference
