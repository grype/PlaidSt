Trait {
	#name : #TPlaidEnumeration,
	#category : #'Plaid-Core'
}

{ #category : #enumerating }
TPlaidEnumeration >> detect: aBlock [ 
	^ self detect: aBlock ifNone: [ self errorNotFound: aBlock ]
]

{ #category : #enumerating }
TPlaidEnumeration >> detect: aBlock ifFound: foundBlock [
	^ self detect: aBlock ifFound: foundBlock ifNone: [  ]
]

{ #category : #enumerating }
TPlaidEnumeration >> detect: aBlock ifFound: foundBlock ifNone: noneBlock [
	| pager |

	pager := self
		enumerationPagerWithBlock: [ :aPager | 
			(self enumerate: aPager)
				ifNotNil: [ :values | values detect: aBlock ifFound: [ :val | ^ foundBlock cull: val ] ifNone: [  ] ] ].

	pager allPages.
	^ noneBlock value
]

{ #category : #enumerating }
TPlaidEnumeration >> detect: aBlock ifNone: exceptionBlock [
	^ self detect: aBlock ifFound: [ :val | val ] ifNone: exceptionBlock 
]

{ #category : #enumerating }
TPlaidEnumeration >> enumerate: aPager [
	^ self subclassResponsibility
]

{ #category : #enumerating }
TPlaidEnumeration >> enumerationPageSize [
	^ 100
]

{ #category : #enumerating }
TPlaidEnumeration >> enumerationPagerWithBlock: aBlock [
	^ PlaidPager withPageSize: self enumerationPageSize block: aBlock
]

{ #category : #enumerating }
TPlaidEnumeration >> errorNotFound: anObject [
	"Raise a NotFound exception."

	NotFound signalFor: anObject
]

{ #category : #enumerating }
TPlaidEnumeration >> getAll [
	| pager result |

	result := Set new.
	pager := self
		enumerationPagerWithBlock: [ :aPager | (self enumerate: aPager) ifNotNil: [ :values | result addAll: values ] ].

	pager allPages.
	^ result
]

{ #category : #enumerating }
TPlaidEnumeration >> select: aBlock [
	| pager result |

	result := Set new.
	pager := self
		enumerationPagerWithBlock: [ :aPager | (self enumerate: aPager) ifNotNil: [ :values | result addAll: (values select: aBlock) ] ].

	pager allPages.
	^ result
]
