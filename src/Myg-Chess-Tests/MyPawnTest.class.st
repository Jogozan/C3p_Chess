Class {
	#name : 'MyPawnTest',
	#superclass : 'TestCase',
	#instVars : [
		'board',
		'whitePawn',
		'blackPawn'
	],
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'running' }
MyPawnTest >> setUp [

	super setUp.
	board := MyChessBoard empty.
	board initialize.
	whitePawn := MyPawn white.
	blackPawn := MyPawn black.
	"Put heremmon initialization logic for tests"
]

{ #category : 'tests' }
MyPawnTest >> testBlackPawnShouldNotPromote [

	|  promotedBlack |
	board at: 'e4' put: blackPawn.
	promotedBlack := blackPawn canPromote.
	self deny: promotedBlack
]

{ #category : 'tests' }
MyPawnTest >> testBlackPawnShouldPromote [

	| promotedBlack |

	blackPawn := MyPawn black.
	board at: 'e2' put: blackPawn.
	promotedBlack := blackPawn canPromote.
	self assert: promotedBlack
]

{ #category : 'tests' }
MyPawnTest >> testPawnPromotion [

	| promotionSquare promotedPiece |
	board initialize.
	promotionSquare := board at: 'a8'.
	board at: 'a7' put: whitePawn.

	whitePawn moveTo: promotionSquare.

	promotedPiece := whitePawn promoteTo: MyQueen.

	self assert: (promotedPiece isKindOf: MyQueen).
	self assert: promotionSquare contents equals: promotedPiece
]

{ #category : 'tests' }
MyPawnTest >> testWhitePawnShouldNotPromote [ 
    | whitePawn  promotedWhite |

    whitePawn := MyPawn white.
    board at: 'e2' put: whitePawn.    
    promotedWhite := whitePawn canPromote.
    self deny: promotedWhite.
]

{ #category : 'tests' }
MyPawnTest >> testWhitePawnShouldPromote [

	| promotedWhite |
	board at: 'e7' put: whitePawn.
	promotedWhite := whitePawn canPromote.
	self assert: promotedWhite
]
