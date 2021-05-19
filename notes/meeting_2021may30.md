- [meeting notes May 16, 2021](#org4799633)
  - [agenda](#org19d0418)
    - [raku classes as data containers (postponed) (joe brenner)](#org0df2edd)
    - [find/grep variants in raku revisited (joe brenner)](#org005e4a1)
    - [bruce gray rosettacode](#org13c961e)
    - [argument passing signatures (joe brenner)](#org6f79f81)
    - [super flat](#org57aa072)
    - [type system: what is accepted by what](#org9368196)
    - [go through my perl5 templates: how much is core raku now?](#org9fd665a)


<a id="org4799633"></a>

# meeting notes May 16, 2021


<a id="org19d0418"></a>

## agenda


<a id="org0df2edd"></a>

### raku classes as data containers (postponed) (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="org005e4a1"></a>

### find/grep variants in raku revisited (joe brenner)


<a id="org13c961e"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org6f79f81"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org57aa072"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"
        
        1.  bruce gray suggests just using none)
        
            ```perl6
            my @a =   Any xx 3;
            my @b = |(Any xx 2), 0;
            say .raku for :@a, :@b;  
             ## :a([Any, Any, Any])
             ## :b([Any, Any, 0])
            say @a.none.defined.so;  # True
            say @b.none.defined.so;  # False
            ```


<a id="org9368196"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org9fd665a"></a>

### go through my perl5 templates: how much is core raku now?
