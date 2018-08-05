Class {
	#name : #PJAssetCreatedResponse,
	#superclass : #PJResponse,
	#instVars : [
		'reportToken',
		'reportId'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJAssetCreatedResponse >> reportId [
	^ reportId
]

{ #category : #accessing }
PJAssetCreatedResponse >> reportId: anObject [
	reportId := anObject
]

{ #category : #description }
PJAssetCreatedResponse >> reportIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Report ID';
		accessor: #reportId;
		jsonName: #asset_report_id;
		yourself
]

{ #category : #accessing }
PJAssetCreatedResponse >> reportToken [
	^ reportToken
]

{ #category : #accessing }
PJAssetCreatedResponse >> reportToken: anObject [
	reportToken := anObject
]

{ #category : #description }
PJAssetCreatedResponse >> reportTokenDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Report Token';
		accessor: #reportToken;
		jsonName: #asset_report_token;
		yourself
]
