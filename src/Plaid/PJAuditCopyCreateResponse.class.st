Class {
	#name : #PJAuditCopyCreateResponse,
	#superclass : #PJResponse,
	#instVars : [
		'auditCopyToken'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJAuditCopyCreateResponse >> auditCopyToken [
	^ auditCopyToken
]

{ #category : #accessing }
PJAuditCopyCreateResponse >> auditCopyToken: anObject [
	auditCopyToken := anObject
]

{ #category : #description }
PJAuditCopyCreateResponse >> auditCopyTokenDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Audit Copy Token';
		accessor: #auditCopyToken;
		jsonName: #audit_copy_token;
		yourself
]
