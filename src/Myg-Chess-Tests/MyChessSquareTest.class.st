Class {
	#name : 'MyChessSquareTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyChessSquareTest >> testContents [

	| square pawn |
	square := MyChessSquare new.
	pawn := MyPawn white.
	square contents: pawn.
	self assert: square contents = pawn.

	square emptyContents.
	self assert: square contents isNil
]
