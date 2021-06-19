- [distunguishing positional and associative types](#org0c3c126)
  - [.<sup>methods</sup>>>.name](#orga6f5d2d)
  - [](#orgd174dc5)


<a id="org0c3c126"></a>

# distunguishing positional and associative types


<a id="orga6f5d2d"></a>

## .<sup>methods</sup>>>.name

| Associative                | Positional         |
| (Hash)                     | (Array)            |
| ACCEPTS                    | ACCEPTS            |
| ASSIGN-KEY                 |                    |
|                            | ASSIGN-POS         |
| AT-KEY                     |                    |
|                            | AT-POS             |
|                            | Array              |
| BIND-KEY                   |                    |
|                            | BIND-POS           |
| BUILDALL                   | BUILDALL           |
| BagHash                    | BagHash            |
| Bag                        | Bag                |
| Bool                       | Bool               |
|                            | CALL-ME            |
| Capture                    | Capture            |
| DELETE-KEY                 |                    |
| DUMP                       |                    |
| EXISTS-KEY                 |                    |
|                            | EXISTS-POS         |
| FLATTENABLE<sub>HASH</sub> |                    |
| FLATTENABLE<sub>LIST</sub> |                    |
| Hash                       |                    |
| Int                        | Int                |
| IterationBuffer            |                    |
| List                       | List               |
| Map                        |                    |
| MixHash                    | MixHash            |
| Mix                        | Mix                |
| Numeric                    | Numeric            |
| STORE                      | STORE              |
| SetHash                    | SetHash            |
| Set                        | Set                |
|                            | Slip               |
| Str                        | Str                |
|                            | Supply             |
| WHICH                      |                    |
| antipairs                  | antipairs          |
| append                     | append             |
| categorize-list            |                    |
|                            | chrs               |
| classify-list              |                    |
| clone                      |                    |
|                            | combinations       |
| default                    |                    |
| dynamic                    |                    |
|                            | eager              |
| elems                      | elems              |
|                            | end                |
| flat                       | flat               |
| fmt                        | fmt                |
|                            | from-iterator      |
|                            | from-slurpy-flat   |
|                            | from-slurpy-onearg |
|                            | from-slurpy        |
|                            | from               |
| gist                       | gist               |
| hash                       |                    |
| head                       |                    |
| hyper                      | hyper              |
| invert                     | invert             |
|                            | is-lazy            |
| item                       | item               |
| iterator                   | iterator           |
| keyof                      |                    |
|                            | join               |
| keys                       | keys               |
| kv                         | kv                 |
| lazy-if                    | lazy-if            |
| lazy                       | lazy               |
| list                       | list               |
| name                       |                    |
| new                        | new                |
| of                         | of                 |
| pairs                      | pairs              |
|                            | permutations       |
| pick                       | pick               |
|                            | pop                |
|                            | prepend            |
| push                       | push               |
| race                       | race               |
| raku                       | raku               |
|                            | reification-target |
|                            | reverse            |
| roll                       | roll               |
|                            | rotate             |
|                            | shift              |
|                            | sink               |
| sort                       | sort               |
|                            | sum                |
|                            | tail               |
|                            | to                 |
|                            | unshift            |
| values                     | values             |

| Associative only           |
|-------------------------- |
| ASSIGN-KEY                 |
| AT-KEY                     |
| BIND-KEY                   |
| DELETE-KEY                 |
| DUMP                       |
| EXISTS-KEY                 |
| FLATTENABLE<sub>HASH</sub> |
| FLATTENABLE<sub>LIST</sub> |
| Hash                       |
| IterationBuffer            |
| Map                        |
| WHICH                      |
| categorize-list            |
| classify-list              |
| clone                      |
| default                    |
| dynamic                    |
| hash                       |
| head                       |
| keyof                      |
| name                       |

| Positional only    |
|------------------ |
| ASSIGN-POS         |
| AT-POS             |
| Array              |
| BIND-POS           |
| CALL-ME            |
| EXISTS-POS         |
| Slip               |
| Supply             |
| chrs               |
| combinations       |
| eager              |
| end                |
| from               |
| from-iterator      |
| from-slurpy        |
| from-slurpy-flat   |
| from-slurpy-onearg |
| is-lazy            |
| join               |
| permutations       |
| pop                |
| prepend            |
| reification-target |
| reverse            |
| rotate             |
| shift              |
| sink               |
| sum                |
| tail               |
| to                 |
| unshift            |


<a id="orgd174dc5"></a>

## 

\#+BEGIN<sub>SRC</sub> perl6 sub is<sub>associative</sub> ( $item ) { my @assoc<sub>methods</sub> = < ASSIGN-KEY AT-KEY BIND-KEY DELETE-KEY EXISTS-KEY >; my $result = so any( $item.<sup>methods</sup>>>.name ) eq all( | @assoc<sub>methods</sub> ); return $result; }

sub is<sub>positional</sub> ( $item ) { my @pos<sub>methods</sub> = < ASSIGN-POS AT-POS BIND-POS EXISTS-POS >; my $result = so any( $item.<sup>methods</sup>>>.name ) eq all( | @pos<sub>methods</sub> ); return $result; }
