- [raku syntax vs perl](#orgcddedfc)
  - [raku continues to have a perlish feel, but--](#orgb278845)
    - [object method calls via the more standard ".", not the "->"](#org413bf5e)
    - [variable names typically have sigils still: $, @, %](#org38e131d)
    - [everything is an object](#orgf532402)
    - [](#orgc94d6c0)


<a id="orgcddedfc"></a>

# raku syntax vs perl


<a id="orgb278845"></a>

## raku continues to have a perlish feel, but--


<a id="org413bf5e"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="org38e131d"></a>

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
        my $mutie   = 'black_bolt;
        
        my $immutie := 'iron man';
        
        say i + j:  ## 5
        ```


<a id="orgf532402"></a>

### everything is an object

1.  chains of method calls are common

2.  though there are function forms for many methods


<a id="orgc94d6c0"></a>

###
