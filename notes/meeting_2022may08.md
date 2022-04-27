- [meeting notes May 08, 2022](#org36d14ca)
  - [the raku study group](#org7c7719a)
    - ["Raku Saki Robots" (?)](#org26d85ba)
    - [usual links](#org3052247)
  - [the new "darkroast" project](#org1ce2786)
    - [<https://github.com/doomvox/darkroast>](#org76e4cf1)
  - [weekly challenge this week, rob ransbottom](#org48e992a)
    - [<https://theweeklychallenge.org/>](#orgbc1ed61)
  - [bill michaels](#orgbb25206)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org259b232)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org34f9c2f)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org12303ca)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org6246ae7)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgf1c7ad6)
  - [earlier weekly challenge: "four is magic", bruce gray](#orgf390b14)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>](#org08e66ca)
    - [<https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>](#org70d6122)
    - [<http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>](#org7ed4730)
  - [equilibirum index](#orgc7b5d39)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org7237f1d)
    - [revisit this next time (Rob solution?)](#org3dbac05)
  - [postponed from previous meetings](#orge1a819b)
    - [an answer to what's Raku for:](#org3125abf)
  - [Rob's interested in discussing missing basic tools](#org9b85dee)
  - [earlier topics, follow-up some time:](#org9b07f62)
    - [gui toolkits](#orgbf79206)
  - [announcements](#org18ab0d5)
    - [May 8th: next raku study group meeting](#org6f033e7)
    - [June 21-25: tprc: perl/raku conference](#org5d1df22)


<a id="org36d14ca"></a>

# meeting notes May 08, 2022


<a id="org7c7719a"></a>

## the raku study group


<a id="org26d85ba"></a>

### "Raku Saki Robots" (?)


<a id="org3052247"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr24.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr24>


<a id="org1ce2786"></a>

## the new "darkroast" project


<a id="org76e4cf1"></a>

### <https://github.com/doomvox/darkroast>


<a id="org48e992a"></a>

## weekly challenge this week, rob ransbottom


<a id="orgbc1ed61"></a>

### <https://theweeklychallenge.org/>


<a id="orgbb25206"></a>

## bill michaels


<a id="org259b232"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org34f9c2f"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org12303ca"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org6246ae7"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgf1c7ad6"></a>

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


<a id="orgf390b14"></a>

## earlier weekly challenge: "four is magic", bruce gray


<a id="org08e66ca"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>


<a id="org70d6122"></a>

### <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>


<a id="org7ed4730"></a>

### <http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>


<a id="orgc7b5d39"></a>

## equilibirum index


<a id="org7237f1d"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org3dbac05"></a>

### TODO revisit this next time (Rob solution?)


<a id="orge1a819b"></a>

## postponed from previous meetings


<a id="org3125abf"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org9b85dee"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org9b07f62"></a>

## earlier topics, follow-up some time:


<a id="orgbf79206"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org18ab0d5"></a>

## announcements


<a id="org6f033e7"></a>

### May 8th: next raku study group meeting


<a id="org5d1df22"></a>

### June 21-25: tprc: perl/raku conference
