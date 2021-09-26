;;; slide_definitions.el ---                                               z

;; Copyright 2021 Joseph Brenner
;;
;; Author: doom@kzsu.stanford.edu
;; Version: $Id: slide_definitions.el,v 0.0 2021/06/08 21:18:11 doom Exp $
;; Keywords: 
;; X-URL: not distributed yet
;; License: the same as your GNU emacs (see below)

;;; Commentary:

;; 

;; Put this file into your load-path and the following into your ~/.emacs:
;;   (require 'slide_definitions)

;;; Code:

(provide 'slide_definitions)
(require 'cl-lib)

(require 'slip-and-slide)

;; STATUS: new project
(setq slip-and-slide-alist ;; A -> H   J   L -> O
  '(
    ;; general meeting notes
    ( a . "/home/doom/End/Cave/Perl6/Wall/raku-study/notes/meeting_2021sep26.org" )
    ;; 
    ( b . "/home/doom/End/Cave/Perl6/Wall/raku-study/notes/talks/multidispatch_vs_case/intro.txt" )

    ;; basic code examples
    ( c . "/home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021sep26/01-the_given_when_case.raku" )   
    ( d . "/home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021sep26/02-the_multi_dispatch_case.raku" )   

    ;; a bad omission from the documentation: multi-dispatch and subsets
    ( e . "/home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021sep26/multi_dispatch_with_overlapping_subset_types.raku" )   

    ;; minimal summary of the differences
    ( f . "/home/doom/End/Cave/Perl6/Wall/raku-study/notes/talks/multidispatch_vs_case/compare_multi_and_case.org" )

    ;; demo of Ambiguous call error
    ( g . "/home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021sep26/multi_dispatch_int_collision.raku")
    ;; demo of type specificity
    ( h . "/home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021sep26/multi_dispatch_with_positionals.raku")

    ;; brad gilbert mentions the case of IntStr/Int/Str
    ( i . "/home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021sep26/multi_dispatch_intstr_with_int_and_str.raku")

    ;; aside: raku IntStr type
    ( j . "/home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021sep26/playing_with_intstr.raku")
    ;; aside aside: perl5 dualvars
    ( k . "/home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021sep26/playing_with_dualvars.pl")

    ( l . "/home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021sep26/multi_dispatch_brad_gilbert_factorial.raku")


    ( z . "/home/doom/End/Cave/Perl6/Wall/raku-study/notes/talks/multidispatch_vs_case/slide_definitions.el" )
   ))


