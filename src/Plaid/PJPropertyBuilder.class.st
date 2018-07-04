"
I am a builder of key-value pairs that can be passed to the JavaScript land using Seaside machinery. I provide interace to put scalars and blocks. There are two varieties of callbacks that I suppport - direct, which uses window.location, and ajax, which wraps an ajax call inside a function...

I do need a rendering context, here's how you can play with me:
| builder |
builder := PJPropertyBuilder on: self renderContext.
builder
	at: #scalar put: aScalarValue;
	at: #collection putCollection: aCollection;
	at: #callback putCallback: [ self halt ];
	at: #ajaxCallback putAjaxCallback: [ :someValue | self halt ].
"
Class {
	#name : #PJPropertyBuilder,
	#superclass : #Object,
	#instVars : [
		'dictionary',
		'context'
	],
	#category : #'Plaid-Web'
}

{ #category : #'instance creation' }
PJPropertyBuilder class >> on: aContext [
	^ self basicNew initializeWithContext: aContext
]

{ #category : #building }
PJPropertyBuilder >> at: aKey put: aValue [
	dictionary at: aKey put: aValue
]

{ #category : #building }
PJPropertyBuilder >> at: aKey putAjaxCallback: aCallback [
	dictionary at: aKey put: (self valueForAjaxCallback: aCallback)
]

{ #category : #building }
PJPropertyBuilder >> at: aKey putCallback: aCallback [
	dictionary at: aKey put: (self valueForCallback: aCallback)
]

{ #category : #building }
PJPropertyBuilder >> at: aKey putCollection: aCollectionOrValue [
	dictionary at: aKey put: aCollectionOrValue asOrderedCollection
]

{ #category : #accessing }
PJPropertyBuilder >> data [
	^ dictionary 
]

{ #category : #initialize }
PJPropertyBuilder >> initialize [
	super initialize.
	dictionary := Dictionary new.
]

{ #category : #initialize }
PJPropertyBuilder >> initializeWithContext: aContext [
	self initialize.
	context := aContext 
]

{ #category : #'private-building' }
PJPropertyBuilder >> valueForAjaxCallback: aBlock [
	^ (JSFunction context: context) , ((JSScript context: context) jQuery ajax
		callback: [ :values | aBlock valueWithArguments: values ]
		json: (JSStream on: 'Array.prototype.slice.call(arguments, 0)'))
]

{ #category : #'private-building' }
PJPropertyBuilder >> valueForAjaxCallbackOld: aBlock [
	^ (JSFunction context: context)
		,
			(aBlock argumentCount > 0
				ifTrue: [ (JSScript context: context) jQuery ajax
						callback: [ :values | aBlock valueWithArguments: values ]
						json: (JSStream on: 'Array.prototype.slice.call(arguments, 0)') ]
				ifFalse: [ (JSScript context: context) jQuery ajax callback: aBlock ])
]

{ #category : #'private-building' }
PJPropertyBuilder >> valueForCallback: aBlock [
	^ (JSFunction context: context) callback: aBlock
]
