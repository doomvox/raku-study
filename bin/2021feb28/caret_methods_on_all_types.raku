#!/usr/bin/env perl6
# 
# caret_methods_on_all_types.raku            Rev: 06 Mar 2021 

use v6;

# .say for Str.^methods;       

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
my @WORKIES;
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
        if ( $count > 0 ) {
            @PROBLEM_CASES.push( $class );
        } else {
            @WORKIES.push( $class );
        }
    }
    say "Number of classes that show problem: ", @PROBLEM_CASES.elems; # 48
    say "Number of classes that seem okay: ", @WORKIES.elems; # 
    # Number of classes that show problem:  48
    # Number of classes that seem okay:    281
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

### TODO alternate approach: scan through all classes looking for .name ne .gist cases?

## For now:
## Work with @PROBLEM_CASES, which are classes with 1 or more {Method+{is-nodal} .gist

{
    my @report;
    my $line = '';
    for @PROBLEM_CASES -> $pc {
        $line  =  'mro: ';
        $line ~= ::($pc).^mro.gist;
        $line ~= "  for $pc";
        @report.push($line);
    }
    @report.sort>>.say;

# mro: ((Any) (Mu))  for Any
# mro: ((ArgFiles) (CatHandle) (Handle) (Any) (Mu))  for IO::ArgFiles
# mro: ((Array) (List) (Cool) (Any) (Mu))  for Array
# mro: ((Async) (Any) (Mu))  for IO::Socket::Async
# mro: ((Backtrace) (Any) (Mu))  for Backtrace
# mro: ((Bag) (Any) (Mu))  for Bag
# mro: ((BagHash) (Any) (Mu))  for BagHash
# mro: ((Capture) (Any) (Mu))  for Capture
# mro: ((CatHandle) (Handle) (Any) (Mu))  for IO::CatHandle
# mro: ((Channel) (Any) (Mu))  for Channel
# mro: ((ClassHOW) (Any) (Mu))  for Metamodel::ClassHOW
# mro: ((ConcreteRoleHOW) (Any) (Mu))  for Metamodel::ConcreteRoleHOW
# mro: ((CurriedRoleHOW) (Any) (Mu))  for Metamodel::CurriedRoleHOW
# mro: ((Endian) (Int) (Cool) (Any) (Mu))  for Endian
# mro: ((EnumHOW) (Any) (Mu))  for Metamodel::EnumHOW
# mro: ((Grammar) (Match) (Capture) (Cool) (Any) (Mu))  for Grammar
# mro: ((Handle) (Any) (Mu))  for IO::Handle
# mro: ((Hash) (Map) (Cool) (Any) (Mu))  for Hash
# mro: ((HyperSeq) (Any) (Mu))  for HyperSeq
# mro: ((List) (Cool) (Any) (Mu))  for List
# mro: ((Map) (Cool) (Any) (Mu))  for Map
# mro: ((Match) (Capture) (Cool) (Any) (Mu))  for Match
# mro: ((Mix) (Any) (Mu))  for Mix
# mro: ((MixHash) (Any) (Mu))  for MixHash
# mro: ((NFC) (Uni) (Any) (Mu))  for NFC
# mro: ((NFD) (Uni) (Any) (Mu))  for NFD
# mro: ((NFKC) (Uni) (Any) (Mu))  for NFKC
# mro: ((NFKD) (Uni) (Any) (Mu))  for NFKD
# mro: ((Order) (Int) (Cool) (Any) (Mu))  for Order
# mro: ((PackageHOW) (Any) (Mu))  for Metamodel::PackageHOW
# mro: ((Pair) (Any) (Mu))  for Pair
# mro: ((ParametricRoleGroupHOW) (Any) (Mu))  for Metamodel::ParametricRoleGroupHOW
# mro: ((ParametricRoleHOW) (Any) (Mu))  for Metamodel::ParametricRoleHOW
# mro: ((Parts) (Any) (Mu))  for IO::Path::Parts
# mro: ((Pipe) (Handle) (Any) (Mu))  for IO::Pipe
# mro: ((Promise) (Any) (Mu))  for Promise
# mro: ((PseudoStash) (Map) (Cool) (Any) (Mu))  for PseudoStash
# mro: ((RaceSeq) (Any) (Mu))  for RaceSeq
# mro: ((Range) (Cool) (Any) (Mu))  for Range
# mro: ((Seq) (Cool) (Any) (Mu))  for Seq
# mro: ((Set) (Any) (Mu))  for Set
# mro: ((SetHash) (Any) (Mu))  for SetHash
# mro: ((Slip) (List) (Cool) (Any) (Mu))  for Slip
# mro: ((Stash) (Hash) (Map) (Cool) (Any) (Mu))  for Stash
# mro: ((Supply) (Any) (Mu))  for Supply
# mro: ((Uni) (Any) (Mu))  for Uni
# mro: ((utf8) (Any) (Mu))  for utf8
# mro: (Nil (Cool) (Any) (Mu))  for Nil

}

