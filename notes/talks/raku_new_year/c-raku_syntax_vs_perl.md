- [raku syntax vs perl](#orged9b2db)
  - [raku continues to have a perlish feel, but--](#org471fa82)
    - [object method calls via the more standard ".", not the "->"](#orgcd088f6)
    - [variable names typically have sigils still: $, @, %](#orge80b888)
    - [everything is an object](#org2657095)
    - [](#org3cb112e)


<a id="orged9b2db"></a>

# raku syntax vs perl


<a id="org471fa82"></a>

## raku continues to have a perlish feel, but--


<a id="orgcd088f6"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="orge80b888"></a>

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


<a id="org2657095"></a>

### everything is an object

1.  chains of method calls are common

2.  though there are function forms for many methods


<a id="org3cb112e"></a>

###
