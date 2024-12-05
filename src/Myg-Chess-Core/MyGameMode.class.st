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

	| pieceToAdd |
	pieceToAdd := modeString
		              caseOf: {
				              ([ 'addQbOn' ] -> [ MyQueen black ]).
				              ([ 'addPbOn' ] -> [ MyPawn black ]).
				              ([ 'addPwOn' ] -> [ MyPawn white ]).
				              ([ 'addBbOn' ] -> [ MyBishop black ]).
				              ([ 'addBwOn' ] -> [ MyBishop white ]).
				              ([ 'addKwOn' ] -> [ MyKnight white ]).
				              ([ 'addKbOn' ] -> [ MyKnight black ]).
				              ([ 'addRbOn' ] -> [ MyRook black ]).
				              ([ 'addRwOn' ] -> [ MyRook white ]).
				              ([ 'addKiwOn' ] -> [ MyKing white ]).
				              ([ 'addKibOn' ] -> [ MyKing black ]).
				              ([ 'addQwOn' ] -> [ MyQueen white ]) }
		              otherwise: [ self error: 'Unknown state!' ].

	aMyChessSquare addPiece: pieceToAdd
]

{ #category : 'accessing' }
MyGameMode >> modeString [

	^ modeString
]

{ #category : 'accessing' }
MyGameMode >> modeString: anObject [

	modeString := anObject
]
