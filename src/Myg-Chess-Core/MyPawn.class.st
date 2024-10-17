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
	aPieceClass color: self color.
	aPieceClass square: square.
	square contents: aPieceClass.

	^ aPieceClass

]

{ #category : 'as yet unclassified' }
MyPawn >> promoteWindow [

	| window rook queen bishop knight pane|
	pane := ToPane vertical.
	window := BlSpace new.
	knight := ToButton new.
	knight whenClickedDo:[self promoteTo: MyKnight new ].
	knight labelText: 'chevalier'.
	queen := ToButton new.
	queen whenClickedDo:[self promoteTo: MyQueen new ].
	queen labelText: 'chevalier'.
	rook := ToButton new.
	rook whenClickedDo:[self promoteTo: MyRook new ].
	rook labelText: 'chevalier'.
	bishop := ToButton new.
	bishop whenClickedDo:[self promoteTo: MyBishop new ].
	bishop labelText: 'chevalier'.
	pane addChild: knight.
	pane addChild: bishop.
	pane addChild: rook.
	pane addChild: queen.
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
