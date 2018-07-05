Class {
	#name : #PJPaymentMeta,
	#superclass : #PJObject,
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
PJPaymentMeta >> byOrderOf [
	^ byOrderOf
]

{ #category : #accessing }
PJPaymentMeta >> byOrderOf: anObject [
	byOrderOf := anObject
]

{ #category : #description }
PJPaymentMeta >> byOrderOfDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'By Order Of';
		accessor: #byOrderOf;
		jsonName: #by_order_of;
		beOptional;
		yourself
]

{ #category : #accessing }
PJPaymentMeta >> payee [
	^ payee
]

{ #category : #accessing }
PJPaymentMeta >> payee: anObject [
	payee := anObject
]

{ #category : #description }
PJPaymentMeta >> payeeDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Payee';
		accessor: #payee;
		jsonName: #payee;
		beOptional;
		yourself
]

{ #category : #accessing }
PJPaymentMeta >> payer [
	^ payer
]

{ #category : #accessing }
PJPaymentMeta >> payer: anObject [
	payer := anObject
]

{ #category : #description }
PJPaymentMeta >> payerDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Payer';
		accessor: #payer;
		jsonName: #payer;
		beOptional;
		yourself
]

{ #category : #accessing }
PJPaymentMeta >> paymentMethod [
	^ paymentMethod
]

{ #category : #accessing }
PJPaymentMeta >> paymentMethod: anObject [
	paymentMethod := anObject
]

{ #category : #description }
PJPaymentMeta >> paymentMethodDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Payment Method';
		accessor: #paymentMethod;
		jsonName: #payment_method;
		beOptional;
		yourself
]

{ #category : #accessing }
PJPaymentMeta >> paymentProcessor [
	^ paymentProcessor
]

{ #category : #accessing }
PJPaymentMeta >> paymentProcessor: anObject [
	paymentProcessor := anObject
]

{ #category : #description }
PJPaymentMeta >> paymentProcessorDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Payment Processor';
		accessor: #paymentProcessor;
		jsonName: #payment_processor;
		beOptional;
		yourself
]

{ #category : #accessing }
PJPaymentMeta >> ppdId [
	^ ppdId
]

{ #category : #accessing }
PJPaymentMeta >> ppdId: anObject [
	ppdId := anObject
]

{ #category : #description }
PJPaymentMeta >> ppdIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'PPD ID';
		accessor: #ppdId;
		jsonName: #ppd_id;
		beOptional;
		yourself
]

{ #category : #accessing }
PJPaymentMeta >> reason [
	^ reason
]

{ #category : #accessing }
PJPaymentMeta >> reason: anObject [
	reason := anObject
]

{ #category : #description }
PJPaymentMeta >> reasonDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Reason';
		accessor: #reason;
		jsonName: #reason;
		beOptional;
		yourself
]

{ #category : #accessing }
PJPaymentMeta >> referenceNumber [
	^ referenceNumber
]

{ #category : #accessing }
PJPaymentMeta >> referenceNumber: anObject [
	referenceNumber := anObject
]

{ #category : #description }
PJPaymentMeta >> referenceNumberDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Reference Number';
		accessor: #referenceNumber;
		jsonName: #reference_number;
		beOptional;
		yourself
]
