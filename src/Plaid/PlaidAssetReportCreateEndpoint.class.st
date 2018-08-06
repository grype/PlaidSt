Class {
	#name : #PlaidAssetReportCreateEndpoint,
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
PlaidAssetReportCreateEndpoint class >> endpointPath [
	^ Path / 'asset_report' / 'create'
]

{ #category : #accessing }
PlaidAssetReportCreateEndpoint >> accessTokens [
	^ accessTokens ifNil: [ {self client credentials accessToken} ]
]

{ #category : #accessing }
PlaidAssetReportCreateEndpoint >> accessTokens: anObject [
	accessTokens := anObject
]

{ #category : #endpoints }
PlaidAssetReportCreateEndpoint >> auditCopy [
	^ self > PlaidAuditCopyEndpoint 
]

{ #category : #accessing }
PlaidAssetReportCreateEndpoint >> clientReportId [
	^ clientReportId
]

{ #category : #accessing }
PlaidAssetReportCreateEndpoint >> clientReportId: anObject [
	clientReportId := anObject
]

{ #category : #accessing }
PlaidAssetReportCreateEndpoint >> daysRequested [
	^ daysRequested
]

{ #category : #accessing }
PlaidAssetReportCreateEndpoint >> daysRequested: anObject [
	daysRequested := anObject
]

{ #category : #executing }
PlaidAssetReportCreateEndpoint >> execute [
	<endpoint>
	<post>
	data
		at: #access_tokens put: self accessTokens;
		at: #days_requested put: self daysRequested.
	self hasOptions
		ifTrue: [ data at: #options put: self optionsData ].
	^ PlaidAssetCreatedResponse fromJson: super execute
]

{ #category : #accessing }
PlaidAssetReportCreateEndpoint >> hasOptions [
	^ ({self clientReportId.
	self webhook.
	self user} reject: #isNil) isNotEmpty
]

{ #category : #initialization }
PlaidAssetReportCreateEndpoint >> initializeOn: aClient [
	super initializeOn: aClient.
	self
		withClientId;
		withSecret
]

{ #category : #accessing }
PlaidAssetReportCreateEndpoint >> optionsData [
	| dict |

	dict := Dictionary new.
	self clientReportId ifNotNil: [ :val | dict at: #client_report_id put: val ].
	self webhook ifNotNil: [ :val | dict at: #webhook put: val ].
	self user ifNotNil: [ :val | dict at: #user put: val ].
	^ dict
]

{ #category : #accessing }
PlaidAssetReportCreateEndpoint >> user [
	^ user
]

{ #category : #accessing }
PlaidAssetReportCreateEndpoint >> user: anObject [
	user := anObject
]

{ #category : #accessing }
PlaidAssetReportCreateEndpoint >> webhook [
	^ webhook
]

{ #category : #accessing }
PlaidAssetReportCreateEndpoint >> webhook: anObject [
	webhook := anObject
]
