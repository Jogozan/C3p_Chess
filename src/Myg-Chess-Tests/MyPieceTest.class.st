Class {
	#name : 'MyPieceTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyPieceTest >> testColor [

	| piece |
	piece := MyPiece new.
	piece color: Color white.
	self assert: piece color equals: Color white.

	piece color: Color black.
	self assert: piece color equals: Color black
]

{ #category : 'tests' }
MyPieceTest >> testIsBlack [
    | piece |
    piece := MyPiece black.
    self deny: piece isWhite.
]

{ #category : 'tests' }
MyPieceTest >> testIsWhite [
    | piece |
    piece := MyPiece white.
    self assert: piece isWhite.
]

{ #category : 'tests' }
MyPieceTest >> testSquare [
    | square piece |
    square := MyChessSquare new.
    piece := MyPiece new.
    piece square: square.
    self assert: piece square = square.
]
