- [meeting notes May 08, 2022](#orgb8b89dc)
  - [the raku study group](#org2b0b053)
    - ["Raku Saki Robots" (?)](#org5d0b3cd)
    - [usual links](#org242e820)
  - [the new "darkroast" project](#orga17e091)
    - [<https://github.com/doomvox/darkroast>](#orgaef792e)
  - [weekly challenge this week, rob ransbottom](#orgf3453bf)
    - [<https://theweeklychallenge.org/>](#orga0121ff)
  - [bill michaels](#orgd84fcab)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org8608187)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org0b525aa)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgf5f6400)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org79eba75)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org0ff1b25)
  - [earlier weekly challenge: "four is magic", bruce gray](#org89f0a66)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>](#org5323e1f)
    - [<https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>](#org26efba0)
    - [<http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>](#org314ef1d)
  - [equilibirum index](#org38f1444)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org81f3328)
    - [revisit this next time (Rob solution?)](#orga898267)
  - [postponed from previous meetings](#org1e69c0b)
    - [an answer to what's Raku for:](#org61a6feb)
  - [Rob's interested in discussing missing basic tools](#org2a8f850)
  - [earlier topics, follow-up some time:](#org912c84c)
    - [gui toolkits](#org669c50e)
  - [announcements](#org61e6d28)
    - [May 8th: next raku study group meeting](#orge446107)
    - [June 21-25: tprc: perl/raku conference](#org1fb762f)


<a id="orgb8b89dc"></a>

# meeting notes May 08, 2022


<a id="org2b0b053"></a>

## the raku study group


<a id="org5d0b3cd"></a>

### "Raku Saki Robots" (?)


<a id="org242e820"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orga17e091"></a>

## the new "darkroast" project


<a id="orgaef792e"></a>

### <https://github.com/doomvox/darkroast>


<a id="orgf3453bf"></a>

## weekly challenge this week, rob ransbottom


<a id="orga0121ff"></a>

### <https://theweeklychallenge.org/>


<a id="orgd84fcab"></a>

## bill michaels


<a id="org8608187"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org0b525aa"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgf5f6400"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org79eba75"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org0ff1b25"></a>

### <https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>

1.  move/copy command in Raku doesn't work with directory as second arg

    1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>
    
    2.  raku -e 'for dir(test => / .+ \\.txt /) {.say};'
    
    3.  "persons.txt".IO
    
        "time.txt".IO
    
    4.  raku -e 'mkdir IO::Path.new("../dest");'
    
    5.  raku -e 'for dir(test => / .+ \\.txt $ /) { copy $\_, "../dest/$\_", createonly => True};'
    
    6.  ls ../dest
    
    7.  persons.txt time.txt
    
    8.  <https://docs.raku.org/routine/move>
    
        1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."
        
            1.  TODO (( Seriously? ))


<a id="org89f0a66"></a>

## earlier weekly challenge: "four is magic", bruce gray


<a id="org5323e1f"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>


<a id="org26efba0"></a>

### <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>


<a id="org314ef1d"></a>

### <http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>


<a id="org38f1444"></a>

## equilibirum index


<a id="org81f3328"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orga898267"></a>

### TODO revisit this next time (Rob solution?)


<a id="org1e69c0b"></a>

## postponed from previous meetings


<a id="org61a6feb"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org2a8f850"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org912c84c"></a>

## earlier topics, follow-up some time:


<a id="org669c50e"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org61e6d28"></a>

## announcements


<a id="orge446107"></a>

### May 8th: next raku study group meeting


<a id="org1fb762f"></a>

### June 21-25: tprc: perl/raku conference
