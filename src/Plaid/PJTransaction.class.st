Class {
	#name : #PJTransaction,
	#superclass : #PJObject,
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
PJTransaction class >> defaultCurrencyCode [
	^ 'USD'
]

{ #category : #accessing }
PJTransaction >> accountId [
	^ accountId
]

{ #category : #accessing }
PJTransaction >> accountId: anObject [
	accountId := anObject
]

{ #category : #description }
PJTransaction >> accountIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Account ID';
		accessor: #accountId;
		jsonName: #account_id;
		yourself
]

{ #category : #accessing }
PJTransaction >> accountOwner [
	^ accountOwner
]

{ #category : #accessing }
PJTransaction >> accountOwner: anObject [
	accountOwner := anObject
]

{ #category : #description }
PJTransaction >> accountOwnerDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Account owner';
		accessor: #accountOwner;
		jsonName: #'account_owner';
		beOptional;
		yourself
]

{ #category : #accessing }
PJTransaction >> amount [
	^ amount
]

{ #category : #accessing }
PJTransaction >> amount: anObject [
	amount := anObject
]

{ #category : #description }
PJTransaction >> amountDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Amount';
		accessor: #amount;
		jsonName: #amount;
		yourself
]

{ #category : #accessing }
PJTransaction >> category [
	^ category
]

{ #category : #accessing }
PJTransaction >> category: anObject [
	category := anObject
]

{ #category : #description }
PJTransaction >> categoryDescription [
	<magritteDescription>
	^ MAElementDescription new
		label: 'Category';
		accessor: #category;
		jsonName: #category;
		beOptional;
		yourself
]

{ #category : #accessing }
PJTransaction >> categoryId [
	^ categoryId
]

{ #category : #accessing }
PJTransaction >> categoryId: anObject [
	categoryId := anObject
]

{ #category : #description }
PJTransaction >> categoryIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Category ID';
		accessor: #categoryId;
		jsonName: #'category_id';
		beOptional;
		yourself
]

{ #category : #accessing }
PJTransaction >> date [
	^ date
]

{ #category : #accessing }
PJTransaction >> date: anObject [
	date := anObject
]

{ #category : #description }
PJTransaction >> dateDescription [
	<magritteDescription>
	^ MADateDescription new
		label: 'Date';
		accessor: #date;
		jsonName: #date;
		yourself
]

{ #category : #testing }
PJTransaction >> hasLocation [
	^ location isNotNil and: [ location isValid ]
]

{ #category : #comparing }
PJTransaction >> hash [
	^ transactionId hash bitXor: accountId hash
]

{ #category : #accessing }
PJTransaction >> isoCurrencyCode [
	^ isoCurrencyCode
]

{ #category : #accessing }
PJTransaction >> isoCurrencyCode: anObject [
	isoCurrencyCode := anObject
]

{ #category : #description }
PJTransaction >> isoCurrencyCodeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'ISO Currency Code';
		accessor: #isoCurrencyCode;
		jsonName: #'iso_currency_code';
		beOptional;
		yourself
]

{ #category : #accessing }
PJTransaction >> location [
	^ location
]

{ #category : #accessing }
PJTransaction >> location: anObject [
	location := anObject
]

{ #category : #description }
PJTransaction >> locationDescription [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Location';
		accessor: #location;
		jsonName: #location;
		classes: { PJLocation };
		beOptional;
		yourself
]

{ #category : #accessing }
PJTransaction >> name [
	^ name
]

{ #category : #accessing }
PJTransaction >> name: anObject [
	name := anObject
]

{ #category : #description }
PJTransaction >> nameDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Name';
		accessor: #name;
		jsonName: #name;
		beOptional;
		yourself
]

{ #category : #accessing }
PJTransaction >> paymentMeta [
	^ paymentMeta
]

{ #category : #accessing }
PJTransaction >> paymentMeta: anObject [
	paymentMeta := anObject
]

{ #category : #description }
PJTransaction >> paymentMetaDescription [
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Payment Meta';
		accessor: #paymentMeta;
		jsonName: #payment_meta;
		classes: { PJPaymentMeta };
		beOptional;
		yourself
]

{ #category : #accessing }
PJTransaction >> pending [
	^ pending
]

{ #category : #accessing }
PJTransaction >> pending: anObject [
	pending := anObject
]

{ #category : #description }
PJTransaction >> pendingDescription [
	<magritteDescription>
	^ MABooleanDescription new
		label: 'Pending';
		accessor: #pending;
		jsonName: #pending;
		yourself
]

{ #category : #accessing }
PJTransaction >> pendingTransactionId [
	^ pendingTransactionId
]

{ #category : #accessing }
PJTransaction >> pendingTransactionId: anObject [
	pendingTransactionId := anObject
]

{ #category : #description }
PJTransaction >> pendingTransactionIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Pending Transaction ID';
		accessor: #pendingTransactionId;
		jsonName: #'pending_transaction_id';
		beOptional;
		yourself
]

{ #category : #printing }
PJTransaction >> printCurrencyCode [
	^ isoCurrencyCode ifNil: [ unofficialCurrencyCode ifNil: [ self class defaultCurrencyCode ] ]
]

{ #category : #printing }
PJTransaction >> printName [
	^ name
]

{ #category : #printing }
PJTransaction >> printOn: aStream [
	aStream
		nextPutAll: self printName greaseString;
		nextPutAll: ' ($';
		nextPutAll: self amount greaseString;
		nextPut: Character space;
		nextPutAll: self printCurrencyCode greaseString;
		nextPutAll: ')'.
	
	self hasLocation ifTrue: [ aStream nextPutAll: ' <*>' ]
]

{ #category : #accessing }
PJTransaction >> transactionId [
	^ transactionId
]

{ #category : #accessing }
PJTransaction >> transactionId: anObject [
	transactionId := anObject
]

{ #category : #description }
PJTransaction >> transactionIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Transaction ID';
		accessor: #transactionId;
		jsonName: #transaction_id;
		yourself
]

{ #category : #accessing }
PJTransaction >> transactionType [
	^ transactionType
]

{ #category : #accessing }
PJTransaction >> transactionType: anObject [
	transactionType := anObject
]

{ #category : #description }
PJTransaction >> transactionTypeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Transaction Type';
		accessor: #transactionType;
		jsonName: #'transaction_type';
		yourself
]

{ #category : #accessing }
PJTransaction >> unofficialCurrencyCode [
	^ unofficialCurrencyCode
]

{ #category : #accessing }
PJTransaction >> unofficialCurrencyCode: anObject [
	unofficialCurrencyCode := anObject
]

{ #category : #description }
PJTransaction >> unofficialCurrencyCodeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Unofficial Currency Code';
		accessor: #unofficialCurrencyCode;
		jsonName: #'unofficial_currency_code';
		beOptional;
		yourself
]