say "===WORKIES===";
# {
#     my @report;
#     my $line = '';
#     for @WORKIES.unique -> $wc {
#         $line  =  'mro: ';
#         # $line ~= ::($wc).^mro.gist;
#         #   You know what's bleeding annoying?
#         #   "This exception is not resumable" that's what.
#  #       $line ~= run(«raku -e "$wc.^mro"», :out).out.slurp;

#         ## This sledge hammer isn't working either
#         ##        $line ~= run(«raku -e "$wc.^mro"», :out).out.slurp;

#         $line ~= "  for $wc";
#         @report.push($line);
#     }
#     @report.sort>>.say;
# #    CATCH { default { say "CAUGHT: ", .Str; .resume } }
# }


### This stuff isn't working on WORKIES:

# {
#     my @report;
#     my $line = '';
#     for @WORKIES -> $wc {
#         my $mro;
#         try {
#             $mro = ::($wc).^mro;
#             CATCH { when X::Method::NotFound
#                     { say "skipping $wc because ^mro method not found"; }
#                     when X::NoSuchSymbol 
#                     { say "skipping $wc because X::NoSuchSymbol"; }
#                     when X::Parameter::InvalidConcreteness 
#                     { if $wc eq 'Failure' { } else { warn; } }
#                   };
#         }

#         if ($mro) { 
#             $line  =  'mro: ';
#             $line  ~=  $mro;
#             $line  ~= "  for $wc";
#             @report.push($line);
#         };
#     }
#     @report.sort>>.say;
# }


# ===WORKIES===
# skipping Associative because ^mro method not found
# Cannot look up attributes in a AST type object
#   in block  at /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021feb28/demo_caret_methods.raku line 361
#   in block <unit> at /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021feb28/demo_caret_methods.raku line 320



@WORKIES>>.say;

