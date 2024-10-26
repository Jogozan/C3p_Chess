Class {
	#name : 'SwithMode',
	#superclass : 'Object',
	#instVars : [
		'mode'
	],
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'initialization' }
SwithMode >> initialize [

	mode := 'init'
]

{ #category : 'accessing' }
SwithMode >> mode [

	^ mode
]

{ #category : 'accessing' }
SwithMode >> mode: string [

	^ mode := string
]
