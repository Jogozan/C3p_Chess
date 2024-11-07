Class {
	#name : 'MyPawn',
	#superclass : 'MyPiece',
	#instVars : [
		'window'
	],
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'adding' }
MyPawn >> addPromotionButton: label on: piece toPane: pane [
    | button |
    button := ToButton new.
    button whenClickedDo: [
        self promoteTo: piece.
        window close.
    ].
    button labelText: label.
    pane addChild: button.
]

{ #category : 'testing' }
MyPawn >> canPromote [
	^ (self isWhite and: [ square up name endsWith: '8' ]) or: [
		  self isWhite not and: [ square down name endsWith: '1' ] ]
]

{ #category : 'accessing' }
MyPawn >> id [

	^ 'P'
]

{ #category : 'as yet unclassified' }
MyPawn >> promoteTo: aPieceClass [
	aPieceClass color: self color.
	aPieceClass square: square.
	square contents: aPieceClass.

	^ aPieceClass

]

{ #category : 'as yet unclassified' }
MyPawn >> promoteWindow [

	| pane |
	pane := ToPane vertical.
	window := BlSpace new.

	self addPromotionButton: 'Knight' on: MyKnight new toPane: pane.
	self addPromotionButton: 'Queen' on: MyQueen new toPane: pane.
	self addPromotionButton: 'Rook' on: MyRook new toPane: pane.
	self addPromotionButton: 'Bishop' on: MyBishop new toPane: pane.

	window root addChild: pane.
	window show
]

{ #category : 'rendering' }
MyPawn >> renderPieceOn: aSquare [ 
	
	^ aSquare renderPawn: self
]

{ #category : 'rendering' }
MyPawn >> targetSquaresLegal: aBoolean [

	^ (self isWhite
		   ifTrue: [ { square up } ]
		   ifFalse: [ { square down } ]) select: [ :s |
		  s notNil and: [
			  s hasPiece not or: [ s contents color ~= color ] ] ]
]
