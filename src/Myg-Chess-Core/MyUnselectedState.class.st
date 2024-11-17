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
	aMyChessSquare contents: piece.
	piece square: aMyChessSquare
	

	
]

{ #category : 'events' }
MyUnselectedState >> addBishopWhite: aMyChessSquare [

	| piece |
	piece:= MyBishop white.
	aMyChessSquare contents: piece.
	piece square: aMyChessSquare
	
	
]

{ #category : 'events' }
MyUnselectedState >> addKingBlack: aMyChessSquare [

	| piece |
	piece := MyKing black.
	aMyChessSquare contents: piece.
	piece square: aMyChessSquare
]

{ #category : 'events' }
MyUnselectedState >> addKingWhite: aMyChessSquare [

	| piece |
	piece := MyKing white.
	aMyChessSquare contents: piece.
	piece square: aMyChessSquare
]

{ #category : 'events' }
MyUnselectedState >> addKnightBlack: aMyChessSquare [

	| piece |
	piece := MyKnight black.
	aMyChessSquare contents: piece.
	piece square: aMyChessSquare
]

{ #category : 'events' }
MyUnselectedState >> addKnightWhite: aMyChessSquare [

	| piece |
	piece := MyKnight white.
	aMyChessSquare contents: piece.
	piece square: aMyChessSquare
]

{ #category : 'events' }
MyUnselectedState >> addPawnBlack: aMyChessSquare [

	| piece |
	piece := MyPawn black.
	aMyChessSquare contents: piece.
	piece square: aMyChessSquare
]

{ #category : 'events' }
MyUnselectedState >> addPawnWhite: aMyChessSquare [

	| piece |
	piece:= MyPawn white.
	aMyChessSquare contents: piece.
	piece square: aMyChessSquare
	
	
]

{ #category : 'events' }
MyUnselectedState >> addQueen: aMyChessSquare [

	aMyChessSquare contents: MyQueen white
]

{ #category : 'events' }
MyUnselectedState >> addQueenBlack: aMyChessSquare [

	| piece |
	piece := MyQueen black.
	aMyChessSquare contents: piece.
	piece square: aMyChessSquare
]

{ #category : 'events' }
MyUnselectedState >> addQueenWhite: aMyChessSquare [

	| piece |
	piece := MyQueen white.
	aMyChessSquare contents: piece.
	piece square: aMyChessSquare
]

{ #category : 'events' }
MyUnselectedState >> addRookBlack: aMyChessSquare [

	| piece |
	piece := MyRook black.
	aMyChessSquare contents: piece.
	piece square: aMyChessSquare
]

{ #category : 'events' }
MyUnselectedState >> addRookWhite: aMyChessSquare [

	| piece |
	piece := MyRook white.
	aMyChessSquare contents: piece.
	piece square: aMyChessSquare
]

{ #category : 'events' }
MyUnselectedState >> addingPiece: aMyChessSquare [

	| piece |
	piece := MyKing black.
	aMyChessSquare contents: piece.
	piece square: aMyChessSquare
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
