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

{ #category : #'private-building' }
PJPropertyBuilder >> at: aKey put: aValue [
	dictionary at: aKey put: aValue
]

{ #category : #'private-building' }
PJPropertyBuilder >> at: aKey putAjaxCallback: aCallback [
	dictionary at: aKey put: (self valueForAjaxCallback: aCallback)
]

{ #category : #'private-building' }
PJPropertyBuilder >> at: aKey putCallback: aCallback [
	dictionary at: aKey put: (self valueForCallback: aCallback)
]

{ #category : #'private-building' }
PJPropertyBuilder >> at: aKey putCollection: aCollectionOrValue [
	dictionary at: aKey put: aCollectionOrValue asOrderedCollection
]

{ #category : #building }
PJPropertyBuilder >> beDevelopmentEnvironment [
	self env: #development
]

{ #category : #building }
PJPropertyBuilder >> beProductionEnvironment [
	self env: #production
]

{ #category : #building }
PJPropertyBuilder >> beSandboxEnvironment [
	self env: #sandbox
]

{ #category : #building }
PJPropertyBuilder >> clientName: aString [
	self at: #clientName put: aString
]

{ #category : #accessing }
PJPropertyBuilder >> data [
	^ dictionary 
]

{ #category : #building }
PJPropertyBuilder >> env: aString [
	self at: #env put: aString
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

{ #category : #building }
PJPropertyBuilder >> isWebview: aBool [
	self at: #isWebview put: aBool
]

{ #category : #building }
PJPropertyBuilder >> key: aString [
	self at: #key put: aString
]

{ #category : #building }
PJPropertyBuilder >> onEvent: aCallback [
	self at: #onEvent putAjaxCallback: aCallback
]

{ #category : #building }
PJPropertyBuilder >> onExit: aCallback [
	self at: #onExit putAjaxCallback: aCallback
]

{ #category : #building }
PJPropertyBuilder >> onLoad: aCallback [
	self at: #onLoad putAjaxCallback: aCallback
]

{ #category : #building }
PJPropertyBuilder >> onSuccess: aCallback [
	self at: #onSuccess putAjaxCallback: aCallback
]

{ #category : #building }
PJPropertyBuilder >> product: aCollectionOfStrings [
	self at: #product putCollection: aCollectionOfStrings
]

{ #category : #building }
PJPropertyBuilder >> token: aString [
	self at: #token put: aString
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

{ #category : #building }
PJPropertyBuilder >> webhook: aUrlOrString [
	self at: #webhook put: aUrlOrString greaseString
]
