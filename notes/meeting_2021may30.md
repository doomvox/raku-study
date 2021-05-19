- [meeting notes May 16, 2021](#orgf413161)
  - [agenda](#org90108bd)
    - [raku classes as data containers (postponed) (joe brenner)](#org9c79cff)
    - [find/grep variants in raku revisited (joe brenner)](#org59f7ba1)
    - [bruce gray rosettacode](#org197cbe1)
    - [argument passing signatures (joe brenner)](#orgc00be9c)
    - [super flat](#org8538dd9)
    - [type system: what is accepted by what](#org2e241a3)
    - [go through my perl5 templates: how much is core raku now?](#orgfbb8c70)


<a id="orgf413161"></a>

# meeting notes May 16, 2021


<a id="org90108bd"></a>

## agenda


<a id="org9c79cff"></a>

### raku classes as data containers (postponed) (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="org59f7ba1"></a>

### find/grep variants in raku revisited (joe brenner)


<a id="org197cbe1"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgc00be9c"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org8538dd9"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"
        
        1.  (b.g. suggest just usine none)
        
            ```perl6
            my @a =   Any xx 3;
            my @b = |(Any xx 2), 0;
            say .raku for :@a, :@b;  
             ## :a([Any, Any, Any])
             ## :b([Any, Any, 0])
            say @a.none.defined.so;  # True
            say @b.none.defined.so;  # False
            ```


<a id="org2e241a3"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgfbb8c70"></a>

### go through my perl5 templates: how much is core raku now?
