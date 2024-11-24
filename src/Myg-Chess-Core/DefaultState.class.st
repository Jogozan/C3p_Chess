Class {
	#name : 'DefaultState',
	#superclass : 'GameState',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'events' }
DefaultState >> clickOn: aMyChessSquare [ 
      
	game addPawnBlack: aMyChessSquare 
]
