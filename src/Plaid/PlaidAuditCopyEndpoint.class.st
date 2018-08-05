Class {
	#name : #PlaidAuditCopyEndpoint,
	#superclass : #PlaidEndpoint,
	#instVars : [
		'assetReportToken',
		'auditorId',
		'auditCopyToken'
	],
	#category : #'Plaid-Client'
}

{ #category : #accessing }
PlaidAuditCopyEndpoint class >> endpointPath [
	^ Path / 'asset_report' / 'audit_copy'
]

{ #category : #accessing }
PlaidAuditCopyEndpoint >> assetReportToken [
	^ assetReportToken
]

{ #category : #accessing }
PlaidAuditCopyEndpoint >> assetReportToken: anObject [
	assetReportToken := anObject
]

{ #category : #accessing }
PlaidAuditCopyEndpoint >> auditCopyToken [
	^ auditCopyToken
]

{ #category : #accessing }
PlaidAuditCopyEndpoint >> auditCopyToken: anObject [
	auditCopyToken := anObject
]

{ #category : #accessing }
PlaidAuditCopyEndpoint >> auditorId [
	^ auditorId
]

{ #category : #accessing }
PlaidAuditCopyEndpoint >> auditorId: anObject [
	auditorId := anObject
]

{ #category : #api }
PlaidAuditCopyEndpoint >> create [
	<endpoint: 'create'>
	<post>
	data
		at: #asset_report_token put: self assetReportToken;
		at: #auditor_id put: self auditorId.
	^ PJAuditCopyCreateResponse fromJson: self execute
]

{ #category : #initialization }
PlaidAuditCopyEndpoint >> initializeOn: aClient [
	super initializeOn: aClient.
	self
		withClientId;
		withSecret
]

{ #category : #api }
PlaidAuditCopyEndpoint >> remove [
	<endpoint: 'remove'>
	<post>
	data
		at: #audit_copy_token put: self auditCopyToken.
	^ PJAuditCopyRemoveResponse fromJson: self execute
]
