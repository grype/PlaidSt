Class {
	#name : #PJError,
	#superclass : #PJObject,
	#instVars : [
		'type',
		'code',
		'message',
		'displayMessage'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJError >> code [
	^ code
]

{ #category : #accessing }
PJError >> code: anObject [
	code := anObject
]

{ #category : #description }
PJError >> codeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Code';
		accessor: #code;
		jsonName: #error_code;
		beOptional;
		yourself
]

{ #category : #accessing }
PJError >> displayMessage [
	^ displayMessage ifNil: [ message ]
]

{ #category : #accessing }
PJError >> displayMessage: anObject [
	displayMessage := anObject
]

{ #category : #description }
PJError >> displayMessageDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Display Message';
		accessor: #displayMessage;
		jsonName: #display_message;
		beOptional;
		yourself
]

{ #category : #accessing }
PJError >> message [
	^ message
]

{ #category : #accessing }
PJError >> message: anObject [
	message := anObject
]

{ #category : #description }
PJError >> messageDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Message';
		accessor: #message;
		jsonName: #error_message;
		beOptional;
		yourself
]

{ #category : #accessing }
PJError >> type [
	^ type
]

{ #category : #accessing }
PJError >> type: anObject [
	type := anObject
]

{ #category : #description }
PJError >> typeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Type';
		accessor: #type;
		jsonName: #error_type;
		beOptional;
		yourself
]