# ===WORKIES===
# Associative
# AST
# atomicint
# Attribute
# Backtrace::Frame
# Baggy
# Blob
# Block
# Bool
# Buf
# Callable
# CallFrame
# Cancellation
# Code
# Collation
# Compiler
# Complex
# ComplexStr
# CompUnit
# CompUnit::PrecompilationRepository
# CompUnit::Repository
# CompUnit::Repository::FileSystem
# CompUnit::Repository::Installation
# Cool
# CurrentThreadScheduler
# CX::Done
# CX::Emit
# CX::Last
# CX::Next
# CX::Proceed
# CX::Redo
# CX::Return
# CX::Succeed
# CX::Take
# CX::Warn
# Date
# Dateish
# DateTime
# Distribution
# Distribution::Hash
# Distribution::Locally
# Distribution::Path
# Distribution::Resource
# Distro
# Duration
# Encoding
# Encoding::Registry
# Enumeration
# Exception
# Failure
# FatRat
# ForeignCode
# HyperWhatever
# Instant
# Int
# int
# IntStr
# IO
# IO::Notification
# IO::Notification::Change
# IO::Path
# IO::Path::Cygwin
# IO::Path::QNX
# IO::Path::Unix
# IO::Path::Win32
# IO::Socket
# IO::Socket::Async::ListenSocket
# IO::Socket::INET
# IO::Spec
# IO::Spec::Cygwin
# IO::Spec::QNX
# IO::Spec::Unix
# IO::Spec::Win32
# IO::Special
# Iterable
# Iterator
# Junction
# Kernel
# Label
# Lock
# Lock::Async
# Macro
# Metamodel::AttributeContainer
# Metamodel::C3MRO
# Metamodel::DefiniteHOW
# Metamodel::Documenting
# Metamodel::Finalization
# Metamodel::MethodContainer
# Metamodel::Mixins
# Metamodel::MROBasedMethodDispatch
# Metamodel::MultipleInheritance
# Metamodel::Naming
# Metamodel::Primitives
# Metamodel::PrivateMethodContainer
# Metamodel::RoleContainer
# Metamodel::RolePunning
# Metamodel::Stashing
# Metamodel::Trusting
# Metamodel::Versioning
# Method
# Mixy
# Mu
# Num
# Numeric
# NumStr
# ObjAt
# Parameter
# Perl
# Pod::Block
# Pod::Block::Code
# Pod::Block::Comment
# Pod::Block::Declarator
# Pod::Block::Named
# Pod::Block::Para
# Pod::Block::Table
# Pod::Defn
# Pod::FormattingCode
# Pod::Heading
# Pod::Item
# Positional
# PositionalBindFailover
# PredictiveIterator
# Proc
# Proc::Async
# Proxy
# QuantHash
# Raku
# Rat
# Rational
# RatStr
# Real
# Regex
# Routine
# Routine::WrapHandle
# Scalar
# Scheduler
# Semaphore
# Sequence
# Setty
# Signature
# Str
# StrDistance
# Stringy
# Sub
# Submethod
# Supplier
# Supplier::Preserving
# Systemic
# Tap
# Telemetry
# Telemetry::Instrument::Thread
# Telemetry::Instrument::ThreadPool
# Telemetry::Instrument::Usage
# Telemetry::Period
# Telemetry::Sampler
# Test
# Thread
# ThreadPoolScheduler
# UInt
# ValueObjAt
# Variable
# Version
# VM
# Whatever
# WhateverCode
# X::AdHoc
# X::Anon::Augment
# X::Anon::Multi
# X::Assignment::RO
# X::Attribute::NoPackage
# X::Attribute::Package
# X::Attribute::Required
# X::Attribute::Undeclared
# X::Augment::NoSuchType
# X::Bind
# X::Bind::NativeType
# X::Bind::Slice
# X::Caller::NotDynamic
# X::Cannot::Lazy
# X::Channel::ReceiveOnClosed
# X::Channel::SendOnClosed
# X::Comp
# X::Composition::NotComposable
# X::Constructor::Positional
# X::Control
# X::ControlFlow
# X::ControlFlow::Return
# X::DateTime::TimezoneClash
# X::Declaration::Scope
# X::Declaration::Scope::Multi
# X::Does::TypeObject
# X::Dynamic::NotFound
# X::Eval::NoSuchLang
# X::Export::NameClash
# X::Inheritance::NotComposed
# X::Inheritance::Unsupported
# X::IO
# X::IO::Chdir
# X::IO::Chmod
# X::IO::Copy
# X::IO::Cwd
# X::IO::Dir
# X::IO::DoesNotExist
# X::IO::Link
# X::IO::Mkdir
# X::IO::Move
# X::IO::Rename
# X::IO::Rmdir
# X::IO::Symlink
# X::IO::Unlink
# X::Method::InvalidQualifier
# X::Method::NotFound
# X::Method::Private::Permission
# X::Method::Private::Unqualified
# X::Mixin::NotComposable
# X::NoDispatcher
# X::Numeric::Real
# X::NYI
# X::Obsolete
# X::OS
# X::OutOfRange
# X::Package::Stubbed
# X::Parameter::Default
# X::Parameter::MultipleTypeConstraints
# X::Parameter::Placeholder
# X::Parameter::Twigil
# X::Parameter::WrongOrder
# X::Phaser::Multiple
# X::Phaser::PrePost
# X::Placeholder::Block
# X::Placeholder::Mainline
# X::Pod
# X::Proc::Async
# X::Proc::Async::AlreadyStarted
# X::Proc::Async::BindOrUse
# X::Proc::Async::CharsOrBytes
# X::Proc::Async::MustBeStarted
# X::Proc::Async::OpenForWriting
# X::Proc::Async::TapBeforeSpawn
# X::Proc::Unsuccessful
# X::Promise::CauseOnlyValidOnBroken
# X::Promise::Vowed
# X::Redeclaration
# X::Role::Initialization
# X::Scheduler::CueInNaNSeconds
# X::Seq::Consumed
# X::Sequence::Deduction
# X::Signature::NameClash
# X::Signature::Placeholder
# X::Str::Numeric
# X::StubCode
# X::Syntax
# X::Syntax::Augment::WithoutMonkeyTyping
# X::Syntax::Comment::Embedded
# X::Syntax::Confused
# X::Syntax::InfixInTermPosition
# X::Syntax::Malformed
# X::Syntax::Missing
# X::Syntax::NegatedPair
# X::Syntax::NoSelf
# X::Syntax::Number::RadixOutOfRange
# X::Syntax::P5
# X::Syntax::Perl5Var
# X::Syntax::Regex::Adverb
# X::Syntax::Regex::SolitaryQuantifier
# X::Syntax::Reserved
# X::Syntax::Self::WithoutObject
# X::Syntax::Signature::InvocantMarker
# X::Syntax::Term::MissingInitializer
# X::Syntax::UnlessElse
# X::Syntax::Variable::Match
# X::Syntax::Variable::Numeric
# X::Syntax::Variable::Twigil
# X::Temporal
# X::Temporal::InvalidFormat
# X::TypeCheck
# X::TypeCheck::Assignment
# X::TypeCheck::Binding
# X::TypeCheck::Return
# X::TypeCheck::Splice
# X::Undeclared

## 

## Some spot checks of ^mro for WORKIES

# raku -e 'say Date.^mro'
# ((Date) (Any) (Mu))
# raku -e 'say Thread.^mro'
# ((Thread) (Any) (Mu))
# raku -e 'say Bool.^mro'
# ((Bool) (Int) (Cool) (Any) (Mu))

## note Any occurs here too.

## many of WORKIES won't let you call ^mro on them. 


