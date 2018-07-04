Class {
	#name : #PJJsonWriter,
	#superclass : #MJBasicJsonWriter,
	#category : #'Plaid-Web'
}

{ #category : #'visiting-description' }
PJJsonWriter >> visitMultipleOptionDescription: aDescription [
	(self object collect: [:each | each greaseString ]) jsonOn: self stream
]

{ #category : #'visiting-description' }
PJJsonWriter >> visitRelationDescription: aDescription [
	aDescription useJsonKey
		ifFalse: [ ^super visitRelationDescription: aDescription ].
	self object isCollection
		ifTrue: [ (self object collect: [ :each | each jsonKey ]) jsonOn: stream ]
		ifFalse: [ self object jsonKey jsonOn: stream]
]

{ #category : #'visiting-description' }
PJJsonWriter >> visitSingleOptionDescription: aDescription [
	self object greaseString jsonOn: self stream
]

{ #category : #'visiting-description' }
PJJsonWriter >> write: anObject description: aDescription to: aRenderer [
	self
		object: anObject;
		stream: aRenderer;
		visit: aDescription
]
