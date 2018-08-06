Class {
	#name : #PlaidAccount,
	#superclass : #PlaidModel,
	#instVars : [
		'accountId',
		'balances',
		'mask',
		'name',
		'officialName',
		'subtype',
		'type'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PlaidAccount >> accountId [
	^ accountId
]

{ #category : #accessing }
PlaidAccount >> accountId: anObject [
	accountId := anObject
]

{ #category : #description }
PlaidAccount >> accountIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Account ID';
		accessor: #accountId;
		jsonName: #'account_id';
		yourself
]

{ #category : #accessing }
PlaidAccount >> balances [
	^ balances
]

{ #category : #accessing }
PlaidAccount >> balances: anObject [
	balances := anObject
]

{ #category : #description }
PlaidAccount >> balancesDescription [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Balances';
		accessor: #balances;
		jsonName: #balances;
		classes: { PlaidAccountBalance };
		beOptional;
		yourself
]

{ #category : #printing }
PlaidAccount >> balancesPrintString [
	^ '{1}/{2}/{3}'
		format:
			{(self balances current ifNil: [ 'NA' ]).
			(self balances available ifNil: [ 'NA' ]).
			(self balances limit ifNil: [ 'NA' ])}
]

{ #category : #comparing }
PlaidAccount >> hash [
	^ accountId hash
]

{ #category : #testing }
PlaidAccount >> isBrokerage [
	^ self type = 'brokerage'
]

{ #category : #testing }
PlaidAccount >> isCredit [
	^ self type = 'credit'
]

{ #category : #testing }
PlaidAccount >> isDepository [
	^ self type = 'depository'
]

{ #category : #testing }
PlaidAccount >> isLoan [
	^ self type = 'loan'
]

{ #category : #testing }
PlaidAccount >> isMortgage [
	^ self type = 'mortgage'
]

{ #category : #testing }
PlaidAccount >> isOther [
	^ self type = 'other'
]

{ #category : #accessing }
PlaidAccount >> mask [
	^ mask
]

{ #category : #accessing }
PlaidAccount >> mask: anObject [
	mask := anObject
]

{ #category : #description }
PlaidAccount >> maskDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Mask';
		accessor: #mask;
		jsonName: #mask;
		yourself
]

{ #category : #accessing }
PlaidAccount >> name [
	^ name
]

{ #category : #accessing }
PlaidAccount >> name: anObject [
	name := anObject
]

{ #category : #description }
PlaidAccount >> nameDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Name';
		accessor: #name;
		jsonName: #name;
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidAccount >> officialName [
	^ officialName
]

{ #category : #accessing }
PlaidAccount >> officialName: anObject [
	officialName := anObject
]

{ #category : #description }
PlaidAccount >> officialNameDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Official Name';
		accessor: #officialName;
		jsonName: #'official_name';
		beOptional;
		yourself
]

{ #category : #printing }
PlaidAccount >> printName [
	^ name ifNil: [ officialName ]
]

{ #category : #printing }
PlaidAccount >> printOn: aStream [
	"Append a sequence of characters to aStream that identify the receiver."

	super printOn: aStream.
	aStream
		nextPutAll: ' <';
		nextPutAll: name;
		nextPut: $>
]

{ #category : #accessing }
PlaidAccount >> subtype [
	^ subtype
]

{ #category : #accessing }
PlaidAccount >> subtype: anObject [
	subtype := anObject
]

{ #category : #description }
PlaidAccount >> subtypeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Subtype';
		accessor: #subtype;
		jsonName: #subtype;
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidAccount >> type [
	^ type
]

{ #category : #accessing }
PlaidAccount >> type: anObject [
	type := anObject
]

{ #category : #description }
PlaidAccount >> typeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Type';
		accessor: #type;
		jsonName: #type;
		beOptional;
		yourself
]
