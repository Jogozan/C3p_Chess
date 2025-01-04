Class {
	#name : 'MyChessSquareTest',
	#superclass : 'TestCase',
	#instVars : [
		'board',
		'pawn',
		'whitePawn',
		'blackPawn'
	],
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'asserting' }
MyChessSquareTest >> assertPiece: aPiece square: aSquare render: aRender [

	^ self assert: (aPiece renderPieceOn: aSquare) equals: aRender.
]

{ #category : 'running' }
MyChessSquareTest >> setUp [

	super setUp.
	board := MyChessBoard empty.
	board initialize.
	whitePawn := MyPawn white.
	blackPawn := MyPawn black
	"Put here a common initialization logic for tests"
]

{ #category : 'foreground' }
MyChessSquareTest >> testForegroundColorWhenSquareIsBlack [
	| piece square board |
	
	piece := MyKing black.
	board := MyChessBoard empty.
	board at: 'e4' put: piece.

	square := MyBlackChessSquare new.
	square board: board.

	self assert: square foreground equals: board blackColor.
	

	
]

{ #category : 'foreground' }
MyChessSquareTest >> testForegroundColorWhenSquareIsWhite [
	| piece square board |
	
	piece := MyKing white.
	board := MyChessBoard empty.
	board at: 'e4' put: piece.

	square := MyWhiteChessSquare new.
	square board: board.

	self assert: square foreground equals: board whiteColor.
]

{ #category : 'renderBishop' }
MyChessSquareTest >> testShouldRenderBBishopWhenIsWhiteAndSquareIsWhite [
	| piece square |
	
	piece := MyBishop white.
	square := MyWhiteChessSquare new.
	
	self assertPiece: piece square: square render: 'B'.
]

{ #category : 'renderKing' }
MyChessSquareTest >> testShouldRenderKKingWhenIsWhiteAndSquareIsWhite [
	| piece square |
	
	piece := MyKing white.
	square := MyWhiteChessSquare new.
	
	self assertPiece: piece square: square render: 'K'.
]

{ #category : 'renderKing' }
MyChessSquareTest >> testShouldRenderLKingWhenIsBlackAndSquareIsWhite [
	| piece square |
	
	piece := MyKing black.
	square := MyWhiteChessSquare new.
	
	self assertPiece: piece square: square render: 'L'.
]

{ #category : 'renderKnight' }
MyChessSquareTest >> testShouldRenderMKnightWhenIsBlackAndSquareIsWhite [
	| piece square |
	
	piece := MyKnight black.
	square := MyWhiteChessSquare new.
	
	self assertPiece: piece square: square render: 'M'.
]

{ #category : 'renderKnight' }
MyChessSquareTest >> testShouldRenderNKnightWhenIsWhiteAndSquareIsWhite [
	| piece square |
	
	piece := MyKnight white.
	square := MyWhiteChessSquare new.
	
	self assertPiece: piece square: square render: 'N'.
]

{ #category : 'renderPawn' }
MyChessSquareTest >> testShouldRenderOPawnWhenIsBlackAndSquareIsWhite [
	| piece square |
	
	piece := MyPawn black.
	square := MyWhiteChessSquare new.
	
	self assertPiece: piece square: square render: 'O'.
	
]

{ #category : 'renderPawn' }
MyChessSquareTest >> testShouldRenderPPawnWhenIsWhiteAndSquareIsWhite [
	| piece square |
	
	piece := MyPawn white.
	square := MyWhiteChessSquare new.
	
	self assertPiece: piece square: square render: 'P'.
	
]

{ #category : 'renderQueen' }
MyChessSquareTest >> testShouldRenderQQueenWhenIsWhiteAndSquareIsWhite [
	| piece square |
	
	piece := MyQueen white.
	square := MyWhiteChessSquare new.
	
	self assertPiece: piece square: square render: 'Q'.
	
]

{ #category : 'renderRook' }
MyChessSquareTest >> testShouldRenderRRookWhenIsWhiteAndSquareIsWhite [
	| piece square |
	
	piece := MyRook white.
	square := MyWhiteChessSquare new.
	
	self assertPiece: piece square: square render: 'R'.
	
]

{ #category : 'renderRook' }
MyChessSquareTest >> testShouldRenderTRookWhenIsBlackAndSquareIsWhite [
	| piece square |
	
	piece := MyRook black.
	square := MyWhiteChessSquare new.
	
	self assertPiece: piece square: square render: 'T'.
	
]

{ #category : 'renderBishop' }
MyChessSquareTest >> testShouldRenderVBishopWhenIsBlackAndSquareIsWhite [
	| piece square |
	
	piece := MyBishop black.
	square := MyWhiteChessSquare new.
	
	self assertPiece: piece square: square render: 'V'.
]

{ #category : 'renderQueen' }
MyChessSquareTest >> testShouldRenderWQueenWhenIsBlackAndSquareIsWhite [
	| piece square |
	
	piece := MyQueen black.
	square := MyWhiteChessSquare new.
	
	self assertPiece: piece square: square render: 'W'.
	
]

{ #category : 'renderBishop' }
MyChessSquareTest >> testShouldRenderbBishopWhenIsWhiteAndSquareIsBlack [
	| piece square |
	
	piece := MyBishop white.
	square := MyBlackChessSquare new.
	
	self assertPiece: piece square: square render: 'b'.
]

{ #category : 'renderKing' }
MyChessSquareTest >> testShouldRenderkKingWhenIsWhiteAndSquareIsBlack [
	| piece square |
	
	piece := MyKing white.
	square := MyBlackChessSquare new.
	
	self assertPiece: piece square: square render: 'k'.
]

{ #category : 'renderKing' }
MyChessSquareTest >> testShouldRenderlKingWhenIsBlackAndSquareIsBlack [
	| piece square |
	
	piece := MyKing black.
	square := MyBlackChessSquare new.
	
	self assertPiece: piece square: square render: 'l'.
]

{ #category : 'renderKnight' }
MyChessSquareTest >> testShouldRendermKnightWhenIsBlackAndSquareIsBlack [
	| piece square |
	
	piece := MyKnight black.
	square := MyBlackChessSquare new.
	
	self assertPiece: piece square: square render: 'm'.
]

{ #category : 'renderKnight' }
MyChessSquareTest >> testShouldRendernKnightWhenIsWhiteAndSquareIsBlack [
	| piece square |
	
	piece := MyKnight white.
	square := MyBlackChessSquare new.
	
	self assertPiece: piece square: square render: 'n'.
]

{ #category : 'renderPawn' }
MyChessSquareTest >> testShouldRenderoPawnWhenIsBlackAndSquareIsBlack [
	| piece square |
	
	piece := MyPawn black.
	square := MyBlackChessSquare new.
	
	self assertPiece: piece square: square render: 'o'.
	
]

{ #category : 'renderPawn' }
MyChessSquareTest >> testShouldRenderpPawnWhenIsWhiteAndSquareIsBlack [
	| piece square |
	
	piece := MyPawn white.
	square := MyBlackChessSquare new.
	
	self assertPiece: piece square: square render: 'p'.
	
]

{ #category : 'renderQueen' }
MyChessSquareTest >> testShouldRenderqQueenWhenIsWhiteAndSquareIsBlack [
	| piece square |
	
	piece := MyQueen white.
	square := MyBlackChessSquare new.
	
	self assertPiece: piece square: square render: 'q'.
	
]

{ #category : 'renderRook' }
MyChessSquareTest >> testShouldRenderrRookWhenIsWhiteAndSquareIsBlack [
	| piece square |
	
	piece := MyRook white.
	square := MyBlackChessSquare new.
	
	self assertPiece: piece square: square render: 'r'.
	
]

{ #category : 'renderRook' }
MyChessSquareTest >> testShouldRendertRookWhenIsBlackAndSquareIsBlack [
	| piece square |
	
	piece := MyRook black.
	square := MyBlackChessSquare new.
	
	self assertPiece: piece square: square render: 't'.
	
]

{ #category : 'renderBishop' }
MyChessSquareTest >> testShouldRendervBishopWhenIsBlackAndSquareIsBlack [
	| piece square |
	
	piece := MyBishop black.
	square := MyBlackChessSquare new.
	
	self assertPiece: piece square: square render: 'v'.
	
]

{ #category : 'renderQueen' }
MyChessSquareTest >> testShouldRenderwQueenWhenIsBlackAndSquareIsBlack [
	| piece square |
	
	piece := MyQueen black.
	square := MyBlackChessSquare new.
	
	self assertPiece: piece square: square render: 'w'.
	
]
