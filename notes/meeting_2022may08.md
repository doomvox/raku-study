- [meeting notes May 08, 2022](#orgdd4d165)
  - [the raku study group](#org971f672)
    - [usual links](#org75eee1e)
  - [finished tests to examine ^methods issues](#org43f14f3)
  - [raku's "move" considered screwed-up](#org19404bb)
    - [<https://docs.raku.org/routine/move>](#orgbb7c926)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#orge8dc859)
    - [move/copy command in Raku doesn't work with directory as second arg](#org6bff045)
    - [discussed last meeting:](#orgcee19f9)
  - [recent raku topics](#org4b2982a)
    - [<https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>](#org6902d48)
    - [<https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>](#org8138adf)
    - [<https://rakudoweekly.blog/2022/05/02/2022-18-period/>](#org59f3919)
  - [sniping at perl, circa 2009](#org00d5631)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org30bd8cf)
  - [equilibirum index](#orge729bbd)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org3b0cb42)
    - [revisit this next time (Rob solution?)](#org2bd716d)
  - [Rob's interested in discussing missing basic tools](#org30a2397)
  - [weekly challenge this week](#org87a5339)
    - [<https://theweeklychallenge.org/>](#org087bc0e)
  - [from previous meetings](#org8c1ca0e)
    - [an answer to what's Raku for:](#org3fb1702)
    - [gui toolkits](#orgfa2fa82)
  - [bill michaels](#org37a8b82)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgee5f5c0)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgfcefd63)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orge6e504f)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgb4d8ee0)
  - [announcements](#org289b1af)
    - [May 8th: next raku study group meeting](#orgf2b82d4)
    - [June 21-25: tprc: perl/raku conference](#org662f614)


<a id="orgdd4d165"></a>

# meeting notes May 08, 2022


<a id="org971f672"></a>

## the raku study group


<a id="org75eee1e"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org43f14f3"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="org19404bb"></a>

## raku's "move" considered screwed-up


<a id="orgbb7c926"></a>

### <https://docs.raku.org/routine/move>


<a id="orge8dc859"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="org6bff045"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="orgcee19f9"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org4b2982a"></a>

## recent raku topics


<a id="org6902d48"></a>

### <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org8138adf"></a>

### <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org59f3919"></a>

### <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org00d5631"></a>

## sniping at perl, circa 2009


<a id="org30bd8cf"></a>

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


<a id="orge729bbd"></a>

## equilibirum index


<a id="org3b0cb42"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org2bd716d"></a>

### TODO revisit this next time (Rob solution?)


<a id="org30a2397"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org87a5339"></a>

## weekly challenge this week


<a id="org087bc0e"></a>

### <https://theweeklychallenge.org/>


<a id="org8c1ca0e"></a>

## from previous meetings


<a id="org3fb1702"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgfa2fa82"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org37a8b82"></a>

## bill michaels


<a id="orgee5f5c0"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgfcefd63"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orge6e504f"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgb4d8ee0"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org289b1af"></a>

## announcements


<a id="orgf2b82d4"></a>

### May 8th: next raku study group meeting


<a id="org662f614"></a>

### June 21-25: tprc: perl/raku conference
