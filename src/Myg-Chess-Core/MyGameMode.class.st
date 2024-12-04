Class {
	#name : 'MyGameMode',
	#superclass : 'Object',
	#instVars : [
		'modeString'
	],
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'as yet unclassified' }
MyGameMode >> click: aMyChessSquare onBoard: aBoard [

	modeString 
		caseOf: {
				([ 'addQbOn' ]
				 -> [ aBoard state: (aBoard state addQueenBlack: aMyChessSquare) ]).
				([ 'addPbOn' ]
				 -> [ aBoard state: (aBoard state addPawnBlack: aMyChessSquare) ]).
				([ 'addPwOn' ]
				 -> [ aBoard state: (aBoard state addPawnWhite: aMyChessSquare) ]).
				([ 'addBbOn' ]
				 -> [ aBoard state: (aBoard addBishopBlack: aMyChessSquare) ]).
				([ 'addBwOn' ]
				 -> [ aBoard state: (aBoard state addBishopWhite: aMyChessSquare) ]).
				([ 'addKwOn' ]
				 -> [ aBoard state: (aBoard state addKnightWhite: aMyChessSquare) ]).
				([ 'addKbOn' ]
				 -> [ aBoard state: (aBoard state addKnightBlack: aMyChessSquare) ]).
				([ 'addRbOn' ]
				 -> [ aBoard state: (aBoard state addRookBlack: aMyChessSquare) ]).
				([ 'addRwOn' ]
				 -> [ aBoard state: (aBoard state addRookWhite: aMyChessSquare) ]).
				([ 'addKiwOn' ]
				 -> [ aBoard state: (aBoard state addKingWhite: aMyChessSquare) ]).
				([ 'addKibOn' ]
				 -> [ aBoard state: (aBoard state addKingBlack: aMyChessSquare) ]).
				([ 'addQwOn' ]
				 -> [ aBoard state: (aBoard state addQueenWhite: aMyChessSquare) ]) }
		otherwise: [ aBoard state: (aBoard state clickOn: aMyChessSquare) ]
]

{ #category : 'accessing' }
MyGameMode >> modeString [

	^ modeString
]

{ #category : 'accessing' }
MyGameMode >> modeString: anObject [

	modeString := anObject
]
