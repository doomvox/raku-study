;;; slide_definitions.el --- 

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
    ( a . "/home/doom/End/Cave/Perl6/Wall/raku-study/notes/meeting_2021sep26.md" )
    ;; 
    ( b . "/home/doom/End/Cave/Perl6/Wall/raku-study/notes/talks/multidispatch_vs_case/intro.txt" )

    ;; basic code examples
    ( c . "/home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021sep26/01-the_given_when_case.raku" )   
    ( d . "/home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021sep26/02-the_multi_dispatch_case.raku" )   

    ;; a bad omission from the documentation: multi-dispatch and subsets
    ( e . "/home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021sep26/multi_dispatch_with_overlapping_subset_types.raku" )   

    ( f . "" )



    ( A . "/home/doom/End/Cave/DataMathRaku/Wall/Data-MapDual/lib/Data/Qualify.rakumod" )
    ( B . "/home/doom/End/Cave/DataMathRaku/Wall/Data-MapDual/lib/Data/Dualmap.rakumod" )
    ( C . "/home/doom/End/Cave/DataMathRaku/Wall/Data-MapDual/lib/Data/Dualmap/Internal.rakumod" )
    ( D . "/home/doom/End/Cave/DataMathRaku/Wall/Data-MapDual/t/01-qualify_dyad.t")
    ( E . "/home/doom/End/Cave/DataMathRaku/Wall/Data-MapDual/t/02-dualmap.t" )
    ( F . "/home/doom/End/Cave/DataMathRaku/Wall/Data-MapDual/t/03-dualmap_codeblocks.t" )
    ( G . "/home/doom/End/Cave/DataMathRaku/bin/perl_sort_demo.pl" )
    ( H . "/home/doom/End/Cave/DataMathRaku/Notes/raku_bits_from_dualmap.org" )

    ( z . "/home/doom/End/Cave/Perl6/Wall/raku-study/notes/talks/multidispatch_vs_case/slide_definitions.el" )

   ))



;; LICENSE

;; This program is free software; you can redistribute it and/or modify
;; it under the same terms as the version of GNU Emacs you intend to use it with.

;; At present, GNU Emacs is under the GNU General Public License version 3
;; or (at your option) any later version.  This license is as published by
;; the Free Software Foundation.

;; You should have received a copy of the GNU General Public License
;; along with this program; if not, write to the Free Software
;; Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;;; slide_definitions.el ends here
