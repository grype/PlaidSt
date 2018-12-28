Class {
	#name : #PlaidSandboxPublicTokenEndpoint,
	#superclass : #PlaidEndpoint,
	#instVars : [
		'institutionId',
		'initialProducts',
		'options'
	],
	#category : #'Plaid-Endpoints'
}

{ #category : #accessing }
PlaidSandboxPublicTokenEndpoint class >> endpointPath [
	^ PlaidSandboxEndpoint endpointPath / 'public_token'
]

{ #category : #api }
PlaidSandboxPublicTokenEndpoint >> create [
	<endpoint: 'create'>
	<post>
	institutionId ifNotNil: [ :val | self dataAt: #institution_id put: val ].
	initialProducts ifNotNil: [ :val | self dataAt: #initial_products put: val ].
	options ifNotNil: [ :val | self dataAt: #options put: val ].
	^ PlaidPublicTokenResponse
		fromJson:
			(self
				withPublicKey;
				execute)
]

{ #category : #accessing }
PlaidSandboxPublicTokenEndpoint >> initialProducts [
	^ initialProducts
]

{ #category : #accessing }
PlaidSandboxPublicTokenEndpoint >> initialProducts: anObject [
	initialProducts := anObject
]

{ #category : #accessing }
PlaidSandboxPublicTokenEndpoint >> institutionId [
	^ institutionId
]

{ #category : #accessing }
PlaidSandboxPublicTokenEndpoint >> institutionId: anObject [
	institutionId := anObject
]

{ #category : #accessing }
PlaidSandboxPublicTokenEndpoint >> options [
	^ options
]

{ #category : #accessing }
PlaidSandboxPublicTokenEndpoint >> options: anObject [
	options := anObject
]
