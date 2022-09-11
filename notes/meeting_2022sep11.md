- [meeting notes September 11, 2022](#org663de66)
  - [the raku study group](#orgf096cc5)
  - [current topics](#org4676d2b)
    - [stale perl code and the programmers who can't let go](#orgfe9b552)
    - [Raku conference vids, e.g. jonathan worthington](#org178e4f5)
    - [Where's -0?  Is it needed?](#org1729d4f)
  - [additional topics, for someday](#org7ffc9da)
    - [raku for data science](#orgdf1548c)
    - [william michels, corrupt json handling](#org052c293)
  - [earlier topics](#orgc77394f)
    - [Grammar.nqp](#org501761f)
  - [announcements](#org55048a3)
    - [September 24th: the next raku study group meeting](#org1d04d94)
    - [Pushed out some of the Bali vacation pics:](#orgc8a935e)


<a id="org663de66"></a>

# meeting notes September 11, 2022


<a id="orgf096cc5"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="org4676d2b"></a>

## current topics


<a id="orgfe9b552"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="org178e4f5"></a>

### Raku conference vids, e.g. jonathan worthington

1.  still watching this one


<a id="org1729d4f"></a>

### Where's -0?  Is it needed?

1.  bruce gray solution

    1.  find . -print0 | raku -ne 'BEGIN $\*IN.nl-in = "\\0"; .say;'


<a id="org7ffc9da"></a>

## additional topics, for someday


<a id="orgdf1548c"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="org052c293"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="orgc77394f"></a>

## earlier topics


<a id="org501761f"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="org55048a3"></a>

## announcements


<a id="org1d04d94"></a>

### September 24th: the next raku study group meeting


<a id="orgc8a935e"></a>

### Pushed out some of the Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali_2022>

2.  (still a little rough)
