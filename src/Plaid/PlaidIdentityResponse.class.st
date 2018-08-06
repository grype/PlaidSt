Class {
	#name : #PlaidIdentityResponse,
	#superclass : #PlaidResponse,
	#instVars : [
		'accounts',
		'identity',
		'item'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PlaidIdentityResponse >> accounts [
	^ accounts
]

{ #category : #accessing }
PlaidIdentityResponse >> accounts: anObject [
	accounts := anObject
]

{ #category : #description }
PlaidIdentityResponse >> accountsDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Accounts';
		accessor: #accounts;
		jsonName: #accounts;
		classes: { PlaidAccount };
		beOrdered;
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidIdentityResponse >> identity [
	^ identity
]

{ #category : #accessing }
PlaidIdentityResponse >> identity: anObject [
	identity := anObject
]

{ #category : #description }
PlaidIdentityResponse >> identityDescription [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Identity';
		accessor: #identity;
		jsonName: #identity;
		classes: { PlaidIdentity };
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidIdentityResponse >> item [
	^ item
]

{ #category : #accessing }
PlaidIdentityResponse >> item: anObject [
	item := anObject
]

{ #category : #description }
PlaidIdentityResponse >> itemDescription [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Item';
		accessor: #item;
		jsonName: #item;
		classes: { PlaidItem };
		beOptional;
		yourself
]
