- [raku syntax vs perl](#org4877ace)
  - [raku continues to have a perlish feel, but--](#org7a5ee79)
    - [object method calls via the more standard ".", not the "->"](#orgb950fd4)
    - [variable names typically have sigils still: $, @, %](#orgdbf02a1)
    - [everything is an object](#orgf80cbf1)
    - [](#org0afd924)


<a id="org4877ace"></a>

# raku syntax vs perl


<a id="org7a5ee79"></a>

## raku continues to have a perlish feel, but--


<a id="orgb950fd4"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="orgdbf02a1"></a>

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


<a id="orgf80cbf1"></a>

### everything is an object

1.  chains of method calls are common

2.  though there are function forms for many methods


<a id="org0afd924"></a>

###
