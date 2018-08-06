Class {
	#name : #PlaidTransactionsEndpoint,
	#superclass : #PlaidAuthenticatedEndpoint,
	#instVars : [
		'startDate',
		'endDate',
		'accountIds',
		'count',
		'offset'
	],
	#category : #'Plaid-Client'
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

{ #category : #accessing }
PlaidTransactionsEndpoint >> hasOptions [
	^ ((OrderedCollection with: accountIds with: count with: offset) flattened reject: #isNil) isNotEmpty
]

{ #category : #api }
PlaidTransactionsEndpoint >> list [
	<endpoint: 'get'>
	<post>
	^ PlaidTransactionsResponse fromJson: self execute
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
