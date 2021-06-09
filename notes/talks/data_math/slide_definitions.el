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

(setq slip-and-slide-alist 
  '(
    ( a . "/home/doom/End/Cave/ChainLightning/Talks/05-DataMath/A-opening_slide.txt" )
    ( b . "/home/doom/End/Cave/ChainLightning/Talks/05-DataMath/B-intro-hash_subtraction.pl" )
    ( c . "/home/doom/End/Cave/ChainLightning/Talks/05-DataMath/C-aside_hash_as_scalar.rectpara" )
    ( d . "/home/doom/End/Cave/ChainLightning/Talks/05-DataMath/D-hash_subtraction_fixed.pl" )
    ( e . "/home/doom/End/Cave/ChainLightning/Talks/05-DataMath/E-hash_subtraction_fixier.pl" )
    ( f . "/home/doom/End/Cave/ChainLightning/Talks/05-DataMath/F-hash_subtraction_via_Data-Math.pl" )
    ( g . "/home/doom/End/Cave/ChainLightning/Talks/05-DataMath/G-arbitrary_structures_with_Data-Math.pl")
    ( h . "/home/doom/End/Cave/DataMath/Wall/Data-Math/lib/Data/Math.pm")
    ( i . "/home/doom/End/Cave/DataMath/Wall/Data-Math/t")
    ( j . "/home/doom/End/Cave/ChainLightning/Talks/05-DataMath/J-where_to_find.org" )    
    ( k . "/home/doom/End/Cave/ChainLightning/Talks/05-DataMath/K-hash_subtraction_in_raku.raku" )
    ( l . "/home/doom/End/Cave/ChainLightning/Talks/05-DataMath/L-thoughts_on_the_general_case_in_raku.org" )
    ( m . "/home/doom/End/Cave/ChainLightning/Talks/05-DataMath/M-thanks.org" )

    ;; a further subject:
    ;; the missing feature of user defined operations (passing an anon sub)
    ;; $a $b passing of sort routines is not really generally available in perl
    ;; in raku it is. 

    ( t . "/home/doom/End/Cave/ChainLightning/Talks/05-DataMath/" )
    ( z . "/home/doom/End/Cave/ChainLightning/Talks/05-DataMath/slide_definitions.el" )
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
