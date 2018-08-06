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
