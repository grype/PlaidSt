Class {
	#name : #PlaidAssetReportItem,
	#superclass : #PlaidModel,
	#instVars : [
		'itemId',
		'accounts',
		'dateLastUpdated',
		'institutionId',
		'institutionName'
	],
	#category : #'Plaid-Models'
}

{ #category : #comparing }
PlaidAssetReportItem >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ itemId = anObject itemId
		and: [ institutionId = anObject institutionId ]
]

{ #category : #accessing }
PlaidAssetReportItem >> accounts [
	^ accounts
]

{ #category : #accessing }
PlaidAssetReportItem >> accounts: anObject [
	accounts := anObject
]

{ #category : #description }
PlaidAssetReportItem >> accountsDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Accounts';
		accessor: #accounts;
		jsonName: #accounts;
		classes: {PlaidAssetReportAccount};
		beOrdered;
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidAssetReportItem >> dateLastUpdated [
	^ dateLastUpdated
]

{ #category : #accessing }
PlaidAssetReportItem >> dateLastUpdated: anObject [
	dateLastUpdated := anObject
]

{ #category : #description }
PlaidAssetReportItem >> dateLastUpdatedDescription [
	<magritteDescription>
	^ MADateAndTimeDescription new
		label: 'Last Updated';
		accessor: #dateLastUpdated;
		jsonName: #date_last_updated;
		yourself
]

{ #category : #comparing }
PlaidAssetReportItem >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ itemId hash bitXor: institutionId hash
]

{ #category : #accessing }
PlaidAssetReportItem >> institutionId [
	^ institutionId
]

{ #category : #accessing }
PlaidAssetReportItem >> institutionId: anObject [
	institutionId := anObject
]

{ #category : #description }
PlaidAssetReportItem >> institutionIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Institution ID';
		accessor: #institutionId;
		jsonName: #institution_id;
		yourself
]

{ #category : #accessing }
PlaidAssetReportItem >> institutionName [
	^ institutionName
]

{ #category : #accessing }
PlaidAssetReportItem >> institutionName: anObject [
	institutionName := anObject
]

{ #category : #description }
PlaidAssetReportItem >> institutionNameDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Institution Name';
		accessor: #institutionName;
		jsonName: #institution_name;
		yourself
]

{ #category : #accessing }
PlaidAssetReportItem >> itemId [
	^ itemId
]

{ #category : #accessing }
PlaidAssetReportItem >> itemId: anObject [
	itemId := anObject
]

{ #category : #description }
PlaidAssetReportItem >> itemIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Item ID';
		accessor: #itemId;
		jsonName: #item_id;
		yourself
]

{ #category : #printing }
PlaidAssetReportItem >> printOn: aStream [
	"Append a sequence of characters to aStream that identify the receiver."

	super printOn: aStream.
	aStream
		nextPutAll: ' <';
		nextPutAll: itemId;
		nextPut: $>
]
