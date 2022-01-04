- [raku syntax vs perl](#org1784007)
  - [raku continues to have a perlish feel, but--](#org3128837)
    - [object method calls via the more standard ".", not the "->"](#org368e740)
    - [variable names typically have sigils still: $, @, %](#org71cdf3b)
    - [everything is an object](#orgce4141e)
    - [](#orgc3d5570)


<a id="org1784007"></a>

# raku syntax vs perl


<a id="org3128837"></a>

## raku continues to have a perlish feel, but--


<a id="org368e740"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="org71cdf3b"></a>

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


<a id="orgce4141e"></a>

### everything is an object

1.  chains of method calls are common

2.  though there are function forms for many methods


<a id="orgc3d5570"></a>

###
