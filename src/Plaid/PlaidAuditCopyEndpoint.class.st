Class {
	#name : #PlaidAuditCopyEndpoint,
	#superclass : #PlaidEndpoint,
	#category : #'Plaid-Client'
}

{ #category : #accessing }
PlaidAuditCopyEndpoint class >> endpointPath [
	^ Path / 'asset_report' / 'audit_copy'
]

{ #category : #api }
PlaidAuditCopyEndpoint >> createWithAssetReportToken: anAssetReportToken auditorId: anAuditorId [
	<endpoint: 'create'>
	<post>
	data
		at: #asset_report_token put: anAssetReportToken;
		at: #auditor_id put: anAuditorId.
	^ PlaidAuditCopyCreateResponse fromJson: self execute
]

{ #category : #initialization }
PlaidAuditCopyEndpoint >> initializeOn: aClient [
	super initializeOn: aClient.
	self
		withClientId;
		withSecret
]

{ #category : #api }
PlaidAuditCopyEndpoint >> removeAutitCopyWithToken: aToken [
	<endpoint: 'remove'>
	<post>
	data
		at: #audit_copy_token put: aToken.
	^ PlaidRemovedResponse fromJson: self execute
]
