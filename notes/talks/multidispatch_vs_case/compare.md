- [raku case vs multidispatch](#orge471ef8)
  - [very roughly](#orgdc79a11)
    - [case](#org9370da8)
    - [multi](#orgcfbc2a8)
  - [utility](#orgd3dbd1e)
    - [case](#orgf02d876)
    - [multi](#orgd92b487)


<a id="orge471ef8"></a>

# raku case vs multidispatch


<a id="orgdc79a11"></a>

## very roughly


<a id="org9370da8"></a>

### case

1.  an obvious lexical sequence of comparisons (running a gauntlet)


<a id="orgcfbc2a8"></a>

### multi

1.  orders types by "specificity", not lexically (not entirely true)

    1.  in the case of subsets, uses order of definition
    
        1.  subsets are essentially grouped by the type they're based on
        
        2.  BUT they don't behave like two multis with same type
        
            1.  uses the order of definition for subsets based on same type

2.  code that handles various types can be scattered, defined in different places


<a id="orgd3dbd1e"></a>

## utility


<a id="orgf02d876"></a>

### case

1.  good for any sort of comparison, e.g. pattern matches


<a id="orgd92b487"></a>

### multi

1.  best for

    1.  checking types
    
    2.  particular fixed values

2.  you can do other things with them but

    1.  won't perform as well
    
    2.  are essentially second-class citizens
    
        1.  e.g. in the case of subsets actual behavior is undocumented
