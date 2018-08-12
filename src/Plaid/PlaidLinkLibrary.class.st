Class {
	#name : #PlaidLinkLibrary,
	#superclass : #WAFileLibrary,
	#category : #'Plaid-Web'
}

{ #category : #updating }
PlaidLinkLibrary >> updateRoot: anHtmlRoot [
	super updateRoot: anHtmlRoot.
	anHtmlRoot javascript url: 'https://cdn.plaid.com/link/v2/stable/link-initialize.js'.
]
