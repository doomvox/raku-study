- [meeting notes April 24, 2022](#org486e816)
  - [the raku study group](#org6294386)
    - [usual links](#org85a737b)
  - [the new "darkroast" project](#org645a1ca)
    - [<https://github.com/doomvox/darkroast>](#org11c672a)
  - [weekly challenge this week, rob ransbottom](#org579e8af)
    - [<https://theweeklychallenge.org/>](#org594467e)
  - [bill michaels](#orgb988732)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgda1bc44)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org00e4189)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgfb8a4e4)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgad8b7c7)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org9f1bf65)
  - [earlier weekly challenge: "four is magic", bruce gray](#orga4372b3)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>](#orgc49bad9)
    - [<https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>](#orgfa70a40)
    - [<http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>](#orge0dc675)
  - [equilibirum index](#orgfdb6887)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org05d6882)
    - [revisit this next time (Rob solution?)](#org0f88b41)
  - [postponed from previous meetings](#org2282003)
    - [an answer to what's Raku for:](#org9a83209)
  - [earlier topics, follow-up some time:](#org25c4820)
    - [gui toolkits](#org01b2121)
  - [announcements](#orge8c6a85)
    - [May 8th: next raku study group meeting](#org46df54b)
    - [June 21-25: tprc: perl/raku conference](#org5bfed45)


<a id="org486e816"></a>

# meeting notes April 24, 2022


<a id="org6294386"></a>

## the raku study group


<a id="org85a737b"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr24.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr24>


<a id="org645a1ca"></a>

## the new "darkroast" project


<a id="org11c672a"></a>

### <https://github.com/doomvox/darkroast>


<a id="org579e8af"></a>

## weekly challenge this week, rob ransbottom


<a id="org594467e"></a>

### <https://theweeklychallenge.org/>


<a id="orgb988732"></a>

## bill michaels


<a id="orgda1bc44"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org00e4189"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgfb8a4e4"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgad8b7c7"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org9f1bf65"></a>

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
    
        1.  To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not.
        
            1.  TODO (( Seriously? ))


<a id="orga4372b3"></a>

## earlier weekly challenge: "four is magic", bruce gray


<a id="orgc49bad9"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>


<a id="orgfa70a40"></a>

### <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>


<a id="orge0dc675"></a>

### <http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>


<a id="orgfdb6887"></a>

## equilibirum index


<a id="org05d6882"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org0f88b41"></a>

### TODO revisit this next time (Rob solution?)


<a id="org2282003"></a>

## postponed from previous meetings


<a id="org9a83209"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org25c4820"></a>

## earlier topics, follow-up some time:


<a id="org01b2121"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orge8c6a85"></a>

## announcements


<a id="org46df54b"></a>

### May 8th: next raku study group meeting


<a id="org5bfed45"></a>

### June 21-25: tprc: perl/raku conference
