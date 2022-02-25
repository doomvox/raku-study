- [raku syntax vs perl](#orgddd585c)
  - [See: <https://docs.raku.org/language/5to6-nutshell>](#org4cdf446)
  - [raku continues to have a perlish feel, but--](#orgc3191d2)
    - [object method calls via the more standard ".", not the "->"](#org1554f72)
    - [variable names typically have sigils still: $, @, %](#orgde19802)
    - [flattening](#orgb6b97dc)
    - [everything is an object](#org67302bb)
    - [scalar and list context have gone away in Raku](#org670317d)
    - [a push for consistency](#org649eb39)
    - [one-pass parsing](#orgbbb8443)


<a id="orgddd585c"></a>

# raku syntax vs perl


<a id="org4cdf446"></a>

## See: <https://docs.raku.org/language/5to6-nutshell>


<a id="orgc3191d2"></a>

## raku continues to have a perlish feel, but--


<a id="org1554f72"></a>

### object method calls via the more standard ".", not the "->"

1.  the default object for "." is $\_    {  .method  }

2.  string concat is now "~" not "."


<a id="orgde19802"></a>

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
        $alias++;  # increments $var, too
        ```
    
    4.  a 'scalar' can contain any object, including an array, hash, etc
    
        1.  similar to perl's references: $ doesn't mean "singular"


<a id="orgb6b97dc"></a>

### flattening

1.  in perl, nested lists flatten out unless you do something

2.  in raku, nested structures are preserved, unless you do something

    1.  
    
        my @residual = @list (-) @exceptions; ## weak: first element in array contains result
        
        my @residual | = @list (-) @exceptions; ## better to "slip" out of container
    
    2.  a few ways to flatten: ".flat", slip operator "|"


<a id="org67302bb"></a>

### everything is an object

1.  chains of method calls are common

2.  though there are function forms for many methods

3.  smartmatch and given/when can work

    1.  helps to have a type system


<a id="org670317d"></a>

### scalar and list context have gone away in Raku

1.  but many operators do implied type-conversion, which feels perlish


<a id="org649eb39"></a>

### a push for consistency

1.  e.g. {} almost always means a block of code


<a id="orgbbb8443"></a>

### one-pass parsing

1.  unfortunate side effects e.g. this is no good: if( $this ) { &#x2026; }
