Class {
	#name : 'MyPieceColor',
	#superclass : 'Object',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'initialization' }
MyPieceColor >> initialize [
    ^ #(
        self black.
        self white.
    )
]
