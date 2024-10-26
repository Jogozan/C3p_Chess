Class {
	#name : 'MyChessWhiteSquare',
	#superclass : 'MyChessSquare',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
MyChessWhiteSquare >> contents: aPiece [ [
    | text |
    contents := aPiece.

    text := contents
        ifNil: [ 'z' ]
        ifNotNil: [ contents renderPieceOn: self ].

    piece text: (text asRopedText
                 fontSize: 48;
                 foreground: self foreground;
                 fontName: MyOpenChessDownloadedFont new familyName)
]
]

{ #category : 'accessing' }
MyChessWhiteSquare >> foreground [
			
	^ board whiteColor
]

{ #category : 'rendering' }
MyChessWhiteSquare >> renderBishop: aPiece [
 
    ^ aPiece isWhite
        ifTrue: [ 'B' ]
        ifFalse: [ 'V' ]
]

{ #category : 'rendering' }
MyChessWhiteSquare >> renderKing: aPiece [

    ^ aPiece isWhite
        ifTrue: [ 'K' ]
        ifFalse: [ 'L' ] 
]

{ #category : 'rendering' }
MyChessWhiteSquare >> renderKnight: aPiece [

	^ aPiece isWhite
		  ifFalse:  [ 'M' ]
		  ifTrue: [ 'N' ]
]

{ #category : 'rendering' }
MyChessWhiteSquare >> renderPawn: aPiece [

	^ aPiece isWhite
		  ifFalse: [ 'O' ]
		  ifTrue: [ 'P' ]
]

{ #category : 'rendering' }
MyChessWhiteSquare >> renderQueen: aPiece [

	^ aPiece isWhite
		  ifFalse: [ 'W' ]
		  ifTrue: [ 'Q' ]
]

{ #category : 'rendering' }
MyChessWhiteSquare >> renderRook: aPiece [

	^ aPiece isWhite
		  ifFalse: [ 'T' ]
		  ifTrue: [ 'R' ]
]

{ #category : 'accessing' }
MyChessWhiteSquare >> textColor [

    ^ Color black

]
