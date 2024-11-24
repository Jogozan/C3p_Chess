Class {
	#name : 'DeleteState',
	#superclass : 'GameState',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'events' }
DeleteState >> clickOn: aMyChessSquare [

	self delete
]
