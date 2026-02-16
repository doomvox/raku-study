#!/usr/bin/env raku
# 
# bruce_triplism-working_5.raku            15 Feb 2026 

use v6;

# <ABC CBA> X <ADE EDA>

# raku -e '.say for [X] @*ARGS.map({$_, .flip})' ABC ADE AGF BDF BEG CDG CFE


.say for [X] @*ARGS.map({$_, .flip})
