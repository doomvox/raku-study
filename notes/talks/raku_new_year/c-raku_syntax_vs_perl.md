- [raku syntax vs perl](#orgd41072e)
  - [raku continues to have a perlish feel, but--](#orgf332e43)
    - [object method calls via the more standard ".", not the "->"](#org787a515)
    - [variable names typically have sigils still: $, @, %](#orga5081c7)
    - [flattening](#org2ef819f)
    - [everything is an object](#org1325157)
    - [a push for consistency](#org8aa2948)
    - [one-pass parsing](#org2ba1cb2)


<a id="orgd41072e"></a>

# raku syntax vs perl


<a id="orgf332e43"></a>

## raku continues to have a perlish feel, but--


<a id="org787a515"></a>

### object method calls via the more standard ".", not the "->"

1.  the default object for "." is $\_

2.  string concationation is now "~" not "."


<a id="orga5081c7"></a>

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


<a id="org2ef819f"></a>

### flattening

1.  in perl, nested lists flatten out unless you do something

2.  in raku, nested structures are preserved, unless you do something

    1.  
    
        my @residual = @list (-) @exceptions; ## weak: first element in array contains result
        
        my @residual | = @list (-) @exceptions; ## better to "slip" out of container


<a id="org1325157"></a>

### everything is an object

1.  chains of method calls are common

2.  though there are function forms for many methods


<a id="org8aa2948"></a>

### a push for consistency

1.  e.g. {} almost always means a block of code


<a id="org2ba1cb2"></a>

### one-pass parsing

1.  unfortunate side effects e.g. if( $this ) { &#x2026; }
