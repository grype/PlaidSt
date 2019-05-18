Class {
	#name : #PlaidTransactionsEndpoint,
	#superclass : #PlaidAuthenticatedEndpoint,
	#traits : 'TPlaidEnumeration',
	#classTraits : 'TPlaidEnumeration classTrait',
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
	^ Path / #transactions / #get
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

{ #category : #api }
PlaidTransactionsEndpoint >> execute [
	<post>
	^ PlaidTransactionsResponse fromJson: super execute
]

{ #category : #accessing }
PlaidTransactionsEndpoint >> hasOptions [
	^ ((OrderedCollection with: accountIds with: count with: offset) flattened reject: #isNil) isNotEmpty
]

{ #category : #enumerating }
PlaidTransactionsEndpoint >> next: anInt with: aCursor [
	| result transactions batchSize |
	batchSize := anInt ifNil: [ self defaultEnumerationSize ].
	result := self
		offset: aCursor offset;
		count: batchSize;
		execute.
	transactions := result transactions.
	transactions
		ifNotNil: [ :val | aCursor offset: aCursor offset + transactions size ].
	aCursor hasMore: aCursor offset < result totalTransactions.
	^ transactions
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
