"Este é um exemplo simples de código Smalltalk"

| x y z |
x := 10.
y := 20.
z := x + y.

z > 25 ifTrue: [
    'O valor é maior que 25' printNl.
] ifFalse: [
    'O valor é menor ou igual a 25' printNl.
].

Point new x: 10 y: 20.

#(1 2 3 4 5) do: [:each | each printNl].

^z
