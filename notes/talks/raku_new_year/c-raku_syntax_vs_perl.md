- [raku syntax vs perl](#orgae98194)
  - [raku continues to have a perlish feel, but--](#orgce3381e)
    - [object method calls via the more standard ".", not the "->"](#orgf26a1c8)
    - [variable names typically have sigils still: $, @, %](#org1779110)
    - [everything is an object](#orgfbc4ad3)
    - [](#org0a17ec1)


<a id="orgae98194"></a>

# raku syntax vs perl


<a id="orgce3381e"></a>

## raku continues to have a perlish feel, but--


<a id="orgf26a1c8"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="org1779110"></a>

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


<a id="orgfbc4ad3"></a>

### everything is an object

1.  chains of method calls are common

2.  though there are function forms for many methods


<a id="org0a17ec1"></a>

###
