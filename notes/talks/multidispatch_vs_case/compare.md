- [raku case vs multidispatch](#org4a79872)
  - [very roughly](#orgbcae8f8)
    - [case](#org5e9d2e1)
    - [multi](#orgadb6fe5)
  - [utility](#orgc9dec50)
    - [case](#org4cffdb2)
    - [multi](#org073a518)


<a id="org4a79872"></a>

# raku case vs multidispatch


<a id="orgbcae8f8"></a>

## very roughly


<a id="org5e9d2e1"></a>

### case

1.  an obvious lexical sequence of comparisons (running a gauntlet)


<a id="orgadb6fe5"></a>

### multi

1.  orders cases ~by "specificity", not lexically

    1.  in the case of subsets, falls back to order of definition
    
        1.  subsets are grouped by the type they're based on
        
        2.  BUT they don't behave like two multis with same type
        
            1.  uses the order of definition for subsets based on same type

2.  code that handles various types can be scattered, defined in different places


<a id="orgc9dec50"></a>

## utility


<a id="org4cffdb2"></a>

### case

1.  good for any sort of comparison, e.g. pattern matches


<a id="org073a518"></a>

### multi

1.  best for

    1.  checking types
    
    2.  particular fixed values

2.  you can do other things with them but

    1.  won't perform as well
    
    2.  are essentially second-class citizens
    
        1.  e.g. in the case of subsets actual behavior is undocumented
