Class {
	#name : #PJIdentityAddress,
	#superclass : #PJObject,
	#instVars : [
		'accountNames',
		'addressData',
		'primary'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJIdentityAddress >> accountNames [
	^ accountNames
]

{ #category : #accessing }
PJIdentityAddress >> accountNames: anObject [
	accountNames := anObject
]

{ #category : #description }
PJIdentityAddress >> accountNamesDescription [
	<magritteDescription>
	^ MAElementDescription new
		label: 'Account Names';
		accessor: #accountNames;
		jsonName: #accounts;
		yourself
]

{ #category : #accessing }
PJIdentityAddress >> addressData [
	^ addressData
]

{ #category : #accessing }
PJIdentityAddress >> addressData: anObject [
	addressData := anObject
]

{ #category : #description }
PJIdentityAddress >> addressDataDescription [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Address Data';
		accessor: #addressData;
		jsonName: #data;
		classes: { PJIdentityAddressData };
		yourself
]

{ #category : #accessing }
PJIdentityAddress >> primary [
	^ primary
]

{ #category : #accessing }
PJIdentityAddress >> primary: anObject [
	primary := anObject
]

{ #category : #description }
PJIdentityAddress >> primaryDescription [
	<magritteDescription>
	^ MABooleanDescription new
		label: 'Primary?';
		accessor: #primary;
		jsonName: #primary;
		default: false;
		yourself
]

{ #category : #printing }
PJIdentityAddress >> printOn: aStream [
	"Append a sequence of characters to aStream that identify the receiver."

	| parts |

	super printOn: aStream.
	aStream nextPut: Character space.
	parts := {addressData street.
	addressData city.
	addressData state.
	addressData zip}.
	aStream print: (parts joinUsing: ', ')
]
