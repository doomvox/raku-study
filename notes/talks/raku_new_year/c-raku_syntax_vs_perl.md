- [raku syntax vs perl](#orgdf8934c)
  - [raku continues to have a perlish feel, but--](#orgd2df85f)
    - [object method calls via the more standard ".", not the "->"](#orgac4aca6)
    - [variable names typically have sigils still: $, @, %](#org8abc342)
    - [everything is an object](#org2f08e92)
    - [](#orgb5f170d)


<a id="orgdf8934c"></a>

# raku syntax vs perl


<a id="orgd2df85f"></a>

## raku continues to have a perlish feel, but--


<a id="orgac4aca6"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="org8abc342"></a>

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
        my $var           = 3;
        my $sorta_const  := 3;
        $var++;           ## Works
        $sorta_const++;   ## Error
        ```
    
    3.  a 'scalar' can contain any object, including an aggregate (array, hash, etc)
    
        1.  similar to perl's references: $ doesn't mean "single"


<a id="org2f08e92"></a>

### everything is an object

1.  chains of method calls are common

2.  though there are function forms for many methods


<a id="orgb5f170d"></a>

###
