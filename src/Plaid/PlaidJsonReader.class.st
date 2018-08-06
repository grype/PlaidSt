Class {
	#name : #PlaidJsonReader,
	#superclass : #MJBasicJsonReader,
	#category : #'Plaid-Web'
}

{ #category : #private }
PlaidJsonReader >> addPropertiesFrom: aDictionary to: anObject using: aDescription [
	super addPropertiesFrom: aDictionary to: anObject using: aDescription.
	aDescription do: [ :each |
		each isParent ifTrue: [ 
			anObject write: self parser object using: each ] ]
]

{ #category : #'visiting-description' }
PlaidJsonReader >> lookup: aKey in: aDescription [
	" try to resolve this value "
	^aDescription possibleValues detect: [ :each | each jsonKey = aKey ] ifNone: [ aKey ]
]

{ #category : #'visiting-description' }
PlaidJsonReader >> visitMultipleOptionDescription: aDescription [
	self object:
		(self data select: [ :dataValue |
			aDescription options anySatisfy: [ :each | dataValue = each greaseString ] ])
]

{ #category : #'visiting-description' }
PlaidJsonReader >> visitSingleOptionDescription: aDescription [
	" This gives an error if we have multiple matches "
	aDescription options do: [ :each |
		(self data = each greaseString) ifTrue: [ self object: each ] ].
	self result ifNil: [ self object: data ]
]

{ #category : #'visiting-description' }
PlaidJsonReader >> visitToManyRelationDescription: aDescription [
	(self data isNil and: [ aDescription isRequired not ])
		ifTrue: [ ^ self ].
	aDescription useJsonKey ifFalse: [ ^super visitToManyRelationDescription: aDescription ].
	self object: (self data collect: [ :each | self lookup: each in: aDescription ])
]

{ #category : #'visiting-description' }
PlaidJsonReader >> visitToOneRelationDescription: aDescription [
	(self data isNil and: [ aDescription isRequired not ])
		ifTrue: [ ^ self ].
	aDescription useJsonKey
		ifTrue: [ self object: (self lookup: self data in: aDescription) ]
		ifFalse: [ super visitToOneRelationDescription: aDescription ]
]
