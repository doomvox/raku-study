- [meeting notes September 11, 2022](#org7c159a7)
  - [the raku study group](#org8b7c562)
  - [current topics](#orgf0cad1e)
    - [stale perl code and the programmers who can't let go](#org6e28285)
    - [Raku conference vids, e.g. jonathan worthington](#orgde84981)
    - [Where's -0?  Is it needed?](#org89e8cc5)
  - [additional topics, for someday](#orgb0592aa)
    - [raku for data science](#orgc123a98)
    - [william michels, corrupt json handling](#org2f4fab8)
  - [earlier topics](#orgf7dec69)
    - [Grammar.nqp](#org9710902)
  - [announcements](#org2993f86)
    - [September 24th: the next raku study group meeting](#org9d605e2)
    - [Pushed out some of the Bali vacation pics:](#org08ebf97)


<a id="org7c159a7"></a>

# meeting notes September 11, 2022


<a id="org8b7c562"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="orgf0cad1e"></a>

## current topics


<a id="org6e28285"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="orgde84981"></a>

### Raku conference vids, e.g. jonathan worthington

1.  still watching this one


<a id="org89e8cc5"></a>

### Where's -0?  Is it needed?

1.  bruce gray solution

    1.  find . -print0 | raku -ne 'BEGIN $\*IN.nl-in = "\\0"; .say;'


<a id="orgb0592aa"></a>

## additional topics, for someday


<a id="orgc123a98"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="org2f4fab8"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="orgf7dec69"></a>

## earlier topics


<a id="org9710902"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="org2993f86"></a>

## announcements


<a id="org9d605e2"></a>

### September 24th: the next raku study group meeting


<a id="org08ebf97"></a>

### Pushed out some of the Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali_2022>

2.  (still a little rough)
