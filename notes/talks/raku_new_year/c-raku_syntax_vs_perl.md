- [raku syntax vs perl](#orgb5490f5)
  - [raku continues to have a perlish feel, but--](#orgfa4cbfd)
    - [object method calls via the more standard ".", not the "->"](#org80f2249)
    - [variable names typically have sigils still: $, @, %](#org9352258)
    - [flattening](#orga77ffda)
    - [everything is an object](#org06a5373)
    - [scalar and list context have gone away in Raku](#org0092d4d)
    - [a push for consistency](#orgf2cc2cd)
    - [one-pass parsing](#orgecf2384)


<a id="orgb5490f5"></a>

# raku syntax vs perl


<a id="orgfa4cbfd"></a>

## raku continues to have a perlish feel, but--


<a id="org80f2249"></a>

### object method calls via the more standard ".", not the "->"

1.  the default object for "." is $\_

2.  string concationation is now "~" not "."


<a id="org9352258"></a>

### variable names typically have sigils still: $, @, %

1.  the @ and % sigils now behave like part of the name, they're invariant:

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

    1.  typical vars are mutable, and have invisible "containers"
    
    2.  vars can contain immutables, bare constants without containers
    
        ```raku
        my $var           = 3;
        
        my $sorta_const  := 3;
        $var++;           ## Works
        $sorta_const++;   ## Error
        ```
    
    3.  binding operator can create aliases: here $var is incremented too
    
        ```raku
        my $alias  :=  $var;  
        $alias++;
        ```
    
    4.  a 'scalar' can contain any object, including an array, hash, etc
    
        1.  similar to perl's references: $ doesn't mean "singular"


<a id="orga77ffda"></a>

### flattening

1.  in perl, nested lists flatten out unless you do something

2.  in raku, nested structures are preserved, unless you do something

    1.  
    
        my @residual = @list (-) @exceptions; ## weak: first element in array contains result
        
        my @residual | = @list (-) @exceptions; ## better to "slip" out of container


<a id="org06a5373"></a>

### everything is an object

1.  chains of method calls are common

2.  though there are function forms for many methods

3.  smartmatch and given/when can work

    1.  helps to have a type system


<a id="org0092d4d"></a>

### scalar and list context have gone away in Raku

1.  but many operators do implied type-conversion, which feels perlish


<a id="orgf2cc2cd"></a>

### a push for consistency

1.  e.g. {} almost always means a block of code


<a id="orgecf2384"></a>

### one-pass parsing

1.  unfortunate side effects e.g. this is no good: if( $this ) { &#x2026; }
