Class {
	#name : #PlaidInstitution,
	#superclass : #PlaidModel,
	#instVars : [
		'institutionId',
		'name',
		'products',
		'mfa',
		'hasMfa',
		'credentials'
	],
	#category : #'Plaid-Models'
}

{ #category : #comparing }
PlaidInstitution >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ institutionId = anObject institutionId
]

{ #category : #accessing }
PlaidInstitution >> credentials [
	^ credentials
]

{ #category : #accessing }
PlaidInstitution >> credentials: anObject [
	credentials := anObject
]

{ #category : #description }
PlaidInstitution >> credentialsDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Credentials';
		accessor: #credentials;
		jsonName: #credentials;
		classes: { PlaidInstitutionCredential };
		beOptional;
		beOrdered;
		yourself
]

{ #category : #accessing }
PlaidInstitution >> hasMfa [
	^ hasMfa
]

{ #category : #accessing }
PlaidInstitution >> hasMfa: anObject [
	hasMfa := anObject
]

{ #category : #description }
PlaidInstitution >> hasMfaDescription [
	<magritteDescription>
	^ MABooleanDescription new
		label: 'Has MFA?';
		accessor: #hasMfa;
		jsonName: #has_mfa;
		yourself
]

{ #category : #comparing }
PlaidInstitution >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ institutionId hash
]

{ #category : #accessing }
PlaidInstitution >> institutionId [
	^ institutionId
]

{ #category : #accessing }
PlaidInstitution >> institutionId: anObject [
	institutionId := anObject
]

{ #category : #description }
PlaidInstitution >> institutionIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Institution ID';
		accessor: #institutionId;
		jsonName: #institution_id;
		yourself
]

{ #category : #accessing }
PlaidInstitution >> mfa [
	^ mfa
]

{ #category : #accessing }
PlaidInstitution >> mfa: anObject [
	mfa := anObject
]

{ #category : #description }
PlaidInstitution >> mfaDescription [
	<magritteDescription>
	^ MAElementDescription new
		label: 'MFA';
		accessor: #mfa;
		jsonName: #mfa;
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidInstitution >> name [
	^ name
]

{ #category : #accessing }
PlaidInstitution >> name: anObject [
	name := anObject
]

{ #category : #description }
PlaidInstitution >> nameDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Name';
		accessor: #name;
		jsonName: #name;
		yourself
]

{ #category : #printing }
PlaidInstitution >> printName [
	^ self name
]

{ #category : #printing }
PlaidInstitution >> printOn: aStream [
	super printOn: aStream.
	aStream
		nextPutAll: ' <';
		nextPutAll: self printName;
		nextPut: $>
]

{ #category : #accessing }
PlaidInstitution >> products [
	^ products
]

{ #category : #accessing }
PlaidInstitution >> products: anObject [
	products := anObject
]

{ #category : #description }
PlaidInstitution >> productsDescription [
	<magritteDescription>
	^ MAElementDescription new
		label: 'Procucts';
		accessor: #products;
		jsonName: #products;
		beOptional;
		yourself
]
