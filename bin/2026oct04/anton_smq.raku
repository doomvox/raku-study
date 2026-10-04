#!/usr/bin/env raku

use Proc::ZMQed::Raku;

my Proc::ZMQed::Raku $rakuProc;

$rakuProc .= new(url => 'tcp://127.0.0.1', port => '5556', cli-name => $*HOME.add(<.local bin rakupp>).Str);

$rakuProc.start-proc(setup-lines => Empty, :!proclaim);

say '$*RAKU.compiler.id : ', $rakuProc.evaluate('$*RAKU.compiler.id');
say '$*RAKU.compiler.codename : ', $rakuProc.evaluate('$*RAKU.compiler.codename');

say $rakuProc.evaluate('(30,40,2)>>.sqrt');

$rakuProc.terminate;

# Gives this:
# $*RAKU.compiler.id : "5.2.1"
# $*RAKU.compiler.codename : "Raku++"
# $(5.477225575051661e0, 6.324555320336759e0, 1.4142135623730951e0)
