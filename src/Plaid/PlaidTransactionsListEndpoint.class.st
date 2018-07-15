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
	^ aClient baseUrl / 'get'
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
PlaidTransactionsListEndpoint >> endDate [
	^ endDate
]

{ #category : #accessing }
PlaidTransactionsListEndpoint >> endDate: anObject [
	endDate := anObject
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
PlaidTransactionsListEndpoint >> startDate [
	^ startDate
]

{ #category : #accessing }
PlaidTransactionsListEndpoint >> startDate: anObject [
	startDate := anObject
]
