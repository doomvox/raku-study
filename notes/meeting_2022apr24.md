- [meeting notes April 24, 2022](#orgd8e7804)
  - [the raku study group](#org30b0a62)
    - [usual links](#org529f273)
  - [the new "darkroast" project](#orgb251efa)
    - [<https://github.com/doomvox/darkroast>](#orgebb7d80)
  - [rob ransbottom](#orgec0e2f6)
    - [<https://theweeklychallenge.org/>](#org285d607)
  - [bill michaels](#orgdae9fd0)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org4958b41)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org12f3fdd)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgb8c391f)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgb9e44ab)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org051eb09)
  - [earlier weekly challenge: "four is magic", bruce gray](#org0b1a498)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>](#orgbdbfcea)
    - [<https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>](#orgd2ff779)
    - [<http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>](#org12423b9)
  - [equilbirum index](#orgfde1e6f)
  - [postponed from previous meetings](#org48590ae)
    - [an answer to what's Raku for:](#org965b955)
  - [earlier topics, follow-up some time:](#org89b6f48)
    - [gui toolkits](#org04979f3)
  - [untopics](#orgbad791d)
  - [announcements](#org41c13bf)
    - [May 8th: next raku study group meeting](#orgf2b7434)
    - [June 21-25: tprc: perl/raku conference](#org403b6a6)


<a id="orgd8e7804"></a>

# meeting notes April 24, 2022


<a id="org30b0a62"></a>

## the raku study group


<a id="org529f273"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr24.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr24>


<a id="orgb251efa"></a>

## the new "darkroast" project


<a id="orgebb7d80"></a>

### <https://github.com/doomvox/darkroast>


<a id="orgec0e2f6"></a>

## rob ransbottom


<a id="org285d607"></a>

### <https://theweeklychallenge.org/>


<a id="orgdae9fd0"></a>

## bill michaels


<a id="org4958b41"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org12f3fdd"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgb8c391f"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgb9e44ab"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org051eb09"></a>

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
    
        To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not. (( Seriously? ))


<a id="org0b1a498"></a>

## earlier weekly challenge: "four is magic", bruce gray


<a id="orgbdbfcea"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>


<a id="orgd2ff779"></a>

### <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>


<a id="org12423b9"></a>

### <http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>


<a id="orgfde1e6f"></a>

## equilbirum index

<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org48590ae"></a>

## postponed from previous meetings


<a id="org965b955"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org89b6f48"></a>

## earlier topics, follow-up some time:


<a id="org04979f3"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgbad791d"></a>

## untopics


<a id="org41c13bf"></a>

## announcements


<a id="orgf2b7434"></a>

### May 8th: next raku study group meeting


<a id="org403b6a6"></a>

### June 21-25: tprc: perl/raku conference
