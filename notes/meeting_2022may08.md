- [meeting notes May 08, 2022](#org05ad6a1)
  - [the raku study group](#org4e08d67)
    - [usual links](#orgef824d9)
  - [the new "darkroast" project](#orgbefe7c3)
    - [<https://github.com/doomvox/darkroast>](#org89ce0d9)
  - [weekly challenge this week, rob ransbottom](#org86a76b9)
    - [<https://theweeklychallenge.org/>](#org8414eb3)
  - [bill michaels](#org2f2527a)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org60370e4)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org0ed2c5f)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org6766534)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgd013113)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orga809ef1)
  - [earlier weekly challenge: "four is magic", bruce gray](#org1f3fd93)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>](#org3602b2b)
    - [<https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>](#orgf195c9d)
    - [<http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>](#org191a9f1)
  - [equilibirum index](#org46b3896)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org24c2f53)
    - [revisit this next time (Rob solution?)](#orgde7807c)
  - [postponed from previous meetings](#org7b71242)
    - [an answer to what's Raku for:](#org8b0daa0)
  - [Rob's interested in discussing missing basic tools](#org8e87834)
  - [earlier topics, follow-up some time:](#org9dbf1dc)
    - [gui toolkits](#orgc52dc84)
  - [announcements](#org7659e37)
    - [May 8th: next raku study group meeting](#org4111a78)
    - [June 21-25: tprc: perl/raku conference](#org125d269)


<a id="org05ad6a1"></a>

# meeting notes May 08, 2022


<a id="org4e08d67"></a>

## the raku study group


<a id="orgef824d9"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr24.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr24>


<a id="orgbefe7c3"></a>

## the new "darkroast" project


<a id="org89ce0d9"></a>

### <https://github.com/doomvox/darkroast>


<a id="org86a76b9"></a>

## weekly challenge this week, rob ransbottom


<a id="org8414eb3"></a>

### <https://theweeklychallenge.org/>


<a id="org2f2527a"></a>

## bill michaels


<a id="org60370e4"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org0ed2c5f"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org6766534"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgd013113"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orga809ef1"></a>

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


<a id="org1f3fd93"></a>

## earlier weekly challenge: "four is magic", bruce gray


<a id="org3602b2b"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>


<a id="orgf195c9d"></a>

### <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>


<a id="org191a9f1"></a>

### <http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>


<a id="org46b3896"></a>

## equilibirum index


<a id="org24c2f53"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orgde7807c"></a>

### TODO revisit this next time (Rob solution?)


<a id="org7b71242"></a>

## postponed from previous meetings


<a id="org8b0daa0"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org8e87834"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org9dbf1dc"></a>

## earlier topics, follow-up some time:


<a id="orgc52dc84"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org7659e37"></a>

## announcements


<a id="org4111a78"></a>

### May 8th: next raku study group meeting


<a id="org125d269"></a>

### June 21-25: tprc: perl/raku conference
