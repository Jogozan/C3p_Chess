Class {
	#name : 'MyBlackChessSquare',
	#superclass : 'MyChessSquare',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
MyBlackChessSquare >> foreground [
			
	^ board blackColor
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderBishop: aPiece [
 
    ^ aPiece isWhite
        ifTrue: [ 'b' ]
        ifFalse: [ 'v' ]
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderKing: aPiece [

    ^ aPiece isWhite
        ifTrue: [ 'k' ]
        ifFalse: [ 'l' ]
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderKnight: aPiece [

	^ aPiece isWhite
		  ifFalse: [ 'm' ]
		  ifTrue: [ 'n' ]
]

{ #category : 'accessing' }
MyBlackChessSquare >> renderOnColor [
    
	^ 'x'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderPawn: aPiece [

	^ aPiece isWhite
		  ifFalse: [ 'o' ]
		  ifTrue: [ 'p' ]
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderQueen: aPiece [

	^ aPiece isWhite
		  ifFalse: [ 'w' ]
		  ifTrue: [ 'q' ]
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderRook: aPiece [

	^ aPiece isWhite
		  ifFalse: [ 't' ]
		  ifTrue: [ 'r' ]
]

{ #category : 'accessing' }
MyBlackChessSquare >> textColor [ 

    ^ Color white

]
