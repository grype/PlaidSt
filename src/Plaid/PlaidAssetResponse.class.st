Class {
	#name : #PlaidAssetResponse,
	#superclass : #PlaidResponse,
	#instVars : [
		'report',
		'warnings'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PlaidAssetResponse >> report [
	^ report
]

{ #category : #accessing }
PlaidAssetResponse >> report: anObject [
	report := anObject
]

{ #category : #description }
PlaidAssetResponse >> reportDescription [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Report';
		accessor: #report;
		jsonName: #report;
		classes: {PlaidAssetReport};
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidAssetResponse >> warnings [
	^ warnings
]

{ #category : #accessing }
PlaidAssetResponse >> warnings: anObject [
	warnings := anObject
]

{ #category : #description }
PlaidAssetResponse >> warningsDescription [
	<magritteDescription>
	^ MAElementDescription new
		label: 'Warnings';
		accessor: #warnings;
		jsonName: #warnings;
		beOptional;
		yourself
]
