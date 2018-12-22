Class {
	#name : #PlaidOffsetCursor,
	#superclass : #Object,
	#traits : 'TUnrestEnumerationCursor',
	#classTraits : 'TUnrestEnumerationCursor classTrait',
	#instVars : [
		'offset',
		'hasMore'
	],
	#category : #Plaid
}

{ #category : #accessing }
PlaidOffsetCursor >> hasMore [
	^ hasMore
]

{ #category : #accessing }
PlaidOffsetCursor >> hasMore: anObject [
	hasMore := anObject
]

{ #category : #initialization }
PlaidOffsetCursor >> initialize [
	super initialize.
	offset := 0.
	hasMore := true
]

{ #category : #accessing }
PlaidOffsetCursor >> offset [
	^ offset
]

{ #category : #accessing }
PlaidOffsetCursor >> offset: anObject [
	offset := anObject
]

{ #category : #printing }
PlaidOffsetCursor >> printOn: aStream [
	"Append a sequence of characters to aStream that identify the receiver."

	super printOn: aStream.
	aStream
		nextPutAll: ' offset: ';
		print: offset.
	aStream
		nextPutAll: ' hasMore: ';
		print: hasMore
]
