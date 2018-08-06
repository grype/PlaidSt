Class {
	#name : #PlaidTransactionsResponse,
	#superclass : #PlaidResponse,
	#instVars : [
		'item',
		'accounts',
		'transactions',
		'totalTransactions'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PlaidTransactionsResponse >> accounts [
	^ accounts
]

{ #category : #accessing }
PlaidTransactionsResponse >> accounts: anObject [
	accounts := anObject
]

{ #category : #description }
PlaidTransactionsResponse >> accountsDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Accounts';
		accessor: #accounts;
		jsonName: #accounts;
		classes: {PlaidAccount};
		beOrdered;
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidTransactionsResponse >> item [
	^ item
]

{ #category : #accessing }
PlaidTransactionsResponse >> item: anObject [
	item := anObject
]

{ #category : #description }
PlaidTransactionsResponse >> itemDescription [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Item';
		accessor: #item;
		jsonName: #item;
		classes: {PlaidItem};
		yourself
]

{ #category : #accessing }
PlaidTransactionsResponse >> totalTransactions [
	^ totalTransactions
]

{ #category : #accessing }
PlaidTransactionsResponse >> totalTransactions: anObject [
	totalTransactions := anObject
]

{ #category : #description }
PlaidTransactionsResponse >> totalTransactionsDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Total Transactions';
		accessor: #totalTransactions;
		jsonName: #total_transactions;
		yourself
]

{ #category : #accessing }
PlaidTransactionsResponse >> transactions [
	^ transactions
]

{ #category : #accessing }
PlaidTransactionsResponse >> transactions: anObject [
	transactions := anObject
]

{ #category : #description }
PlaidTransactionsResponse >> transactionsDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Transactions';
		accessor: #transactions;
		jsonName: #transactions;
		classes: {PlaidTransaction};
		beOrdered;
		beOptional;
		yourself
]
