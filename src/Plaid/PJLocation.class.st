Class {
	#name : #PJLocation,
	#superclass : #PJObject,
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
PJLocation >> address [
	^ address
]

{ #category : #accessing }
PJLocation >> address: anObject [
	address := anObject
]

{ #category : #description }
PJLocation >> addressDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Address';
		accessor: #address;
		jsonName: #address;
		beOptional;
		yourself
]

{ #category : #accessing }
PJLocation >> city [
	^ city
]

{ #category : #accessing }
PJLocation >> city: anObject [
	city := anObject
]

{ #category : #description }
PJLocation >> cityDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'City';
		accessor: #city;
		jsonName: #city;
		beOptional;
		yourself
]

{ #category : #testing }
PJLocation >> hasAddress [
	^ ({ address. city. state. zip } asSet reject: #isNil) size > 0
]

{ #category : #testing }
PJLocation >> hasGeolocation [
	^ latitude isNotNil and: [ longitude isNotNil  ]
]

{ #category : #testing }
PJLocation >> isValid [
	^ self hasGeolocation or: [ self hasAddress ]
]

{ #category : #accessing }
PJLocation >> latitude [
	^ latitude
]

{ #category : #accessing }
PJLocation >> latitude: anObject [
	latitude := anObject
]

{ #category : #description }
PJLocation >> latitudeDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Latitude';
		accessor: #latitude;
		jsonName: #lat;
		beOptional;
		yourself
]

{ #category : #accessing }
PJLocation >> longitude [
	^ longitude
]

{ #category : #accessing }
PJLocation >> longitude: anObject [
	longitude := anObject
]

{ #category : #description }
PJLocation >> longitudeDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Longitude';
		accessor: #longitude;
		jsonName: #lon;
		beOptional;
		yourself
]

{ #category : #printing }
PJLocation >> printAddress [
	^ ({ address. city. state. zip } reject: #isNil) joinUsing: ' '
]

{ #category : #printing }
PJLocation >> printOn: aStream [
	self printAddress
		ifEmpty: [ self hasGeolocation
				ifTrue: [ aStream nextPutAll: 'Geolocation' ]
				ifFalse: [ aStream nextPutAll: 'Invalid Location' ] ]
		ifNotEmpty: [ :value | aStream nextPutAll: value ]
]

{ #category : #accessing }
PJLocation >> state [
	^ state
]

{ #category : #accessing }
PJLocation >> state: anObject [
	state := anObject
]

{ #category : #description }
PJLocation >> stateDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'State';
		accessor: #state;
		jsonName: #state;
		beOptional;
		yourself
]

{ #category : #accessing }
PJLocation >> storeNumber [
	^ storeNumber
]

{ #category : #accessing }
PJLocation >> storeNumber: anObject [
	storeNumber := anObject
]

{ #category : #description }
PJLocation >> storeNumberDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Store Number';
		accessor: #storeNumber;
		jsonName: #'store_number';
		beOptional;
		yourself
]

{ #category : #accessing }
PJLocation >> zip [
	^ zip
]

{ #category : #accessing }
PJLocation >> zip: anObject [
	zip := anObject
]

{ #category : #description }
PJLocation >> zipDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'ZIP';
		accessor: #zip;
		jsonName: #zip;
		beOptional;
		yourself
]
