Trait {
	#name : #TPlaidEnumeration,
	#traits : 'TWSEnumeration',
	#classTraits : 'TWSEnumeration classTrait',
	#category : #'Plaid-Core'
}

{ #category : #accessing }
TPlaidEnumeration >> cursor [
	^ PlaidOffsetCursor new
]

{ #category : #enumerating }
TPlaidEnumeration >> defaultEnumerationSize [
	^ 500
]
