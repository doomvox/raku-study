- [meeting notes April 24, 2022](#org134fff9)
  - [the raku study group](#orgfd8bc58)
    - [usual links](#orgb723337)
  - [the new "darkroast" project](#orgbd04100)
    - [<https://github.com/doomvox/darkroast>](#orge701846)
  - [rob ransbottom](#org7515f1b)
    - [<https://theweeklychallenge.org/>](#orgbffcf7c)
  - [bill michaels](#org0327c91)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orge3ee606)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org2fdb13b)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org369ea7c)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgf7a7027)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgd7d46db)
  - [postponed from previous meetings](#org0c90107)
    - [an answer to what's Raku for:](#org7e87e82)
  - [earlier topics, follow-up some time:](#org7188d77)
    - [gui toolkits](#orgd0df8f6)
  - [untopics](#orgf67f2c2)
  - [announcements](#org96ea885)
    - [May 8th: next raku study group meeting](#org92157ca)
    - [June 21-25: tprc: perl/raku conference](#org1a6aeb5)


<a id="org134fff9"></a>

# meeting notes April 24, 2022


<a id="orgfd8bc58"></a>

## the raku study group


<a id="orgb723337"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr24.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr24>


<a id="orgbd04100"></a>

## the new "darkroast" project


<a id="orge701846"></a>

### <https://github.com/doomvox/darkroast>


<a id="org7515f1b"></a>

## rob ransbottom


<a id="orgbffcf7c"></a>

### <https://theweeklychallenge.org/>


<a id="org0327c91"></a>

## bill michaels


<a id="orge3ee606"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org2fdb13b"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org369ea7c"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgf7a7027"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgd7d46db"></a>

### <https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>

1.  move/copy command in Raku doesn't work with directory as second arg

    1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>
    
        raku -e 'for dir(test => / .+ \\.txt /) {.say};' "persons.txt".IO "time.txt".IO
        
        raku -e 'mkdir IO::Path.new("../dest");'
        
        raku -e 'for dir(test => / .+ \\.txt $ /) { copy $\_, "../dest/$\_", createonly => True};'
        
        ls ../dest persons.txt time.txt
    
    2.  <https://docs.raku.org/routine/move>
    
        To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not.
        
        1.  Seriously?


<a id="org0c90107"></a>

## postponed from previous meetings


<a id="org7e87e82"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org7188d77"></a>

## earlier topics, follow-up some time:


<a id="orgd0df8f6"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgf67f2c2"></a>

## untopics


<a id="org96ea885"></a>

## announcements


<a id="org92157ca"></a>

### May 8th: next raku study group meeting


<a id="org1a6aeb5"></a>

### June 21-25: tprc: perl/raku conference
