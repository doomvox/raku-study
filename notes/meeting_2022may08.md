- [meeting notes May 08, 2022](#org4c93f33)
  - [the raku study group](#org06ace5b)
    - [usual links](#org9e1ee30)
  - [finished test to examine ^methods issues](#orge207bdc)
  - [raku's "move" considered screwed-up](#orga958388)
    - [<https://docs.raku.org/routine/move>](#org81d6dca)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#org796d4c7)
    - [move/copy command in Raku doesn't work with directory as second arg](#orgf6b2524)
    - [discussed last meeting:](#org14da3fd)
  - [recent raku topics](#org5c9c337)
    - [<https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>](#org015518d)
    - [<https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>](#org4bd7ea3)
    - [<https://rakudoweekly.blog/2022/05/02/2022-18-period/>](#org8627fc0)
  - [sniping at perl, circa 2009](#org4ac0c54)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgec512c0)
  - [equilibirum index](#org1eab713)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org8c4707e)
    - [revisit this next time (Rob solution?)](#orgfa89fbf)
  - [Rob's interested in discussing missing basic tools](#orgb36750c)
  - [weekly challenge this week](#org2c3a757)
    - [<https://theweeklychallenge.org/>](#orgb774e55)
  - [from previous meetings](#org3c76297)
    - [an answer to what's Raku for:](#org37d4e26)
    - [gui toolkits](#orgd915d77)
  - [bill michaels](#orgc17d8e2)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org3050fc8)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org5fa5b35)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org1d185f1)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org196e211)
  - [announcements](#orgd6046ba)
    - [May 8th: next raku study group meeting](#orgca0c375)
    - [June 21-25: tprc: perl/raku conference](#orgb4fb55e)


<a id="org4c93f33"></a>

# meeting notes May 08, 2022


<a id="org06ace5b"></a>

## the raku study group


<a id="org9e1ee30"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orge207bdc"></a>

## finished test to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="orga958388"></a>

## raku's "move" considered screwed-up


<a id="org81d6dca"></a>

### <https://docs.raku.org/routine/move>


<a id="org796d4c7"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="orgf6b2524"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org14da3fd"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org5c9c337"></a>

## recent raku topics


<a id="org015518d"></a>

### <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org4bd7ea3"></a>

### <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org8627fc0"></a>

### <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org4ac0c54"></a>

## sniping at perl, circa 2009


<a id="orgec512c0"></a>

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


<a id="org1eab713"></a>

## equilibirum index


<a id="org8c4707e"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orgfa89fbf"></a>

### TODO revisit this next time (Rob solution?)


<a id="orgb36750c"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org2c3a757"></a>

## weekly challenge this week


<a id="orgb774e55"></a>

### <https://theweeklychallenge.org/>


<a id="org3c76297"></a>

## from previous meetings


<a id="org37d4e26"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgd915d77"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgc17d8e2"></a>

## bill michaels


<a id="org3050fc8"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org5fa5b35"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org1d185f1"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org196e211"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgd6046ba"></a>

## announcements


<a id="orgca0c375"></a>

### May 8th: next raku study group meeting


<a id="orgb4fb55e"></a>

### June 21-25: tprc: perl/raku conference
