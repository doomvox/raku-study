- [meeting notes September 11, 2022](#orgdacef7e)
  - [the raku study group](#org0e56b8e)
  - [current topics](#orgf31d647)
    - [stale perl code and the programmers who can't let go](#orgda8c815)
    - [Raku conference vids, e.g. jonathan worthington](#orgf17ca1f)
    - [Where's -0?  Is it needed?](#orge5c7c6c)
  - [additional topics, for someday](#orgdeccdc2)
    - [raku for data science](#org69bfec9)
    - [william michels, corrupt json handling](#orgb8ac7a4)
  - [earlier topics](#org68bc450)
    - [Grammar.nqp](#org2f11c6a)
  - [announcements](#orgf875b9f)
    - [September 24th: the next raku study group meeting](#orgf913396)
    - [Some of my Bali vacation pics:](#org04c5be9)


<a id="orgdacef7e"></a>

# meeting notes September 11, 2022


<a id="org0e56b8e"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="orgf31d647"></a>

## current topics


<a id="orgda8c815"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="orgf17ca1f"></a>

### Raku conference vids, e.g. jonathan worthington

1.  still watching this one


<a id="orge5c7c6c"></a>

### Where's -0?  Is it needed?

1.  bruce gray solution

    1.  find . -print0 | raku -ne 'BEGIN $\*IN.nl-in = "\\0"; .say;'


<a id="orgdeccdc2"></a>

## additional topics, for someday


<a id="org69bfec9"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="orgb8ac7a4"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org68bc450"></a>

## earlier topics


<a id="org2f11c6a"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="orgf875b9f"></a>

## announcements


<a id="orgf913396"></a>

### September 24th: the next raku study group meeting


<a id="org04c5be9"></a>

### Some of my Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali2022>

2.  (still a little rough)
