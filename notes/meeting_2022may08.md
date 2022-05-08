- [meeting notes May 08, 2022](#org087f5cb)
  - [the raku study group](#org10f6f21)
    - [usual links](#org66b8e36)
  - [finished tests to examine ^methods issues](#org576c76e)
  - [raku's "move" considered screwed-up](#org9ecb0d3)
    - [<https://docs.raku.org/routine/move>](#org7d533f9)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#org49ac2f7)
    - [move/copy command in Raku doesn't work with directory as second arg](#org56e4e2c)
    - [we've discussed this one already:](#orgd060c69)
  - [recent raku topics](#org8299a68)
    - [<https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>](#org1b9256c)
    - [<https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>](#org2160d1c)
    - [<https://rakudoweekly.blog/2022/05/02/2022-18-period/>](#org1bedb04)
  - [sniping at perl, circa 2009](#org7960069)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org078d831)
  - [equilibirum index](#orgf7cc793)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgd020354)
    - [revisit this next time (Rob solution?)](#org16b2567)
  - [Rob's interested in discussing missing basic tools](#org84e968d)
  - [weekly challenge this week](#org960ff2a)
    - [<https://theweeklychallenge.org/>](#orgdb6e242)
  - [from previous meetings](#org889cd72)
    - [an answer to what's Raku for:](#orgdb6f968)
    - [gui toolkits](#orgbae272e)
  - [bill michaels](#org27303a6)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org6f464b7)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org9991fb7)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org357917c)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgb3a0951)
  - [announcements](#orga7fd4ed)
    - [May 8th: next raku study group meeting](#orgcef2939)
    - [June 21-25: tprc: perl/raku conference](#org981fa71)


<a id="org087f5cb"></a>

# meeting notes May 08, 2022


<a id="org10f6f21"></a>

## the raku study group


<a id="org66b8e36"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org576c76e"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="org9ecb0d3"></a>

## raku's "move" considered screwed-up


<a id="org7d533f9"></a>

### <https://docs.raku.org/routine/move>


<a id="org49ac2f7"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="org56e4e2c"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="orgd060c69"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org8299a68"></a>

## recent raku topics


<a id="org1b9256c"></a>

### <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org2160d1c"></a>

### <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org1bedb04"></a>

### <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org7960069"></a>

## sniping at perl, circa 2009


<a id="org078d831"></a>

### <https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>

1.  bill michaels brought up this piece from 2009

2.  true: "There are many wonderful modules in CPAN, but learning about them, learning to use them, finding out about their hidden corner-cases and unexpected behaviors takes even more time"

3.  eh: "People hate Perl for the same reason we love it&#x2013; because it makes us feel clever."

    1.  And people attacked perl so they could feel clever&#x2013; or at least pose as enlightened insiders.

4.  links to Steve Yegge: <https://sites.google.com/site/steveyegge2/ancient-languages-perl>

5.  my old commentary about Steve Yegge

    1.  <http://obsidianrook.com/doomfiles/GENTLE_ART_OF_PROGRAMMING.html>
    
    2.  <http://obsidianrook.com/doomfiles/SIGILS_OF_POWER.html>
    
    3.  <http://obsidianrook.com/doomfiles/CASE_STUDY_2.html>
    
    4.  <http://obsidianrook.com/doomfiles/THE_PERL_AFFAIR.html>


<a id="orgf7cc793"></a>

## equilibirum index


<a id="orgd020354"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org16b2567"></a>

### TODO revisit this next time (Rob solution?)


<a id="org84e968d"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org960ff2a"></a>

## weekly challenge this week


<a id="orgdb6e242"></a>

### <https://theweeklychallenge.org/>


<a id="org889cd72"></a>

## from previous meetings


<a id="orgdb6f968"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgbae272e"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org27303a6"></a>

## bill michaels


<a id="org6f464b7"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org9991fb7"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org357917c"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgb3a0951"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orga7fd4ed"></a>

## announcements


<a id="orgcef2939"></a>

### May 8th: next raku study group meeting


<a id="org981fa71"></a>

### June 21-25: tprc: perl/raku conference
