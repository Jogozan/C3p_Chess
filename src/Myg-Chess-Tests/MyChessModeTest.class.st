Class {
	#name : 'MyChessModeTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests-switchMode' }
MyChessModeTest >> testAddBishopBlackMode [

	| game board mode |
	
	game := MyChessGame freshGame.
	game switchToAddBishopBlackMode.
	board := game board.

	mode := board readModeString.

	self assert: mode equals: 'addBbOn'
]

{ #category : 'tests-switchMode' }
MyChessModeTest >> testAddBishopWhiteMode [

	| game board mode |
	
	game := MyChessGame freshGame.
	game switchToAddBishopWhiteMode.
	board := game board.

	mode := board readModeString.

	self assert: mode equals: 'addBwOn'
]

{ #category : 'tests-switchMode' }
MyChessModeTest >> testAddKingBlackMode [

	| game board mode |
	
	game := MyChessGame freshGame.
	game switchToAddKingBlackMode.
	board := game board.

	mode := board readModeString.

	self assert: mode equals: 'addKibOn'
]

{ #category : 'tests-switchMode' }
MyChessModeTest >> testAddKingWhiteMode [

	| game board mode |
	
	game := MyChessGame freshGame.
	game switchToAddKingWhiteMode.
	board := game board.

	mode := board readModeString.

	self assert: mode equals: 'addKiwOn'
]

{ #category : 'tests-switchMode' }
MyChessModeTest >> testAddKnightBlackMode [

	| game board mode |
	
	game := MyChessGame freshGame.
	game switchToAddKnightBlackMode.
	board := game board.

	mode := board readModeString.

	self assert: mode equals: 'addKbOn'
]

{ #category : 'tests-switchMode' }
MyChessModeTest >> testAddKnightWhiteMode [

	| game board mode |
	
	game := MyChessGame freshGame.
	game switchToAddKnightWhiteMode.
	board := game board.

	mode := board readModeString.

	self assert: mode equals: 'addKwOn'
]

{ #category : 'tests-switchMode' }
MyChessModeTest >> testAddPawnBlackMode [

	| game board mode |
	
	game := MyChessGame freshGame.
	game switchToAddPawnBlackMode.
	board := game board.

	mode := board readModeString.

	self assert: mode equals: 'addPbOn'
]

{ #category : 'tests-switchMode' }
MyChessModeTest >> testAddPawnWhiteInA3 [

	| game board a3 |
	game := MyChessGame freshGame.
	board := game board.
	a3 := board at: 'a3'.

	self assert: a3 contents isNil.
	board game switchToAddPawnWhiteMode.
	board click: a3.

	self assert: a3 contents isPawn
]

{ #category : 'tests-switchMode' }
MyChessModeTest >> testAddPawnWhiteMode [

	| game board mode |
	
	game := MyChessGame freshGame.
	game switchToAddPawnWhiteMode.
	board := game board.

	mode := board readModeString.

	self assert: mode equals: 'addPwOn'
]

{ #category : 'tests-switchMode' }
MyChessModeTest >> testAddQueenBlackMode [

	| game board mode |
	
	game := MyChessGame freshGame.
	game switchToAddQueenBlackMode.
	board := game board.

	mode := board readModeString.

	self assert: mode equals: 'addQbOn'
]

{ #category : 'tests-switchMode' }
MyChessModeTest >> testAddQueenWhiteMode [

	| game board mode |
	
	game := MyChessGame freshGame.
	game switchToAddQueenWhiteMode.
	board := game board.

	mode := board readModeString.

	self assert: mode equals: 'addQwOn'
]

{ #category : 'tests-switchMode' }
MyChessModeTest >> testAddRookBlackMode [

	| game board mode |
	
	game := MyChessGame freshGame.
	game switchToAddRookBlackMode.
	board := game board.

	mode := board readModeString.

	self assert: mode equals: 'addRbOn'
]

{ #category : 'tests-switchMode' }
MyChessModeTest >> testAddRookWhiteMode [

	| game board mode |
	
	game := MyChessGame freshGame.
	game switchToAddRookWhiteMode.
	board := game board.

	mode := board readModeString.

	self assert: mode equals: 'addRwOn'
]

{ #category : 'tests-switchMode' }
MyChessModeTest >> testDeleteMode [

	| game board mode |
	
	game := MyChessGame freshGame.
	game switchToDeleteMode.
	board := game board.

	mode := board readModeString.

	self assert: mode equals: 'deleteOn'
]

{ #category : 'tests-switchMode' }
MyChessModeTest >> testDeletePawnInA2 [

	| game board a2 |
	
	game := MyChessGame freshGame.
	board := game board.
	a2 := board at: 'a2'.
	
	a2 contents isPawn.
	game switchToDeleteMode.
	
	board click: a2.
	
	self assert: a2 contents isNil
	

]
