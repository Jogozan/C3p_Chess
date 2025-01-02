Class {
	#name : 'MyUnselectedState',
	#superclass : 'Object',
	#instVars : [
		'board'
	],
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
MyUnselectedState class >> board: aBoard [

	^ self new
		  board: aBoard;
		  yourself
]

{ #category : 'events' }
MyUnselectedState >> addBishopBlack: aMyChessSquare [

	| piece |
	piece:= MyBishop black.
	aMyChessSquare addPiece: piece
	

	
]

{ #category : 'events' }
MyUnselectedState >> addBishopWhite: aMyChessSquare [

	| piece |
	piece := MyBishop white.
	aMyChessSquare addPiece: piece
]

{ #category : 'events' }
MyUnselectedState >> addKingBlack: aMyChessSquare [

	| piece |
	piece := MyKing black.
	aMyChessSquare addPiece: piece
]

{ #category : 'events' }
MyUnselectedState >> addKingWhite: aMyChessSquare [

	| piece |
	piece := MyKing white.
	aMyChessSquare addPiece: piece
]

{ #category : 'events' }
MyUnselectedState >> addKnightBlack: aMyChessSquare [

	| piece |
	piece := MyKnight black.
	aMyChessSquare addPiece: piece
]

{ #category : 'events' }
MyUnselectedState >> addKnightWhite: aMyChessSquare [

	| piece |
	piece := MyKnight white.
	aMyChessSquare addPiece: piece
]

{ #category : 'events' }
MyUnselectedState >> addPawnBlack: aMyChessSquare [

	| piece |
	piece := MyPawn black.
	aMyChessSquare addPiece: piece
]

{ #category : 'events' }
MyUnselectedState >> addPawnWhite: aMyChessSquare [

	| piece |
	piece := MyPawn white.
	aMyChessSquare addPiece: piece
]

{ #category : 'events' }
MyUnselectedState >> addQueenBlack: aMyChessSquare [

	| piece |
	piece := MyQueen black.
	aMyChessSquare addPiece: piece
]

{ #category : 'events' }
MyUnselectedState >> addQueenWhite: aMyChessSquare [

	| piece |
	piece := MyQueen white.
	aMyChessSquare addPiece: piece
]

{ #category : 'events' }
MyUnselectedState >> addRookBlack: aMyChessSquare [

	| piece |
	piece := MyRook black.
	aMyChessSquare addPiece: piece
]

{ #category : 'events' }
MyUnselectedState >> addRookWhite: aMyChessSquare [

	| piece |
	piece := MyRook white.
	aMyChessSquare addPiece: piece
]

{ #category : 'events' }
MyUnselectedState >> addingPiece: aMyChessSquare [

	| piece |
	piece := MyKing black.
	aMyChessSquare addPiece: piece
]

{ #category : 'accessing' }
MyUnselectedState >> board [

	^ board
]

{ #category : 'accessing' }
MyUnselectedState >> board: anObject [

	board := anObject
]

{ #category : 'events' }
MyUnselectedState >> clickOn: aMyChessSquare [
	"Nothing is selected.
	Select the chess square"

	aMyChessSquare select.
	aMyChessSquare contents ifNotNil: [
		board highLightTargets: aMyChessSquare contents targetSquares ].

	^ MySelectedState board: board selected: aMyChessSquare
]

{ #category : 'events' }
MyUnselectedState >> delete: aMyChessSquare [

	^ aMyChessSquare emptyContents
]
