Class {
	#name : #PlaidAuditCopyCreateResponse,
	#superclass : #PlaidResponse,
	#instVars : [
		'auditCopyToken'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PlaidAuditCopyCreateResponse >> auditCopyToken [
	^ auditCopyToken
]

{ #category : #accessing }
PlaidAuditCopyCreateResponse >> auditCopyToken: anObject [
	auditCopyToken := anObject
]

{ #category : #description }
PlaidAuditCopyCreateResponse >> auditCopyTokenDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Audit Copy Token';
		accessor: #auditCopyToken;
		jsonName: #audit_copy_token;
		yourself
]
