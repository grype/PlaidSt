Class {
	#name : #PlaidIdentityAddress,
	#superclass : #PlaidModel,
	#instVars : [
		'accountNames',
		'addressData',
		'primary'
	],
	#category : #'Plaid-Models'
}

{ #category : #comparing }
PlaidIdentityAddress >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ accountNames = anObject accountNames
		and: [ addressData = anObject addressData
				and: [ primary = anObject primary ] ]
]

{ #category : #accessing }
PlaidIdentityAddress >> accountNames [
	^ accountNames
]

{ #category : #accessing }
PlaidIdentityAddress >> accountNames: anObject [
	accountNames := anObject
]

{ #category : #description }
PlaidIdentityAddress >> accountNamesDescription [
	<magritteDescription>
	^ MAElementDescription new
		label: 'Account Names';
		accessor: #accountNames;
		jsonName: #accounts;
		yourself
]

{ #category : #accessing }
PlaidIdentityAddress >> addressData [
	^ addressData
]

{ #category : #accessing }
PlaidIdentityAddress >> addressData: anObject [
	addressData := anObject
]

{ #category : #description }
PlaidIdentityAddress >> addressDataDescription [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Address Data';
		accessor: #addressData;
		jsonName: #data;
		classes: { PlaidIdentityAddressData };
		yourself
]

{ #category : #comparing }
PlaidIdentityAddress >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ accountNames hash bitXor: (addressData hash bitXor: primary hash)
]

{ #category : #accessing }
PlaidIdentityAddress >> primary [
	^ primary
]

{ #category : #accessing }
PlaidIdentityAddress >> primary: anObject [
	primary := anObject
]

{ #category : #description }
PlaidIdentityAddress >> primaryDescription [
	<magritteDescription>
	^ MABooleanDescription new
		label: 'Primary?';
		accessor: #primary;
		jsonName: #primary;
		default: false;
		yourself
]

{ #category : #printing }
PlaidIdentityAddress >> printOn: aStream [
	"Append a sequence of characters to aStream that identify the receiver."

	| parts |

	super printOn: aStream.
	aStream nextPut: Character space.
	parts := {addressData street.
	addressData city.
	addressData state.
	addressData zip}.
	aStream
		nextPutAll: ' <';
		nextPutAll: (parts joinUsing: ', ');
		nextPut: $>
]
