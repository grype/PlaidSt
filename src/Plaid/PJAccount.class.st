Class {
	#name : #PJAccount,
	#superclass : #PJObject,
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
PJAccount >> accountId [
	^ accountId
]

{ #category : #accessing }
PJAccount >> accountId: anObject [
	accountId := anObject
]

{ #category : #description }
PJAccount >> accountIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Account ID';
		accessor: #accountId;
		jsonName: #'account_id';
		yourself
]

{ #category : #accessing }
PJAccount >> balances [
	^ balances
]

{ #category : #accessing }
PJAccount >> balances: anObject [
	balances := anObject
]

{ #category : #description }
PJAccount >> balancesDescription [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Balances';
		accessor: #balances;
		jsonName: #balances;
		classes: { PJAccountBalance };
		beOptional;
		yourself
]

{ #category : #printing }
PJAccount >> balancesPrintString [
	^ '{1}/{2}/{3}'
		format:
			{(self balances current ifNil: [ 'NA' ]).
			(self balances available ifNil: [ 'NA' ]).
			(self balances limit ifNil: [ 'NA' ])}
]

{ #category : #comparing }
PJAccount >> hash [
	^ accountId hash
]

{ #category : #testing }
PJAccount >> isBrokerage [
	^ self type = 'brokerage'
]

{ #category : #testing }
PJAccount >> isCredit [
	^ self type = 'credit'
]

{ #category : #testing }
PJAccount >> isDepository [
	^ self type = 'depository'
]

{ #category : #testing }
PJAccount >> isLoan [
	^ self type = 'loan'
]

{ #category : #testing }
PJAccount >> isMortgage [
	^ self type = 'mortgage'
]

{ #category : #testing }
PJAccount >> isOther [
	^ self type = 'other'
]

{ #category : #accessing }
PJAccount >> mask [
	^ mask
]

{ #category : #accessing }
PJAccount >> mask: anObject [
	mask := anObject
]

{ #category : #description }
PJAccount >> maskDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Mask';
		accessor: #mask;
		jsonName: #mask;
		yourself
]

{ #category : #accessing }
PJAccount >> name [
	^ name
]

{ #category : #accessing }
PJAccount >> name: anObject [
	name := anObject
]

{ #category : #description }
PJAccount >> nameDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Name';
		accessor: #name;
		jsonName: #name;
		beOptional;
		yourself
]

{ #category : #accessing }
PJAccount >> officialName [
	^ officialName
]

{ #category : #accessing }
PJAccount >> officialName: anObject [
	officialName := anObject
]

{ #category : #description }
PJAccount >> officialNameDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Official Name';
		accessor: #officialName;
		jsonName: #'official_name';
		beOptional;
		yourself
]

{ #category : #printing }
PJAccount >> printName [
	^ name ifNil: [ officialName ]
]

{ #category : #printing }
PJAccount >> printOn: aStream [
	"Append a sequence of characters to aStream that identify the receiver."

	super printOn: aStream.
	aStream
		nextPutAll: ' <';
		nextPutAll: name;
		nextPut: $>
]

{ #category : #accessing }
PJAccount >> subtype [
	^ subtype
]

{ #category : #accessing }
PJAccount >> subtype: anObject [
	subtype := anObject
]

{ #category : #description }
PJAccount >> subtypeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Subtype';
		accessor: #subtype;
		jsonName: #subtype;
		beOptional;
		yourself
]

{ #category : #accessing }
PJAccount >> type [
	^ type
]

{ #category : #accessing }
PJAccount >> type: anObject [
	type := anObject
]

{ #category : #description }
PJAccount >> typeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Type';
		accessor: #type;
		jsonName: #type;
		beOptional;
		yourself
]
