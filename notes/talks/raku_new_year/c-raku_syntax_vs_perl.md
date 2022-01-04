- [raku syntax vs perl](#org442746f)
  - [raku continues to have a perlish feel, but--](#org6bdb104)
    - [object method calls via the more standard ".", not the "->"](#org91fbe63)
    - [variable names typically have sigils still: $, @, %](#orgc60772e)


<a id="org442746f"></a>

# raku syntax vs perl


<a id="org6bdb104"></a>

## raku continues to have a perlish feel, but--


<a id="org91fbe63"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="orgc60772e"></a>

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
