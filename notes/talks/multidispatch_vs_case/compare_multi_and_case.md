- [raku case vs multidispatch                                              f](#org2b1cfc6)
  - [rough comparison](#org131c386)
    - [case](#orgf824a67)
    - [multi](#org24b252f)


<a id="org2b1cfc6"></a>

# raku case vs multidispatch                                              f


<a id="org131c386"></a>

## rough comparison


<a id="orgf824a67"></a>

### case

1.  clear flow of execution: sequence of comparisons all in one place (running a gauntlet)

2.  "default" means the catch-all, the alternative if no other cases match

3.  flexible: good for any sort of comparison, e.g. pattern matches


<a id="org24b252f"></a>

### multi

1.  best for

    1.  checking types
    
    2.  particular fixed values

2.  orders cases ~by "specificity", not lexically

    1.  in the case of subsets, falls back to order of definition
    
        1.  subsets are grouped by the type they're based on
        
        2.  BUT they don't behave like two multis with same type
        
            1.  uses the order of definition for subsets based on same type

3.  code that handles various types can be scattered, defined in different places (common with OOP)

4.  there's an "is default" trait available to break ties in type specificity

    1.  not quite the same as the given/when "default"
