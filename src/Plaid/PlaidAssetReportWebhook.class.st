Class {
	#name : #PlaidAssetReportWebhook,
	#superclass : #PlaidWebhook,
	#instVars : [
		'assetReportId'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PlaidAssetReportWebhook >> assetReportId [
	^ assetReportId
]

{ #category : #accessing }
PlaidAssetReportWebhook >> assetReportId: anObject [
	assetReportId := anObject
]

{ #category : #description }
PlaidAssetReportWebhook >> assetReportIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Asset Report ID';
		accessor: #assetReportId;
		jsonName: #asset_report_id;
		yourself
]
