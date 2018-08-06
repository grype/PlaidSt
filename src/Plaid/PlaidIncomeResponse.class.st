Class {
	#name : #PlaidIncomeResponse,
	#superclass : #PlaidResponse,
	#instVars : [
		'income'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PlaidIncomeResponse >> income [
	^ income
]

{ #category : #accessing }
PlaidIncomeResponse >> income: anObject [
	income := anObject
]

{ #category : #description }
PlaidIncomeResponse >> incomeDescription [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Income';
		accessor: #income;
		jsonName: #income;
		classes: {PlaidIncome};
		beOptional;
		yourself
]
