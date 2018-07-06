Class {
	#name : #PJCategory,
	#superclass : #PJObject,
	#instVars : [
		'categoryId',
		'group',
		'hierarchy'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJCategory >> categoryId [
	^ categoryId
]

{ #category : #accessing }
PJCategory >> categoryId: anObject [
	categoryId := anObject
]

{ #category : #description }
PJCategory >> categoryIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Category ID';
		accessor: #categoryId;
		jsonName: #category_id;
		yourself
]

{ #category : #accessing }
PJCategory >> group [
	^ group
]

{ #category : #accessing }
PJCategory >> group: anObject [
	group := anObject
]

{ #category : #description }
PJCategory >> groupDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Group';
		accessor: #group;
		jsonName: #group;
		yourself
]

{ #category : #accessing }
PJCategory >> hierarchy [
	^ hierarchy
]

{ #category : #accessing }
PJCategory >> hierarchy: anObject [
	hierarchy := anObject
]

{ #category : #description }
PJCategory >> hierarchyDescription [
	<magritteDescription>
	^ MAElementDescription new
		label: 'Hierarchy';
		accessor: #hierarchy;
		jsonName: #hierarchy;
		yourself
]

{ #category : #printing }
PJCategory >> printName [
	^ self hierarchy joinUsing: ' - '
]

{ #category : #printing }
PJCategory >> printOn: aStream [
	aStream nextPutAll: self printName 
]
