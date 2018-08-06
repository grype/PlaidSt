Class {
	#name : #PlaidWebhook,
	#superclass : #PlaidModel,
	#instVars : [
		'type',
		'code',
		'webhookError'
	],
	#classVars : [
		'AssetsType',
		'IncomeType',
		'ItemType',
		'TransactionsType'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PlaidWebhook class >> assetsType [
	^ AssetsType
]

{ #category : #accessing }
PlaidWebhook class >> incomeType [
	^ IncomeType
]

{ #category : #'class initialization' }
PlaidWebhook class >> initialize [
	TransactionsType := 'TRANSACTIONS'.
	ItemType := 'ITEM'.
	IncomeType := 'INCOME'.
	AssetsType := 'ASSETS'
]

{ #category : #accessing }
PlaidWebhook class >> itemType [
	^ ItemType
]

{ #category : #accessing }
PlaidWebhook class >> transactionsType [
	^ TransactionsType
]

{ #category : #accessing }
PlaidWebhook >> code [
	^ code
]

{ #category : #accessing }
PlaidWebhook >> code: anObject [
	code := anObject
]

{ #category : #description }
PlaidWebhook >> codeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Code';
		accessor: #code;
		jsonName: #webhook_code;
		yourself
]

{ #category : #description }
PlaidWebhook >> errorDescription [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Error';
		"jsonReader: PJJsonReader;"
		accessor: #webhookError;
		jsonName: #error;
		classes: { PlaidError };
		beOptional;
		beWriteable;
		default: nil;
		yourself
]

{ #category : #testing }
PlaidWebhook >> isAssetsWebhook [
	^ type = self class assetsType.
	
]

{ #category : #testing }
PlaidWebhook >> isError [
	^ webhookError isNotNil 
]

{ #category : #testing }
PlaidWebhook >> isIncomeWebhook [
	^ type = self class incomeType.
	
]

{ #category : #testing }
PlaidWebhook >> isItemWebhook [
	^ type = self class itemType.
	
]

{ #category : #testing }
PlaidWebhook >> isTransactionsWebhook [
	^ type = self class transactionsType.
	
]

{ #category : #accessing }
PlaidWebhook >> type [
	^ type
]

{ #category : #accessing }
PlaidWebhook >> type: anObject [
	type := anObject
]

{ #category : #description }
PlaidWebhook >> typeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Type';
		accessor: #type;
		jsonName: #webhook_type;
		yourself
]

{ #category : #accessing }
PlaidWebhook >> webhookError [
	^ webhookError
]

{ #category : #accessing }
PlaidWebhook >> webhookError: anObject [
	webhookError := anObject
]
