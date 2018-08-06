Class {
	#name : #PlaidIdentityAddressData,
	#superclass : #PlaidModel,
	#instVars : [
		'street',
		'city',
		'state',
		'zip'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PlaidIdentityAddressData >> city [
	^ city
]

{ #category : #accessing }
PlaidIdentityAddressData >> city: anObject [
	city := anObject
]

{ #category : #description }
PlaidIdentityAddressData >> cityDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'City';
		accessor: #city;
		jsonName: #city;
		yourself
]

{ #category : #printing }
PlaidIdentityAddressData >> printOn: aStream [
	super printOn: aStream.
	aStream
		nextPutAll: ' <';
		nextPutAll:
			({street.
			city.
			state.
			zip} joinUsing: ', ');
		nextPut: $>
]

{ #category : #accessing }
PlaidIdentityAddressData >> state [
	^ state
]

{ #category : #accessing }
PlaidIdentityAddressData >> state: anObject [
	state := anObject
]

{ #category : #description }
PlaidIdentityAddressData >> stateDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'State';
		accessor: #state;
		jsonName: #state;
		yourself
]

{ #category : #accessing }
PlaidIdentityAddressData >> street [
	^ street
]

{ #category : #accessing }
PlaidIdentityAddressData >> street: anObject [
	street := anObject
]

{ #category : #description }
PlaidIdentityAddressData >> streetDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Street';
		accessor: #street;
		jsonName: #street;
		yourself
]

{ #category : #accessing }
PlaidIdentityAddressData >> zip [
	^ zip
]

{ #category : #accessing }
PlaidIdentityAddressData >> zip: anObject [
	zip := anObject
]

{ #category : #description }
PlaidIdentityAddressData >> zipDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Zip';
		accessor: #zip;
		jsonName: #zip;
		yourself
]
