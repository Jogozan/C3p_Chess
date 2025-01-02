Class {
	#name : 'MyBishopTests',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyBishopTests >> testId [

	self assert: MyBishop new id equals: 'B'
]
