- [raku syntax vs perl](#org3b81486)
  - [raku continues to have a perlish feel, but--](#org851c975)
    - [object method calls via the more standard ".", not the "->"](#orgf8c1192)
    - [variable names typically have sigils still: $, @, %](#org0e044de)
    - [everything is an object](#org2efca1b)


<a id="org3b81486"></a>

# raku syntax vs perl


<a id="org851c975"></a>

## raku continues to have a perlish feel, but--


<a id="orgf8c1192"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="org0e044de"></a>

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


<a id="org2efca1b"></a>

### everything is an object

1.  chains of method calls are common

2.  though there are function forms for many methods
