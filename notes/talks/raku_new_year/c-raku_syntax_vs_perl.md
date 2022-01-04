- [raku syntax vs perl](#orgf785f3c)
  - [raku continues to have a perlish feel, but--](#org8c472c7)
    - [object method calls via the more standard ".", not the "->"](#orgfd86c3e)
    - [variable names typically have sigils still: $, @, %](#org822ddd6)
    - [everything is an object](#org417f2c0)
    - [](#org1cb6bad)


<a id="orgf785f3c"></a>

# raku syntax vs perl


<a id="org8c472c7"></a>

## raku continues to have a perlish feel, but--


<a id="orgfd86c3e"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="org822ddd6"></a>

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
        my $mutie    = 'black_bolt';
        my $immutie := 'iron_man';
        ```


<a id="org417f2c0"></a>

### everything is an object

1.  chains of method calls are common

2.  though there are function forms for many methods


<a id="org1cb6bad"></a>

###
