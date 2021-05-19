- [meeting notes May 16, 2021](#orgc02a34f)
  - [agenda](#orgfa2863c)
    - [raku classes as data containers (postponed) (joe brenner)](#org334b377)
    - [find/grep variants in raku revisited (joe brenner)](#org5b8e4b3)
    - [bruce gray rosettacode](#orgff28f9a)
    - [argument passing signatures (joe brenner)](#org94c8fc1)
    - [super flat](#org2bdb2a6)
    - [type system: what is accepted by what](#org5393374)
    - [go through my perl5 templates: how much is core raku now?](#orgc788dfd)


<a id="orgc02a34f"></a>

# meeting notes May 16, 2021


<a id="orgfa2863c"></a>

## agenda


<a id="org334b377"></a>

### raku classes as data containers (postponed) (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="org5b8e4b3"></a>

### find/grep variants in raku revisited (joe brenner)


<a id="orgff28f9a"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org94c8fc1"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org2bdb2a6"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"
        
        1.  bruce gray suggests just using none:
        
            ```perl6
            my @a =   Any xx 3;
            my @b = |(Any xx 2), 0;
            say .raku for :@a, :@b;  
             ## :a([Any, Any, Any])
             ## :b([Any, Any, 0])
            say @a.none.defined.so;  # True
            say @b.none.defined.so;  # False
            ```


<a id="org5393374"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgc788dfd"></a>

### go through my perl5 templates: how much is core raku now?
