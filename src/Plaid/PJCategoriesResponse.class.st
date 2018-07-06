Class {
	#name : #PJCategoriesResponse,
	#superclass : #PJResponse,
	#instVars : [
		'categories'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJCategoriesResponse >> categories [
	^ categories
]

{ #category : #accessing }
PJCategoriesResponse >> categories: anObject [
	categories := anObject
]

{ #category : #description }
PJCategoriesResponse >> categoriesDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Catgories';
		accessor: #categories;
		jsonName: #categories;
		classes: { PJCategory };
		beOptional;
		beOrdered;
		yourself
]
