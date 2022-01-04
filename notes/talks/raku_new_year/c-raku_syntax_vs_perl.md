- [raku syntax vs perl](#orgac89905)
  - [raku continues to have a perlish feel, but--](#org465b224)
    - [object method calls via the more standard ".", not the "->"](#org6dc7872)
    - [variable names typically have sigils still: $, @, %](#org7d93c9a)
    - [everything is an object](#org6f0ab6a)
    - [](#org7edb8fd)


<a id="orgac89905"></a>

# raku syntax vs perl


<a id="org465b224"></a>

## raku continues to have a perlish feel, but--


<a id="org6dc7872"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="org7d93c9a"></a>

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
        ```

2.  you can also have names sans sigils (not done often)

    ```raku
    my (\i, \j) = (2, 3);
    say i + j:  ## 5
    ```


<a id="org6f0ab6a"></a>

### everything is an object

1.  chains of method calls are common

2.  there are function forms for many methods


<a id="org7edb8fd"></a>

###
