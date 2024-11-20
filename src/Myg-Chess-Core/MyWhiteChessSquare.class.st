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
MyWhiteChessSquare >> renderBlackBishop [
 
    ^ 'V'
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderBlackKing [

    ^ 'L'
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderBlackKnight [

	^ 'M'
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderBlackPawn [

	^ 'O'
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderBlackQueen [

	^ 'W'
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderBlackRook [

	^ 'T'
]

{ #category : 'accessing' }
MyWhiteChessSquare >> renderOnColor [
    
	^ 'z'
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderWhiteBishop [
 
    ^ 'B'
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderWhiteKing [

    ^ 'K'
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderWhiteKnight [

	^ 'N'
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderWhitePawn [

	^ 'P'
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderWhiteQueen [

	^ 'Q'
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderWhiteRook [

	^ 'R'
]

{ #category : 'accessing' }
MyWhiteChessSquare >> textColor [

    ^ Color black

]
