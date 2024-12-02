Class {
	#name : 'MyChessModeTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyChessModeTest >> testDeleteMode [

	| game board |
	game := MyChessGame freshGame.
	game switchToDeleteMode.
	board := game state.

	self assert: board equals: 'deleteOn'
]
