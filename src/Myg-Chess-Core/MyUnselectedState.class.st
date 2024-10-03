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
	|boutonDelete deletePane x|
	boutonDelete := ToButton new.
	boutonDelete labelText: 'Delete'.
	
		deletePane := ToElement new.
	deletePane constraintsDo: [ :c |
		c vertical fitContent.
		c horizontal matchParent ].
	deletePane layout: BlLinearLayout vertical.
	deletePane layout cellSpacing: 10.
	deletePane margin: (BlInsets all: 20).
	deletePane matchParent.

	x := MyChessGame new. 
	x addChild: deletePane.
	deletePane addChild: boutonDelete .

	aMyChessSquare select.
	aMyChessSquare contents ifNotNil: [
		board highLightTargets: aMyChessSquare contents targetSquares ].

	^ MySelectedState board: board selected: aMyChessSquare
]

{ #category : 'events' }
MyUnselectedState >> clickOnRight: aMyChessSquare [
	"Nothing is selected.
	Select the chess square"
	aMyChessSquare select.
	aMyChessSquare contents ifNotNil: [
		board highLightTargets: aMyChessSquare contents targetSquares ].

	^ MySelectedState board: board selected: aMyChessSquare
]
