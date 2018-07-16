Class {
	#name : #PJAssetReportWebhook,
	#superclass : #PJWebhook,
	#instVars : [
		'assetReportId'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJAssetReportWebhook >> assetReportId [
	^ assetReportId
]

{ #category : #accessing }
PJAssetReportWebhook >> assetReportId: anObject [
	assetReportId := anObject
]

{ #category : #description }
PJAssetReportWebhook >> assetReportIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Asset Report ID';
		accessor: #assetReportId;
		jsonName: #asset_report_id;
		yourself
]
