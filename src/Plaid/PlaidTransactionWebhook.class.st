Class {
	#name : #PlaidTransactionWebhook,
	#superclass : #PlaidItemWebhook,
	#instVars : [
		'newTransactionsCount',
		'removedTransactionIds'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PlaidTransactionWebhook >> newTransactionsCount [
	^ newTransactionsCount
]

{ #category : #accessing }
PlaidTransactionWebhook >> newTransactionsCount: anObject [
	newTransactionsCount := anObject
]

{ #category : #description }
PlaidTransactionWebhook >> newTransactionsCountDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Number of new transactions';
		accessor: #newTransactionsCount;
		jsonName: #new_transactions;
		yourself
]

{ #category : #accessing }
PlaidTransactionWebhook >> removedTransactionIds [
	^ removedTransactionIds
]

{ #category : #accessing }
PlaidTransactionWebhook >> removedTransactionIds: anObject [
	removedTransactionIds := anObject
]

{ #category : #description }
PlaidTransactionWebhook >> removedTransactionsDescription [
	<magritteDescription>
	^ MAElementDescription new
		label: 'Removed transactions';
		accessor: #removedTransactionIds;
		jsonName: #removed_transactions;
		yourself
]
