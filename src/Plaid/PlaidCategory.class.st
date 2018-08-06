Class {
	#name : #PlaidCategory,
	#superclass : #PlaidModel,
	#instVars : [
		'categoryId',
		'group',
		'hierarchy'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PlaidCategory >> categoryId [
	^ categoryId
]

{ #category : #accessing }
PlaidCategory >> categoryId: anObject [
	categoryId := anObject
]

{ #category : #description }
PlaidCategory >> categoryIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Category ID';
		accessor: #categoryId;
		jsonName: #category_id;
		yourself
]

{ #category : #accessing }
PlaidCategory >> group [
	^ group
]

{ #category : #accessing }
PlaidCategory >> group: anObject [
	group := anObject
]

{ #category : #description }
PlaidCategory >> groupDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Group';
		accessor: #group;
		jsonName: #group;
		yourself
]

{ #category : #comparing }
PlaidCategory >> hash [
	^ categoryId hash
]

{ #category : #accessing }
PlaidCategory >> hierarchy [
	^ hierarchy
]

{ #category : #accessing }
PlaidCategory >> hierarchy: anObject [
	hierarchy := anObject
]

{ #category : #description }
PlaidCategory >> hierarchyDescription [
	<magritteDescription>
	^ MAElementDescription new
		label: 'Hierarchy';
		accessor: #hierarchy;
		jsonName: #hierarchy;
		yourself
]

{ #category : #printing }
PlaidCategory >> printName [
	^ self hierarchy joinUsing: ' - '
]

{ #category : #printing }
PlaidCategory >> printOn: aStream [
	super printOn: aStream.
	aStream
		nextPutAll: ' <';
		nextPutAll: self printName;
		nextPut: $>
]
