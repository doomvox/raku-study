- [meeting notes August 29, 2021](#org834c6f9)
  - [david christensen](#orgeecf7e2)
  - [the method .round, currently calls it's argument "scale"](#org2c852ab)
    - [that might be called "nearest"](#org12ddf86)
  - [lowest common ancestor with raku classes](#orgf018818)
  - [multiple dispatch](#orgf60dd75)
    - [my standard complaint](#orge960583)
    - [using multi-dispatch for "dualmap"](#org09ab8c5)
    - [dualmap status](#org767e36b)
  - [the maybe method (dot question mark operator: ".?")](#orgd735b0a)
    - [documentation: Safe call operator](#orgfe0e5ae)
    - [avoids need to check if .can](#org4764b92)
    - [(from a jonathan worthington code example)](#org4f963d4)
    - [bruce gray argues it's to short-circuit long chains](#org668a407)
  - [the usual links:](#org349b112)
    - [meeting notes](#org4aeab82)
    - [code examples:](#orge95e82b)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#orga9a01d9)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#org8bae8b8)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#orgce7a877)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#org3b27fdb)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#orgc0f6eae)
  - [william michaels](#org70eaf40)
    - [answers shell questions with raku](#org46a51e5)
    - [if you approve some of these, you might upvote:](#orgae6c580)
  - [the future:](#orga7cbd44)
    - [next meeting: September 12th, 2021](#orgd9100bd)
    - [Bruce Gray promises an anti-Haskell spiel](#org087a833)
    - [jeff](#org68df57e)


<a id="org834c6f9"></a>

# meeting notes August 29, 2021


<a id="orgeecf7e2"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="org2c852ab"></a>

## the method .round, currently calls it's argument "scale"


<a id="org12ddf86"></a>

### that might be called "nearest"

"round off to the nearest"


<a id="orgf018818"></a>

## lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_1.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_2.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_3.raku>


<a id="orgf60dd75"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="orge960583"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org09ab8c5"></a>

### using multi-dispatch for "dualmap"

1.  kind of cool

    1.  implementing this feature in raku took little code:
    
        ```perl6
        my $dmh = Data::Dualmap::Recurse::Numerics.new( 
                  string_handler => 
                     { do if ( $^a eq $^b ) { "Both: $a" } else { "1: $a  2: $b" } } );
        my $result = $dmh.dualmap( '-', $gross, $costs );
        ```

2.  a little tricky to think about

    1.  it isn't **exactly** like a case statement
    
        1.  but the "is default" feature helpsg


<a id="org767e36b"></a>

### dualmap status

1.  did a rewrite

    1.  dualmap is now more like deepmap
    
        1.  needs a code block as argument
        
        2.  acts on any value of any type
    
    2.  dualmap-numerics
    
        1.  clone of my perl5 project Data::Math
        
            1.  presumes you're working on numeric leaf nodes
            
            2.  allows strings for operations ('+', '\*', '-', '/')
            
            3.  default string handler does what **I** mean,
            
                1.  via OOP interface can use code block instead
    
    3.  still may need more thought
    
        1.  maybe: any number of code blocks associated with arbitrary types
        
            1.  do **this** with a leaf node that looks like **that**
        
        2.  consider the case of set operations


<a id="orgd735b0a"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);

## an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="orgfe0e5ae"></a>

### documentation: Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="org4764b92"></a>

### avoids need to check if .can


<a id="org4f963d4"></a>

### (from a jonathan worthington code example)


<a id="org668a407"></a>

### bruce gray argues it's to short-circuit long chains


<a id="org349b112"></a>

## the usual links:


<a id="org4aeab82"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="orge95e82b"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="orga9a01d9"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="org8bae8b8"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="orgce7a877"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="org3b27fdb"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="orgc0f6eae"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="org70eaf40"></a>

## william michaels


<a id="org46a51e5"></a>

### answers shell questions with raku


<a id="orgae6c580"></a>

### if you approve some of these, you might upvote:

1.  <https://unix.stackexchange.com/a/654444>

2.  <https://unix.stackexchange.com/a/655217>

3.  <https://unix.stackexchange.com/a/655944>

4.  <https://unix.stackexchange.com/a/658564>

5.  <https://unix.stackexchange.com/a/658618>

6.  <https://unix.stackexchange.com/a/658666>

7.  <https://unix.stackexchange.com/a/658703>

8.  <https://unix.stackexchange.com/a/658716>

9.  <https://unix.stackexchange.com/a/664929>


<a id="orga7cbd44"></a>

## the future:


<a id="orgd9100bd"></a>

### next meeting: September 12th, 2021


<a id="org087a833"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="org68df57e"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
