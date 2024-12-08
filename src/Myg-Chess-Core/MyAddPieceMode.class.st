Class {
	#name : 'MyAddPieceMode',
	#superclass : 'Object',
	#instVars : [
		'modeString'
	],
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'as yet unclassified' }
MyAddPieceMode >> click: aMyChessSquare onBoard: aBoard [

	modeString
		caseOf: {
				([ 'addQbOn' ]
				 -> [ aBoard state: (aBoard state addQueenBlack: aMyChessSquare) ]).
				([ 'addPbOn' ]
				 -> [ aBoard state: (aBoard state addPawnBlack: aMyChessSquare) ]).
				([ 'addPwOn' ]
				 -> [ aBoard state: (aBoard state addPawnWhite: aMyChessSquare) ]).
				([ 'addBbOn' ]
				 -> [ aBoard state: (aBoard state addBishopBlack: aMyChessSquare) ]).
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
		otherwise: [ self error: 'Unknown state!' ]
]

{ #category : 'accessing' }
MyAddPieceMode >> modeString [

	^ modeString
]

{ #category : 'accessing' }
MyAddPieceMode >> modeString: anObject [

	modeString := anObject
]
