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
MyUnselectedState >> addQueen: aMyChessSquare [

	aMyChessSquare contents: MyQueen white
]

{ #category : 'events' }
MyUnselectedState >> addQueenBlack: aMyChessSquare [

	aMyChessSquare contents: MyQueen black
]

{ #category : 'events' }
MyUnselectedState >> addQueenWhite: aMyChessSquare [

	aMyChessSquare contents: MyQueen white
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
