Class {
	#name : #PlaidRemovedResponse,
	#superclass : #PlaidResponse,
	#instVars : [
		'removed'
	],
	#category : #'Plaid-Models'
}

{ #category : #initialization }
PlaidRemovedResponse >> initialize [
	super initialize.
	removed := false
]

{ #category : #accessing }
PlaidRemovedResponse >> removed [
	^ removed
]

{ #category : #accessing }
PlaidRemovedResponse >> removed: anObject [
	removed := anObject
]

{ #category : #description }
PlaidRemovedResponse >> removedDescription [
	<magritteDescription>
	^ MABooleanDescription new
		label: 'Removed';
		accessor: #removed;
		jsonName: #removed;
		yourself
]
