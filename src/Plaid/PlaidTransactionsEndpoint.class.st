Class {
	#name : #PlaidTransactionsEndpoint,
	#superclass : #PlaidAuthenticatedEndpoint,
	#traits : 'TPlaidEnumerating',
	#classTraits : 'TPlaidEnumerating classTrait',
	#instVars : [
		'startDate',
		'endDate',
		'accountIds',
		'count',
		'offset'
	],
	#category : #'Plaid-Endpoints'
}

{ #category : #accessing }
PlaidTransactionsEndpoint class >> endpointPath [
	^ Path / 'transactions'
]

{ #category : #accessing }
PlaidTransactionsEndpoint >> accountIds [
	^ accountIds
]

{ #category : #accessing }
PlaidTransactionsEndpoint >> accountIds: anObject [
	accountIds := anObject
]

{ #category : #accessing }
PlaidTransactionsEndpoint >> count [
	^ count
]

{ #category : #accessing }
PlaidTransactionsEndpoint >> count: anObject [
	count := anObject
]

{ #category : #accessing }
PlaidTransactionsEndpoint >> data [
	| result |

	result := super data.
	result
		at: #start_date put: self startDate yyyymmdd;
		at: #end_date put: self endDate yyyymmdd.
	self hasOptions
		ifTrue: [ result at: #options put: self optionsData ].
	^ result
]

{ #category : #accessing }
PlaidTransactionsEndpoint >> endDate [
	^ endDate
]

{ #category : #accessing }
PlaidTransactionsEndpoint >> endDate: anObject [
	endDate := anObject
]

{ #category : #enumerating }
PlaidTransactionsEndpoint >> enumerateWith: aCursor limit: aLimit [
	| result transactions batchSize |

	batchSize := aLimit ifNil: [ self defaultEnumerationSize ].
	result := self
		offset: aCursor offset;
		count: batchSize;
		get.
	transactions := result transactions.
	transactions ifNotNil: [ :val | aCursor offset: aCursor offset + transactions size ].
	aCursor hasMore: aCursor offset < result totalTransactions.
	^ transactions
]

{ #category : #api }
PlaidTransactionsEndpoint >> get [
	<endpoint: 'get'>
	<post>
	^ PlaidTransactionsResponse fromJson: self execute
]

{ #category : #accessing }
PlaidTransactionsEndpoint >> hasOptions [
	^ ((OrderedCollection with: accountIds with: count with: offset) flattened reject: #isNil) isNotEmpty
]

{ #category : #accessing }
PlaidTransactionsEndpoint >> offset [
	^ offset
]

{ #category : #accessing }
PlaidTransactionsEndpoint >> offset: anObject [
	offset := anObject
]

{ #category : #accessing }
PlaidTransactionsEndpoint >> optionsData [
	^ Dictionary new
		at: #account_ids put: accountIds;
		at: #count put: count;
		at: #offset put: offset;
		yourself
]

{ #category : #accessing }
PlaidTransactionsEndpoint >> startDate [
	^ startDate
]

{ #category : #accessing }
PlaidTransactionsEndpoint >> startDate: anObject [
	startDate := anObject
]
