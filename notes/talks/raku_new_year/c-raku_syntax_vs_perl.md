- [raku syntax vs perl](#org2e87b48)
  - [raku continues to have a perlish feel, but--](#org0d29760)
    - [object method calls via the more standard ".", not the "->"](#orgd746c0b)
    - [variable names typically have sigils still: $, @, %](#org33b47d7)
    - [flattening](#org5b77477)
    - [everything is an object](#org2b305f3)
    - [scalar and list context have gone away in Raku](#org9b0d5c6)
    - [a push for consistency](#orge59b3b1)
    - [one-pass parsing](#org81b1caa)


<a id="org2e87b48"></a>

# raku syntax vs perl


<a id="org0d29760"></a>

## raku continues to have a perlish feel, but--


<a id="orgd746c0b"></a>

### object method calls via the more standard ".", not the "->"

1.  the default object for "." is $\_

2.  string concationation is now "~" not "."


<a id="org33b47d7"></a>

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
        
        my $alias  :=  $var;  
        $alias++;  ## increments $var also
        ```
    
    3.  a 'scalar' can contain any object, including an aggregate (array, hash, etc)
    
        1.  similar to perl's references: $ doesn't mean "single"


<a id="org5b77477"></a>

### flattening

1.  in perl, nested lists flatten out unless you do something

2.  in raku, nested structures are preserved, unless you do something

    1.  
    
        my @residual = @list (-) @exceptions; ## weak: first element in array contains result
        
        my @residual | = @list (-) @exceptions; ## better to "slip" out of container


<a id="org2b305f3"></a>

### everything is an object

1.  chains of method calls are common

2.  though there are function forms for many methods

3.  smartmatch and given/when can work

    1.  helps to have a type system


<a id="org9b0d5c6"></a>

### scalar and list context have gone away in Raku

1.  but many operators do implied type-conversion, which feels perlish


<a id="orge59b3b1"></a>

### a push for consistency

1.  e.g. {} almost always means a block of code


<a id="org81b1caa"></a>

### one-pass parsing

1.  unfortunate side effects e.g. if( $this ) { &#x2026; }
