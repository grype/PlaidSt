Class {
	#name : #PlaidErrorResponse,
	#superclass : #GRObject,
	#instVars : [
		'displayMessage',
		'errorCode',
		'errorMessage',
		'errorType'
	],
	#category : #'Plaid-Client'
}

{ #category : #accessing }
PlaidErrorResponse >> displayMessage [
	^ displayMessage
]

{ #category : #accessing }
PlaidErrorResponse >> displayMessage: anObject [
	displayMessage := anObject
]

{ #category : #descriptions }
PlaidErrorResponse >> displayMessageDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Display Message';
		accessor: #displayMessage;
		jsonName: #display_message;
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidErrorResponse >> errorCode [
	^ errorCode
]

{ #category : #accessing }
PlaidErrorResponse >> errorCode: anObject [
	errorCode := anObject
]

{ #category : #descriptions }
PlaidErrorResponse >> errorCodeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Error Code';
		accessor: #errorCode;
		jsonName: #error_code;
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidErrorResponse >> errorMessage [
	^ errorMessage
]

{ #category : #accessing }
PlaidErrorResponse >> errorMessage: anObject [
	errorMessage := anObject
]

{ #category : #descriptions }
PlaidErrorResponse >> errorMessageDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Error Message';
		accessor: #errorMessage;
		jsonName: #error_message;
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidErrorResponse >> errorType [
	^ errorType
]

{ #category : #accessing }
PlaidErrorResponse >> errorType: anObject [
	errorType := anObject
]

{ #category : #descriptions }
PlaidErrorResponse >> errorTypeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Error Type';
		accessor: #errorType;
		jsonName: #error_type;
		beOptional;
		yourself
]
