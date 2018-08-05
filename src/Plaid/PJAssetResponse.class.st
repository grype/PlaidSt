Class {
	#name : #PJAssetResponse,
	#superclass : #PJResponse,
	#instVars : [
		'report',
		'warnings'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJAssetResponse >> report [
	^ report
]

{ #category : #accessing }
PJAssetResponse >> report: anObject [
	report := anObject
]

{ #category : #description }
PJAssetResponse >> reportDescription [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Report';
		accessor: #report;
		jsonName: #report;
		classes: {PJAssetReport};
		beOptional;
		yourself
]

{ #category : #accessing }
PJAssetResponse >> warnings [
	^ warnings
]

{ #category : #accessing }
PJAssetResponse >> warnings: anObject [
	warnings := anObject
]

{ #category : #description }
PJAssetResponse >> warningsDescription [
	<magritteDescription>
	^ MAElementDescription new
		label: 'Warnings';
		accessor: #warnings;
		jsonName: #warnings;
		beOptional;
		yourself
]
