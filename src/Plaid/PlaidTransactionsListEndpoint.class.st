Class {
	#name : #PlaidTransactionsListEndpoint,
	#superclass : #PlaidTransactionsEndpoint,
	#instVars : [
		'startDate',
		'endDate',
		'accountIds',
		'count',
		'offset'
	],
	#category : #'Plaid-Client'
}

{ #category : #'instance creation' }
PlaidTransactionsListEndpoint class >> urlOn: aClient [
	^ (super urlOn: aClient) / 'get'
]

{ #category : #accessing }
PlaidTransactionsListEndpoint >> accountIds [
	^ accountIds
]

{ #category : #accessing }
PlaidTransactionsListEndpoint >> accountIds: anObject [
	accountIds := anObject
]

{ #category : #accessing }
PlaidTransactionsListEndpoint >> count [
	^ count
]

{ #category : #accessing }
PlaidTransactionsListEndpoint >> count: anObject [
	count := anObject
]

{ #category : #accessing }
PlaidTransactionsListEndpoint >> data [
	| result |

	result := super data copy.
	result
		at: #start_date put: self startDate yyyymmdd;
		at: #end_date put: self endDate yyyymmdd.
	self hasOptions
		ifTrue: [ result at: #options put: self optionsData ].
	^ result
]

{ #category : #accessing }
PlaidTransactionsListEndpoint >> endDate [
	^ endDate
]

{ #category : #accessing }
PlaidTransactionsListEndpoint >> endDate: anObject [
	endDate := anObject
]

{ #category : #accessing }
PlaidTransactionsListEndpoint >> hasOptions [
	^ ((OrderedCollection with: accountIds with: count with: offset) flattened reject: #isNil) isNotEmpty
]

{ #category : #api }
PlaidTransactionsListEndpoint >> list [
	^ PJTransactionsResponse fromJson: self post
]

{ #category : #accessing }
PlaidTransactionsListEndpoint >> offset [
	^ offset
]

{ #category : #accessing }
PlaidTransactionsListEndpoint >> offset: anObject [
	offset := anObject
]

{ #category : #accessing }
PlaidTransactionsListEndpoint >> optionsData [
	^ Dictionary new
		at: #account_ids put: accountIds;
		at: #count put: count;
		at: #offset put: offset;
		yourself
]

{ #category : #accessing }
PlaidTransactionsListEndpoint >> startDate [
	^ startDate
]

{ #category : #accessing }
PlaidTransactionsListEndpoint >> startDate: anObject [
	startDate := anObject
]
