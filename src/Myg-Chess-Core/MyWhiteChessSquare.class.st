Class {
	#name : 'MyWhiteChessSquare',
	#superclass : 'MyChessSquare',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
MyWhiteChessSquare >> foreground [
			
	^ board whiteColor
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderBishop: aPiece [
 
    ^ aPiece isWhite
        ifTrue: [ 'B' ]
        ifFalse: [ 'V' ]
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderKing: aPiece [

    ^ aPiece isWhite
        ifTrue: [ 'K' ]
        ifFalse: [ 'L' ] 
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderKnight: aPiece [

	^ aPiece isWhite
		  ifFalse:  [ 'M' ]
		  ifTrue: [ 'N' ]
]

{ #category : 'accessing' }
MyWhiteChessSquare >> renderOnColor [
    
	^ 'z'
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderPawn: aPiece [

	^ aPiece isWhite
		  ifFalse: [ 'O' ]
		  ifTrue: [ 'P' ]
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderQueen: aPiece [

	^ aPiece isWhite
		  ifFalse: [ 'W' ]
		  ifTrue: [ 'Q' ]
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderRook: aPiece [

	^ aPiece isWhite
		  ifFalse: [ 'T' ]
		  ifTrue: [ 'R' ]
]

{ #category : 'accessing' }
MyWhiteChessSquare >> textColor [

    ^ Color black

]
