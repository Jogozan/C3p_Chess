Class {
	#name : 'MyPlayMode',
	#superclass : 'Object',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'as yet unclassified' }
MyPlayMode >> click: aMyChessSquare onBoard: aBoard [

	aBoard state: (aBoard state clickOn: aMyChessSquare)
]

{ #category : 'accessing' }
MyPlayMode >> modeString [

	^ 'playOn'
]
