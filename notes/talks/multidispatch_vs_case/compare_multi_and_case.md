- [raku case vs multidispatch                                              f](#orgdb896d8)
  - [very roughly](#org7188e6e)
    - [case](#org565d818)
    - [multi](#org91b4069)
  - [utility](#orgaeed05d)
    - [case](#org6cfe47d)
    - [multi](#org22afca2)


<a id="orgdb896d8"></a>

# raku case vs multidispatch                                              f


<a id="org7188e6e"></a>

## very roughly


<a id="org565d818"></a>

### case

1.  an obvious lexical sequence of comparisons (running a gauntlet)

2.  "default" means the catch-all, the alternative if no other cases match


<a id="org91b4069"></a>

### multi

1.  orders cases ~by "specificity", not lexically

    1.  in the case of subsets, falls back to order of definition
    
        1.  subsets are grouped by the type they're based on
        
        2.  BUT they don't behave like two multis with same type
        
            1.  uses the order of definition for subsets based on same type

2.  code that handles various types can be scattered, defined in different places

3.  there's an "is default" trait available to break ties in type specificity


<a id="orgaeed05d"></a>

## utility


<a id="org6cfe47d"></a>

### case

1.  good for any sort of comparison, e.g. pattern matches


<a id="org22afca2"></a>

### multi

1.  best for

    1.  checking types
    
    2.  particular fixed values

2.  you can do other things with them but

    1.  won't perform as well
    
    2.  are essentially second-class citizens
    
        1.  e.g. in the case of subsets actual behavior is undocumented
