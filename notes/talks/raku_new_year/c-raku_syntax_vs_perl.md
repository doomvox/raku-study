- [raku syntax vs perl](#org50cf3b6)
  - [raku continues to have a perlish feel, but--](#org58900f5)
    - [object method calls via the more standard ".", not the "->"](#orga27c822)
    - [variable names typically have sigils still: $, @, %](#orgf12c424)
    - [everything is an object](#org61393e9)
    - [](#orgc349e96)


<a id="org50cf3b6"></a>

# raku syntax vs perl


<a id="org58900f5"></a>

## raku continues to have a perlish feel, but--


<a id="orga27c822"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="orgf12c424"></a>

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
        ```


<a id="org61393e9"></a>

### everything is an object

1.  chains of method calls are common

2.  though there are function forms for many methods


<a id="orgc349e96"></a>

###
