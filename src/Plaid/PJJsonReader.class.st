Class {
	#name : #PJJsonReader,
	#superclass : #MJBasicJsonReader,
	#category : #'Plaid-Web'
}

{ #category : #convenience }
PJJsonReader class >> read: aDescription from: anObject parser: aParser [ 
	^self new
		data: anObject;
		parser: aParser;
		visit: aDescription;
		result
]

{ #category : #private }
PJJsonReader >> addPropertiesFrom: aDictionary to: anObject using: aDescription [
	super addPropertiesFrom: aDictionary to: anObject using: aDescription.
	aDescription do: [ :each |
		each isParent ifTrue: [ 
			anObject write: self parser object using: each ] ]
]

{ #category : #private }
PJJsonReader >> createObjectFor: aDictionary description: aDescription [
	^super createObjectFor: aDictionary description: aDescription
]

{ #category : #'visiting-description' }
PJJsonReader >> lookup: aKey in: aDescription [
	" try to resolve this value "
	^aDescription possibleValues detect: [ :each | each jsonKey = aKey ] ifNone: [ aKey ]
]

{ #category : #'visiting-description' }
PJJsonReader >> visitMultipleOptionDescription: aDescription [
	self object:
		(self data select: [ :dataValue |
			aDescription options contains: [ :each | dataValue = each greaseString ] ])
]

{ #category : #'visiting-description' }
PJJsonReader >> visitSingleOptionDescription: aDescription [
	" This gives an error if we have multiple matches "
	aDescription options do: [ :each |
		(self data = each greaseString) ifTrue: [ self object: each ] ].
	self result ifNil: [ self object: data ]
]

{ #category : #'visiting-description' }
PJJsonReader >> visitToManyRelationDescription: aDescription [
	(self data isNil and: [ aDescription isRequired not ])
		ifTrue: [ ^ self ].
	aDescription useJsonKey ifFalse: [ ^super visitToManyRelationDescription: aDescription ].
	self object: (self data collect: [ :each | self lookup: each in: aDescription ])
]

{ #category : #'visiting-description' }
PJJsonReader >> visitToOneRelationDescription: aDescription [
	(self data isNil and: [ aDescription isRequired not ])
		ifTrue: [ ^ self ].
	aDescription useJsonKey
		ifTrue: [ self object: (self lookup: self data in: aDescription) ]
		ifFalse: [ super visitToOneRelationDescription: aDescription ]
]
