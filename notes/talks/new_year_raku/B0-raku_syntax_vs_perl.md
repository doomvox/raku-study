- [raku syntax vs perl](#org8de2991)
  - [See: <https://docs.raku.org/language/5to6-nutshell>](#orgcd0d852)
  - [raku continues to have a perlish feel, but--](#orgf708b5e)
    - [object method calls via the more standard ".", not the "->"](#org4f1decd)
    - [variable names typically have sigils still: $, @, %](#org813663b)
    - [flattening](#orga56abe7)
    - [everything is an object](#org9e80a55)
    - [scalar and list context have gone away in Raku](#org5a3eddb)
    - [a push for consistency](#org68875ad)
    - [one-pass parsing](#org5961414)


<a id="org8de2991"></a>

# raku syntax vs perl


<a id="orgcd0d852"></a>

## See: <https://docs.raku.org/language/5to6-nutshell>


<a id="orgf708b5e"></a>

## raku continues to have a perlish feel, but--


<a id="org4f1decd"></a>

### object method calls via the more standard ".", not the "->"

1.  the default object for "." is $\_    {  .method  }

2.  string concat is now "~" not "."


<a id="org813663b"></a>

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


<a id="orga56abe7"></a>

### flattening

1.  in perl, nested lists flatten out unless you do something

2.  in raku, nested structures are preserved, unless you do something

    1.  
    
        my @residual = @list (-) @exceptions; ## weak: first element in array residual contains entire result array
        
        my @residual = | @list (-) @exceptions; ## better: "slips" out of container
    
    2.  a few ways to flatten: ".flat", slip operator "|"


<a id="org9e80a55"></a>

### everything is an object

1.  chains of method calls are common

    1.  though there are function forms for many methods

2.  smartmatch and given/when actually work

    1.  helps to have a type system


<a id="org5a3eddb"></a>

### scalar and list context have gone away in Raku

1.  but many operators do implied type-conversion, which feels perlish


<a id="org68875ad"></a>

### a push for consistency

1.  e.g. {} almost always means a block of code


<a id="org5961414"></a>

### one-pass parsing

1.  but that has unfortunate side effects

    1.  this is okay in perl
    
        ```perl
        if( $this ) { ... }
        ```
    
    2.  space after "if" is **required** in raku
    
        ```raku
        if ( $this ) { ... }
        ```
