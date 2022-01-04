- [raku syntax vs perl](#org98c86e4)
  - [raku continues to have a perlish feel, but--](#orgc27d3fb)
    - [object method calls via the more standard ".", not the "->"](#org3106447)
    - [variable names typically have sigils still: $, @, %](#org50d33e3)
    - [everything is an object](#org998652f)
    - [](#orgf07aa70)


<a id="org98c86e4"></a>

# raku syntax vs perl


<a id="orgc27d3fb"></a>

## raku continues to have a perlish feel, but--


<a id="org3106447"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="org50d33e3"></a>

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
        my $mutie   = 'black_bolt';
        
        my $immutie := 'iron_man';
        
        say i + j:  ## 5
        ```


<a id="org998652f"></a>

### everything is an object

1.  chains of method calls are common

2.  though there are function forms for many methods


<a id="orgf07aa70"></a>

###
