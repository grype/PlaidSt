Class {
	#name : #PJAuthResponse,
	#superclass : #PJResponse,
	#instVars : [
		'accounts',
		'numbers',
		'item'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJAuthResponse >> accounts [
	^ accounts
]

{ #category : #accessing }
PJAuthResponse >> accounts: anObject [
	accounts := anObject
]

{ #category : #description }
PJAuthResponse >> accountsDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Accounts';
		accessor: #accounts;
		jsonName: #accounts;
		classes: {PJAccount};
		beOptional;
		beOrdered;
		yourself
]

{ #category : #accessing }
PJAuthResponse >> item [
	^ item
]

{ #category : #accessing }
PJAuthResponse >> item: anObject [
	item := anObject
]

{ #category : #description }
PJAuthResponse >> itemDescription [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Item';
		accessor: #item;
		jsonName: #item;
		classes: {PJItem};
		beOptional;
		yourself
]

{ #category : #accessing }
PJAuthResponse >> numbers [
	^ numbers
]

{ #category : #accessing }
PJAuthResponse >> numbers: anObject [
	numbers := anObject
]

{ #category : #description }
PJAuthResponse >> numbersDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Account Numbers';
		accessor: #numbers;
		jsonName: #numbers;
		classes: {PJAccountNumbers};
		beOptional;
		beOrdered;
		yourself
]
