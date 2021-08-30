- [meeting notes August 29, 2021](#orgaec1940)
  - [david christensen](#org4a0eaa2)
  - [the method .round, currently calls it's argument "scale"](#orgf98d660)
    - [that might be called "nearest"](#orgb8214c2)
  - [lowest common ancestor with raku classes](#org8c86a1d)
  - [multiple dispatch](#orgd1fba4a)
    - [my standard complaint](#org0ee9585)
    - [using multi-dispatch for "dualmap"](#org5df0122)
    - [dualmap status](#orgb03ecd2)
  - [the maybe method (dot question mark operator: ".?")](#orgabd8746)
    - [documentation: Safe call operator](#org442a4c3)
    - [avoids need to check if .can](#orgf4a420f)
    - [(from a jonathan worthington code example)](#orgcbd4515)
    - [bruce gray argues it's to short-circuit long chains](#org9e0870d)
  - [the usual links:](#org84d0503)
    - [meeting notes](#org89a0983)
    - [code examples:](#orgc64789b)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#org331b6c5)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#org6967712)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#org0c8d685)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#org7880c20)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#orgea288b3)
  - [william michaels](#org9715b5a)
    - [answers shell questions with raku](#orgb8c970a)
    - [if you approve some of these, you might upvote:](#orgda86b0e)
  - [the future:](#orga5f7585)
    - [next meeting: September 12th, 2021](#org07ff513)
    - [Bruce Gray promises an anti-Haskell spiel](#orgff1b0c4)
    - [jeff](#orgcd2d620)


<a id="orgaec1940"></a>

# meeting notes August 29, 2021


<a id="org4a0eaa2"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="orgf98d660"></a>

## the method .round, currently calls it's argument "scale"


<a id="orgb8214c2"></a>

### that might be called "nearest"

"round off to the nearest"


<a id="org8c86a1d"></a>

## lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor> /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021aug29/lca<sub>so</sub><sub>1.raku</sub> /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021aug29/lca<sub>so</sub><sub>2.raku</sub>


<a id="orgd1fba4a"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org0ee9585"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org5df0122"></a>

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


<a id="orgb03ecd2"></a>

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


<a id="orgabd8746"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);

## an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="org442a4c3"></a>

### documentation: Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="orgf4a420f"></a>

### avoids need to check if .can


<a id="orgcbd4515"></a>

### (from a jonathan worthington code example)


<a id="org9e0870d"></a>

### bruce gray argues it's to short-circuit long chains


<a id="org84d0503"></a>

## the usual links:


<a id="org89a0983"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="orgc64789b"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="org331b6c5"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="org6967712"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="org0c8d685"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="org7880c20"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="orgea288b3"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="org9715b5a"></a>

## william michaels


<a id="orgb8c970a"></a>

### answers shell questions with raku


<a id="orgda86b0e"></a>

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


<a id="orga5f7585"></a>

## the future:


<a id="org07ff513"></a>

### next meeting: September 12th, 2021


<a id="orgff1b0c4"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="orgcd2d620"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
