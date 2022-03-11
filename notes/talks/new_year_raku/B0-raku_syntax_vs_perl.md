- [raku syntax vs perl](#org02c7fdf)
  - [See: <https://docs.raku.org/language/5to6-nutshell>](#org52f3982)
  - [raku continues to have a perlish feel, but--](#orga1c3526)
    - [object method calls via the more standard ".", not the "->"](#org1d29370)
    - [variable names typically have sigils still: $, @, %](#org7f0434d)
    - [flattening](#orgc2f0741)
    - [everything is an object](#orgdf20bf5)
    - [scalar and list context have gone away in Raku](#orgc862389)
    - [a push for consistency](#org809a256)
    - [one-pass parsing](#orgebe1d6a)


<a id="org02c7fdf"></a>

# raku syntax vs perl


<a id="org52f3982"></a>

## See: <https://docs.raku.org/language/5to6-nutshell>


<a id="orga1c3526"></a>

## raku continues to have a perlish feel, but--


<a id="org1d29370"></a>

### object method calls via the more standard ".", not the "->"

1.  the default object for "." is $\_    {  .method  }

2.  string concat is now "~" not "."


<a id="org7f0434d"></a>

### variable names typically have sigils still: $, @, %

1.  sigils are invariant:  they act like part of the name&#x2013; @array and %hash

    1.  Perl
    
        ```perl
        my %fried;
        $fried{eggs} = 2;
        ```
    
    2.  Raku
    
        ```raku
        my %fried;
        %fried<eggs> = 2;
        # alternately
        %fried{'eggs'} = 2;
        ```

2.  you can also have names sans sigils (not done often)

    ```raku
    my (\i, \j) = (2, 3);
    say i + j:  ## 5
    ```

3.  containers

    1.  vars typically point to invisible "containers", and are mutable
    
    2.  vars can point to bare values without containers
    
        ```raku
        my $var           = 3;
        
        my $sorta_const  := 3;
        $var++;           ## Works
        $sorta_const++;   ## Error
        ```
    
    3.  binding operator can create aliases
    
        ```raku
        my $alias  :=  $var;  
        $alias++;  # increments $var too
        ```
    
    4.  a 'scalar' can contain any object, including an array, hash, etc
    
        1.  similar to perl's references: $ doesn't mean "singular"


<a id="orgc2f0741"></a>

### flattening

1.  in perl, nested lists flatten out unless you do something

2.  in raku, nested structures are preserved, unless you do something

    1.  
    
        my @residual = @list (-) @exceptions; ## weak: first element in array residual contains entire result array
        
        my @residual = | @list (-) @exceptions; ## better: "slips" out of container
    
    2.  a few ways to flatten: ".flat", slip operator "|"


<a id="orgdf20bf5"></a>

### everything is an object

1.  chains of method calls are common

    1.  though there are function forms for many methods

2.  smartmatch and given/when actually work

    1.  helps to have a type system


<a id="orgc862389"></a>

### scalar and list context have gone away in Raku

1.  but many operators do implied type-conversion, which feels perlish


<a id="org809a256"></a>

### a push for consistency

1.  e.g. {} almost always means a block of code


<a id="orgebe1d6a"></a>

### one-pass parsing

1.  good, but that has unfortunate side effects

    1.  this is okay in perl
    
        ```perl
        if( $this ) { ... }
        ```
    
    2.  space after "if" is **required** in raku
    
        ```raku
        if ( $this ) { ... }
        ```
