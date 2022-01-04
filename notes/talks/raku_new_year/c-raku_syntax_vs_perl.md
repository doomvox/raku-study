- [raku syntax vs perl](#org43fc8bc)
  - [raku continues to have a perlish feel, but--](#orgf05b38a)
    - [object method calls via the more standard ".", not the "->"](#org7eefcef)
    - [variable names typically have sigils still: $, @, %](#orgb6d3f37)
    - [list flattening](#org654ad34)
    - [everything is an object](#org910759a)
    - [a push for consistency](#org60834ea)


<a id="org43fc8bc"></a>

# raku syntax vs perl


<a id="orgf05b38a"></a>

## raku continues to have a perlish feel, but--


<a id="org7eefcef"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="orgb6d3f37"></a>

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


<a id="org654ad34"></a>

### list flattening

1.  in perl, nested lists flatten out unless you do something

2.  in raku, nested structures are preserved, unless you do something


<a id="org910759a"></a>

### everything is an object

1.  chains of method calls are common

2.  though there are function forms for many methods


<a id="org60834ea"></a>

### a push for consistency
