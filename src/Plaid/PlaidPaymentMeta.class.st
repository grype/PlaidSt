Class {
	#name : #PlaidPaymentMeta,
	#superclass : #PlaidModel,
	#instVars : [
		'byOrderOf',
		'payee',
		'payer',
		'paymentMethod',
		'paymentProcessor',
		'ppdId',
		'reason',
		'referenceNumber'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PlaidPaymentMeta >> byOrderOf [
	^ byOrderOf
]

{ #category : #accessing }
PlaidPaymentMeta >> byOrderOf: anObject [
	byOrderOf := anObject
]

{ #category : #description }
PlaidPaymentMeta >> byOrderOfDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'By Order Of';
		accessor: #byOrderOf;
		jsonName: #by_order_of;
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidPaymentMeta >> payee [
	^ payee
]

{ #category : #accessing }
PlaidPaymentMeta >> payee: anObject [
	payee := anObject
]

{ #category : #description }
PlaidPaymentMeta >> payeeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Payee';
		accessor: #payee;
		jsonName: #payee;
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidPaymentMeta >> payer [
	^ payer
]

{ #category : #accessing }
PlaidPaymentMeta >> payer: anObject [
	payer := anObject
]

{ #category : #description }
PlaidPaymentMeta >> payerDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Payer';
		accessor: #payer;
		jsonName: #payer;
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidPaymentMeta >> paymentMethod [
	^ paymentMethod
]

{ #category : #accessing }
PlaidPaymentMeta >> paymentMethod: anObject [
	paymentMethod := anObject
]

{ #category : #description }
PlaidPaymentMeta >> paymentMethodDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Payment Method';
		accessor: #paymentMethod;
		jsonName: #payment_method;
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidPaymentMeta >> paymentProcessor [
	^ paymentProcessor
]

{ #category : #accessing }
PlaidPaymentMeta >> paymentProcessor: anObject [
	paymentProcessor := anObject
]

{ #category : #description }
PlaidPaymentMeta >> paymentProcessorDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Payment Processor';
		accessor: #paymentProcessor;
		jsonName: #payment_processor;
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidPaymentMeta >> ppdId [
	^ ppdId
]

{ #category : #accessing }
PlaidPaymentMeta >> ppdId: anObject [
	ppdId := anObject
]

{ #category : #description }
PlaidPaymentMeta >> ppdIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'PPD ID';
		accessor: #ppdId;
		jsonName: #ppd_id;
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidPaymentMeta >> reason [
	^ reason
]

{ #category : #accessing }
PlaidPaymentMeta >> reason: anObject [
	reason := anObject
]

{ #category : #description }
PlaidPaymentMeta >> reasonDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Reason';
		accessor: #reason;
		jsonName: #reason;
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidPaymentMeta >> referenceNumber [
	^ referenceNumber
]

{ #category : #accessing }
PlaidPaymentMeta >> referenceNumber: anObject [
	referenceNumber := anObject
]

{ #category : #description }
PlaidPaymentMeta >> referenceNumberDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Reference Number';
		accessor: #referenceNumber;
		jsonName: #reference_number;
		beOptional;
		yourself
]
