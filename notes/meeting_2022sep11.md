- [meeting notes September 11, 2022](#orgfe86fe5)
  - [the raku study group](#org45b70e8)
  - [current topics](#org464fbf0)
    - [stale perl code and the programmers who can't let go](#org3847b36)
    - [Raku conference vids, e.g. jonathan worthington](#org5f40886)
    - [Where's -0?  Is it needed?](#orgfae3547)
    - [IntStr vs my Numesque subset](#org91253a8)
  - [additional topics, for someday](#org5908ef7)
    - [raku for data science](#orge54684a)
    - [william michels, corrupt json handling](#org7f0d853)
  - [earlier topics](#org4859ea4)
    - [Grammar.nqp](#org070c896)
  - [announcements](#orgbf70fba)
    - [September 24th: the next raku study group meeting](#orgbe40a9f)
    - [Some of my Bali vacation pics:](#org56d1e89)


<a id="orgfe86fe5"></a>

# meeting notes September 11, 2022


<a id="org45b70e8"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="org464fbf0"></a>

## current topics


<a id="org3847b36"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="org5f40886"></a>

### Raku conference vids, e.g. jonathan worthington

1.  still watching this one


<a id="orgfae3547"></a>

### Where's -0?  Is it needed?

1.  bruce gray solution

    1.  find . -print0 | raku -ne 'BEGIN $\*IN.nl-in = "\\0"; .say;'
    
    2.  many unix utils have some form of -0
    
        1.  find TreeAlpha -type f -print0 | xargs -0 egrep godzilla


<a id="org91253a8"></a>

### IntStr vs my Numesque subset

1.  subset Numesque of Any where { defined .Numeric };

2.  things typed as IntStr won't accept Int or Str

3.  IntStr(Cool) does weird things (LTA errors)

4.  I defend the use: "strong" typing for perl-damaged brains


<a id="org5908ef7"></a>

## additional topics, for someday


<a id="orge54684a"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="org7f0d853"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org4859ea4"></a>

## earlier topics


<a id="org070c896"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="orgbf70fba"></a>

## announcements


<a id="orgbe40a9f"></a>

### September 24th: the next raku study group meeting


<a id="org56d1e89"></a>

### Some of my Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali2022>

2.  (still a little rough)
