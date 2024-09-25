Class {
	#name : 'MyPawnTest',
	#superclass : 'TestCase',
	#instVars : [
		'board',
		'pawn'
	],
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'running' }
MyPawnTest >> setUp [

	super setUp.
	board := MyChessBoard .
	board initialize.
	pawn := MyPawn new.
	"Put here a common initialization logic for tests"
]

{ #category : 'tests' }
MyPawnTest >> testPawnPromotion [ [
    | promotionSquare promotedPiece |
    promotionSquare := board at: 'a8'.
    board at: 'a7' put: pawn.
    
    pawn moveTo: promotionSquare.
    
    promotedPiece := pawn promoteTo: MyQueen.

    self assert: (promotedPiece isKindOf: MyQueen).
    self assert: promotionSquare contents = promotedPiece.
]
]
