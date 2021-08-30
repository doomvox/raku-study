- [meeting notes August 29, 2021](#org9e6d627)
  - [david christensen](#orgf1a82fc)
  - [the method .round, currently calls it's argument "scale"](#org2f68d49)
    - [that might be called "nearest"](#org69da84d)
  - [lowest common ancestor with raku classes](#org209e013)
  - [multiple dispatch](#orgbe2edff)
    - [my standard complaint](#org39ddc81)
    - [using multi-dispatch for "dualmap"](#org129b0ce)
    - [dualmap status](#orgfb2ef61)
  - [the maybe method (dot question mark operator: ".?")](#org108a5d6)
    - [documentation: Safe call operator](#org92a976b)
    - [avoids need to check if .can](#org8879215)
    - [(from a jonathan worthington code example)](#org6aca501)
    - [bruce gray argues it's to short-circuit long chains](#org674cac8)
  - [the usual links:](#org269f97c)
    - [meeting notes](#org86897c9)
    - [code examples:](#orga55efe0)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#org7980380)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#org8349c63)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#org9343f3b)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#org147c802)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#org476e9be)
  - [william michaels](#orgc02921c)
    - [answers shell questions with raku](#orgb37022c)
    - [if you approve some of these, you might upvote:](#org3ff6af0)
  - [the future:](#org1b66c68)
    - [next meeting: September 12th, 2021](#orgd6e274f)
    - [Bruce Gray promises an anti-Haskell spiel](#orgfdd7103)
    - [jeff](#org4d10561)


<a id="org9e6d627"></a>

# meeting notes August 29, 2021


<a id="orgf1a82fc"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="org2f68d49"></a>

## the method .round, currently calls it's argument "scale"


<a id="org69da84d"></a>

### that might be called "nearest"

"round off to the nearest"


<a id="org209e013"></a>

## lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_1.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_2.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_3.raku>


<a id="orgbe2edff"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org39ddc81"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org129b0ce"></a>

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


<a id="orgfb2ef61"></a>

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


<a id="org108a5d6"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);

## an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="org92a976b"></a>

### documentation: Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="org8879215"></a>

### avoids need to check if .can


<a id="org6aca501"></a>

### (from a jonathan worthington code example)


<a id="org674cac8"></a>

### bruce gray argues it's to short-circuit long chains


<a id="org269f97c"></a>

## the usual links:


<a id="org86897c9"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="orga55efe0"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="org7980380"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="org8349c63"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="org9343f3b"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="org147c802"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="org476e9be"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="orgc02921c"></a>

## william michaels


<a id="orgb37022c"></a>

### answers shell questions with raku


<a id="org3ff6af0"></a>

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


<a id="org1b66c68"></a>

## the future:


<a id="orgd6e274f"></a>

### next meeting: September 12th, 2021


<a id="orgfdd7103"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="org4d10561"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
