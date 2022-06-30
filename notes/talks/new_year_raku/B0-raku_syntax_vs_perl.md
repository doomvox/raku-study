- [raku syntax vs perl](#orgda3910b)
  - [See: <https://docs.raku.org/language/5to6-nutshell>](#org5749505)
  - [raku continues to have a perlish feel, but--](#org3d843b4)
    - [object method calls via the more standard ".", not the "->"](#orgc57fb46)
    - [variable names typically have sigils still: $, @, %](#orgabe7ad9)
    - [flattening](#orgf4e34ca)
    - [everything is an object](#org4800842)
    - [scalar and list context have gone away in Raku](#orgd8d49af)
    - [a push for consistency](#org432ae2d)
    - [one-pass parsing](#org5d6bd31)


<a id="orgda3910b"></a>

# raku syntax vs perl


<a id="org5749505"></a>

## See: <https://docs.raku.org/language/5to6-nutshell>


<a id="org3d843b4"></a>

## raku continues to have a perlish feel, but--


<a id="orgc57fb46"></a>

### object method calls via the more standard ".", not the "->"

1.  the default object for "." is $\_    {  .method  }

2.  string concat is now "~" not "."


<a id="orgabe7ad9"></a>

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


<a id="orgf4e34ca"></a>

### flattening

1.  in perl, nested lists flatten out unless you do something

2.  in raku, nested structures are preserved, unless you do something

    1.  
    
        my @residual = @list (-) @exceptions; ## weak: first element in array residual contains entire result array
        
        my @residual = | @list (-) @exceptions; ## better: "slips" out of container
    
    2.  a few ways to flatten: ".flat", slip operator "|"


<a id="org4800842"></a>

### everything is an object

1.  chains of method calls are common

    1.  though there are function forms for many methods

2.  smartmatch and given/when actually work

    1.  helps to have a type system


<a id="orgd8d49af"></a>

### scalar and list context have gone away in Raku

1.  but many operators do implied type-conversion, which feels perlish


<a id="org432ae2d"></a>

### a push for consistency

1.  e.g. {} almost always means a block of code


<a id="org5d6bd31"></a>

### one-pass parsing

1.  good, but that has unfortunate side effects

    1.  this is okay in perl
    
        ```perl
        if( $this ) { ... }
        ```
    
    2.  a space after "if" is **required** in raku
    
        ```raku
        if ( $this ) { ... }
        ```
