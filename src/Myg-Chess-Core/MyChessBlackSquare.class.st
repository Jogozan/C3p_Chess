Class {
	#name : 'MyChessBlackSquare',
	#superclass : 'MyChessSquare',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
MyChessBlackSquare >> foreground [
			
	^ board blackColor
]

{ #category : 'rendering' }
MyChessBlackSquare >> renderBishop: aPiece [
 
    ^ aPiece isWhite
        ifTrue: [ 'b' ]
        ifFalse: [ 'v' ]
]

{ #category : 'rendering' }
MyChessBlackSquare >> renderKing: aPiece [

    ^ aPiece isWhite
        ifTrue: [ 'k' ]
        ifFalse: [ 'l' ]
]

{ #category : 'rendering' }
MyChessBlackSquare >> renderKnight: aPiece [

	^ aPiece isWhite
		  ifFalse: [ 'm' ]
		  ifTrue: [ 'n' ]
]

{ #category : 'accessing' }
MyChessBlackSquare >> renderOnColor [
    
	^ 'x'
]

{ #category : 'rendering' }
MyChessBlackSquare >> renderPawn: aPiece [

	^ aPiece isWhite
		  ifFalse: [ 'o' ]
		  ifTrue: [ 'p' ]
]

{ #category : 'rendering' }
MyChessBlackSquare >> renderQueen: aPiece [

	^ aPiece isWhite
		  ifFalse: [ 'w' ]
		  ifTrue: [ 'q' ]
]

{ #category : 'rendering' }
MyChessBlackSquare >> renderRook: aPiece [

	^ aPiece isWhite
		  ifFalse: [ 't' ]
		  ifTrue: [ 'r' ]
]

{ #category : 'accessing' }
MyChessBlackSquare >> textColor [ 

    ^ Color white

]
