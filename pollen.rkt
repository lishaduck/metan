#lang pollen/mode racket/base
(require pollen/tag)
(require pollen/decode)
(require txexpr)

(provide (all-defined-out))

; Add some tags here!
(define-tag-function (em attributes elements)
    (txexpr 'em attributes elements))

; Smart quotes and dashes!
(define-tag-function (root attributes elements)
  (txexpr 'main
          empty
          (decode-elements elements
                           #:txexpr-elements-proc decode-paragraphs
                           #:string-proc (compose1 smart-quotes smart-dashes))))
