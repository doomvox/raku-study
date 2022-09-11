- [meeting notes September 11, 2022](#orge56bc20)
  - [the raku study group](#org99159bf)
  - [current topics](#orgab6b128)
    - [stale perl code and the programmers who can't let go](#org089efbc)
    - [Raku conference vids, e.g. jonathan worthington](#orgd122467)
    - [Where's -0?  Is it needed?](#orgedb1718)
    - [IntStr vs my Numesque subset](#org15e9ff0)
  - [additional topics, for someday](#orga3ed6d9)
    - [raku for data science](#org78ce07e)
    - [william michels, corrupt json handling](#org4a96262)
  - [earlier topics](#org8b133e8)
    - [Grammar.nqp](#org71b670c)
  - [announcements](#orgbca05f8)
    - [September 24th: the next raku study group meeting](#orga3fdd28)
    - [Some of my Bali vacation pics:](#org969155d)


<a id="orge56bc20"></a>

# meeting notes September 11, 2022


<a id="org99159bf"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="orgab6b128"></a>

## current topics


<a id="org089efbc"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="orgd122467"></a>

### Raku conference vids, e.g. jonathan worthington

1.  still watching this one


<a id="orgedb1718"></a>

### Where's -0?  Is it needed?

1.  bruce gray solution

    1.  find . -print0 | raku -ne 'BEGIN $\*IN.nl-in = "\\0"; .say;'


<a id="org15e9ff0"></a>

### IntStr vs my Numesque subset

1.  subset Numesque of Any where { defined .Numeric };

2.  things typed as IntStr won't accept Int or Str

3.  IntStr(Cool) does weird things (LTA errors)


<a id="orga3ed6d9"></a>

## additional topics, for someday


<a id="org78ce07e"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="org4a96262"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org8b133e8"></a>

## earlier topics


<a id="org71b670c"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="orgbca05f8"></a>

## announcements


<a id="orga3fdd28"></a>

### September 24th: the next raku study group meeting


<a id="org969155d"></a>

### Some of my Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali2022>

2.  (still a little rough)
