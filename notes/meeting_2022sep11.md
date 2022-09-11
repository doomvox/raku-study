- [meeting notes September 11, 2022](#orga1d9e8c)
  - [the raku study group](#orgc8810c9)
  - [current topics](#orgd76d334)
    - [stale perl code and the programmers who can't let go](#orgab41a9a)
    - [Raku conference vids, e.g. jonathan worthington](#org6b3b2cb)
    - [Where's -0?  Is it needed?](#org3311030)
    - [IntStr vs my Numesque subset](#org8051ae4)
    - [Checking lists of numbers (in arrays) for equality](#org887fa65)
  - [additional topics, for someday](#org438afb5)
    - [raku for data science](#org2b6cf31)
    - [william michels, corrupt json handling](#orgaa87dfe)
  - [earlier topics](#org03a99e5)
    - [Grammar.nqp](#org02c912c)
  - [announcements](#org87e3042)
    - [September 24th: the next raku study group meeting](#org46c8131)
    - [Some of my Bali vacation pics:](#orgb1e0ec2)


<a id="orga1d9e8c"></a>

# meeting notes September 11, 2022


<a id="orgc8810c9"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="orgd76d334"></a>

## current topics


<a id="orgab41a9a"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="org6b3b2cb"></a>

### Raku conference vids, e.g. jonathan worthington

1.  still watching this one


<a id="org3311030"></a>

### Where's -0?  Is it needed?

1.  bruce gray solution

    1.  find . -print0 | raku -ne 'BEGIN $\*IN.nl-in = "\\0"; .say;'
    
    2.  many unix utils have some form of -0
    
        1.  find TreeAlpha -type f -print0 | xargs -0 egrep godzilla


<a id="org8051ae4"></a>

### IntStr vs my Numesque subset

1.  subset Numesque of Any where { defined .Numeric };

2.  things typed as IntStr won't accept Int or Str

3.  IntStr(Cool) does weird things (LTA errors)

4.  I defend the use: "strong" typing for perl-damaged brains


<a id="org887fa65"></a>

### Checking lists of numbers (in arrays) for equality

1.  

    die unless ( @a »==« @b ).all.so

2.  

    die "Failed" unless @pcp.head(20) eqv @exp».Str.Seq;


<a id="org438afb5"></a>

## additional topics, for someday


<a id="org2b6cf31"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="orgaa87dfe"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org03a99e5"></a>

## earlier topics


<a id="org02c912c"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="org87e3042"></a>

## announcements


<a id="org46c8131"></a>

### September 24th: the next raku study group meeting


<a id="orgb1e0ec2"></a>

### Some of my Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali2022>

2.  (still a little rough)
