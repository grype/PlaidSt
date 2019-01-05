Trait {
	#name : #TPlaidEnumerating,
	#traits : 'TUnrestEnumerating',
	#classTraits : 'TUnrestEnumerating classTrait',
	#category : #'Plaid-Core'
}

{ #category : #accessing }
TPlaidEnumerating >> cursor [
	^ PlaidOffsetCursor new
]

{ #category : #enumerating }
TPlaidEnumerating >> defaultEnumerationSize [
	^ 500
]
