Class {
	#name : #PJTransactionWebhook,
	#superclass : #PJItemWebhook,
	#instVars : [
		'newTransactionsCount',
		'removedTransactionIds'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJTransactionWebhook >> newTransactionsCount [
	^ newTransactionsCount
]

{ #category : #accessing }
PJTransactionWebhook >> newTransactionsCount: anObject [
	newTransactionsCount := anObject
]

{ #category : #description }
PJTransactionWebhook >> newTransactionsCountDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Number of new transactions';
		accessor: #newTransactionsCount;
		jsonName: #new_transactions;
		yourself
]

{ #category : #accessing }
PJTransactionWebhook >> removedTransactionIds [
	^ removedTransactionIds
]

{ #category : #accessing }
PJTransactionWebhook >> removedTransactionIds: anObject [
	removedTransactionIds := anObject
]

{ #category : #description }
PJTransactionWebhook >> removedTransactionsDescription [
	<magritteDescription>
	^ MAElementDescription new
		label: 'Removed transactions';
		accessor: #removedTransactionIds;
		jsonName: #removed_transactions;
		yourself
]
