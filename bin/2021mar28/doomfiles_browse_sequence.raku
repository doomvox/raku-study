#!/usr/bin/env perl6
# 
# doomfiles_browse_sequence.raku            28 Mar 2021 

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
    # Traditional:  McNODE_NAME
    regex node_name   { <[A..Zc_-]>*? }  
    regex label       { <-[<]>*? } # > 
    }


my $loc = "/home/doom/End/Stage/Mirthless/doomfiles";
my $file = 'TOP.html';



my $full_file = "$loc/$file";
my $match = df.parsefile( $full_file ); 
my $next_node = $match.[0].<node_name>; 
say $next_node;


sub handle_first_node {
    my $init = "TOP.html";
    my $loc = "/home/doom/End/Stage/Mirthless/doomfiles";  ## TODO better to use pwd?
    for "$loc/$init".IO.lines -> $line {
        my $match = df.parse( $line, :rule('next_link') ); 
        my $next_node = $match.<body><control_2>.<next_link>.[0].<node_name>; 

    }


}

