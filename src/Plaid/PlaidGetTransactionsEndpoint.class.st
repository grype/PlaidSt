Class {
	#name : #PlaidGetTransactionsEndpoint,
	#superclass : #PlaidAuthenticatedEndpoint,
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
PlaidGetTransactionsEndpoint class >> endpointPath [
	^ Path / 'transactions'
]

{ #category : #accessing }
PlaidGetTransactionsEndpoint >> accountIds [
	^ accountIds
]

{ #category : #accessing }
PlaidGetTransactionsEndpoint >> accountIds: anObject [
	accountIds := anObject
]

{ #category : #accessing }
PlaidGetTransactionsEndpoint >> count [
	^ count
]

{ #category : #accessing }
PlaidGetTransactionsEndpoint >> count: anObject [
	count := anObject
]

{ #category : #accessing }
PlaidGetTransactionsEndpoint >> data [
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
PlaidGetTransactionsEndpoint >> endDate [
	^ endDate
]

{ #category : #accessing }
PlaidGetTransactionsEndpoint >> endDate: anObject [
	endDate := anObject
]

{ #category : #executing }
PlaidGetTransactionsEndpoint >> execute [
	<endpoint: 'get'>
	<post>
	^ PlaidTransactionsResponse fromJson: super execute
]

{ #category : #accessing }
PlaidGetTransactionsEndpoint >> hasOptions [
	^ ((OrderedCollection with: accountIds with: count with: offset) flattened reject: #isNil) isNotEmpty
]

{ #category : #accessing }
PlaidGetTransactionsEndpoint >> offset [
	^ offset
]

{ #category : #accessing }
PlaidGetTransactionsEndpoint >> offset: anObject [
	offset := anObject
]

{ #category : #accessing }
PlaidGetTransactionsEndpoint >> optionsData [
	^ Dictionary new
		at: #account_ids put: accountIds;
		at: #count put: count;
		at: #offset put: offset;
		yourself
]

{ #category : #accessing }
PlaidGetTransactionsEndpoint >> startDate [
	^ startDate
]

{ #category : #accessing }
PlaidGetTransactionsEndpoint >> startDate: anObject [
	startDate := anObject
]
