Class {
	#name : #PJInstitution,
	#superclass : #PJObject,
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

{ #category : #accessing }
PJInstitution >> credentials [
	^ credentials
]

{ #category : #accessing }
PJInstitution >> credentials: anObject [
	credentials := anObject
]

{ #category : #description }
PJInstitution >> credentialsDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Credentials';
		accessor: #credentials;
		jsonName: #credentials;
		classes: { PJInstitutionCredential };
		beOptional;
		beOrdered;
		yourself
]

{ #category : #accessing }
PJInstitution >> hasMfa [
	^ hasMfa
]

{ #category : #accessing }
PJInstitution >> hasMfa: anObject [
	hasMfa := anObject
]

{ #category : #description }
PJInstitution >> hasMfaDescription [
	<magritteDescription>
	^ MABooleanDescription new
		label: 'Has MFA?';
		accessor: #hasMfa;
		jsonName: #has_mfa;
		yourself
]

{ #category : #accessing }
PJInstitution >> institutionId [
	^ institutionId
]

{ #category : #accessing }
PJInstitution >> institutionId: anObject [
	institutionId := anObject
]

{ #category : #description }
PJInstitution >> institutionIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Institution ID';
		accessor: #institutionId;
		jsonName: #institution_id;
		yourself
]

{ #category : #accessing }
PJInstitution >> mfa [
	^ mfa
]

{ #category : #accessing }
PJInstitution >> mfa: anObject [
	mfa := anObject
]

{ #category : #description }
PJInstitution >> mfaDescription [
	<magritteDescription>
	^ MAElementDescription new
		label: 'MFA';
		accessor: #mfa;
		jsonName: #mfa;
		beOptional;
		yourself
]

{ #category : #accessing }
PJInstitution >> name [
	^ name
]

{ #category : #accessing }
PJInstitution >> name: anObject [
	name := anObject
]

{ #category : #description }
PJInstitution >> nameDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Name';
		accessor: #name;
		jsonName: #name;
		yourself
]

{ #category : #printing }
PJInstitution >> printName [
	^ self name
]

{ #category : #printing }
PJInstitution >> printOn: aStream [
	aStream nextPutAll: self printName
]

{ #category : #accessing }
PJInstitution >> products [
	^ products
]

{ #category : #accessing }
PJInstitution >> products: anObject [
	products := anObject
]

{ #category : #description }
PJInstitution >> productsDescription [
	<magritteDescription>
	^ MAElementDescription new
		label: 'Procucts';
		accessor: #products;
		jsonName: #products;
		beOptional;
		yourself
]
