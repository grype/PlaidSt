Class {
	#name : #PJAssetReportTransaction,
	#superclass : #PJObject,
	#instVars : [
		'accountId',
		'amount',
		'date',
		'originalDescription',
		'pending',
		'transactionId',
		'isoCurrencyCode',
		'unofficialCurrencyCode'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJAssetReportTransaction >> accountId [
	^ accountId
]

{ #category : #accessing }
PJAssetReportTransaction >> accountId: anObject [
	accountId := anObject
]

{ #category : #description }
PJAssetReportTransaction >> accountIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Account ID';
		accessor: #accountId;
		jsonName: #account_id;
		yourself
]

{ #category : #accessing }
PJAssetReportTransaction >> amount [
	^ amount
]

{ #category : #accessing }
PJAssetReportTransaction >> amount: anObject [
	amount := anObject
]

{ #category : #description }
PJAssetReportTransaction >> amountDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Amount';
		accessor: #amount;
		jsonName: #amount;
		yourself
]

{ #category : #accessing }
PJAssetReportTransaction >> date [
	^ date
]

{ #category : #accessing }
PJAssetReportTransaction >> date: anObject [
	date := anObject
]

{ #category : #description }
PJAssetReportTransaction >> dateDescription [
	<magritteDescription>
	^ MADateDescription new
		label: 'Date';
		accessor: #date;
		jsonName: #date;
		yourself
]

{ #category : #comparing }
PJAssetReportTransaction >> hash [
	^ transactionId hash
]

{ #category : #accessing }
PJAssetReportTransaction >> isoCurrencyCode [
	^ isoCurrencyCode
]

{ #category : #accessing }
PJAssetReportTransaction >> isoCurrencyCode: anObject [
	isoCurrencyCode := anObject
]

{ #category : #description }
PJAssetReportTransaction >> isoCurrencyCodeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'ISO Currency Code';
		accessor: #isoCurrencyCode;
		jsonName: #iso_currency_code;
		yourself
]

{ #category : #accessing }
PJAssetReportTransaction >> originalDescription [
	^ originalDescription
]

{ #category : #accessing }
PJAssetReportTransaction >> originalDescription: anObject [
	originalDescription := anObject
]

{ #category : #description }
PJAssetReportTransaction >> originalDescriptionDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Original Description';
		accessor: #originalDescription;
		jsonName: #original_description;
		yourself
]

{ #category : #accessing }
PJAssetReportTransaction >> pending [
	^ pending
]

{ #category : #accessing }
PJAssetReportTransaction >> pending: anObject [
	pending := anObject
]

{ #category : #description }
PJAssetReportTransaction >> pendingDescription [
	<magritteDescription>
	^ MABooleanDescription new
		label: 'Pending?';
		accessor: #pending;
		jsonName: #pending;
		yourself
]

{ #category : #printing }
PJAssetReportTransaction >> printOn: aStream [
	"Append a sequence of characters to aStream that identify the receiver."

	super printOn: aStream.
	aStream
		nextPutAll: ' $';
		nextPutAll: amount greaseString;
		nextPutAll: ' <';
		nextPutAll: originalDescription;
		nextPut: $>
]

{ #category : #accessing }
PJAssetReportTransaction >> transactionId [
	^ transactionId
]

{ #category : #accessing }
PJAssetReportTransaction >> transactionId: anObject [
	transactionId := anObject
]

{ #category : #description }
PJAssetReportTransaction >> transactionIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Transaction ID';
		accessor: #transactionId;
		jsonName: #transaction_id;
		yourself
]

{ #category : #accessing }
PJAssetReportTransaction >> unofficialCurrencyCode [
	^ unofficialCurrencyCode
]

{ #category : #accessing }
PJAssetReportTransaction >> unofficialCurrencyCode: anObject [
	unofficialCurrencyCode := anObject
]

{ #category : #description }
PJAssetReportTransaction >> unofficialCurrencyCodeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Unofficial Currency Code';
		accessor: #unofficialCurrencyCode;
		jsonName: #unofficial_currency_code;
		yourself
]
