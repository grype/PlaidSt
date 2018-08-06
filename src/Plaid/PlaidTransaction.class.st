Class {
	#name : #PlaidTransaction,
	#superclass : #PlaidModel,
	#instVars : [
		'transactionId',
		'accountId',
		'category',
		'categoryId',
		'transactionType',
		'name',
		'amount',
		'isoCurrencyCode',
		'unofficialCurrencyCode',
		'date',
		'location',
		'paymentMeta',
		'pending',
		'pendingTransactionId',
		'accountOwner'
	],
	#category : #'Plaid-Models'
}

{ #category : #default }
PlaidTransaction class >> defaultCurrencyCode [
	^ 'USD'
]

{ #category : #accessing }
PlaidTransaction >> accountId [
	^ accountId
]

{ #category : #accessing }
PlaidTransaction >> accountId: anObject [
	accountId := anObject
]

{ #category : #description }
PlaidTransaction >> accountIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Account ID';
		accessor: #accountId;
		jsonName: #account_id;
		yourself
]

{ #category : #accessing }
PlaidTransaction >> accountOwner [
	^ accountOwner
]

{ #category : #accessing }
PlaidTransaction >> accountOwner: anObject [
	accountOwner := anObject
]

{ #category : #description }
PlaidTransaction >> accountOwnerDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Account owner';
		accessor: #accountOwner;
		jsonName: #'account_owner';
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidTransaction >> amount [
	^ amount
]

{ #category : #accessing }
PlaidTransaction >> amount: anObject [
	amount := anObject
]

{ #category : #description }
PlaidTransaction >> amountDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Amount';
		accessor: #amount;
		jsonName: #amount;
		yourself
]

{ #category : #accessing }
PlaidTransaction >> category [
	^ category
]

{ #category : #accessing }
PlaidTransaction >> category: anObject [
	category := anObject
]

{ #category : #description }
PlaidTransaction >> categoryDescription [
	<magritteDescription>
	^ MAElementDescription new
		label: 'Category';
		accessor: #category;
		jsonName: #category;
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidTransaction >> categoryId [
	^ categoryId
]

{ #category : #accessing }
PlaidTransaction >> categoryId: anObject [
	categoryId := anObject
]

{ #category : #description }
PlaidTransaction >> categoryIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Category ID';
		accessor: #categoryId;
		jsonName: #'category_id';
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidTransaction >> date [
	^ date
]

{ #category : #accessing }
PlaidTransaction >> date: anObject [
	date := anObject
]

{ #category : #description }
PlaidTransaction >> dateDescription [
	<magritteDescription>
	^ MADateDescription new
		label: 'Date';
		accessor: #date;
		jsonName: #date;
		yourself
]

{ #category : #testing }
PlaidTransaction >> hasLocation [
	^ location isNotNil and: [ location isValid ]
]

{ #category : #comparing }
PlaidTransaction >> hash [
	^ transactionId hash bitXor: accountId hash
]

{ #category : #accessing }
PlaidTransaction >> isoCurrencyCode [
	^ isoCurrencyCode
]

{ #category : #accessing }
PlaidTransaction >> isoCurrencyCode: anObject [
	isoCurrencyCode := anObject
]

{ #category : #description }
PlaidTransaction >> isoCurrencyCodeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'ISO Currency Code';
		accessor: #isoCurrencyCode;
		jsonName: #'iso_currency_code';
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidTransaction >> location [
	^ location
]

{ #category : #accessing }
PlaidTransaction >> location: anObject [
	location := anObject
]

{ #category : #description }
PlaidTransaction >> locationDescription [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Location';
		accessor: #location;
		jsonName: #location;
		classes: { PlaidLocation };
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidTransaction >> name [
	^ name
]

{ #category : #accessing }
PlaidTransaction >> name: anObject [
	name := anObject
]

{ #category : #description }
PlaidTransaction >> nameDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Name';
		accessor: #name;
		jsonName: #name;
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidTransaction >> paymentMeta [
	^ paymentMeta
]

{ #category : #accessing }
PlaidTransaction >> paymentMeta: anObject [
	paymentMeta := anObject
]

{ #category : #description }
PlaidTransaction >> paymentMetaDescription [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Payment Meta';
		accessor: #paymentMeta;
		jsonName: #payment_meta;
		classes: { PlaidPaymentMeta };
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidTransaction >> pending [
	^ pending
]

{ #category : #accessing }
PlaidTransaction >> pending: anObject [
	pending := anObject
]

{ #category : #description }
PlaidTransaction >> pendingDescription [
	<magritteDescription>
	^ MABooleanDescription new
		label: 'Pending';
		accessor: #pending;
		jsonName: #pending;
		yourself
]

{ #category : #accessing }
PlaidTransaction >> pendingTransactionId [
	^ pendingTransactionId
]

{ #category : #accessing }
PlaidTransaction >> pendingTransactionId: anObject [
	pendingTransactionId := anObject
]

{ #category : #description }
PlaidTransaction >> pendingTransactionIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Pending Transaction ID';
		accessor: #pendingTransactionId;
		jsonName: #'pending_transaction_id';
		beOptional;
		yourself
]

{ #category : #printing }
PlaidTransaction >> printCurrencyCode [
	^ isoCurrencyCode ifNil: [ unofficialCurrencyCode ifNil: [ self class defaultCurrencyCode ] ]
]

{ #category : #printing }
PlaidTransaction >> printName [
	^ name
]

{ #category : #printing }
PlaidTransaction >> printOn: aStream [
	super printOn: aStream.
	aStream
		nextPutAll:
			(' <${1} - {2} - {3}>'
				format:
					{self amount greaseString.
					self printName greaseString.
					self date yyyymmdd greaseString}).

	self hasLocation
		ifTrue: [ aStream nextPutAll: ' [L]' ]
]

{ #category : #accessing }
PlaidTransaction >> transactionId [
	^ transactionId
]

{ #category : #accessing }
PlaidTransaction >> transactionId: anObject [
	transactionId := anObject
]

{ #category : #description }
PlaidTransaction >> transactionIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Transaction ID';
		accessor: #transactionId;
		jsonName: #transaction_id;
		yourself
]

{ #category : #accessing }
PlaidTransaction >> transactionType [
	^ transactionType
]

{ #category : #accessing }
PlaidTransaction >> transactionType: anObject [
	transactionType := anObject
]

{ #category : #description }
PlaidTransaction >> transactionTypeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Transaction Type';
		accessor: #transactionType;
		jsonName: #'transaction_type';
		yourself
]

{ #category : #accessing }
PlaidTransaction >> unofficialCurrencyCode [
	^ unofficialCurrencyCode
]

{ #category : #accessing }
PlaidTransaction >> unofficialCurrencyCode: anObject [
	unofficialCurrencyCode := anObject
]

{ #category : #description }
PlaidTransaction >> unofficialCurrencyCodeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Unofficial Currency Code';
		accessor: #unofficialCurrencyCode;
		jsonName: #'unofficial_currency_code';
		beOptional;
		yourself
]
