"
I am a base class for classes that wish to be serialized to, and materialized from JSON, for the sole purpose of supporting Plaid client and friends. My existence is necessitated by: 
	- needing a single base class
	- need for a custom json write (I use PJJsonWriter).

Subclass me, and add whatever magritte descriptions you need to support JSON conversion.
"
Class {
	#name : #PJObject,
	#superclass : #GRObject,
	#category : #'Plaid-Web'
}

{ #category : #descriptions }
PJObject >> magritteDescription [
	^ super magritteDescription
		jsonWriter: PJJsonWriter;
		yourself
]
