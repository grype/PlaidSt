Class {
	#name : #PJAccountsResponse,
	#superclass : #PJResponse,
	#instVars : [
		'accounts'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJAccountsResponse >> accounts [
	^ accounts
]

{ #category : #accessing }
PJAccountsResponse >> accounts: anObject [
	accounts := anObject
]

{ #category : #description }
PJAccountsResponse >> accountsDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Accounts';
		accessor: #accounts;
		jsonName: #accounts;
		classes: {PJAccount};
		beOrdered;
		yourself
]
