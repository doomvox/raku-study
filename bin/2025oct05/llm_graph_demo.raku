#!/usr/bin/env raku
# 
# llm_graph_demo.raku            05 Oct 2025 

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

say $gBestPoem;
# LLM::Graph(size => 4, nodes => judge, poet1, poet2, poet3)

