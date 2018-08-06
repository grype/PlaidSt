Class {
	#name : #PlaidJsonWriter,
	#superclass : #MJBasicJsonWriter,
	#category : #'Plaid-Web'
}

{ #category : #'visiting-description' }
PlaidJsonWriter >> visitMultipleOptionDescription: aDescription [
	(self object collect: [:each | each greaseString ]) jsonOn: self stream
]

{ #category : #'visiting-description' }
PlaidJsonWriter >> visitRelationDescription: aDescription [
	aDescription useJsonKey
		ifFalse: [ ^super visitRelationDescription: aDescription ].
	self object isCollection
		ifTrue: [ (self object collect: [ :each | each jsonKey ]) jsonOn: stream ]
		ifFalse: [ self object jsonKey jsonOn: stream]
]

{ #category : #'visiting-description' }
PlaidJsonWriter >> visitSingleOptionDescription: aDescription [
	self object greaseString jsonOn: self stream
]
