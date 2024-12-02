Class {
	#name : 'MyChessModeTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyChessModeTest >> testAddRookBlackMode [

	| game board mode |
	
	game := MyChessGame freshGame.
	game switchToAddRookBlackMode.
	board := game board.

	mode := board readMode.

	self assert: mode equals: 'addRbOn'
]

{ #category : 'tests' }
MyChessModeTest >> testAddRookWhiteMode [

	| game board mode |
	
	game := MyChessGame freshGame.
	game switchToAddRookWhiteMode.
	board := game board.

	mode := board readMode.

	self assert: mode equals: 'addRwOn'
]

{ #category : 'tests' }
MyChessModeTest >> testDeleteMode [

	| game board mode |
	
	game := MyChessGame freshGame.
	game switchToDeleteMode.
	board := game board.

	mode := board readMode.

	self assert: mode equals: 'deleteOn'
]
