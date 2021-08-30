- [meeting notes August 29, 2021](#org2a183ab)
  - [david christensen](#org660fb53)
  - [the method .round, currently calls it's argument "scale"](#orgc468b99)
    - [that might be called "nearest"](#orgfd49507)
  - [lowest common ancestor with raku classes](#org26b28b1)
  - [multiple dispatch](#org71fd4ae)
    - [my standard complaint](#org2f03d22)
    - [using multi-dispatch for "dualmap"](#org39d57c3)
    - [dualmap status](#org77b69c9)
  - [the maybe method (dot question mark operator: ".?")](#orgf1df51a)
    - [documentation: Safe call operator](#org9b3a7dd)
    - [avoids need to check if .can](#org8a48711)
    - [(from a jonathan worthington code example)](#orgff3631c)
    - [bruce gray argues it's to short-circuit long chains](#orge853848)
  - [the usual links:](#orga9c310e)
    - [meeting notes](#orgc757f2a)
    - [code examples:](#orgdc2864d)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#orgdadec50)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#org31b3cd8)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#org9236243)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#orge31a5c2)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#orgc5944b0)
  - [william michaels](#orgb7416ee)
    - [answers shell questions with raku](#org20e516d)
    - [if you approve some of these, you might upvote:](#orgfdcc497)
  - [the future:](#orgda017aa)
    - [next meeting: September 12th, 2021](#orgb81a5d6)
    - [Bruce Gray promises an anti-Haskell spiel](#org77e9027)
    - [jeff](#org8bf8793)


<a id="org2a183ab"></a>

# meeting notes August 29, 2021


<a id="org660fb53"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="orgc468b99"></a>

## the method .round, currently calls it's argument "scale"


<a id="orgfd49507"></a>

### that might be called "nearest"

"round off to the nearest"


<a id="org26b28b1"></a>

## lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor> /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021aug29/lca<sub>so</sub><sub>1.raku</sub> /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021aug29/lca<sub>so</sub><sub>2.raku</sub> /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021aug29/lca<sub>so</sub><sub>3.raku</sub>


<a id="org71fd4ae"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org2f03d22"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org39d57c3"></a>

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


<a id="org77b69c9"></a>

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


<a id="orgf1df51a"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);

## an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="org9b3a7dd"></a>

### documentation: Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="org8a48711"></a>

### avoids need to check if .can


<a id="orgff3631c"></a>

### (from a jonathan worthington code example)


<a id="orge853848"></a>

### bruce gray argues it's to short-circuit long chains


<a id="orga9c310e"></a>

## the usual links:


<a id="orgc757f2a"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="orgdc2864d"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="orgdadec50"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="org31b3cd8"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="org9236243"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="orge31a5c2"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="orgc5944b0"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="orgb7416ee"></a>

## william michaels


<a id="org20e516d"></a>

### answers shell questions with raku


<a id="orgfdcc497"></a>

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


<a id="orgda017aa"></a>

## the future:


<a id="orgb81a5d6"></a>

### next meeting: September 12th, 2021


<a id="org77e9027"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="org8bf8793"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
