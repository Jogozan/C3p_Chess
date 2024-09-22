Class {
	#name : 'MyChessSquareTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyChessSquareTest >> testForegroundColorWhenSquareIsBlack [
	| piece square board |
	
	piece := MyKing black.
	board := MyChessBoard empty.
	board at: 'e4' put: piece.

	square := MyChessSquare new.
	square color: Color black.
	square board: board.

	self assert: (square foreground = board blackColor) 
	

	
]

{ #category : 'tests' }
MyChessSquareTest >> testForegroundColorWhenSquareIsWhite [
	| piece square board |
	
	piece := MyKing white.
	board := MyChessBoard empty.
	board at: 'e4' put: piece.

	square := MyChessSquare new.
	square color: Color white.
	square board: board.

	self assert: (square foreground = board whiteColor) 
]
