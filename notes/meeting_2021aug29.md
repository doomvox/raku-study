- [meeting notes August 29, 2021](#org576f382)
  - [hidden agenda](#orgaadd027)
    - [david christensen](#org6205a0e)
    - [jeff](#org51e95cc)
  - [the round method, currently calls it's argument "scale"](#org1ad8f47)
    - [the argument to round might be called "nearest"](#org1da3111)
    - [lowest common ancestor with raku classes](#org3076ac4)
  - [multiple dispatch](#orgc3ebc72)
    - [standard complaint](#org5733ad3)
    - [using multi-dispatch for "dualmap"](#org428e9a3)
    - [dualmap status](#orgb6f4ee3)
  - [the maybe method (dot question mark operator: ".?")](#orgec36a71)
    - [Safe call operator](#orgc05ddbf)
  - [the usual links:](#org1218cfe)
    - [meeting notes](#org975d76b)
    - [code examples:](#org9da76be)
  - [Bruce Gray:  <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#org0c0d296)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#org9115ef8)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#org3f3f202)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#orgfc8dc9b)
  - [William Michaels](#org6c42ec9)


<a id="org576f382"></a>

# meeting notes August 29, 2021


<a id="orgaadd027"></a>

## hidden agenda


<a id="org6205a0e"></a>

### david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver


<a id="org51e95cc"></a>

### jeff

1.  pod question?


<a id="org1ad8f47"></a>

## the round method, currently calls it's argument "scale"


<a id="org1da3111"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="org3076ac4"></a>

### lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="orgc3ebc72"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org5733ad3"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org428e9a3"></a>

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


<a id="orgb6f4ee3"></a>

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


<a id="orgec36a71"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);

## perhaps an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="orgc05ddbf"></a>

### Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?

3.  avoids need to check if .can

4.  (from a jonathan worthington code example)

5.  bruce gray argues it's to short-circuit long chains


<a id="org1218cfe"></a>

## the usual links:


<a id="org975d76b"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org9da76be"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="org0c0d296"></a>

## Bruce Gray:  <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="org9115ef8"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="org3f3f202"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="orgfc8dc9b"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="org6c42ec9"></a>

## William Michaels

<https://unix.stackexchange.com/a/654444> <https://unix.stackexchange.com/a/655217> <https://unix.stackexchange.com/a/655944> <https://unix.stackexchange.com/a/658564> <https://unix.stackexchange.com/a/658618> <https://unix.stackexchange.com/a/658666> <https://unix.stackexchange.com/a/658703> <https://unix.stackexchange.com/a/658716> <https://unix.stackexchange.com/a/664929>
