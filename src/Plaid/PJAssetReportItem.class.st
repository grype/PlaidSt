Class {
	#name : #PJAssetReportItem,
	#superclass : #PJObject,
	#instVars : [
		'itemId',
		'accounts',
		'dateLastUpdated',
		'institutionId',
		'institutionName'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJAssetReportItem >> accounts [
	^ accounts
]

{ #category : #accessing }
PJAssetReportItem >> accounts: anObject [
	accounts := anObject
]

{ #category : #description }
PJAssetReportItem >> accountsDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Accounts';
		accessor: #accounts;
		jsonName: #accounts;
		classes: {PJAssetReportAccount};
		beOrdered;
		beOptional;
		yourself
]

{ #category : #accessing }
PJAssetReportItem >> dateLastUpdated [
	^ dateLastUpdated
]

{ #category : #accessing }
PJAssetReportItem >> dateLastUpdated: anObject [
	dateLastUpdated := anObject
]

{ #category : #description }
PJAssetReportItem >> dateLastUpdatedDescription [
	<magritteDescription>
	^ MADateAndTimeDescription new
		label: 'Last Updated';
		accessor: #dateLastUpdated;
		jsonName: #date_last_updated;
		yourself
]

{ #category : #accessing }
PJAssetReportItem >> institutionId [
	^ institutionId
]

{ #category : #accessing }
PJAssetReportItem >> institutionId: anObject [
	institutionId := anObject
]

{ #category : #description }
PJAssetReportItem >> institutionIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Institution ID';
		accessor: #institutionId;
		jsonName: #institution_id;
		yourself
]

{ #category : #accessing }
PJAssetReportItem >> institutionName [
	^ institutionName
]

{ #category : #accessing }
PJAssetReportItem >> institutionName: anObject [
	institutionName := anObject
]

{ #category : #description }
PJAssetReportItem >> institutionNameDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Institution Name';
		accessor: #institutionName;
		jsonName: #institution_name;
		yourself
]

{ #category : #accessing }
PJAssetReportItem >> itemId [
	^ itemId
]

{ #category : #accessing }
PJAssetReportItem >> itemId: anObject [
	itemId := anObject
]

{ #category : #description }
PJAssetReportItem >> itemIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Item ID';
		accessor: #itemId;
		jsonName: #item_id;
		yourself
]

{ #category : #printing }
PJAssetReportItem >> printOn: aStream [
	"Append a sequence of characters to aStream that identify the receiver."

	super printOn: aStream.
	aStream
		nextPutAll: ' <';
		nextPutAll: itemId;
		nextPut: $>
]
