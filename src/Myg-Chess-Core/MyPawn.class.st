Class {
	#name : 'MyPawn',
	#superclass : 'MyPiece',
	#instVars : [
		'window',
		'promotionBlock'
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

	^ self isWhite
		  ifTrue: [ square name endsWith: '8' ]
		  ifFalse: [ square name endsWith: '1' ]
]

{ #category : 'accessing' }
MyPawn >> id [

	^ 'P'
]

{ #category : 'enumerating' }
MyPawn >> onPromotionDo: aBlock [

	promotionBlock := aBlock
]

{ #category : 'as yet unclassified' }
MyPawn >> promoteIfNeeded [

	self canPromote ifTrue: [
		promotionBlock value: self value: {
				MyQueen.
				MyKnight.
				MyRook.
				MyBishop } ]
]

{ #category : 'as yet unclassified' }
MyPawn >> promoteTo: aPieceClass [

	| promotedPiece |
	promotedPiece := aPieceClass new.
	promotedPiece color: self color.
	promotedPiece square: square.
	square contents: promotedPiece.

	^ promotedPiece
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
