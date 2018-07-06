Class {
	#name : #PJTransactionsResponse,
	#superclass : #PJResponse,
	#instVars : [
		'item',
		'accounts',
		'transactions',
		'totalTransactions'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJTransactionsResponse >> accounts [
	^ accounts
]

{ #category : #accessing }
PJTransactionsResponse >> accounts: anObject [
	accounts := anObject
]

{ #category : #description }
PJTransactionsResponse >> accountsDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Accounts';
		accessor: #accounts;
		jsonName: #accounts;
		classes: {PJAccount};
		beOrdered;
		beOptional;
		yourself
]

{ #category : #accessing }
PJTransactionsResponse >> item [
	^ item
]

{ #category : #accessing }
PJTransactionsResponse >> item: anObject [
	item := anObject
]

{ #category : #description }
PJTransactionsResponse >> itemDescription [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Item';
		accessor: #item;
		jsonName: #item;
		classes: {PJItem};
		yourself
]

{ #category : #accessing }
PJTransactionsResponse >> totalTransactions [
	^ totalTransactions
]

{ #category : #accessing }
PJTransactionsResponse >> totalTransactions: anObject [
	totalTransactions := anObject
]

{ #category : #description }
PJTransactionsResponse >> totalTransactionsDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Total Transactions';
		accessor: #totalTransactions;
		jsonName: #total_transactions;
		yourself
]

{ #category : #accessing }
PJTransactionsResponse >> transactions [
	^ transactions
]

{ #category : #accessing }
PJTransactionsResponse >> transactions: anObject [
	transactions := anObject
]

{ #category : #description }
PJTransactionsResponse >> transactionsDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Transactions';
		accessor: #transactions;
		jsonName: #transactions;
		classes: {PJTransaction};
		beOrdered;
		beOptional;
		yourself
]
