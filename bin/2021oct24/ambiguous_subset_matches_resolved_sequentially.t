use v6;
use Test;
use lib $?FILE.IO.parent(2).add("packages/Test-Helpers");
use Test::Util;

plan 91;

## Imitating the style in:
##   /home/doom/End/Cave/Raku/Wall/roast/S12-subset/subtypes.t


# https://github.com/Raku/roast/issues/650
group-of 6 => '`&`- sigiled variable be used in where' => {
    my $wanted;
    sub pos-match               { $wanted = $^got; True  }
    sub neg-match               { $wanted = $^got; False }
    my &pos-match-block =       { $wanted = $^got; True  }
    my &neg-match-block =       { $wanted = $^got; False }
    my &pos-match-wat   = *.map({ $wanted = $^got; True  }).head;
    my &neg-match-wat   = *.map({ $wanted = $^got; False }).head;

    group-of 12 => 'subset' => {
        $wanted = Nil;

        my subset PosSubset where &pos-match;
        my subset NegSubset where &neg-match;
        ok  42 ~~ PosSubset,   'pos';
        is-deeply $wanted, 42, 'pos arg';
        nok 73 ~~ NegSubset,   'neg';
        is-deeply $wanted, 73, 'neg arg';

        my subset PosSubsetB where &pos-match-block;
        my subset NegSubsetB where &neg-match-block;
        ok  42 ~~ PosSubsetB,  'pos block';
        is-deeply $wanted, 42, 'pos arg block';
        nok 73 ~~ NegSubsetB,  'neg block';
        is-deeply $wanted, 73, 'neg arg block';

        my subset PosSubsetW where &pos-match-wat;
        my subset NegSubsetW where &neg-match-wat;
        ok  42 ~~ PosSubsetW,  'pos Whatever';
        is-deeply $wanted, 42, 'pos arg Whatever';
        nok 73 ~~ NegSubsetW,  'neg Whatever';
        is-deeply $wanted, 73, 'neg arg Whatever';
    }

    group-of 12 => 'my' => {
        $wanted = Nil;

        my $pos where &pos-match = 42;
        is-deeply $pos,    42, 'pos';
        is-deeply $wanted, 42, 'pos arg';
        throws-like { my $z where &neg-match = 73 },
            X::TypeCheck::Assignment, 'neg';
        is-deeply $wanted, 73, 'neg arg';

        my $pos-b where &pos-match-block = 42;
        is-deeply $pos-b,  42, 'pos block';
        is-deeply $wanted, 42, 'pos arg block';
        throws-like { my $z-b where &neg-match-block = 73 },
            X::TypeCheck::Assignment, 'neg block';
        is-deeply $wanted, 73, 'neg arg block';

        my $pos-w where &pos-match-wat = 42;
        is-deeply $pos-w,  42, 'pos Whatever';
        is-deeply $wanted, 42, 'pos arg Whatever';
        throws-like { my $z-w where &neg-match-wat = 73 },
            X::TypeCheck::Assignment, 'neg Whatever';
        is-deeply $wanted, 73,  'neg arg Whatever';
    }

    group-of 12 => 'sub signature, simple' => {
        $wanted = Nil;

        sub test-pos ($x where &pos-match)
          { is-deeply $x, 42, "sub called with right arg value [sub]" }
        sub test-neg ($ where &neg-match)
          { flunk "sub should not be called [sub]" }
        test-pos 42;
        is-deeply $wanted, 42, 'pos arg';
        throws-like { test-neg 73 }, X::TypeCheck, 'neg';
        is-deeply $wanted, 73, 'neg arg';

        sub test-pos-block ($x where &pos-match-block)
          { is-deeply $x, 42, "sub called with right arg value [block]" }
        sub test-neg-block ($ where &neg-match-block)
          { flunk "sub should not be called [block]" }
        test-pos-block 42;
        is-deeply $wanted, 42, 'pos arg block';
        throws-like { test-neg-block 73 }, X::TypeCheck, 'neg block';
        is-deeply $wanted, 73, 'neg arg block';

        sub test-pos-wat ($x where &pos-match-wat)
          { is-deeply $x, 42, "sub called with right arg value [Whatever]" }
        sub test-neg-wat ($ where &neg-match-wat)
          { flunk "sub should not be called [Whatever]" }
        test-pos-wat 42;
        is-deeply $wanted, 42, 'pos arg wat';
        throws-like { test-neg-wat 73 }, X::TypeCheck, 'neg wat';
        is-deeply $wanted, 73, 'neg arg wat';
    }

    group-of 12 => 'sub signature, multi-dispatch' => {
        $wanted = Nil;

        multi test-pos ($x where &pos-match)
          { is-deeply $x, 42, "sub called with right arg value [sub]" }
        multi test-pos (Str $)
          { flunk "wrong multi candidate must not be called [sub]" }
        multi test-neg ($ where &neg-match)
          { flunk "wrong multi candidate 1 must not be called [sub]" }
        multi test-neg (Str $)
          { flunk "wrong multi candidate 2 must not be called [sub]" }
        test-pos 42;
        is-deeply $wanted, 42, 'pos arg';
        is &test-neg.cando(\(73)).elems, 0, 'neg';
        is-deeply $wanted, 73, 'neg arg';

        multi test-pos-block ($x where &pos-match-block)
          { is-deeply $x, 42, "sub called with right arg value [block]" }
        multi test-pos-block (Str $)
          { flunk "wrong multi candidate must not be called [block]" }
        multi test-neg-block ($ where &neg-match-block)
          { flunk "wrong multi candidate 1 must not be called [block]" }
        multi test-neg-block (Str $)
          { flunk "wrong multi candidate 2 must not be called [block]" }
        test-pos-block 42;
        is-deeply $wanted, 42, 'pos arg block';
        is &test-neg-block.cando(\(73)).elems, 0, 'neg block';
        is-deeply $wanted, 73, 'neg arg block';

        multi test-pos-wat ($x where &pos-match-wat)
          { is-deeply $x, 42, "sub called with right arg value [Whatever]" }
        multi test-pos-wat (Str $)
          { flunk "wrong multi candidate must not be called [Whatever]" }
        multi test-neg-wat ($ where &neg-match-wat)
          { flunk "wrong multi candidate 1 must not be called [Whatever]" }
        multi test-neg-wat (Str $)
          { flunk "wrong multi candidate 2 must not be called [Whatever]" }
        test-pos-wat 42;
        is-deeply $wanted, 42, 'pos arg Whatever';
        is &test-neg-wat.cando(\(73)).elems, 0, 'neg Whatever';
        is-deeply $wanted, 73, 'neg arg Whatever';
    }

    group-of 21 => 'method signature, fancy' => {
        $wanted = Nil;

        my class Foo {
            method test-pos ($, $x where &pos-match, *@)
              { is-deeply $x, 42, "method called w/right arg val [sub]" }
            method test-neg ($, $ where &neg-match, *@)
              { flunk "method should not be called [sub]" }
            method test-wild (
              *@ ($x where &pos-match, *@ ($, $, $, $y where &pos-match, *@))
            ) {
                is-deeply $x, 42, 'method called w/right val in $x [sub]';
                is-deeply $y, 52, 'method called w/right val in $y [sub]';
            }
        }
        Foo.test-pos: Nil, 42, ^100;
        is-deeply $wanted, 42, 'pos arg';
        throws-like { Foo.test-neg: Nil, 73, ^100 }, X::TypeCheck, 'neg';
        is-deeply $wanted, 73, 'neg arg';
        Foo.test-wild: 42, 99, 70, 10, 52, ^100;
        # we do not spec in what order the `where` classes are called, so
        # check for both $x or $y values
        cmp-ok $wanted, '~~', 42|52, 'pos arg in wild method';

        $wanted = Nil;
        my class FooB {
            method test-pos ($, $x where &pos-match-block, *@)
              { is-deeply $x, 42, "method called w/right arg val [block]" }
            method test-neg ($, $ where &neg-match-block, *@)
              { flunk "method should not be called [block]" }
            method test-wild (
              *@ ($x where &pos-match-block,
                *@ ($, $, $, $y where &pos-match-block, *@))
            ) {
                is-deeply $x, 42, 'method called w/right val in $x [block]';
                is-deeply $y, 52, 'method called w/right val in $y [block]';
            }
        }
        FooB.test-pos: Nil, 42, ^100;
        is-deeply $wanted, 42, 'pos arg block';
        throws-like { FooB.test-neg: Nil, 73, ^100 }, X::TypeCheck, 'neg block';
        is-deeply $wanted, 73, 'neg arg block';
        FooB.test-wild: 42, 99, 70, 10, 52, ^100;
        # we do not spec in what order the `where` classes are called, so
        # check for both $x or $y values
        cmp-ok $wanted, '~~', 42|52, 'pos arg in wild method block';

        $wanted = Nil;
        my class FooWat {
            method test-pos ($, $x where &pos-match-wat, *@)
              { is-deeply $x, 42, "method called w/right arg val [Whatever]" }
            method test-neg ($, $ where &neg-match-wat, *@)
              { flunk "method should not be called [Whatever]" }
            method test-wild (
              *@ ($x where &pos-match-wat,
                *@ ($, $, $, $y where &pos-match-wat, *@))
            ) {
                is-deeply $x, 42, 'method called w/right val in $x [Whatever]';
                is-deeply $y, 52, 'method called w/right val in $y [Whatever]';
            }
        }
        FooWat.test-pos: Nil, 42, ^100;
        is-deeply $wanted, 42, 'pos arg Whatever';
        throws-like { FooB.test-neg: Nil, 73, ^100 },
            X::TypeCheck, 'neg Whatever';
        is-deeply $wanted, 73, 'neg arg Whatever';
        FooWat.test-wild: 42, 99, 70, 10, 52, ^100;
        # we do not spec in what order the `where` classes are called, so
        # check for both $x or $y values
        cmp-ok $wanted, '~~', 42|52, 'pos arg in wild method Whatever';
    }

    group-of 6 => 'detached signature object' => {
        $wanted = Nil;

        ok \(Nil, 42, 50, :73y)
          ~~ :($, $x where &pos-match, *@, *% (:$y where &pos-match)),
          'sig matches capture [sub]';
        # we do not spec in what order the `where` classes are called, so
        # check for both $x or $y values
        cmp-ok $wanted, '~~', 42|73, 'pos arg [sub]';

        $wanted = Nil;
        ok \(Nil, 42, 50, :73y) ~~
          :($, $x where &pos-match-block, *@, *% (:$y where &pos-match-block)),
          'sig matches capture [block]';
        # we do not spec in what order the `where` classes are called, so
        # check for both $x or $y values
        cmp-ok $wanted, '~~', 42|73, 'pos arg [block]';

        $wanted = Nil;
        ok \(Nil, 42, 50, :73y) ~~
          :($, $x where &pos-match-wat, *@, *% (:$y where &pos-match-wat)),
          'sig matches capture [Whatever]';
        # we do not spec in what order the `where` classes are called, so
        # check for both $x or $y values
        cmp-ok $wanted, '~~', 42|73, 'pos arg [Whatever]';
    }
}


