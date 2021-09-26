- [raku case vs multidispatch](#orgdbeb1a8)
  - [case](#orgd49d79a)
    - [uses lexical sequence to order comparisons](#org1d5bcf8)
  - [multidispatch](#org99378c0)
    - [uses specificity to order comparisons (mostly)](#orge10d867)


<a id="orgdbeb1a8"></a>

# raku case vs multidispatch


<a id="orgd49d79a"></a>

## case


<a id="org1d5bcf8"></a>

### uses lexical sequence to order comparisons


<a id="org99378c0"></a>

## multidispatch


<a id="orge10d867"></a>

### uses specificity to order comparisons (mostly)

1.  in the case of subsets, uses order of definition

    1.  subsets are essentially grouped by the type they're based on
    
    2.  BUT they don't behave like two multis with same type
    
        1.  uses the order of definition for subsets based on same type
