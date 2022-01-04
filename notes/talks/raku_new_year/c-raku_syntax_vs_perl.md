- [raku syntax vs perl](#org4537c1a)
  - [raku continues to have a perlish feel, but--](#org143b672)
    - [object method calls via the more standard ".", not the "->"](#org402a750)
    - [variable names typically have sigils still: $, @, %](#org3645e2e)
    - [flattening](#orgf6aeae8)
    - [everything is an object](#orgf260afc)
    - [a push for consistency](#org882e8ec)


<a id="org4537c1a"></a>

# raku syntax vs perl


<a id="org143b672"></a>

## raku continues to have a perlish feel, but--


<a id="org402a750"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="org3645e2e"></a>

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


<a id="orgf6aeae8"></a>

### flattening

1.  in perl, nested lists flatten out unless you do something

2.  in raku, nested structures are preserved, unless you do something


<a id="orgf260afc"></a>

### everything is an object

1.  chains of method calls are common

2.  though there are function forms for many methods


<a id="org882e8ec"></a>

### a push for consistency
