#!/usr/bin/env raku
# 
# llm_graph_demo.raku            05 Oct 2025 

## either run an llm locally, and specify it

## or you have a chatgpt token 

## "standard llm functions"
##   The package implementation heavily relies on the package “LLM::Functions”, [AAp1].
##   Graph functionalities are provided by “Graph”, [AAp3].

use v6;

use LLM::Graph;
use Graph;
 
my %rules =
        poet1 => "Write a short poem about summer.",
        poet2 => "Write a haiku about winter.",
        poet3 => sub ($topic, $style) {
            "Write a poem about $topic in the $style style."
        },
        judge => sub ($poet1, $poet2, $poet3) {
            [
                "Choose the composition you think is best among these:\n\n",
                "1) Poem1: $poet1",
                "2) Poem2: $poet2",
                "3) Poem3: $poet3",
                "and copy it:"
            ].join("\n\n")
        };
 
my $gBestPoem = LLM::Graph.new(%rules);
say $gBestPoem(topic => 'hockey', style => 'limerick');

# Tried to get the result of a broken Promise
#   in block  at /home/doom/Dust/Sys/Raku/rakudo-star-2023.02/share/perl6/site/sources/1003ED3F0E2F15EC732FF390113D8A60D3504600 (LLM::Graph) line 364


exit;

say $gBestPoem;
# OUTPUT:
# LLM::Graph(size => 4, nodes => judge, poet1, poet2, poet3)

say $gBestPoem.nodes<judge>;
# OUTPUT:
# sub { }
## ?

say 	$gBestPoem.dot(engine => 'dot', node-width => 1.2 ):svg;
# OUTPUT:
## No graph.



