Class {
	#name : #PlaidCategoriesResponse,
	#superclass : #PlaidResponse,
	#instVars : [
		'categories'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PlaidCategoriesResponse >> categories [
	^ categories
]

{ #category : #accessing }
PlaidCategoriesResponse >> categories: anObject [
	categories := anObject
]

{ #category : #description }
PlaidCategoriesResponse >> categoriesDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Catgories';
		accessor: #categories;
		jsonName: #categories;
		classes: { PlaidCategory };
		beOptional;
		beOrdered;
		yourself
]
