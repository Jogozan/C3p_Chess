Class {
	#name : 'MyWhiteColorPiece',
	#superclass : 'MyColorPiece',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
MyWhiteColorPiece >> color [

	^ Color white 
]

{ #category : 'rendering' }
MyWhiteColorPiece >> renderBishop: aSquare [

	^ aSquare renderWhiteBishop
]

{ #category : 'rendering' }
MyWhiteColorPiece >> renderKing: aSquare [

	^ aSquare renderWhiteKing
]

{ #category : 'rendering' }
MyWhiteColorPiece >> renderKnight: aSquare [

	^ aSquare renderWhiteKnight
]

{ #category : 'rendering' }
MyWhiteColorPiece >> renderPawn: aSquare [

	^ aSquare renderWhitePawn
]

{ #category : 'rendering' }
MyWhiteColorPiece >> renderQueen: aSquare [

	^ aSquare renderWhiteQueen
]

{ #category : 'rendering' }
MyWhiteColorPiece >> renderRook: aSquare [

	^ aSquare renderWhiteRook
]
