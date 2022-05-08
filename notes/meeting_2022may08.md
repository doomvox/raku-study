- [meeting notes May 08, 2022](#org059a22a)
  - [the raku study group](#org5f30c1a)
    - [usual links](#org94a2868)
  - [finished tests to examine ^methods issues](#org45f875a)
  - [raku's "move" considered screwed-up](#org349e633)
    - [<https://docs.raku.org/routine/move>](#orga72a6ae)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#orgc57dcbe)
    - [move/copy command in Raku doesn't work with directory as second arg](#org8751743)
    - [we've discussed this one already:](#orgf837591)
  - [recent raku topics](#orgbd21994)
    - [<https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>](#org2ba537f)
    - [<https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>](#orgc4d11fb)
    - [<https://rakudoweekly.blog/2022/05/02/2022-18-period/>](#org50f6a23)
  - [sniping at perl, circa 2009](#org1ddb2a3)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org2a91b40)
  - [equilibirum index](#orge8209ac)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgabcb013)
    - [revisit this next time (Rob solution?)](#org7d3ecbe)
  - [Rob's interested in discussing missing basic tools](#org59ea384)
  - [weekly challenge this week](#org7e35220)
    - [<https://theweeklychallenge.org/>](#org191a998)
  - [from previous meetings](#org3d1d739)
    - [an answer to what's Raku for:](#org097844a)
    - [gui toolkits](#org1a45cd6)
  - [bill michaels](#org5aed5b3)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgb1d79b5)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org8001a33)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org35f2df3)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgcf4add1)
  - [announcements](#orgeba8dce)
    - [May 8th: next raku study group meeting](#orgdb45994)
    - [June 21-25: tprc: perl/raku conference](#orgd1a4367)


<a id="org059a22a"></a>

# meeting notes May 08, 2022


<a id="org5f30c1a"></a>

## the raku study group


<a id="org94a2868"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org45f875a"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="org349e633"></a>

## raku's "move" considered screwed-up


<a id="orga72a6ae"></a>

### <https://docs.raku.org/routine/move>


<a id="orgc57dcbe"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="org8751743"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="orgf837591"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="orgbd21994"></a>

## recent raku topics


<a id="org2ba537f"></a>

### <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="orgc4d11fb"></a>

### <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org50f6a23"></a>

### <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org1ddb2a3"></a>

## sniping at perl, circa 2009


<a id="org2a91b40"></a>

### <https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>

1.  bill michaels brought up this piece from 2009

2.  true: "There are many wonderful modules in CPAN, but learning about them, learning to use them &#x2026; takes even more time"

3.  eh: "People hate Perl for the same reason we love it&#x2013; because it makes us feel clever."

    1.  And people attacked perl so they could feel clever&#x2013; or at least pose as enlightened insiders.

4.  links to Steve Yegge: <https://sites.google.com/site/steveyegge2/ancient-languages-perl>

5.  my old commentary about Steve Yegge

    1.  <http://obsidianrook.com/doomfiles/GENTLE_ART_OF_PROGRAMMING.html>
    
    2.  <http://obsidianrook.com/doomfiles/SIGILS_OF_POWER.html>
    
    3.  <http://obsidianrook.com/doomfiles/CASE_STUDY_2.html>
    
    4.  <http://obsidianrook.com/doomfiles/THE_PERL_AFFAIR.html>


<a id="orge8209ac"></a>

## equilibirum index


<a id="orgabcb013"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org7d3ecbe"></a>

### TODO revisit this next time (Rob solution?)


<a id="org59ea384"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org7e35220"></a>

## weekly challenge this week


<a id="org191a998"></a>

### <https://theweeklychallenge.org/>


<a id="org3d1d739"></a>

## from previous meetings


<a id="org097844a"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org1a45cd6"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org5aed5b3"></a>

## bill michaels


<a id="orgb1d79b5"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org8001a33"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org35f2df3"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgcf4add1"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgeba8dce"></a>

## announcements


<a id="orgdb45994"></a>

### May 8th: next raku study group meeting


<a id="orgd1a4367"></a>

### June 21-25: tprc: perl/raku conference
