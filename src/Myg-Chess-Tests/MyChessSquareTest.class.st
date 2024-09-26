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

{ #category : 'running' }
MyChessSquareTest >> setUp [
	super setUp.
	board := MyChessBoard empty.
	board initialize.
	whitePawn := MyPawn white.
	blackPawn := MyPawn black.
	"Put here a common initialization logic for tests"
]

{ #category : 'tests' }
MyChessSquareTest >> testContents [

	| square |
	square := board at: 'e4'.
	board at:'e4'put: whitePawn.
	self assert: square contents equals: whitePawn.

]
