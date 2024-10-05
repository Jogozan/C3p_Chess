Class {
	#name : 'MyBishop',
	#superclass : 'MyPiece',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
MyBishop >> id [
	
	^ 'B'
]

{ #category : 'rendering' }
MyBishop >> renderPieceOn: aSquare [

	^ aSquare renderBishop: self
]

{ #category : 'rendering' }
MyBishop >> targetSquaresLegal: aBoolean [

	| likeABishop likeARook |
	"If click Button change role then act like a queen"
	game changingRole
		ifTrue: [ "Action Queen"
			likeABishop := (self upRightDiagonalLegal: aBoolean)
			               , (self upLeftDiagonalLegal: aBoolean)
			               , (self downRightDiagonalLegal: aBoolean)
			               , (self downLeftDiagonalLegal: aBoolean).
			likeARook := (self upFileLegal: aBoolean)
			             , (self downFileLegal: aBoolean)
			             , (self leftFileLegal: aBoolean)
			             , (self rightFileLegal: aBoolean).
			^ likeABishop , likeARook ]
		ifFalse: [ "action normal"
			^ (self upRightDiagonalLegal: aBoolean)
			  , (self upLeftDiagonalLegal: aBoolean)
			  , (self downRightDiagonalLegal: aBoolean)
			  , (self downLeftDiagonalLegal: aBoolean) ]
]
