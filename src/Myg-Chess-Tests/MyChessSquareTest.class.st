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

{ #category : 'foreground' }
MyChessSquareTest >> testForegroundColorWhenSquareIsBlack [
	| piece square board |
	
	piece := MyKing black.
	board := MyChessBoard empty.
	board at: 'e4' put: piece.

	square := MyChessBlackSquare new.
	square board: board.

	self assert: square foreground equals: board blackColor.
	

	
]

{ #category : 'foreground' }
MyChessSquareTest >> testForegroundColorWhenSquareIsWhite [
	| piece square board |
	
	piece := MyKing white.
	board := MyChessBoard empty.
	board at: 'e4' put: piece.

	square := MyChessWhiteSquare new.
	square board: board.

	self assert: square foreground equals: board whiteColor.
]

{ #category : 'renderBishop' }
MyChessSquareTest >> testShouldRenderBBishopWhenIsWhiteAndSquareIsWhite [
	| piece square |
	
	piece := MyBishop white.
	square := MyChessWhiteSquare new.
	
	self assert: (square renderBishop: piece) equals: 'B'.
]

{ #category : 'renderKing' }
MyChessSquareTest >> testShouldRenderKKingWhenIsWhiteAndSquareIsWhite [
	| piece square |
	
	piece := MyKing white.
	square := MyChessWhiteSquare new.
	
	self assert: (square renderKing: piece) equals: 'K'.
]

{ #category : 'renderKing' }
MyChessSquareTest >> testShouldRenderLKingWhenIsBlackAndSquareIsWhite [
	| piece square |
	
	piece := MyKing black.
	square := MyChessWhiteSquare new.
	
	self assert: (square renderKing: piece) equals: 'L'.
]

{ #category : 'renderKnight' }
MyChessSquareTest >> testShouldRenderMKnightWhenIsBlackAndSquareIsWhite [
	| piece square |
	
	piece := MyKnight black.
	square := MyChessWhiteSquare new.
	
	self assert: (square renderKnight: piece) equals: 'M'.
]

{ #category : 'renderKnight' }
MyChessSquareTest >> testShouldRenderNKnightWhenIsWhiteAndSquareIsWhite [
	| piece square |
	
	piece := MyKnight white.
	square := MyChessWhiteSquare new.
	
	self assert: (square renderKnight: piece) equals: 'N'.
]

{ #category : 'renderPawn' }
MyChessSquareTest >> testShouldRenderOPawnWhenIsBlackAndSquareIsWhite [
	| piece square |
	
	piece := MyPawn black.
	square := MyChessWhiteSquare new.
	
	self assert: (square renderPawn: piece) equals: 'O'.
	
]

{ #category : 'renderPawn' }
MyChessSquareTest >> testShouldRenderPPawnWhenIsWhiteAndSquareIsWhite [
	| piece square |
	
	piece := MyPawn white.
	square := MyChessWhiteSquare new.
	
	self assert: (square renderPawn: piece) equals: 'P'.
	
]

{ #category : 'renderQueen' }
MyChessSquareTest >> testShouldRenderQQueenWhenIsWhiteAndSquareIsWhite [
	| piece square |
	
	piece := MyQueen white.
	square := MyChessWhiteSquare new.
	
	self assert: (square renderQueen: piece) equals: 'Q'.
	
]

{ #category : 'renderRook' }
MyChessSquareTest >> testShouldRenderRRookWhenIsWhiteAndSquareIsWhite [
	| piece square |
	
	piece := MyRook white.
	square := MyChessWhiteSquare new.
	
	self assert: (square renderRook: piece) equals: 'R'.
	
]

{ #category : 'renderRook' }
MyChessSquareTest >> testShouldRenderTRookWhenIsBlackAndSquareIsWhite [
	| piece square |
	
	piece := MyRook black.
	square := MyChessWhiteSquare new.
	
	self assert: (square renderRook: piece) equals: 'T'.
	
]

{ #category : 'renderBishop' }
MyChessSquareTest >> testShouldRenderVBishopWhenIsBlackAndSquareIsWhite [
	| piece square |
	
	piece := MyBishop black.
	square := MyChessWhiteSquare new.
	
	self assert: (square renderBishop: piece) equals: 'V'.
]

{ #category : 'renderQueen' }
MyChessSquareTest >> testShouldRenderWQueenWhenIsBlackAndSquareIsWhite [
	| piece square |
	
	piece := MyQueen black.
	square := MyChessWhiteSquare new.
	
	self assert: (square renderQueen: piece) equals: 'W'.
	
]

{ #category : 'renderBishop' }
MyChessSquareTest >> testShouldRenderbBishopWhenIsWhiteAndSquareIsBlack [
	| piece square |
	
	piece := MyBishop white.
	square := MyChessBlackSquare new.
	
	self assert: (square renderBishop: piece) equals: 'b'.
]

{ #category : 'renderKing' }
MyChessSquareTest >> testShouldRenderkKingWhenIsWhiteAndSquareIsBlack [
	| piece square |
	
	piece := MyKing white.
	square := MyChessBlackSquare new.
	
	self assert: (square renderKing: piece) equals: 'k'.
]

{ #category : 'renderKing' }
MyChessSquareTest >> testShouldRenderlKingWhenIsBlackAndSquareIsBlack [
	| piece square |
	
	piece := MyKing black.
	square := MyChessBlackSquare new.
	
	self assert: (square renderKing: piece) equals: 'l'.
]

{ #category : 'renderKnight' }
MyChessSquareTest >> testShouldRendermKnightWhenIsBlackAndSquareIsBlack [
	| piece square |
	
	piece := MyKnight black.
	square := MyChessBlackSquare new.
	
	self assert: (square renderKnight: piece) equals: 'm'.
]

{ #category : 'renderKnight' }
MyChessSquareTest >> testShouldRendernKnightWhenIsWhiteAndSquareIsBlack [
	| piece square |
	
	piece := MyKnight white.
	square := MyChessBlackSquare new.
	
	self assert: (square renderKnight: piece) equals: 'n'.
]

{ #category : 'renderPawn' }
MyChessSquareTest >> testShouldRenderoPawnWhenIsBlackAndSquareIsBlack [
	| piece square |
	
	piece := MyPawn black.
	square := MyChessBlackSquare new.
	
	self assert: (square renderPawn: piece) equals: 'o'.
	
]

{ #category : 'renderPawn' }
MyChessSquareTest >> testShouldRenderpPawnWhenIsWhiteAndSquareIsBlack [
	| piece square |
	
	piece := MyPawn white.
	square := MyChessBlackSquare new.
	
	self assert: (square renderPawn: piece) equals: 'p'.
	
]

{ #category : 'renderQueen' }
MyChessSquareTest >> testShouldRenderqQueenWhenIsWhiteAndSquareIsBlack [
	| piece square |
	
	piece := MyQueen white.
	square := MyChessBlackSquare new.
	
	self assert: (square renderQueen: piece) equals: 'q'.
	
]

{ #category : 'renderRook' }
MyChessSquareTest >> testShouldRenderrRookWhenIsWhiteAndSquareIsBlack [
	| piece square |
	
	piece := MyRook white.
	square := MyChessBlackSquare new.
	
	self assert: (square renderRook: piece) equals: 'r'.
	
]

{ #category : 'renderRook' }
MyChessSquareTest >> testShouldRendertRookWhenIsBlackAndSquareIsBlack [
	| piece square |
	
	piece := MyRook black.
	square := MyChessBlackSquare new.
	
	self assert: (square renderRook: piece) equals: 't'.
	
]

{ #category : 'renderBishop' }
MyChessSquareTest >> testShouldRendervBishopWhenIsBlackAndSquareIsBlack [
	| piece square |
	
	piece := MyBishop black.
	square := MyChessBlackSquare new.
	
	self assert: (square renderBishop: piece) equals: 'v'.
	
]

{ #category : 'renderQueen' }
MyChessSquareTest >> testShouldRenderwQueenWhenIsBlackAndSquareIsBlack [
	| piece square |
	
	piece := MyQueen black.
	square := MyChessBlackSquare new.
	
	self assert: (square renderQueen: piece) equals: 'w'.
	
]
