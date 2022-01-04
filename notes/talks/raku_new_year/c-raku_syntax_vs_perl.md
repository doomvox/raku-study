- [raku syntax vs perl](#org1be5904)
  - [raku continues to have a perlish feel, but--](#org25ce436)
    - [object method calls via the more standard ".", not the "->"](#orgde4eb6a)
    - [variable names typically have sigils still: $, @, %](#org34eb895)


<a id="org1be5904"></a>

# raku syntax vs perl


<a id="org25ce436"></a>

## raku continues to have a perlish feel, but--


<a id="orgde4eb6a"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="org34eb895"></a>

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
