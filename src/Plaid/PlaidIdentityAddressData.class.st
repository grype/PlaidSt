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

{ #category : #comparing }
PlaidIdentityAddressData >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ city = anObject city
		and: [ state = anObject state
				and: [ street = anObject street and: [ zip = anObject zip ] ] ]
]

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

{ #category : #comparing }
PlaidIdentityAddressData >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ city hash
		bitXor: (state hash bitXor: (street hash bitXor: zip hash))
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
