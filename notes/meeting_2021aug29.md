- [meeting notes August 29, 2021](#orgb15870e)
  - [david christensen](#org0218dd2)
  - [the method .round, currently calls it's argument "scale"](#orgee12f04)
    - [that might be called "nearest"](#org9827dfd)
  - [lowest common ancestor with raku classes](#org00e664e)
    - [example code](#orga19b30b)
  - [multiple dispatch and types](#org15a2755)
    - [my standard complaint](#orge270ac3)
    - [using multi-dispatch for "dualmap"](#org67f7d23)
    - [dualmap status](#orgf9dff33)
  - [the maybe method (dot question mark operator: ".?")](#orgafb1d9f)
    - [documentation: Safe call operator](#org1344096)
    - [avoids need to check if .can](#org5ddabe6)
    - [(from a jonathan worthington code example)](#org60be351)
    - [bruce gray argues it's to short-circuit long chains](#org6db924b)
  - [the usual links:](#orgcd5f8ec)
    - [meeting notes](#org5e4a81f)
    - [code examples:](#org679e5db)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#org7f58245)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#org60619ad)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#orgac03ff8)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#org9a9839d)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#orgf578087)
  - [some stackoverflow questions](#orgb30ec28)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>](#org046793b)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>](#org410b7ad)
  - [william michaels](#org80b1293)
    - [answers shell questions with raku](#org4034891)
    - [if you approve some of these, you might upvote:](#org1f4e7d2)
  - [the future:](#orgdc911ae)
    - [next meeting: September 12th, 2021](#org2984746)
    - [Bruce Gray promises an anti-Haskell spiel](#org600a73c)
    - [jeff](#org1f2603f)


<a id="orgb15870e"></a>

# meeting notes August 29, 2021


<a id="org0218dd2"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="orgee12f04"></a>

## the method .round, currently calls it's argument "scale"


<a id="org9827dfd"></a>

### that might be called "nearest"

"round off to the nearest"


<a id="org00e664e"></a>

## lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="orga19b30b"></a>

### example code

<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_1.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_2.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_3.raku>


<a id="org15a2755"></a>

## multiple dispatch and types

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="orge270ac3"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org67f7d23"></a>

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
    
        1.  but the "is default" feature helps


<a id="orgf9dff33"></a>

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


<a id="orgafb1d9f"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
#
# an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="org1344096"></a>

### documentation: Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="org5ddabe6"></a>

### avoids need to check if .can


<a id="org60be351"></a>

### (from a jonathan worthington code example)


<a id="org6db924b"></a>

### bruce gray argues it's to short-circuit long chains


<a id="orgcd5f8ec"></a>

## the usual links:


<a id="org5e4a81f"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org679e5db"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="org7f58245"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="org60619ad"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="orgac03ff8"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="org9a9839d"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="orgf578087"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="orgb30ec28"></a>

## some stackoverflow questions


<a id="org046793b"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>


<a id="org410b7ad"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>


<a id="org80b1293"></a>

## william michaels


<a id="org4034891"></a>

### answers shell questions with raku


<a id="org1f4e7d2"></a>

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


<a id="orgdc911ae"></a>

## the future:


<a id="org2984746"></a>

### next meeting: September 12th, 2021


<a id="org600a73c"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="org1f2603f"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
