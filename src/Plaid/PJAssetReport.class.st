Class {
	#name : #PJAssetReport,
	#superclass : #PJObject,
	#instVars : [
		'assetReportId',
		'clientReportId',
		'dateGenerated',
		'daysRequested',
		'items',
		'user'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJAssetReport >> assetReportId [
	^ assetReportId
]

{ #category : #accessing }
PJAssetReport >> assetReportId: anObject [
	assetReportId := anObject
]

{ #category : #description }
PJAssetReport >> assetReportIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Asset Report ID';
		accessor: #assetReportId;
		jsonName: #asset_report_id;
		yourself
]

{ #category : #accessing }
PJAssetReport >> clientReportId [
	^ clientReportId
]

{ #category : #accessing }
PJAssetReport >> clientReportId: anObject [
	clientReportId := anObject
]

{ #category : #description }
PJAssetReport >> clientReportIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Client Report ID';
		accessor: #clientReportId;
		jsonName: #client_report_id;
		yourself
]

{ #category : #accessing }
PJAssetReport >> dateGenerated [
	^ dateGenerated
]

{ #category : #accessing }
PJAssetReport >> dateGenerated: anObject [
	dateGenerated := anObject
]

{ #category : #description }
PJAssetReport >> dateGeneratedDescription [
	<magritteDescription>
	^ MADateAndTimeDescription new
		label: 'Date Generated';
		accessor: #dateGenerated;
		jsonName: #date_generated;
		yourself
]

{ #category : #accessing }
PJAssetReport >> daysRequested [
	^ daysRequested
]

{ #category : #accessing }
PJAssetReport >> daysRequested: anObject [
	daysRequested := anObject
]

{ #category : #description }
PJAssetReport >> daysRequestedDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Days Requested';
		accessor: #daysRequested;
		jsonName: #days_requested;
		yourself
]

{ #category : #accessing }
PJAssetReport >> items [
	^ items
]

{ #category : #accessing }
PJAssetReport >> items: anObject [
	items := anObject
]

{ #category : #description }
PJAssetReport >> itemsDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Items';
		accessor: #items;
		jsonName: #items;
		classes: {PJAssetReportItem};
		beOptional;
		beOrdered;
		yourself
]

{ #category : #printing }
PJAssetReport >> printOn: aStream [
	"Append a sequence of characters to aStream that identify the receiver."

	super printOn: aStream.
	aStream
		nextPutAll: ' <';
		nextPutAll: assetReportId;
		nextPut: $>
]

{ #category : #accessing }
PJAssetReport >> user [
	^ user
]

{ #category : #accessing }
PJAssetReport >> user: anObject [
	user := anObject
]

{ #category : #description }
PJAssetReport >> userDescription [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'User';
		accessor: #user;
		jsonName: #user;
		classes: {PJAssetReportUser};
		beOptional;
		yourself
]
