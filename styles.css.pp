#lang pollen

◊(define inner 2)
◊(define edge (* inner 2))
◊(define color "cornflowerblue")
◊(define multiplier 1.3)

body {
    margin: ◊|edge|em;
    border: ◊|inner|em double ◊|color|;
    padding: ◊|inner|em;
    font-size: ◊|multiplier|em;
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    background-color: aliceblue;
    line-height: ◊|multiplier|;
}

h1 {
    color: dodgerblue;
    font-size: ◊|multiplier|em;
}

p {
    color: steelblue;
}

#prev, #next {
    position: fixed;
    top: ◊|(/ edge 2)|em;
}

#prev {
    left: ◊|edge|em;
}

#next {
    right: ◊|edge|em;
}
