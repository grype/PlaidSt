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
	#name : #PlaidLinkPropertyBuilder,
	#superclass : #Object,
	#instVars : [
		'dictionary',
		'context'
	],
	#category : #'Plaid-Web'
}

{ #category : #'instance creation' }
PlaidLinkPropertyBuilder class >> on: aContext [
	^ self basicNew initializeWithContext: aContext
]

{ #category : #accessing }
PlaidLinkPropertyBuilder >> at: aKey put: aValue [
	dictionary at: aKey put: aValue
]

{ #category : #accessing }
PlaidLinkPropertyBuilder >> at: aKey putAjaxCallback: aCallback [
	dictionary at: aKey put: (self valueForAjaxCallback: aCallback)
]

{ #category : #accessing }
PlaidLinkPropertyBuilder >> at: aKey putCallback: aCallback [
	dictionary at: aKey put: (self valueForCallback: aCallback)
]

{ #category : #accessing }
PlaidLinkPropertyBuilder >> at: aKey putCollection: aCollectionOrValue [
	dictionary at: aKey put: aCollectionOrValue asOrderedCollection
]

{ #category : #building }
PlaidLinkPropertyBuilder >> beDevelopmentEnvironment [
	self env: #development
]

{ #category : #building }
PlaidLinkPropertyBuilder >> beProductionEnvironment [
	self env: #production
]

{ #category : #building }
PlaidLinkPropertyBuilder >> beSandboxEnvironment [
	self env: #sandbox
]

{ #category : #building }
PlaidLinkPropertyBuilder >> clientName: aString [
	self at: #clientName put: aString
]

{ #category : #accessing }
PlaidLinkPropertyBuilder >> data [
	^ dictionary 
]

{ #category : #building }
PlaidLinkPropertyBuilder >> env: aString [
	self at: #env put: aString
]

{ #category : #initialization }
PlaidLinkPropertyBuilder >> initialize [
	super initialize.
	dictionary := Dictionary new.
]

{ #category : #initialization }
PlaidLinkPropertyBuilder >> initializeWithContext: aContext [
	self initialize.
	context := aContext 
]

{ #category : #building }
PlaidLinkPropertyBuilder >> isWebview: aBool [
	self at: #isWebview put: aBool
]

{ #category : #building }
PlaidLinkPropertyBuilder >> key: aString [
	self at: #key put: aString
]

{ #category : #building }
PlaidLinkPropertyBuilder >> onEvent: aCallback [
	self at: #onEvent putAjaxCallback: aCallback
]

{ #category : #building }
PlaidLinkPropertyBuilder >> onExit: aCallback [
	self at: #onExit putAjaxCallback: aCallback
]

{ #category : #building }
PlaidLinkPropertyBuilder >> onLoad: aCallback [
	self at: #onLoad putAjaxCallback: aCallback
]

{ #category : #building }
PlaidLinkPropertyBuilder >> onSuccess: aCallback [
	self at: #onSuccess putAjaxCallback: aCallback
]

{ #category : #building }
PlaidLinkPropertyBuilder >> product: aCollectionOfStrings [
	self at: #product putCollection: aCollectionOfStrings
]

{ #category : #building }
PlaidLinkPropertyBuilder >> token: aString [
	self at: #token put: aString
]

{ #category : #'private-building' }
PlaidLinkPropertyBuilder >> valueForAjaxCallback: aBlock [
	^ (JSFunction context: context) , ((JSScript context: context) jQuery ajax
		callback: [ :values | aBlock valueWithArguments: values ]
		json: (JSStream on: 'Array.prototype.slice.call(arguments, 0)'))
]

{ #category : #'private-building' }
PlaidLinkPropertyBuilder >> valueForAjaxCallbackOld: aBlock [
	^ (JSFunction context: context)
		,
			(aBlock argumentCount > 0
				ifTrue: [ (JSScript context: context) jQuery ajax
						callback: [ :values | aBlock valueWithArguments: values ]
						json: (JSStream on: 'Array.prototype.slice.call(arguments, 0)') ]
				ifFalse: [ (JSScript context: context) jQuery ajax callback: aBlock ])
]

{ #category : #'private-building' }
PlaidLinkPropertyBuilder >> valueForCallback: aBlock [
	^ (JSFunction context: context) callback: aBlock
]

{ #category : #building }
PlaidLinkPropertyBuilder >> webhook: aUrlOrString [
	self at: #webhook put: aUrlOrString greaseString
]
