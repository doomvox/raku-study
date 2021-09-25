- [raku case vs multidispatch](#orgc08213e)
  - [case](#org7b8c8ee)
    - [uses lexical sequence to order comparisons](#org6ee5096)
  - [multidispatch](#org8a62258)
    - [uses specificity to order comparisons (mostly)](#orge933046)


<a id="orgc08213e"></a>

# raku case vs multidispatch


<a id="org7b8c8ee"></a>

## case


<a id="org6ee5096"></a>

### uses lexical sequence to order comparisons


<a id="org8a62258"></a>

## multidispatch


<a id="orge933046"></a>

### uses specificity to order comparisons (mostly)

1.  in the case of subsets, uses order of definition

    1.  groups subsets by the type they're based on
    
    2.  then uses the order of definition of subsets based on same type
