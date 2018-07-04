Extension { #name : #JSScript }

{ #category : #'*Plaid' }
JSScript >> plaid [
	^ self add: ((JSPlaid context: self renderContext)
		rendererClass: self rendererClass;
		yourself)
]
