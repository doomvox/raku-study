- [raku syntax vs perl](#org0e99a36)
  - [raku continues to have a perlish feel, but--](#org083428d)
    - [object method calls via the more standard ".", not the "->"](#orgf16c5a9)
    - [variable names typically have sigils still: $, @, %](#org8e68342)
    - [everything is an object](#org19bd227)
    - [](#org5b67d92)


<a id="org0e99a36"></a>

# raku syntax vs perl


<a id="org083428d"></a>

## raku continues to have a perlish feel, but--


<a id="orgf16c5a9"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="org8e68342"></a>

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


<a id="org19bd227"></a>

### everything is an object

1.  chains of method calls are common

2.  though there are function forms for many methods


<a id="org5b67d92"></a>

###
