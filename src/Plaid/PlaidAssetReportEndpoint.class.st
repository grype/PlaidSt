Class {
	#name : #PlaidAssetReportEndpoint,
	#superclass : #PlaidEndpoint,
	#category : #'Plaid-Endpoints'
}

{ #category : #accessing }
PlaidAssetReportEndpoint class >> endpointPath [
	^ Path / 'asset_report'
]

{ #category : #endpoints }
PlaidAssetReportEndpoint >> auditCopy [
	^ self / PlaidAuditCopyEndpoint 
]

{ #category : #api }
PlaidAssetReportEndpoint >> create: aBlock [
	^ self / PlaidAssetReportCreateEndpoint
		in: [ :endpoint | 
			aBlock cull: endpoint.
			endpoint execute ]
]

{ #category : #api }
PlaidAssetReportEndpoint >> getPDFReportWithToken: aReportToken [
	<path: 'pdf/get'>
	<post>
	data at: #asset_report_token put: aReportToken.
	^ self execute
]

{ #category : #api }
PlaidAssetReportEndpoint >> getReportWithToken: aReportToken [
	<path: 'get'>
	<post>
	data at: #asset_report_token put: aReportToken.
	^ PlaidAssetResponse fromJson: self execute
]

{ #category : #initialization }
PlaidAssetReportEndpoint >> initializeOn: aClient [
	super initializeOn: aClient.
	self
		withClientId;
		withSecret
]

{ #category : #api }
PlaidAssetReportEndpoint >> removeReportWithToken: anAssetReportToken [
	<path: 'remove'>
	<post>
	data at: #asset_report_token put: anAssetReportToken.
	^ PlaidRemovedResponse fromJson: self execute
]
