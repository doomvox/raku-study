#!/usr/bin/env perl6
# 
# demo_caret_methods.raku            28 Feb 2021 

use v6;

# .say for Str.^methods;       ##  the caret stuff means this is okay

# ## that's a short hand for this:
# ## .say for Str.HOW.methods;

# ## why are other introspectors upper case?
# .say for Str.WHAT;           ## b.g.:  uppercase are alerts, something funny if you do this

# # design principle:  evil (including EVAL) should be greppable

# say "---";
# my @method_objects = Str.^methods;
# say @method_objects[0].WHAT;  # (Submethod)
# say "---";
# my $mo = @method_objects[0];
# say $mo.^methods.>>.name;

# ## buncha weird stuff:
# ## (gist <anon> <anon> unwrap <anon> <anon> <anon> wrap <anon> <anon> soft <anon> <anon> candidates <anon> <anon> multi cando <anon> <anon> <anon> leave <anon> <anon> raku gist <anon> <anon> onlystar <anon> package <anon> BUILDALL set_why of WHY POSITIONS add_phaser <anon> fire_if_phasers has-phasers fire_phasers returns <anon> has-phaser phasers <anon> raku BUILDALL line signature POSITIONS <anon> <anon> <anon> <anon> assuming returns <anon> file count of cando ACCEPTS is-implementation-detail Capture new <anon> static_id Str arity prec outer BUILDALL)

# my $anonymous_mo = @method_objects[1];
# say "--8--";
# say @method_objects[0].^method_names;  # (gist)

# say "---";
# say  Str.^methods;       

# my Str $a = "hey";
# say $a.^methods;

# ## (BUILD Capture Int Num Version chomp pred succ match subst-mutate parse-base samecase samemark samespace word-by-word trim-leading trim-trailing trim encode NFC NFD NFKC NFKD unival univals wordcase trans parse-names uniparse indent codes chars uc lc tc fc tclc flip ord Date DateTime IO WHY WHICH Bool Str Stringy DUMP ACCEPTS chop starts-with ends-with substr-eq contains indices index rindex Numeric gist raku comb subst ords lines split words substr substr-rw Submethod+{is-hidden-from-backtrace}.new)

# ## (BUILD Capture Int Num Version chomp pred succ match subst-mutate parse-base samecase samemark samespace word-by-word trim-leading trim-trailing trim encode NFC NFD NFKC NFKD unival univals wordcase trans parse-names uniparse indent codes chars uc lc tc fc tclc flip ord Date DateTime IO WHY WHICH Bool Str Stringy DUMP ACCEPTS chop starts-with ends-with substr-eq contains indices index rindex Numeric gist raku comb subst ords lines split words substr substr-rw Submethod+{is-hidden-from-backtrace}.new)

# say "---";


# say "---";
# {
#     say  Set.^methods;       

#     my Set $s = set 2, 4, 6;
#     say $s.^methods;

# # (iterator of new-from-pairs default elems total grab grabpairs pick pickpairs roll keyof STORE Int Num Numeric Real Capture fmt Setty Baggy Mixy WHICH Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new new Method+{is-nodal}.new Method+{is-nodal}.new minpairs maxpairs Bool Method+{is-nodal}.new Method+{is-nodal}.new ACCEPTS Str gist raku Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new BUILDALL)

# # (iterator of new-from-pairs default elems total grab grabpairs pick pickpairs roll keyof STORE Int Num Numeric Real Capture fmt Setty Baggy Mixy WHICH Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new new Method+{is-nodal}.new Method+{is-nodal}.new minpairs maxpairs Bool Method+{is-nodal}.new Method+{is-nodal}.new ACCEPTS Str gist raku Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new BUILDALL)


#     ## say .name for Set.^methods;

#     my @sm1 =  Set.^methods>>.name;       

#     my $s2 = set 2, 4, 6;
#     my @sm2 = $s.^methods>>.name;

#     say @sm2.Bag (-) @sm1.Bag;  #  Bag()

#     say @sm1.grep( /'Method+{is-nodal}'/ ); # ()

#     ## p5ishness
#     ## /\Qreally+not\E/

#     ## p5
#     ##       my $rule = qr{ stuff }xms;

#     ##      s/match me/{change to} 

# #     $thing = ~ s/(match me)/
# #                   {
# #                       change_to($1)
# #                   }exg;

# #     s///e
 
# }

# {
#     say "===X===";
# #    use MONKEY;
#     my @classes = < Set Date Str >;
#     for @classes -> $c {
#         say "c: $c";
# #         my @stuff =  EVAL "$c.^methods>>.gist";
# #         say  "weirdzo count: ", @stuff.grep(/'Method+{is-nodal}.new'/).elems;

