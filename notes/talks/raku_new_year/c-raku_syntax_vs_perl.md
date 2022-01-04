- [raku syntax vs perl](#orgaf65903)
  - [raku continues to have a perlish feel, but--](#org745f956)
    - [object method calls via the more standard ".", not the "->"](#org3e6c834)
    - [variable names typically have sigils still: $, @, %](#orgafb743c)
    - [everything is an object](#orgd6d729d)
    - [](#org65c5c70)


<a id="orgaf65903"></a>

# raku syntax vs perl


<a id="org745f956"></a>

## raku continues to have a perlish feel, but--


<a id="org3e6c834"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="orgafb743c"></a>

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


<a id="orgd6d729d"></a>

### everything is an object

1.  chains of method calls are common

2.  though there are function forms for many methods


<a id="org65c5c70"></a>

###
