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
