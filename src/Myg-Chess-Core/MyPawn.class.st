Class {
	#name : 'MyPawn',
	#superclass : 'MyPiece',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

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
	| promotedPiece |

	promotedPiece := aPieceClass new.
	promotedPiece color: self color.
	promotedPiece square: square.

	square contents: promotedPiece.

	^ promotedPiece

]

{ #category : 'as yet unclassified' }
MyPawn >> promoteWindow [

	| window chevalier |
	window := BlSpace new.
	chevalier := ToButton new.
	chevalier whenClickedDo:[self promoteTo: MyKnight ].
	chevalier labelText: 'chevalier'.
	window root addChild: chevalier.
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
