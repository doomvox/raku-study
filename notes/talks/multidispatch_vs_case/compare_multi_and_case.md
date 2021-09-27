- [raku case vs multidispatch                                              f](#org31da80d)
  - [very roughly](#org95ff4de)
    - [case](#orgcb1e3af)
    - [multi](#orga964b93)
  - [utility](#orgd9948d9)
    - [case](#org00d527b)
    - [multi](#orgf52b942)


<a id="org31da80d"></a>

# raku case vs multidispatch                                              f


<a id="org95ff4de"></a>

## very roughly


<a id="orgcb1e3af"></a>

### case

1.  clear flow of execution: sequence of comparisons all in one place (running a gauntlet)

2.  "default" means the catch-all, the alternative if no other cases match


<a id="orga964b93"></a>

### multi

1.  orders cases ~by "specificity", not lexically

    1.  in the case of subsets, falls back to order of definition
    
        1.  subsets are grouped by the type they're based on
        
        2.  BUT they don't behave like two multis with same type
        
            1.  uses the order of definition for subsets based on same type

2.  code that handles various types can be scattered, defined in different places (common with OOP)

3.  there's an "is default" trait available to break ties in type specificity


<a id="orgd9948d9"></a>

## utility


<a id="org00d527b"></a>

### case

1.  good for any sort of comparison, e.g. pattern matches


<a id="orgf52b942"></a>

### multi

1.  best for

    1.  checking types
    
    2.  particular fixed values

2.  you can do other things with them but

    1.  won't perform as well
    
    2.  are essentially second-class citizens
    
        1.  e.g. in the case of subsets actual behavior is undocumented
