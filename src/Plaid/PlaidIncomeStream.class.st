Class {
	#name : #PlaidIncomeStream,
	#superclass : #PlaidModel,
	#instVars : [
		'monthlyIncome',
		'confidence',
		'days',
		'name'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PlaidIncomeStream >> confidence [
	^ confidence
]

{ #category : #accessing }
PlaidIncomeStream >> confidence: anObject [
	confidence := anObject
]

{ #category : #api }
PlaidIncomeStream >> confidenceDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Confidence';
		accessor: #confidence;
		jsonName: #confidence;
		yourself
]

{ #category : #accessing }
PlaidIncomeStream >> days [
	^ days
]

{ #category : #accessing }
PlaidIncomeStream >> days: anObject [
	days := anObject
]

{ #category : #api }
PlaidIncomeStream >> daysDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Days';
		accessor: #days;
		jsonName: #days;
		yourself
]

{ #category : #accessing }
PlaidIncomeStream >> monthlyIncome [
	^ monthlyIncome
]

{ #category : #accessing }
PlaidIncomeStream >> monthlyIncome: anObject [
	monthlyIncome := anObject
]

{ #category : #api }
PlaidIncomeStream >> monthlyIncomeDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Monthly Income';
		accessor: #monthlyIncome;
		jsonName: #monthly_income;
		yourself
]

{ #category : #accessing }
PlaidIncomeStream >> name [
	^ name
]

{ #category : #accessing }
PlaidIncomeStream >> name: anObject [
	name := anObject
]

{ #category : #api }
PlaidIncomeStream >> nameDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Name';
		accessor: #name;
		jsonName: #name;
		yourself
]
