Class {
	#name : 'MyBlackColorPiece',
	#superclass : 'MyColorPiece',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
MyBlackColorPiece >> color [
 

	^ Color black
]

{ #category : 'rendering' }
MyBlackColorPiece >> renderBishop: aSquare [

	^ aSquare renderBlackBishop
]

{ #category : 'rendering' }
MyBlackColorPiece >> renderKing: aSquare [

	^ aSquare renderBlackKing
]

{ #category : 'rendering' }
MyBlackColorPiece >> renderKnight: aSquare [

	^ aSquare renderBlackKnight
]

{ #category : 'rendering' }
MyBlackColorPiece >> renderPawn: aSquare [

	^ aSquare renderBlackPawn
]

{ #category : 'rendering' }
MyBlackColorPiece >> renderQueen: aSquare [

	^ aSquare renderBlackQueen
]

{ #category : 'rendering' }
MyBlackColorPiece >> renderRook: aSquare [

	^ aSquare renderBlackRook
]
