Class {
	#name : #PJIdentityAddressData,
	#superclass : #PJObject,
	#instVars : [
		'street',
		'city',
		'state',
		'zip'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJIdentityAddressData >> city [
	^ city
]

{ #category : #accessing }
PJIdentityAddressData >> city: anObject [
	city := anObject
]

{ #category : #description }
PJIdentityAddressData >> cityDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'City';
		accessor: #city;
		jsonName: #city;
		yourself
]

{ #category : #printing }
PJIdentityAddressData >> printOn: aStream [
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
PJIdentityAddressData >> state [
	^ state
]

{ #category : #accessing }
PJIdentityAddressData >> state: anObject [
	state := anObject
]

{ #category : #description }
PJIdentityAddressData >> stateDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'State';
		accessor: #state;
		jsonName: #state;
		yourself
]

{ #category : #accessing }
PJIdentityAddressData >> street [
	^ street
]

{ #category : #accessing }
PJIdentityAddressData >> street: anObject [
	street := anObject
]

{ #category : #description }
PJIdentityAddressData >> streetDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Street';
		accessor: #street;
		jsonName: #street;
		yourself
]

{ #category : #accessing }
PJIdentityAddressData >> zip [
	^ zip
]

{ #category : #accessing }
PJIdentityAddressData >> zip: anObject [
	zip := anObject
]

{ #category : #description }
PJIdentityAddressData >> zipDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Zip';
		accessor: #zip;
		jsonName: #zip;
		yourself
]
