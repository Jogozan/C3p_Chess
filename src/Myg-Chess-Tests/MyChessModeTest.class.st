Class {
	#name : 'MyChessModeTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyChessModeTest >> testAddBishopBlackMode [

	| game board mode |
	
	game := MyChessGame freshGame.
	game switchToAddBishopBlackMode.
	board := game board.

	mode := board readMode.

	self assert: mode equals: 'addBbOn'
]

{ #category : 'tests' }
MyChessModeTest >> testAddBishopWhiteMode [

	| game board mode |
	
	game := MyChessGame freshGame.
	game switchToAddBishopWhiteMode.
	board := game board.

	mode := board readMode.

	self assert: mode equals: 'addBwOn'
]

{ #category : 'tests' }
MyChessModeTest >> testAddKnightBlackMode [

	| game board mode |
	
	game := MyChessGame freshGame.
	game switchToAddKnightBlackMode.
	board := game board.

	mode := board readMode.

	self assert: mode equals: 'addKbOn'
]

{ #category : 'tests' }
MyChessModeTest >> testAddKnightWhiteMode [

	| game board mode |
	
	game := MyChessGame freshGame.
	game switchToAddKnightWhiteMode.
	board := game board.

	mode := board readMode.

	self assert: mode equals: 'addKwOn'
]

{ #category : 'tests' }
MyChessModeTest >> testAddQueenBlackMode [

	| game board mode |
	
	game := MyChessGame freshGame.
	game switchToAddQueenBlackMode.
	board := game board.

	mode := board readMode.

	self assert: mode equals: 'addQbOn'
]

{ #category : 'tests' }
MyChessModeTest >> testAddQueenWhiteMode [

	| game board mode |
	
	game := MyChessGame freshGame.
	game switchToAddQueenWhiteMode.
	board := game board.

	mode := board readMode.

	self assert: mode equals: 'addQwOn'
]

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
