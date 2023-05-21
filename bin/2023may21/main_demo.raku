#!/usr/bin/env raku
# 
# main_demo.raku            21 May 2023 

use v6;


## https://new-raku.finanalyst.org/routine/MAIN

# This program generates the following usage message:

# Usage:
#   main_demo [--profile[=name]] [--debug-port=] [-v] 
#   main_demo --process-files [ ...]
 
#     --profile[=name]       Write profile information to a file
#     --debug-port=    Listen for debugger connections on the specified port
#     -v                     Display verbose output

# The following are valid ways to call main_demo:

# main_demo --profile ~/foo
# main_demo --profile=/tmp/bar ~/foo
# main_demo --debug-port 4242 ~/foo
# main_demo --debug-port=4242 ~/foo
# main_demo -v ~/foo
# main_demo --process-files *.jpg




subset name of Any where Str|True;
subset port of Str;
multi MAIN(
    $file,
    name :$profile,    #= Write profile information to a file 
    port :$debug-port, #= Listen for debugger connections on the specified port 
    Bool :v($verbose), #= Display verbose output 
) {}
multi MAIN("--process-files", *@images) {}



