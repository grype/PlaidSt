Class {
	#name : #PJRemovedResponse,
	#superclass : #PJResponse,
	#instVars : [
		'removed'
	],
	#category : #'Plaid-Models'
}

{ #category : #initialization }
PJRemovedResponse >> initialize [
	super initialize.
	removed := false
]

{ #category : #accessing }
PJRemovedResponse >> removed [
	^ removed
]

{ #category : #accessing }
PJRemovedResponse >> removed: anObject [
	removed := anObject
]

{ #category : #description }
PJRemovedResponse >> removedDescription [
	<magritteDescription>
	^ MABooleanDescription new
		label: 'Removed';
		accessor: #removed;
		jsonName: #removed;
		yourself
]
