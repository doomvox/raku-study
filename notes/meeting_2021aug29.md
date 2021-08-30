- [meeting notes August 29, 2021](#org4b26736)
  - [david christensen](#org4861fd4)
  - [the method .round, currently calls it's argument "scale"](#org5f9432a)
    - [that might be called "nearest"](#orgb41f7a7)
  - [lowest common ancestor with raku classes](#orgd86a212)
    - [example code](#orgabd74a3)
  - [multiple dispatch](#org419aaec)
    - [my standard complaint](#org73f9cc0)
    - [using multi-dispatch for "dualmap"](#org8397c8d)
    - [dualmap status](#org2f9da1a)
  - [the maybe method (dot question mark operator: ".?")](#orge76857e)
    - [documentation: Safe call operator](#org1ac5826)
    - [avoids need to check if .can](#org0307bab)
    - [(from a jonathan worthington code example)](#orgf8f467b)
    - [bruce gray argues it's to short-circuit long chains](#org0939b77)
  - [the usual links:](#orgda254d2)
    - [meeting notes](#org6833b6c)
    - [code examples:](#org0f9e42c)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#org07d7d85)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#org9287cd4)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#org1049798)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#org36b2bfa)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#org87c67b7)
  - [william michaels](#org711e256)
    - [answers shell questions with raku](#orgd75da53)
    - [if you approve some of these, you might upvote:](#orgd18d5d0)
  - [the future:](#org846211a)
    - [next meeting: September 12th, 2021](#orge5e05bf)
    - [Bruce Gray promises an anti-Haskell spiel](#org9327924)
    - [jeff](#orgf5f0b00)


<a id="org4b26736"></a>

# meeting notes August 29, 2021


<a id="org4861fd4"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="org5f9432a"></a>

## the method .round, currently calls it's argument "scale"


<a id="orgb41f7a7"></a>

### that might be called "nearest"

"round off to the nearest"


<a id="orgd86a212"></a>

## lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="orgabd74a3"></a>

### example code

<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_1.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_2.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_3.raku>


<a id="org419aaec"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org73f9cc0"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org8397c8d"></a>

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


<a id="org2f9da1a"></a>

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


<a id="orge76857e"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
#
# an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="org1ac5826"></a>

### documentation: Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="org0307bab"></a>

### avoids need to check if .can


<a id="orgf8f467b"></a>

### (from a jonathan worthington code example)


<a id="org0939b77"></a>

### bruce gray argues it's to short-circuit long chains


<a id="orgda254d2"></a>

## the usual links:


<a id="org6833b6c"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org0f9e42c"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="org07d7d85"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="org9287cd4"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="org1049798"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="org36b2bfa"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="org87c67b7"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="org711e256"></a>

## william michaels


<a id="orgd75da53"></a>

### answers shell questions with raku


<a id="orgd18d5d0"></a>

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


<a id="org846211a"></a>

## the future:


<a id="orge5e05bf"></a>

### next meeting: September 12th, 2021


<a id="org9327924"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="orgf5f0b00"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
