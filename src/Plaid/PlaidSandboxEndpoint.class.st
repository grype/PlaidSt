Class {
	#name : #PlaidSandboxEndpoint,
	#superclass : #PlaidEndpoint,
	#category : #'Plaid-Endpoints'
}

{ #category : #accessing }
PlaidSandboxEndpoint class >> endpointPath [
	^ Path / 'sandbox'
]

{ #category : #endpoints }
PlaidSandboxEndpoint >> publicToken [
	^ self / PlaidSandboxPublicTokenEndpoint 
]
