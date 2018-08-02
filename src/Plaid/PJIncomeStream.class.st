Class {
	#name : #PJIncomeStream,
	#superclass : #PJObject,
	#instVars : [
		'monthlyIncome',
		'confidence',
		'days',
		'name'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJIncomeStream >> confidence [
	^ confidence
]

{ #category : #accessing }
PJIncomeStream >> confidence: anObject [
	confidence := anObject
]

{ #category : #api }
PJIncomeStream >> confidenceDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Confidence';
		accessor: #confidence;
		jsonName: #confidence;
		yourself
]

{ #category : #accessing }
PJIncomeStream >> days [
	^ days
]

{ #category : #accessing }
PJIncomeStream >> days: anObject [
	days := anObject
]

{ #category : #api }
PJIncomeStream >> daysDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Days';
		accessor: #days;
		jsonName: #days;
		yourself
]

{ #category : #accessing }
PJIncomeStream >> monthlyIncome [
	^ monthlyIncome
]

{ #category : #accessing }
PJIncomeStream >> monthlyIncome: anObject [
	monthlyIncome := anObject
]

{ #category : #api }
PJIncomeStream >> monthlyIncomeDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Monthly Income';
		accessor: #monthlyIncome;
		jsonName: #monthly_income;
		yourself
]

{ #category : #accessing }
PJIncomeStream >> name [
	^ name
]

{ #category : #accessing }
PJIncomeStream >> name: anObject [
	name := anObject
]

{ #category : #api }
PJIncomeStream >> nameDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Name';
		accessor: #name;
		jsonName: #name;
		yourself
]
