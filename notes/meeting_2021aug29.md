- [meeting notes August 29, 2021](#org931afea)
  - [david christensen](#orge82ddcd)
  - [the round method, currently calls it's argument "scale"](#orgf5e8c98)
    - [the argument to round might be called "nearest"](#org3b80047)
    - [lowest common ancestor with raku classes](#org7854aca)
  - [multiple dispatch](#orgbded868)
    - [standard complaint](#org6344ad1)
    - [using multi-dispatch for "dualmap"](#orgb010082)
    - [dualmap status](#org295322c)
  - [the maybe method (dot question mark operator: ".?")](#orgaacc06d)
    - [Safe call operator](#org0bcac99)
  - [the usual links:](#org9ebf8bf)
    - [meeting notes](#org6e05bcb)
    - [code examples:](#org25e7f68)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#org5f97a74)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#orgcd9a28d)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#orge2880e8)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#org06ac80c)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#orgdc88b7d)
  - [william michaels](#org57b069f)
    - [answers shell questions with raku](#org263928c)
    - [if you approve some of these, you might upvote:](#orgb68def8)
  - [the future:](#org2e7b6c2)
    - [next meeting: September 12th, 2021](#orgd4aaa3a)
    - [Bruce Gray promises an anti-Haskell spiel](#org667fe91)
    - [jeff](#org6d012dd)


<a id="org931afea"></a>

# meeting notes August 29, 2021


<a id="orge82ddcd"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver


<a id="orgf5e8c98"></a>

## the round method, currently calls it's argument "scale"


<a id="org3b80047"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="org7854aca"></a>

### lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="orgbded868"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org6344ad1"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="orgb010082"></a>

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


<a id="org295322c"></a>

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
    
    3.  still may need more thought for Raku
    
        1.  maybe: any number of code blocks associated with arbitrary types
        
            1.  do **this** with a leaf node that looks like **that**
        
        2.  consider the case of set operations


<a id="orgaacc06d"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);

## perhaps an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="org0bcac99"></a>

### Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?

3.  avoids need to check if .can

4.  (from a jonathan worthington code example)

5.  bruce gray argues it's to short-circuit long chains


<a id="org9ebf8bf"></a>

## the usual links:


<a id="org6e05bcb"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org25e7f68"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="org5f97a74"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="orgcd9a28d"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="orge2880e8"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="org06ac80c"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="orgdc88b7d"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="org57b069f"></a>

## william michaels


<a id="org263928c"></a>

### answers shell questions with raku


<a id="orgb68def8"></a>

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


<a id="org2e7b6c2"></a>

## the future:


<a id="orgd4aaa3a"></a>

### next meeting: September 12th, 2021


<a id="org667fe91"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="org6d012dd"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