#         my @other = ::($c).^methods>>.gist;
#         say  "weirdzo count: ", @other.grep(/'Method+{is-nodal}.new'/).elems;
#     }
# }


# {
#     say "===Y===";
#     my $type_list_file = "/home/doom/End/Cave/Perl6/Wall/raku-study/type.lst";
#     my @lines = $type_list_file.IO.lines.skip;

#     for @lines -> $l {
#         my $c = $l.split( /\s+/ ).[0];
#         say "c: $c";
#         my @other;
#         try {
#             my @meth = ::($c).^methods;
#             say "methodism: ", @meth;
#             @other = @meth>>.gist;
#             CATCH { when X::Method::NotFound
#                     { say "skipping $c because it's fuggheaded"; }
#                       when X::NoSuchSymbol 
#                       { say "Yaddah: X::NoSuchSymbol"; }
#                       when X::Parameter::InvalidConcreteness 
#                       {
#                           if $c eq 'Failure' {
#                               # return False;
#                           }
#                           else {
#                               warn;
#                           }
#                       }
#                   };
#         }
#         say  "weirdzo count: ", @other.grep(/'Method+{is-nodal}.new'/).elems;
#     }
# }


my @PROBLEM_CASES;
{
    say "===W===";
    my $type_list_file = "/home/doom/End/Cave/Perl6/Wall/raku-study/type.lst";
    my @lines = $type_list_file.IO.lines.skip;

    my @results;
    for @lines -> $l {
        my $c = $l.split( /\s+/ ).[0];
        my @other;
        try {
            my @meth = ::($c).^methods;   ## Note syntax for calling a method on class name in variable
            ## say "methodism: ", @meth;
            @other = @meth>>.gist;
            CATCH { when X::Method::NotFound
                    { say "skipping $c because gist method not found"; }
                    when X::NoSuchSymbol 
                    { say "skipping $c because X::NoSuchSymbol"; }
                    when X::Parameter::InvalidConcreteness 
                    { if $c eq 'Failure' { } else { warn; } }
                  };
        }
        @results.push( [ @other.grep(/'Method+{is-nodal}.new'/).elems, $c ] );
    }
    .say for @results.sort({ +.[0] });

    say "PC: ";
    for @results -> $r {
        my ($count, $class) = $r.values;
        @PROBLEM_CASES.push($class) if $count > 0;
    }
    say @PROBLEM_CASES.elems; # 48
}

## The 48 problem cases:

# [1 Channel]
# [1 IO::Handle]
# [1 IO::Pipe]
# [1 IO::Socket::Async]
# [1 Promise]
# [2 IO::ArgFiles]
# [2 IO::CatHandle]
# [2 NFC]
# [2 NFD]
# [2 NFKC]
# [2 NFKD]
# [2 Uni]
# [3 Endian]
# [3 Order]
# [4 Backtrace]
# [4 Nil]
# [4 utf8]
# [6 IO::Path::Parts]
# [8 Pair]
# [8 Supply]
# [9 Capture]
# [9 Grammar]
# [9 Match]
# [14 HyperSeq]
# [14 RaceSeq]
# [16 Seq]
# [17 Range]
# [17 SetHash]
# [18 Set]
# [19 Bag]
# [19 BagHash]
# [19 Mix]
# [19 MixHash]
# [20 Map]
# [22 PseudoStash]
# [25 Hash]
# [26 Stash]
# [36 List]
# [38 Slip]
# [51 Array]
# [75 Any]
# [75 Metamodel::ClassHOW]
# [75 Metamodel::ConcreteRoleHOW]
# [75 Metamodel::CurriedRoleHOW]
# [75 Metamodel::EnumHOW]
# [75 Metamodel::PackageHOW]
# [75 Metamodel::ParametricRoleGroupHOW]
# [75 Metamodel::ParametricRoleHOW]

{

    say "===ZZZ===";
    my @names = IO::Handle.^methods>>.name;
    my @gists = IO::Handle.^methods>>.gist;

    say @names;

    say @gists (-) @names;
    # Set(Method+{is-nodal}.new Submethod+{is-hidden-from-backtrace}.new)

    say @names (-) @gists;
    # Set(BUILDALL Supply)

    for IO::Handle.^methods -> $mo {
        my $gist = $mo.gist;
        my $name = $mo.name;

        if ($name eq "BUILDALL") {
            say $gist;  # Method+{is-nodal}.new
        }
        if ($name eq "Supply") {
            say $gist;  # Submethod+{is-hidden-from-backtrace}.new
        }
    }

}

### alternate approach: scan through all classes looking for .name ne .gist cases?

