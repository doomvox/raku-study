- [raku syntax vs perl](#org3a2b284)
  - [raku continues to have a perlish feel, but--](#org4c56c21)
    - [object method calls via the more standard ".", not the "->"](#org7cf6709)
    - [variable names typically have sigils still: $, @, %](#org178794b)
    - [everything is an object](#org822d432)


<a id="org3a2b284"></a>

# raku syntax vs perl


<a id="org4c56c21"></a>

## raku continues to have a perlish feel, but--


<a id="org7cf6709"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="org178794b"></a>

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


<a id="org822d432"></a>

### everything is an object

1.  chains of method calls are common

2.  though there are function forms for many methods
