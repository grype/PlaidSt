Class {
	#name : #PJIdentityResponse,
	#superclass : #PJResponse,
	#instVars : [
		'accounts',
		'identity',
		'item'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJIdentityResponse >> accounts [
	^ accounts
]

{ #category : #accessing }
PJIdentityResponse >> accounts: anObject [
	accounts := anObject
]

{ #category : #description }
PJIdentityResponse >> accountsDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Accounts';
		accessor: #accounts;
		jsonName: #accounts;
		classes: { PJAccount };
		beOptional;
		yourself
]

{ #category : #accessing }
PJIdentityResponse >> identity [
	^ identity
]

{ #category : #accessing }
PJIdentityResponse >> identity: anObject [
	identity := anObject
]

{ #category : #description }
PJIdentityResponse >> identityDescription [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Identity';
		accessor: #identity;
		jsonName: #identity;
		classes: { PJIdentity };
		beOptional;
		yourself
]

{ #category : #accessing }
PJIdentityResponse >> item [
	^ item
]

{ #category : #accessing }
PJIdentityResponse >> item: anObject [
	item := anObject
]

{ #category : #description }
PJIdentityResponse >> itemDescription [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Item';
		accessor: #item;
		jsonName: #item;
		classes: { PJItem };
		beOptional;
		yourself
]
