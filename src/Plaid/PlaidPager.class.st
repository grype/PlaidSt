Class {
	#name : #PlaidPager,
	#superclass : #Object,
	#instVars : [
		'block',
		'index',
		'atEnd',
		'pageSize'
	],
	#category : #'Plaid-Core'
}

{ #category : #accessing }
PlaidPager class >> maxPageSize [
	^ 500
]

{ #category : #'instance creation' }
PlaidPager class >> withPageSize: aPageSize block: aBlock [
	^ self basicNew initializeWithPageSize: aPageSize block: aBlock
]

{ #category : #paginating }
PlaidPager >> allPages [
	[ atEnd ] whileFalse: [ self nextPage ]
]

{ #category : #accessing }
PlaidPager >> atEnd [
	^ atEnd
]

{ #category : #accessing }
PlaidPager >> atEnd: anObject [
	atEnd := anObject
]

{ #category : #accessing }
PlaidPager >> index [
	^ index
]

{ #category : #accessing }
PlaidPager >> index: anObject [
	index := anObject
]

{ #category : #initialization }
PlaidPager >> initializeWithPageSize: aPageSize block: aBlock [
	self initialize.
	block := aBlock.
	index := 0.
	pageSize := aPageSize.
	atEnd := false
]

{ #category : #paginating }
PlaidPager >> nextPage [
	index := index + 1.
	block cull: self
]

{ #category : #accessing }
PlaidPager >> pageSize [
	^ pageSize
]

{ #category : #accessing }
PlaidPager >> pageSize: anObject [
	pageSize := anObject
]

{ #category : #paginating }
PlaidPager >> previousPage [
	index := index - 1.
	block cull: self
]
