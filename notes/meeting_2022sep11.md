- [meeting notes September 11, 2022](#org8e68033)
  - [the raku study group](#orgc9fe5dd)
  - [current topics](#org04316a7)
    - [stale perl code and the programmers who can't let go](#org748d8ce)
    - [Raku conference vids, e.g. jonathan worthington](#org5032931)
    - [Where's -0?  Is it needed?](#org09faea4)
    - [IntStr vs my Numesque subset](#org48849f4)
  - [additional topics, for someday](#orgc4ea963)
    - [raku for data science](#org2e3ee11)
    - [william michels, corrupt json handling](#org7978928)
  - [earlier topics](#orgb1f1d2e)
    - [Grammar.nqp](#org9ada496)
  - [announcements](#org260fee1)
    - [September 24th: the next raku study group meeting](#org40725cd)
    - [Some of my Bali vacation pics:](#org2e438b9)


<a id="org8e68033"></a>

# meeting notes September 11, 2022


<a id="orgc9fe5dd"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="org04316a7"></a>

## current topics


<a id="org748d8ce"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="org5032931"></a>

### Raku conference vids, e.g. jonathan worthington

1.  still watching this one


<a id="org09faea4"></a>

### Where's -0?  Is it needed?

1.  bruce gray solution

    1.  find . -print0 | raku -ne 'BEGIN $\*IN.nl-in = "\\0"; .say;'


<a id="org48849f4"></a>

### IntStr vs my Numesque subset

1.  subset Numesque of Any where { defined .Numeric };


<a id="orgc4ea963"></a>

## additional topics, for someday


<a id="org2e3ee11"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="org7978928"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="orgb1f1d2e"></a>

## earlier topics


<a id="org9ada496"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="org260fee1"></a>

## announcements


<a id="org40725cd"></a>

### September 24th: the next raku study group meeting


<a id="org2e438b9"></a>

### Some of my Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali2022>

2.  (still a little rough)
