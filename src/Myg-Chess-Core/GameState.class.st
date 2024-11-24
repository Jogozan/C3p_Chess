Class {
	#name : 'GameState',
	#superclass : 'Object',
	#instVars : [
		'game'
	],
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
GameState >> game [

	^ game
]

{ #category : 'accessing' }
GameState >> game: aGame [

	^ game := aGame
]
