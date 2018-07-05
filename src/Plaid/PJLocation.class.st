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
		yourself
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
		yourself
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
		yourself
]

{ #category : #description }
PJLocation >> storeNumberDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Store Number';
		accessor: #storeNumber;
		jsonName: #'store_number';
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
		yourself
]
