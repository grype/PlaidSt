Class {
	#name : #PlaidAssetReportEndpoint,
	#superclass : #PlaidEndpoint,
	#category : #'Plaid-Client'
}

{ #category : #accessing }
PlaidAssetReportEndpoint class >> endpointPath [
	^ Path / 'asset_report'
]

{ #category : #endpoints }
PlaidAssetReportEndpoint >> auditCopy [
	^ self > PlaidAuditCopyEndpoint 
]

{ #category : #api }
PlaidAssetReportEndpoint >> create: aBlock [
	^ self > PlaidAssetReportCreateEndpoint
		in: [ :endpoint | 
			aBlock cull: endpoint.
			endpoint execute ]
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
