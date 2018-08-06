Class {
	#name : #PlaidAccountsResponse,
	#superclass : #PlaidResponse,
	#instVars : [
		'accounts'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PlaidAccountsResponse >> accounts [
	^ accounts
]

{ #category : #accessing }
PlaidAccountsResponse >> accounts: anObject [
	accounts := anObject
]

{ #category : #description }
PlaidAccountsResponse >> accountsDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Accounts';
		accessor: #accounts;
		jsonName: #accounts;
		classes: {PlaidAccount};
		beOrdered;
		yourself
]
