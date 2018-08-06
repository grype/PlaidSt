Class {
	#name : #PlaidAssetCreatedResponse,
	#superclass : #PlaidResponse,
	#instVars : [
		'reportToken',
		'reportId'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PlaidAssetCreatedResponse >> reportId [
	^ reportId
]

{ #category : #accessing }
PlaidAssetCreatedResponse >> reportId: anObject [
	reportId := anObject
]

{ #category : #description }
PlaidAssetCreatedResponse >> reportIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Report ID';
		accessor: #reportId;
		jsonName: #asset_report_id;
		yourself
]

{ #category : #accessing }
PlaidAssetCreatedResponse >> reportToken [
	^ reportToken
]

{ #category : #accessing }
PlaidAssetCreatedResponse >> reportToken: anObject [
	reportToken := anObject
]

{ #category : #description }
PlaidAssetCreatedResponse >> reportTokenDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Report Token';
		accessor: #reportToken;
		jsonName: #asset_report_token;
		yourself
]
