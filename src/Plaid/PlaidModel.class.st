"
I am a base class for classes that wish to be serialized to, and materialized from JSON, for the sole purpose of supporting Plaid client and friends. My existence is necessitated by: 
	- needing a single base class
	- need for a custom json write (I use PJJsonWriter).

Subclass me, and add whatever magritte descriptions you need to support JSON conversion.
"
Class {
	#name : #PlaidModel,
	#superclass : #GRObject,
	#category : #'Plaid-Models'
}

{ #category : #comparing }
PlaidModel >> = another [
	^ (another isKindOf: self class)
		ifTrue: [ self hash = another hash ]
		ifFalse: [ false ]
]

{ #category : #descriptions }
PlaidModel >> magritteDescription [
	| description |
	description := super magritteDescription.
	description jsonWriter: PlaidJsonWriter.
	description children do: [ :each | each jsonWriter: PlaidJsonWriter; jsonReader: PlaidJsonReader ].
	^ description
]
