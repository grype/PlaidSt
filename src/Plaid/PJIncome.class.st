Class {
	#name : #PJIncome,
	#superclass : #PJObject,
	#instVars : [
		'lastYearIncome',
		'lastYearIncomeBeforeTax',
		'projectedYearlyIncome',
		'projectedYearlyIncomeBeforeTax',
		'incomeStreams',
		'maxNumberOfOverlappingIncomeStreams',
		'numberOfIncomeStreams'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJIncome >> incomeStreams [
	^ incomeStreams
]

{ #category : #accessing }
PJIncome >> incomeStreams: anObject [
	incomeStreams := anObject
]

{ #category : #description }
PJIncome >> incomeStreamsDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Income Streams';
		accessor: #incomeStreams;
		jsonName: #income_streams;
		classes: { PJIncomeStream };
		beOrdered;
		beOptional;
		yourself
]

{ #category : #accessing }
PJIncome >> lastYearIncome [
	^ lastYearIncome
]

{ #category : #accessing }
PJIncome >> lastYearIncome: anObject [
	lastYearIncome := anObject
]

{ #category : #accessing }
PJIncome >> lastYearIncomeBeforeTax [
	^ lastYearIncomeBeforeTax
]

{ #category : #accessing }
PJIncome >> lastYearIncomeBeforeTax: anObject [
	lastYearIncomeBeforeTax := anObject
]

{ #category : #description }
PJIncome >> lastYearIncomeBeforeTaxDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Last Year Income (Before Tax)';
		accessor: #lastYearIncomeBeforeTax;
		jsonName: #last_year_income_before_tax;
		yourself
]

{ #category : #description }
PJIncome >> lastYearIncomeDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Last Year Income';
		accessor: #lastYearIncome;
		jsonName: #last_year_income;
		yourself
]

{ #category : #accessing }
PJIncome >> maxNumberOfOverlappingIncomeStreams [
	^ maxNumberOfOverlappingIncomeStreams
]

{ #category : #accessing }
PJIncome >> maxNumberOfOverlappingIncomeStreams: anObject [
	maxNumberOfOverlappingIncomeStreams := anObject
]

{ #category : #description }
PJIncome >> maxNumberOfOverlappingIncomeStreamsDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Overlapping Income Streams (MAX)';
		accessor: #maxNumberOfOverlappingIncomeStreams;
		jsonName: #max_number_of_overlapping_income_streams;
		yourself
]

{ #category : #accessing }
PJIncome >> numberOfIncomeStreams [
	^ numberOfIncomeStreams
]

{ #category : #accessing }
PJIncome >> numberOfIncomeStreams: anObject [
	numberOfIncomeStreams := anObject
]

{ #category : #description }
PJIncome >> numberOfOverlappingIncomeStreamsDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Total Income Streams';
		accessor: #numberOfIncomeStreams;
		jsonName: #number_of_income_streams;
		yourself
]

{ #category : #accessing }
PJIncome >> projectedYearlyIncome [
	^ projectedYearlyIncome
]

{ #category : #accessing }
PJIncome >> projectedYearlyIncome: anObject [
	projectedYearlyIncome := anObject
]

{ #category : #accessing }
PJIncome >> projectedYearlyIncomeBeforeTax [
	^ projectedYearlyIncomeBeforeTax
]

{ #category : #accessing }
PJIncome >> projectedYearlyIncomeBeforeTax: anObject [
	projectedYearlyIncomeBeforeTax := anObject
]

{ #category : #description }
PJIncome >> projectedYearlyIncomeBeforeTaxDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Projected Year Income (Before Tax)';
		accessor: #projectedYearIncomeBeforeTax;
		jsonName: #projected_year_income_before_tax;
		yourself
]

{ #category : #description }
PJIncome >> projectedYearlyIncomeDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Projected Year Income';
		accessor: #projectedYearIncome;
		jsonName: #projected_year_income;
		yourself
]
