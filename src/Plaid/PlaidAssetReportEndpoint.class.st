Class {
	#name : #PlaidAssetReportEndpoint,
	#superclass : #PlaidEndpoint,
	#instVars : [
		'accessTokens',
		'daysRequested',
		'clientReportId',
		'webhook',
		'user'
	],
	#category : #'Plaid-Client'
}

{ #category : #accessing }
PlaidAssetReportEndpoint class >> endpointPath [
	^ Path / 'asset_report'
]

{ #category : #accessing }
PlaidAssetReportEndpoint >> accessTokens [
	^ accessTokens ifNil: [ {self client credentials accessToken} ]
]

{ #category : #accessing }
PlaidAssetReportEndpoint >> accessTokens: anObject [
	accessTokens := anObject
]

{ #category : #accessing }
PlaidAssetReportEndpoint >> clientReportId [
	^ clientReportId
]

{ #category : #accessing }
PlaidAssetReportEndpoint >> clientReportId: anObject [
	clientReportId := anObject
]

{ #category : #api }
PlaidAssetReportEndpoint >> create [
	<endpoint: 'create'>
	<post>
	data
		at: #access_tokens put: self accessTokens;
		at: #days_requested put: self daysRequested.
	self hasOptions
		ifTrue: [ data at: #options put: self optionsData ].
	^ PJAssetCreatedResponse fromJson: self execute
]

{ #category : #accessing }
PlaidAssetReportEndpoint >> data [
	^ super data
"	| result |

	result := super data.
	result
		at: #access_tokens put: self accessTokens;
		at: #days_requested put: self daysRequested.
	self hasOptions
		ifTrue: [ result at: #options put: self optionsData ].
	^ result"
]

{ #category : #accessing }
PlaidAssetReportEndpoint >> daysRequested [
	^ daysRequested
]

{ #category : #accessing }
PlaidAssetReportEndpoint >> daysRequested: anObject [
	daysRequested := anObject
]

{ #category : #api }
PlaidAssetReportEndpoint >> getPDFReportWithToken: aReportToken [
	<endpoint: 'pdf/get'>
	<post>
	data at: #asset_report_token put: aReportToken.
	^ self execute
]

{ #category : #api }
PlaidAssetReportEndpoint >> getReportWithToken: aReportToken [
	<endpoint: 'get'>
	<post>
	data at: #asset_report_token put: aReportToken.
	^ PJAssetResponse fromJson: self execute
]

{ #category : #accessing }
PlaidAssetReportEndpoint >> hasOptions [
	^ ({self clientReportId.
	self webhook.
	self user} reject: #isNil) isNotEmpty
]

{ #category : #initialization }
PlaidAssetReportEndpoint >> initializeOn: aClient [
	super initializeOn: aClient.
	self
		withClientId;
		withSecret
]

{ #category : #accessing }
PlaidAssetReportEndpoint >> optionsData [
	| dict |

	dict := Dictionary new.
	self clientReportId ifNotNil: [ :val | dict at: #client_report_id put: val ].
	self webhook ifNotNil: [ :val | dict at: #webhook put: val ].
	self user ifNotNil: [ :val | dict at: #user put: val ].
	^ dict
]

{ #category : #accessing }
PlaidAssetReportEndpoint >> user [
	^ user
]

{ #category : #accessing }
PlaidAssetReportEndpoint >> user: anObject [
	user := anObject
]

{ #category : #accessing }
PlaidAssetReportEndpoint >> webhook [
	^ webhook
]

{ #category : #accessing }
PlaidAssetReportEndpoint >> webhook: anObject [
	webhook := anObject
]
