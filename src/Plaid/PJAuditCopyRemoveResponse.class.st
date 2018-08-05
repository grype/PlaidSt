Class {
	#name : #PJAuditCopyRemoveResponse,
	#superclass : #PJResponse,
	#instVars : [
		'removed'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJAuditCopyRemoveResponse >> removed [
	^ removed
]

{ #category : #accessing }
PJAuditCopyRemoveResponse >> removed: anObject [
	removed := anObject
]

{ #category : #description }
PJAuditCopyRemoveResponse >> removedDescription [
	<magritteDescription>
	^ MABooleanDescription new
		label: 'Removed';
		accessor: #removed;
		jsonName: #removed;
		yourself
]
