Class {
	#name : 'MyDeleteMode',
	#superclass : 'Object',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'as yet unclassified' }
MyDeleteMode >> click: aMyChessSquare onBoard: aBoard [

	aBoard state delete: aMyChessSquare
]
