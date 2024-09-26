Class {
	#name : 'MyChessSquareTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'running' }
MyChessSquareTest >> setUp [
	super setUp.

	"Put here a common initialization logic for tests"
]

{ #category : 'tests' }
MyChessSquareTest >> testForegroundColorWhenSquareIsBlack [
	| piece square board |
	
	piece := MyKing black.
	board := MyChessBoard empty.
	board at: 'e4' put: piece.

	square := MyChessSquare new.
	square color: Color black.
	square board: board.

	self assert: square foreground equals: board blackColor.
	

	
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

	self assert: square foreground equals: board whiteColor.
]

{ #category : 'tests' }
MyChessSquareTest >> testShouldRenderBBishopWhenIsWhiteAndSquareIsWhite [
	| piece square |
	
	piece := MyBishop white.
	square := MyChessSquare new.
	square color: Color white.
	
	self assert: (square renderBishop: piece) equals: 'B'.
]

{ #category : 'tests' }
MyChessSquareTest >> testShouldRenderKKingWhenIsWhiteAndSquareIsWhite [
	| piece square |
	
	piece := MyKing white.
	square := MyChessSquare new.
	square color: Color white.
	
	self assert: (square renderKing: piece) equals: 'K'.
]

{ #category : 'tests' }
MyChessSquareTest >> testShouldRenderLKingWhenIsBlackAndSquareIsWhite [
	| piece square |
	
	piece := MyKing black.
	square := MyChessSquare new.
	square color: Color white.
	
	self assert: (square renderKing: piece) equals: 'L'.
]

{ #category : 'tests' }
MyChessSquareTest >> testShouldRenderMKnightWhenIsBlackAndSquareIsWhite [
	| piece square |
	
	piece := MyKnight black.
	square := MyChessSquare new.
	square color: Color white.
	
	self assert: (square renderKnight: piece) equals: 'M'.
]

{ #category : 'tests' }
MyChessSquareTest >> testShouldRenderNKnightWhenIsWhiteAndSquareIsWhite [
	| piece square |
	
	piece := MyKnight white.
	square := MyChessSquare new.
	square color: Color white.
	
	self assert: (square renderKnight: piece) equals: 'N'.
]

{ #category : 'tests' }
MyChessSquareTest >> testShouldRenderOPawnWhenIsBlackAndSquareIsWhite [
	| piece square |
	
	piece := MyPawn black.
	square := MyChessSquare new.
	square color: Color white.
	
	self assert: (square renderPawn: piece) equals: 'O'.
	
]

{ #category : 'tests' }
MyChessSquareTest >> testShouldRenderPPawnWhenIsWhiteAndSquareIsWhite [
	| piece square |
	
	piece := MyPawn white.
	square := MyChessSquare new.
	square color: Color white.
	
	self assert: (square renderPawn: piece) equals: 'P'.
	
]

{ #category : 'tests' }
MyChessSquareTest >> testShouldRenderVBishopWhenIsBlackAndSquareIsWhite [
	| piece square |
	
	piece := MyBishop black.
	square := MyChessSquare new.
	square color: Color white.
	
	self assert: (square renderBishop: piece) equals: 'V'.
]

{ #category : 'tests' }
MyChessSquareTest >> testShouldRenderbBishopWhenIsWhiteAndSquareIsBlack [
	| piece square |
	
	piece := MyBishop white.
	square := MyChessSquare new.
	square color: Color black.
	
	self assert: (square renderBishop: piece) equals: 'b'.
]

{ #category : 'tests' }
MyChessSquareTest >> testShouldRenderkKingWhenIsWhiteAndSquareIsBlack [
	| piece square |
	
	piece := MyKing white.
	square := MyChessSquare new.
	square color: Color black.
	
	self assert: (square renderKing: piece) equals: 'k'.
]

{ #category : 'tests' }
MyChessSquareTest >> testShouldRenderlKingWhenIsBlackAndSquareIsBlack [
	| piece square |
	
	piece := MyKing black.
	square := MyChessSquare new.
	square color: Color black.
	
	self assert: (square renderKing: piece) equals: 'l'.
]

{ #category : 'tests' }
MyChessSquareTest >> testShouldRendermKnightWhenIsBlackAndSquareIsBlack [
	| piece square |
	
	piece := MyKnight black.
	square := MyChessSquare new.
	square color: Color black.
	
	self assert: (square renderKnight: piece) equals: 'm'.
]

{ #category : 'tests' }
MyChessSquareTest >> testShouldRendernKnightWhenIsWhiteAndSquareIsBlack [
	| piece square |
	
	piece := MyKnight white.
	square := MyChessSquare new.
	square color: Color black.
	
	self assert: (square renderKnight: piece) equals: 'n'.
]

{ #category : 'tests' }
MyChessSquareTest >> testShouldRenderoPawnWhenIsBlackAndSquareIsBlack [
	| piece square |
	
	piece := MyPawn black.
	square := MyChessSquare new.
	square color: Color black.
	
	self assert: (square renderPawn: piece) equals: 'o'.
	
]

{ #category : 'tests' }
MyChessSquareTest >> testShouldRenderpPawnWhenIsWhiteAndSquareIsBlack [
	| piece square |
	
	piece := MyPawn white.
	square := MyChessSquare new.
	square color: Color black.
	
	self assert: (square renderPawn: piece) equals: 'p'.
	
]

{ #category : 'tests' }
MyChessSquareTest >> testShouldRendervBishopWhenIsBlackAndSquareIsBlack [
	| piece square |
	
	piece := MyBishop black.
	square := MyChessSquare new.
	square color: Color black.
	
	self assert: (square renderBishop: piece) equals: 'v'.
	
]
