Class {
	#name : #PJIdentityContactInfo,
	#superclass : #PJObject,
	#instVars : [
		'data',
		'primary',
		'type'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJIdentityContactInfo >> data [
	^ data
]

{ #category : #accessing }
PJIdentityContactInfo >> data: anObject [
	data := anObject
]

{ #category : #description }
PJIdentityContactInfo >> dataDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Data';
		accessor: #data;
		jsonName: #data;
		yourself
]

{ #category : #accessing }
PJIdentityContactInfo >> primary [
	^ primary
]

{ #category : #accessing }
PJIdentityContactInfo >> primary: anObject [
	primary := anObject
]

{ #category : #description }
PJIdentityContactInfo >> primaryDescription [
	<magritteDescription>
	^ MABooleanDescription new
		label: 'Primary?';
		accessor: #primary;
		jsonName: #primary;
		yourself
]

{ #category : #accessing }
PJIdentityContactInfo >> type [
	^ type
]

{ #category : #accessing }
PJIdentityContactInfo >> type: anObject [
	type := anObject
]

{ #category : #description }
PJIdentityContactInfo >> typeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Type';
		accessor: #type;
		jsonName: #type;
		yourself
]
