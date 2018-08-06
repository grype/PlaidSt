Class {
	#name : #PlaidAuthResponse,
	#superclass : #PlaidResponse,
	#instVars : [
		'accounts',
		'numbers',
		'item'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PlaidAuthResponse >> accounts [
	^ accounts
]

{ #category : #accessing }
PlaidAuthResponse >> accounts: anObject [
	accounts := anObject
]

{ #category : #description }
PlaidAuthResponse >> accountsDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Accounts';
		accessor: #accounts;
		jsonName: #accounts;
		classes: {PlaidAccount};
		beOptional;
		beOrdered;
		yourself
]

{ #category : #accessing }
PlaidAuthResponse >> item [
	^ item
]

{ #category : #accessing }
PlaidAuthResponse >> item: anObject [
	item := anObject
]

{ #category : #description }
PlaidAuthResponse >> itemDescription [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Item';
		accessor: #item;
		jsonName: #item;
		classes: {PlaidItem};
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidAuthResponse >> numbers [
	^ numbers
]

{ #category : #accessing }
PlaidAuthResponse >> numbers: anObject [
	numbers := anObject
]

{ #category : #description }
PlaidAuthResponse >> numbersDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Account Numbers';
		accessor: #numbers;
		jsonName: #numbers;
		classes: {PlaidAccountNumbers};
		beOptional;
		beOrdered;
		yourself
]
