#!/usr/bin/env perl6
# 
# doomfiles_browse_sequence-ii.raku            28 Mar 2021 

use v6;

my grammar df {
    regex TOP         { '<HTML>'  <head><body> '</HTML>' \s*                                                       }
    regex head        { '<HEAD>' \s* <title> '</HEAD>' \s*                                                         }
    regex title       { '<TITLE>' 'The doomfiles' ' - ' <node_name> '.html' '</TITLE>' \s*                         }
    regex body        { '<BODY>' \s*  <control_1>  \s* <h1> \s* '<PRE>' <stuff> <control_2> '</PRE>' '</BODY>' \s* }
    regex control_1   { '<PRE>' \s+ <prev_link> \s+ <link> \s* '</PRE>'                                            }
    regex h1          { '<H1' [\s+ 'align="left"'] '>' <node_name> '</H1>'                                         }
    regex ruler       { '--------'                                                                                 }
    regex control_2   { <ruler> \s+ <next_link> \s*                                                                }
    regex stuff       { ( .*? )                                                                                    }

    regex link        { '<A' \s+ 'HREF="' <node_name> '.html' '">' <label> '</A>'                                  }

    regex prev_link   { '<A' \s+ 'HREF="' ( <node_name> ) '.html' '">' '[PREV -' \s+ {} $0 ']' '</A>'              }
    regex next_link   { '<A' \s+ 'HREF="' ( <node_name> ) '.html' '">' '[NEXT -' \s+ {} $0 ']' '</A>'              }

#    regex node_name   { <-[.]>*? }  ## first cut, better to be explicit
    # Traditional:  McNODE_NAME_7
    regex node_name   { <[A..Zc0..9_-]>*? }  
    regex label       { <-[<]>*? } # > 
    }

my $loc = "/home/doom/End/Stage/Mirthless/doomfiles";
chdir( $loc );

my $init = 'TOP';
say $init;
my $init_file = "$init.html";

my $node = handle_first_node( $init_file );
say $node.Str;

do_rest_whole_parse( $node.Str );

sub do_rest_whole_parse() {
while ( $node ) {
    my $file="$node.html";
    my $match = df.parsefile( $file ); 
    $node = $match.<body><control_2>.<next_link>.[0].<node_name>; 
    say $node.Str if $node;
}
}

sub handle_first_node ( Str $init = 'TOP.html') {
#    my $init = "TOP.html";
#    my $loc = "/home/doom/End/Stage/Mirthless/doomfiles";  ## TODO better to use pwd?
    my $next_node;
    for "$init".IO.lines -> $line {
        my $match = df.parse( $line, :rule('next_link') ); 
        $next_node = $match.[0].<node_name>; 
        last if $match;
    }
    return $next_node;
}


### Eeek
### 
## ...
# ACT_ONE
# IMPROPER_BOHEMIANS
# GREENWICH_SECEDES
# BURNING_MOMENTS
# MoarVM panic: Memory allocation failed; could not allocate 1007328 bytes
