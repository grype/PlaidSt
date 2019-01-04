Class {
	#name : #PlaidAssetReport,
	#superclass : #PlaidModel,
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

{ #category : #comparing }
PlaidAssetReport >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ clientReportId = anObject clientReportId
		and: [ assetReportId = anObject assetReportId ]
]

{ #category : #accessing }
PlaidAssetReport >> assetReportId [
	^ assetReportId
]

{ #category : #accessing }
PlaidAssetReport >> assetReportId: anObject [
	assetReportId := anObject
]

{ #category : #description }
PlaidAssetReport >> assetReportIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Asset Report ID';
		accessor: #assetReportId;
		jsonName: #asset_report_id;
		yourself
]

{ #category : #accessing }
PlaidAssetReport >> clientReportId [
	^ clientReportId
]

{ #category : #accessing }
PlaidAssetReport >> clientReportId: anObject [
	clientReportId := anObject
]

{ #category : #description }
PlaidAssetReport >> clientReportIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Client Report ID';
		accessor: #clientReportId;
		jsonName: #client_report_id;
		yourself
]

{ #category : #accessing }
PlaidAssetReport >> dateGenerated [
	^ dateGenerated
]

{ #category : #accessing }
PlaidAssetReport >> dateGenerated: anObject [
	dateGenerated := anObject
]

{ #category : #description }
PlaidAssetReport >> dateGeneratedDescription [
	<magritteDescription>
	^ MADateAndTimeDescription new
		label: 'Date Generated';
		accessor: #dateGenerated;
		jsonName: #date_generated;
		yourself
]

{ #category : #accessing }
PlaidAssetReport >> daysRequested [
	^ daysRequested
]

{ #category : #accessing }
PlaidAssetReport >> daysRequested: anObject [
	daysRequested := anObject
]

{ #category : #description }
PlaidAssetReport >> daysRequestedDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Days Requested';
		accessor: #daysRequested;
		jsonName: #days_requested;
		yourself
]

{ #category : #comparing }
PlaidAssetReport >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ clientReportId hash bitXor: assetReportId hash
]

{ #category : #accessing }
PlaidAssetReport >> items [
	^ items
]

{ #category : #accessing }
PlaidAssetReport >> items: anObject [
	items := anObject
]

{ #category : #description }
PlaidAssetReport >> itemsDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Items';
		accessor: #items;
		jsonName: #items;
		classes: {PlaidAssetReportItem};
		beOptional;
		beOrdered;
		yourself
]

{ #category : #printing }
PlaidAssetReport >> printOn: aStream [
	"Append a sequence of characters to aStream that identify the receiver."

	super printOn: aStream.
	aStream
		nextPutAll: ' <';
		nextPutAll: assetReportId;
		nextPut: $>
]

{ #category : #accessing }
PlaidAssetReport >> user [
	^ user
]

{ #category : #accessing }
PlaidAssetReport >> user: anObject [
	user := anObject
]

{ #category : #description }
PlaidAssetReport >> userDescription [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'User';
		accessor: #user;
		jsonName: #user;
		classes: {PlaidAssetReportUser};
		beOptional;
		yourself
]
