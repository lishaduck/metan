#lang info
(define collection "metan")
(define deps
  '("base" ["pollen" #:version "3.2"] ["txexpr" #:version "0.2"]))
(define build-deps '("scribble-lib" "racket-doc" "rackunit-lib"))
(define scribblings '(("scribblings/metan.scrbl" ())))
(define pkg-desc "The Pollen-based documentation for an RPG.")
(define version "0.0")
(define pkg-authors '(lishaduck))
(define license '(Apache-2.0 OR MIT))
