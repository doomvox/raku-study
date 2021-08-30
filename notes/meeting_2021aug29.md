- [meeting notes August 29, 2021](#org8cca04d)
  - [david christensen](#org18d88c4)
  - [the method .round, currently calls it's argument "scale"](#org8666e84)
    - [that might be called "nearest"](#org7438570)
  - [lowest common ancestor with raku classes](#org1cf9cba)
    - [example code](#org5c8b799)
  - [multiple dispatch](#org8f2f7bf)
    - [my standard complaint](#orgc5ca44f)
    - [using multi-dispatch for "dualmap"](#org40f8d35)
    - [dualmap status](#orge75ae72)
  - [the maybe method (dot question mark operator: ".?")](#orge7e4f9f)
    - [documentation: Safe call operator](#org88b10f3)
    - [avoids need to check if .can](#org0c36dd3)
    - [(from a jonathan worthington code example)](#org7a1244f)
    - [bruce gray argues it's to short-circuit long chains](#org22988ee)
  - [the usual links:](#org240e85d)
    - [meeting notes](#orga2d6461)
    - [code examples:](#org209b5c4)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#org60d9497)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#org92b5f44)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#orgd3740b1)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#orga4f55d3)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#org32936ec)
  - [william michaels](#org22d6bca)
    - [answers shell questions with raku](#org6a0e33c)
    - [if you approve some of these, you might upvote:](#orgbda8fc0)
  - [the future:](#org70f52f8)
    - [next meeting: September 12th, 2021](#org6446b8d)
    - [Bruce Gray promises an anti-Haskell spiel](#orge9867ff)
    - [jeff](#org0d988cc)


<a id="org8cca04d"></a>

# meeting notes August 29, 2021


<a id="org18d88c4"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="org8666e84"></a>

## the method .round, currently calls it's argument "scale"


<a id="org7438570"></a>

### that might be called "nearest"

"round off to the nearest"


<a id="org1cf9cba"></a>

## lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="org5c8b799"></a>

### example code

<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_1.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_2.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_3.raku>


<a id="org8f2f7bf"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="orgc5ca44f"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org40f8d35"></a>

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


<a id="orge75ae72"></a>

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


<a id="orge7e4f9f"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);

## an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="org88b10f3"></a>

### documentation: Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="org0c36dd3"></a>

### avoids need to check if .can


<a id="org7a1244f"></a>

### (from a jonathan worthington code example)


<a id="org22988ee"></a>

### bruce gray argues it's to short-circuit long chains


<a id="org240e85d"></a>

## the usual links:


<a id="orga2d6461"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org209b5c4"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="org60d9497"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="org92b5f44"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="orgd3740b1"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="orga4f55d3"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="org32936ec"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="org22d6bca"></a>

## william michaels


<a id="org6a0e33c"></a>

### answers shell questions with raku


<a id="orgbda8fc0"></a>

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


<a id="org70f52f8"></a>

## the future:


<a id="org6446b8d"></a>

### next meeting: September 12th, 2021


<a id="orge9867ff"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="org0d988cc"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
