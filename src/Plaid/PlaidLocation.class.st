Class {
	#name : #PlaidLocation,
	#superclass : #PlaidModel,
	#instVars : [
		'address',
		'city',
		'state',
		'zip',
		'latitude',
		'longitude',
		'storeNumber'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PlaidLocation >> address [
	^ address
]

{ #category : #accessing }
PlaidLocation >> address: anObject [
	address := anObject
]

{ #category : #description }
PlaidLocation >> addressDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Address';
		accessor: #address;
		jsonName: #address;
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidLocation >> city [
	^ city
]

{ #category : #accessing }
PlaidLocation >> city: anObject [
	city := anObject
]

{ #category : #description }
PlaidLocation >> cityDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'City';
		accessor: #city;
		jsonName: #city;
		beOptional;
		yourself
]

{ #category : #testing }
PlaidLocation >> hasAddress [
	^ ({ address. city. state. zip } asSet reject: #isNil) isNotEmpty
]

{ #category : #testing }
PlaidLocation >> hasGeolocation [
	^ latitude isNotNil and: [ longitude isNotNil  ]
]

{ #category : #testing }
PlaidLocation >> isValid [
	^ self hasGeolocation or: [ self hasAddress ]
]

{ #category : #accessing }
PlaidLocation >> latitude [
	^ latitude
]

{ #category : #accessing }
PlaidLocation >> latitude: anObject [
	latitude := anObject
]

{ #category : #description }
PlaidLocation >> latitudeDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Latitude';
		accessor: #latitude;
		jsonName: #lat;
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidLocation >> longitude [
	^ longitude
]

{ #category : #accessing }
PlaidLocation >> longitude: anObject [
	longitude := anObject
]

{ #category : #description }
PlaidLocation >> longitudeDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Longitude';
		accessor: #longitude;
		jsonName: #lon;
		beOptional;
		yourself
]

{ #category : #printing }
PlaidLocation >> printAddress [
	^ ({ address. city. state. zip } reject: #isNil) joinUsing: ' '
]

{ #category : #printing }
PlaidLocation >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' <'.
	self printAddress
		ifEmpty: [ self hasGeolocation
				ifTrue: [ aStream nextPutAll: 'Geolocation' ]
				ifFalse: [ aStream nextPutAll: 'Invalid Location' ] ]
		ifNotEmpty: [ :value | aStream nextPutAll: value ].
	aStream nextPut: $>
]

{ #category : #accessing }
PlaidLocation >> state [
	^ state
]

{ #category : #accessing }
PlaidLocation >> state: anObject [
	state := anObject
]

{ #category : #description }
PlaidLocation >> stateDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'State';
		accessor: #state;
		jsonName: #state;
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidLocation >> storeNumber [
	^ storeNumber
]

{ #category : #accessing }
PlaidLocation >> storeNumber: anObject [
	storeNumber := anObject
]

{ #category : #description }
PlaidLocation >> storeNumberDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Store Number';
		accessor: #storeNumber;
		jsonName: #'store_number';
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidLocation >> zip [
	^ zip
]

{ #category : #accessing }
PlaidLocation >> zip: anObject [
	zip := anObject
]

{ #category : #description }
PlaidLocation >> zipDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'ZIP';
		accessor: #zip;
		jsonName: #zip;
		beOptional;
		yourself
]
