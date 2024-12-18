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
MyBlackChessSquare >> renderBlackBishop [
 
    ^ 'v'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderBlackKing [

    ^ 'l'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderBlackKnight [

	^ 'm'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderBlackPawn [

	^ 'o'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderBlackQueen [

	^ 'w'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderBlackRook [

	^ 't'
]

{ #category : 'accessing' }
MyBlackChessSquare >> renderOnColor [
    
	^ 'x'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderWhiteBishop [
 
    ^ 'b'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderWhiteKing [

    ^ 'k'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderWhiteKnight [

	^ 'n'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderWhitePawn [

	^ 'p'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderWhiteQueen [

	^ 'q'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderWhiteRook [

	^ 'r'
]

{ #category : 'accessing' }
MyBlackChessSquare >> textColor [ 

    ^ Color white

]
