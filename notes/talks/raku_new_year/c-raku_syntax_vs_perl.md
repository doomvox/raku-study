- [raku syntax vs perl](#orgeb4cf56)
  - [raku continues to have a perlish feel, but--](#org1872525)
    - [object method calls via the more standard ".", not the "->"](#org229095e)
    - [variable names typically have sigils still: $, @, %](#org1239573)
    - [flattening](#org03b5cb0)
    - [everything is an object](#org9211717)
    - [a push for consistency](#orgb7679c5)
    - [one-pass parsing](#org0514d72)


<a id="orgeb4cf56"></a>

# raku syntax vs perl


<a id="org1872525"></a>

## raku continues to have a perlish feel, but--


<a id="org229095e"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="org1239573"></a>

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


<a id="org03b5cb0"></a>

### flattening

1.  in perl, nested lists flatten out unless you do something

2.  in raku, nested structures are preserved, unless you do something

    1.  
    
        my @residual = @list (-) @exceptions; ## weak: first element in array contains result
        
        my @residual | = @list (-) @exceptions; ## better to "slip" out of container


<a id="org9211717"></a>

### everything is an object

1.  chains of method calls are common

2.  though there are function forms for many methods


<a id="orgb7679c5"></a>

### a push for consistency

1.  e.g. {} almost always means a block of code


<a id="org0514d72"></a>

### one-pass parsing

1.  unfortunate side effects e.g. if( $this ) { &#x2026; }
