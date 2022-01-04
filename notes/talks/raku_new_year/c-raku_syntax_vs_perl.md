- [raku syntax vs perl](#org2aa72a1)
  - [raku continues to have a perlish feel, but--](#org92a1ca1)
    - [object method calls via the more standard ".", not the "->"](#org992ff46)
    - [variable names typically have sigils still: $, @, %](#org1fa6583)


<a id="org2aa72a1"></a>

# raku syntax vs perl


<a id="org92a1ca1"></a>

## raku continues to have a perlish feel, but--


<a id="org992ff46"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="org1fa6583"></a>

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
    say i + j:
    ```
