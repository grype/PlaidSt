Class {
	#name : #PlaidIncome,
	#superclass : #PlaidModel,
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
PlaidIncome >> incomeStreams [
	^ incomeStreams
]

{ #category : #accessing }
PlaidIncome >> incomeStreams: anObject [
	incomeStreams := anObject
]

{ #category : #description }
PlaidIncome >> incomeStreamsDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Income Streams';
		accessor: #incomeStreams;
		jsonName: #income_streams;
		classes: { PlaidIncomeStream };
		beOrdered;
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidIncome >> lastYearIncome [
	^ lastYearIncome
]

{ #category : #accessing }
PlaidIncome >> lastYearIncome: anObject [
	lastYearIncome := anObject
]

{ #category : #accessing }
PlaidIncome >> lastYearIncomeBeforeTax [
	^ lastYearIncomeBeforeTax
]

{ #category : #accessing }
PlaidIncome >> lastYearIncomeBeforeTax: anObject [
	lastYearIncomeBeforeTax := anObject
]

{ #category : #description }
PlaidIncome >> lastYearIncomeBeforeTaxDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Last Year Income (Before Tax)';
		accessor: #lastYearIncomeBeforeTax;
		jsonName: #last_year_income_before_tax;
		yourself
]

{ #category : #description }
PlaidIncome >> lastYearIncomeDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Last Year Income';
		accessor: #lastYearIncome;
		jsonName: #last_year_income;
		yourself
]

{ #category : #accessing }
PlaidIncome >> maxNumberOfOverlappingIncomeStreams [
	^ maxNumberOfOverlappingIncomeStreams
]

{ #category : #accessing }
PlaidIncome >> maxNumberOfOverlappingIncomeStreams: anObject [
	maxNumberOfOverlappingIncomeStreams := anObject
]

{ #category : #description }
PlaidIncome >> maxNumberOfOverlappingIncomeStreamsDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Overlapping Income Streams (MAX)';
		accessor: #maxNumberOfOverlappingIncomeStreams;
		jsonName: #max_number_of_overlapping_income_streams;
		yourself
]

{ #category : #accessing }
PlaidIncome >> numberOfIncomeStreams [
	^ numberOfIncomeStreams
]

{ #category : #accessing }
PlaidIncome >> numberOfIncomeStreams: anObject [
	numberOfIncomeStreams := anObject
]

{ #category : #description }
PlaidIncome >> numberOfOverlappingIncomeStreamsDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Total Income Streams';
		accessor: #numberOfIncomeStreams;
		jsonName: #number_of_income_streams;
		yourself
]

{ #category : #accessing }
PlaidIncome >> projectedYearlyIncome [
	^ projectedYearlyIncome
]

{ #category : #accessing }
PlaidIncome >> projectedYearlyIncome: anObject [
	projectedYearlyIncome := anObject
]

{ #category : #accessing }
PlaidIncome >> projectedYearlyIncomeBeforeTax [
	^ projectedYearlyIncomeBeforeTax
]

{ #category : #accessing }
PlaidIncome >> projectedYearlyIncomeBeforeTax: anObject [
	projectedYearlyIncomeBeforeTax := anObject
]

{ #category : #description }
PlaidIncome >> projectedYearlyIncomeBeforeTaxDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Projected Year Income (Before Tax)';
		accessor: #projectedYearIncomeBeforeTax;
		jsonName: #projected_year_income_before_tax;
		yourself
]

{ #category : #description }
PlaidIncome >> projectedYearlyIncomeDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Projected Year Income';
		accessor: #projectedYearIncome;
		jsonName: #projected_year_income;
		yourself
]
