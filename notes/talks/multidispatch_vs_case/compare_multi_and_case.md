- [raku case vs multidispatch                                              f](#org3e5da90)
  - [very roughly](#org19cb8e0)
    - [case](#org8135277)
    - [multi](#org8fc0a52)
  - [utility](#orgf33f4e0)
    - [case](#orgdef1f18)
    - [multi](#org752d1b7)


<a id="org3e5da90"></a>

# raku case vs multidispatch                                              f


<a id="org19cb8e0"></a>

## very roughly


<a id="org8135277"></a>

### case

1.  an obvious lexical sequence of comparisons (running a gauntlet)


<a id="org8fc0a52"></a>

### multi

1.  orders cases ~by "specificity", not lexically

    1.  in the case of subsets, falls back to order of definition
    
        1.  subsets are grouped by the type they're based on
        
        2.  BUT they don't behave like two multis with same type
        
            1.  uses the order of definition for subsets based on same type

2.  code that handles various types can be scattered, defined in different places


<a id="orgf33f4e0"></a>

## utility


<a id="orgdef1f18"></a>

### case

1.  good for any sort of comparison, e.g. pattern matches


<a id="org752d1b7"></a>

### multi

1.  best for

    1.  checking types
    
    2.  particular fixed values

2.  you can do other things with them but

    1.  won't perform as well
    
    2.  are essentially second-class citizens
    
        1.  e.g. in the case of subsets actual behavior is undocumented
