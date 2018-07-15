Class {
	#name : #PJItemRemovedResponse,
	#superclass : #PJResponse,
	#instVars : [
		'removed'
	],
	#category : #'Plaid-Models'
}

{ #category : #initialization }
PJItemRemovedResponse >> initialize [
	super initialize.
	removed := false
]

{ #category : #accessing }
PJItemRemovedResponse >> removed [
	^ removed
]

{ #category : #accessing }
PJItemRemovedResponse >> removed: anObject [
	removed := anObject
]

{ #category : #description }
PJItemRemovedResponse >> removedDescription [
	^ MABooleanDescription new
		label: 'Removed';
		accessor: #removed;
		jsonName: #removed;
		yourself
]
