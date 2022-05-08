- [meeting notes May 08, 2022](#orgecc3df4)
  - [the raku study group](#org3642a3a)
    - [usual links](#org7d67322)
  - [finished tests to examine ^methods issues](#org5d42dfb)
  - [raku's "move" considered screwed-up](#org29b5bb4)
    - [<https://docs.raku.org/routine/move>](#org0a3a361)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#org91c33de)
    - [move/copy command in Raku doesn't work with directory as second arg](#org85e005f)
    - [we've discussed this one already:](#orgd852493)
  - [recent raku topics](#org21bce79)
    - [<https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>](#org1a52413)
    - [<https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>](#orgbb751bc)
    - [<https://rakudoweekly.blog/2022/05/02/2022-18-period/>](#org967cd85)
  - [sniping at perl, circa 2009](#org8296547)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgcb5aae5)
  - [equilibirum index](#orge8b25f8)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org72994ab)
    - [revisit this next time (Rob solution?)](#orge8b1eb0)
  - [Rob's interested in discussing missing basic tools](#org4202322)
  - [weekly challenge this week](#org47508c4)
    - [<https://theweeklychallenge.org/>](#orgf75c23b)
  - [from previous meetings](#org0d52666)
    - [an answer to what's Raku for:](#orgd14b02a)
    - [gui toolkits](#org20bbbdb)
  - [bill michaels](#org9aa1a23)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgff8c139)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgae4d092)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org8dc25f1)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org0057dae)
  - [announcements](#orgdce18f6)
    - [May 22nd: next raku study group meeting](#org6a9734f)
    - [June 21-25: tprc: perl/raku conference](#orgcbcab37)


<a id="orgecc3df4"></a>

# meeting notes May 08, 2022


<a id="org3642a3a"></a>

## the raku study group


<a id="org7d67322"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org5d42dfb"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="org29b5bb4"></a>

## raku's "move" considered screwed-up


<a id="org0a3a361"></a>

### <https://docs.raku.org/routine/move>


<a id="org91c33de"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="org85e005f"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="orgd852493"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org21bce79"></a>

## recent raku topics


<a id="org1a52413"></a>

### <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="orgbb751bc"></a>

### <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org967cd85"></a>

### <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org8296547"></a>

## sniping at perl, circa 2009


<a id="orgcb5aae5"></a>

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


<a id="orge8b25f8"></a>

## equilibirum index


<a id="org72994ab"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orge8b1eb0"></a>

### TODO revisit this next time (Rob solution?)


<a id="org4202322"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org47508c4"></a>

## weekly challenge this week


<a id="orgf75c23b"></a>

### <https://theweeklychallenge.org/>


<a id="org0d52666"></a>

## from previous meetings


<a id="orgd14b02a"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org20bbbdb"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org9aa1a23"></a>

## bill michaels


<a id="orgff8c139"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgae4d092"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org8dc25f1"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org0057dae"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgdce18f6"></a>

## announcements


<a id="org6a9734f"></a>

### May 22nd: next raku study group meeting


<a id="orgcbcab37"></a>

### June 21-25: tprc: perl/raku conference
