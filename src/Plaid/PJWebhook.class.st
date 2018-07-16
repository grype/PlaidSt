Class {
	#name : #PJWebhook,
	#superclass : #PJObject,
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
PJWebhook class >> assetsType [
	^ AssetsType
]

{ #category : #accessing }
PJWebhook class >> incomeType [
	^ IncomeType
]

{ #category : #'class initialization' }
PJWebhook class >> initialize [
	TransactionsType := 'TRANSACTIONS'.
	ItemType := 'ITEM'.
	IncomeType := 'INCOME'.
	AssetsType := 'ASSETS'
]

{ #category : #accessing }
PJWebhook class >> itemType [
	^ ItemType
]

{ #category : #accessing }
PJWebhook class >> transactionsType [
	^ TransactionsType
]

{ #category : #accessing }
PJWebhook >> code [
	^ code
]

{ #category : #accessing }
PJWebhook >> code: anObject [
	code := anObject
]

{ #category : #description }
PJWebhook >> codeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Code';
		accessor: #code;
		jsonName: #webhook_code;
		yourself
]

{ #category : #description }
PJWebhook >> errorDescription [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Error';
		"jsonReader: PJJsonReader;"
		accessor: #webhookError;
		jsonName: #error;
		classes: { PJError };
		beOptional;
		beWriteable;
		default: nil;
		yourself
]

{ #category : #testing }
PJWebhook >> isAssetsWebhook [
	^ type = self class assetsType.
	
]

{ #category : #testing }
PJWebhook >> isError [
	^ webhookError isNotNil 
]

{ #category : #testing }
PJWebhook >> isIncomeWebhook [
	^ type = self class incomeType.
	
]

{ #category : #testing }
PJWebhook >> isItemWebhook [
	^ type = self class itemType.
	
]

{ #category : #testing }
PJWebhook >> isTransactionsWebhook [
	^ type = self class transactionsType.
	
]

{ #category : #descriptions }
PJWebhook >> responseDescription [
	| description |
	description := super magritteDescription.
	description children select: [ :each | each label ~= 'Error' ].
	^ description
]

{ #category : #accessing }
PJWebhook >> type [
	^ type
]

{ #category : #accessing }
PJWebhook >> type: anObject [
	type := anObject
]

{ #category : #description }
PJWebhook >> typeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Type';
		accessor: #type;
		jsonName: #webhook_type;
		yourself
]

{ #category : #accessing }
PJWebhook >> webhookError [
	^ webhookError
]

{ #category : #accessing }
PJWebhook >> webhookError: anObject [
	webhookError := anObject
]
