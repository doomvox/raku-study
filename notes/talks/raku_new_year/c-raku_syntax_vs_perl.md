- [raku syntax vs perl](#org6384538)
  - [raku continues to have a perlish feel, but--](#orgc97344e)
    - [object method calls via the more standard ".", not the "->"](#org8f5a4b6)
    - [variable names typically have sigils still: $, @, %](#org6465b2f)
    - [everything is an object](#org65538b5)
    - [](#org100ce4e)


<a id="org6384538"></a>

# raku syntax vs perl


<a id="orgc97344e"></a>

## raku continues to have a perlish feel, but--


<a id="org8f5a4b6"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="org6465b2f"></a>

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
        
        my $immutie := 'iron man';
        
        say i + j:  ## 5
        ```


<a id="org65538b5"></a>

### everything is an object

1.  chains of method calls are common

2.  though there are function forms for many methods


<a id="org100ce4e"></a>

###
