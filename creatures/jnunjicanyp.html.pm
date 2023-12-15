#lang pollen/markup

◊define-meta[title "Jnunjicanyp"]

◊define[name "Jnunjicanyp"]
◊define[family "Glowitail"]
◊define[primary-type "Bug"]
◊define[rarity "???"]

◊(module+ info racket/base
  (define jnunjicanyp-name name)
  (define jnunjicanyp-family family)
  (define jnunjicanyp-primary-type primary-type)
  (define jnunjicanyp-rarity rarity)

  (provide (all-defined-out)))

◊h1{
    ◊|name|, ◊|primary-type| of ◊|family|
}

◊bio{
    Jnunjicanyp is a buggy(!) ◊em{thing} that does ◊strong{stuff}?
}

◊trivia{
    ◊strong{Trivia:} ◊em{Jnunjicanyp} is allegedly a portmanteau of ◊em{Jupyter} and ◊em{canopy}.
}
