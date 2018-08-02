Class {
	#name : #PJIncomeResponse,
	#superclass : #PJResponse,
	#instVars : [
		'income'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJIncomeResponse >> income [
	^ income
]

{ #category : #accessing }
PJIncomeResponse >> income: anObject [
	income := anObject
]

{ #category : #description }
PJIncomeResponse >> incomeDescription [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Income';
		accessor: #income;
		jsonName: #income;
		classes: {PJIncome};
		beOptional;
		yourself
]
