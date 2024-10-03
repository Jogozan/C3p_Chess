Class {
	#name : 'MyDeleteTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyDeleteTest >> testAddPiceByClick [

	| board square piece |
	board := MyChessBoard empty.
	board at: 'e4' put: (piece := MyPawn white).
	square := 'e4'.
	board removePieceAt: square.
	self assert: (board at: square) isNil
]

{ #category : 'tests' }
MyDeleteTest >> testRemovePieceByClick [

	| board square piece |
	board := MyChessBoard empty.
	board at: 'e4' put: (piece := MyPawn white).
	square := 'e4'.
	board removePieceAt: square.
	self assert: (board at: square) isNil
]
