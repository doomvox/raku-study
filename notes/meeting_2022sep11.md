- [meeting notes September 11, 2022](#org56b1342)
  - [the raku study group](#orgeee706c)
  - [current topics](#orgfb8f972)
    - [stale perl code and the programmers who can't let go](#org212e54f)
    - [many unix utils have some form of -0](#org4f86143)
    - [IntStr vs my Numesque subset](#org4edc284)
    - [Checking lists of numbers (in arrays) for equality](#orgcb4fdaa)
    - [repeated](#org9b1ca63)
    - ["eurorack": william michels interested in synthesized music](#orgca17de0)
  - [additional topics, for someday](#org1575473)
    - [raku for data science](#org0bb36fc)
    - [william michels, corrupt json handling](#orge8f8671)
    - [Raku conference vids, e.g. jonathan worthington](#orgbc109da)
  - [earlier topics](#orgd412a1d)
    - [Grammar.nqp](#orgf3da97b)
  - [announcements](#orgb6cf697)
    - [September 24th: the next raku study group meeting](#org8ff6b3d)
    - [Some of my Bali vacation pics:](#orgb2b2b85)


<a id="org56b1342"></a>

# meeting notes September 11, 2022


<a id="orgeee706c"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="orgfb8f972"></a>

## current topics


<a id="org212e54f"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="org4f86143"></a>

### many unix utils have some form of -0

1.  

    ```sh
    find TreeAlpha -type f -print0 | xargs -0 egrep godzilla
    ```

2.  Does Raku/rakudo have a -0? Is it needed? Bruce gray solution:

    1.  
    
        ```sh
        find . -print0 | raku -ne 'BEGIN $*IN.nl-in = "\0"; .say;'
        ```


<a id="org4edc284"></a>

### IntStr vs my Numesque subset

1.  subset Numesque of Any where { defined .Numeric };

2.  things typed as IntStr won't accept Int or Str

3.  IntStr(Cool) does weird things (LTA errors)

4.  I defend the use: "strong" typing for perl-damaged brains

5.  related subject:

    1.  <https://www.youtube.com/watch?v=1-KV8oiOSZA&t=2s>
    
    2.  Playing nice with others using the new COERCE protocol - Matthew Stuckwisch
    
        1.  <https://vrurg.github.io/2020/11/16/Report-On-New-Coercions>
        
        2.  <https://vrurg.github.io/2020/11/30/Report-On-New-Coercions-Part-2>
        
        3.  <https://vrurg.github.io/2020/12/26/Coercion-Return-Values>


<a id="orgcb4fdaa"></a>

### Checking lists of numbers (in arrays) for equality

1.  

    ```raku
    die unless ( @a »==« @b ).all.so
    ```

2.  

    ```raku
    die "Failed" unless @pcp.head(20).join(',') eq @exp.join(',');
    ```


<a id="org9b1ca63"></a>

### repeated

1.  <https://docs.raku.org/language/independent-routines#routine_repeated>

2.  <https://docs.raku.org/routine/repeated>

    1.  bruce gray usage:
    
        1.  ![img](https://github.com/doomvox/raku-study/notes/bg-01-use_of_repeated.png)
        
        2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/bg-01-use<sub>of</sub><sub>repeated.png</sub>
        
        3.  
        
            ```raku
            sub first_unique_character_index ( Str $_ --> UInt ) { 
              my @c = .lc.comb;
              my %h = @c.repeated.Set;
              return @c.first: :k, * !~~ %h;
            }
            ```


<a id="orgca17de0"></a>

### "eurorack": william michels interested in synthesized music

1.  <https://www.modulargrid.net/e/modules/evaluationlists>

2.  q: doing popularity stats and such

3.  

    ```sh
    perl6 -e 'my @a = lines.antipairs; my @b = @a.sort(*.keys.words[0..*-3]).rotor(2 => -1); my @c; do for @b -> $b { @c.push($b) if $b.
    [0].keys.words[0..*-4] eq $b.[1].keys.words[0..*-4] }; say ($_ => (.[0].value - 100) + .[1].value).antipairs for @c.sort( { (.[0].value
    - 100) + .[1].value});'
    ```

4.  TODO talk about this more next time?  Bruce has some ideas.


<a id="org1575473"></a>

## additional topics, for someday


<a id="org0bb36fc"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="orge8f8671"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="orgbc109da"></a>

### Raku conference vids, e.g. jonathan worthington

1.  database migrations in raku


<a id="orgd412a1d"></a>

## earlier topics


<a id="orgf3da97b"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="orgb6cf697"></a>

## announcements


<a id="org8ff6b3d"></a>

### September 24th: the next raku study group meeting


<a id="orgb2b2b85"></a>

### Some of my Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali2022>

2.  (still a little rough)
