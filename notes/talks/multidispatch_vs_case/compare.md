- [raku case vs multidispatch](#org63d7b94)
  - [case](#org1c53f48)
    - [uses lexical sequence to order comparisons](#org265e134)
  - [multidispatch](#org2b47bd7)
    - [uses specificity to order comparisons (mostly)](#orgdf2728c)


<a id="org63d7b94"></a>

# raku case vs multidispatch


<a id="org1c53f48"></a>

## case


<a id="org265e134"></a>

### uses lexical sequence to order comparisons


<a id="org2b47bd7"></a>

## multidispatch


<a id="orgdf2728c"></a>

### uses specificity to order comparisons (mostly)

1.  in the case of subsets, uses order of definition

    1.  groups subsets by the type they're based on
    
    2.  uses the order of definition for subsets based on same type
