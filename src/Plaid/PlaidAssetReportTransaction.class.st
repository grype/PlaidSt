Class {
	#name : #PlaidAssetReportTransaction,
	#superclass : #PlaidModel,
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
PlaidAssetReportTransaction >> accountId [
	^ accountId
]

{ #category : #accessing }
PlaidAssetReportTransaction >> accountId: anObject [
	accountId := anObject
]

{ #category : #description }
PlaidAssetReportTransaction >> accountIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Account ID';
		accessor: #accountId;
		jsonName: #account_id;
		yourself
]

{ #category : #accessing }
PlaidAssetReportTransaction >> amount [
	^ amount
]

{ #category : #accessing }
PlaidAssetReportTransaction >> amount: anObject [
	amount := anObject
]

{ #category : #description }
PlaidAssetReportTransaction >> amountDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Amount';
		accessor: #amount;
		jsonName: #amount;
		yourself
]

{ #category : #accessing }
PlaidAssetReportTransaction >> date [
	^ date
]

{ #category : #accessing }
PlaidAssetReportTransaction >> date: anObject [
	date := anObject
]

{ #category : #description }
PlaidAssetReportTransaction >> dateDescription [
	<magritteDescription>
	^ MADateDescription new
		label: 'Date';
		accessor: #date;
		jsonName: #date;
		yourself
]

{ #category : #comparing }
PlaidAssetReportTransaction >> hash [
	^ transactionId hash
]

{ #category : #accessing }
PlaidAssetReportTransaction >> isoCurrencyCode [
	^ isoCurrencyCode
]

{ #category : #accessing }
PlaidAssetReportTransaction >> isoCurrencyCode: anObject [
	isoCurrencyCode := anObject
]

{ #category : #description }
PlaidAssetReportTransaction >> isoCurrencyCodeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'ISO Currency Code';
		accessor: #isoCurrencyCode;
		jsonName: #iso_currency_code;
		yourself
]

{ #category : #accessing }
PlaidAssetReportTransaction >> originalDescription [
	^ originalDescription
]

{ #category : #accessing }
PlaidAssetReportTransaction >> originalDescription: anObject [
	originalDescription := anObject
]

{ #category : #description }
PlaidAssetReportTransaction >> originalDescriptionDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Original Description';
		accessor: #originalDescription;
		jsonName: #original_description;
		yourself
]

{ #category : #accessing }
PlaidAssetReportTransaction >> pending [
	^ pending
]

{ #category : #accessing }
PlaidAssetReportTransaction >> pending: anObject [
	pending := anObject
]

{ #category : #description }
PlaidAssetReportTransaction >> pendingDescription [
	<magritteDescription>
	^ MABooleanDescription new
		label: 'Pending?';
		accessor: #pending;
		jsonName: #pending;
		yourself
]

{ #category : #printing }
PlaidAssetReportTransaction >> printOn: aStream [
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
PlaidAssetReportTransaction >> transactionId [
	^ transactionId
]

{ #category : #accessing }
PlaidAssetReportTransaction >> transactionId: anObject [
	transactionId := anObject
]

{ #category : #description }
PlaidAssetReportTransaction >> transactionIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Transaction ID';
		accessor: #transactionId;
		jsonName: #transaction_id;
		yourself
]

{ #category : #accessing }
PlaidAssetReportTransaction >> unofficialCurrencyCode [
	^ unofficialCurrencyCode
]

{ #category : #accessing }
PlaidAssetReportTransaction >> unofficialCurrencyCode: anObject [
	unofficialCurrencyCode := anObject
]

{ #category : #description }
PlaidAssetReportTransaction >> unofficialCurrencyCodeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Unofficial Currency Code';
		accessor: #unofficialCurrencyCode;
		jsonName: #unofficial_currency_code;
		yourself
]
