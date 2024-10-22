Class {
	#name : 'MyRoleTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyRoleTest >> testMoves [

	| bishop squares board |
	board := MyChessBoard empty.
	board at: 'e4' put: (bishop := MyBishop white).

	"Appel mouvement normal du fou"
	squares := bishop targetSquaresLegal: false.

	self
		assertCollection: squares
		includesAll:
			(#( f5 g6 h7 f3 g2 h1 d5 c6 b7 a8 d3 c2 b1 ) collect: [ :name |
				 board at: name ])
]
