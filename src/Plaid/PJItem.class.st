Class {
	#name : #PJItem,
	#superclass : #PJObject,
	#instVars : [
		'availableProducts',
		'billedProducts',
		'itemError',
		'institutionId',
		'itemId',
		'webhook'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJItem >> availableProducts [
	^ availableProducts
]

{ #category : #accessing }
PJItem >> availableProducts: anObject [
	availableProducts := anObject
]

{ #category : #description }
PJItem >> availableProductsDescription [
	<magritteDescription>
	^ MAElementDescription new
		label: 'Available Products';
		accessor: #availableProducts;
		jsonName: #available_products;
		yourself
]

{ #category : #accessing }
PJItem >> billedProducts [
	^ billedProducts
]

{ #category : #accessing }
PJItem >> billedProducts: anObject [
	billedProducts := anObject
]

{ #category : #description }
PJItem >> billedProductsDescription [
	<magritteDescription>
	^ MAElementDescription new
		label: 'Billed Products';
		accessor: #billedProducts;
		jsonName: #billed_products;
		yourself
]

{ #category : #description }
PJItem >> errorDescription [
	<magritteDescription>
	^ MAElementDescription new
		label: 'Error';
		accessor:
			(MAPluggableAccessor
				read: [ :obj | obj itemError ]
				write: [ :obj :val | val ifNotNil: [ obj itemError: val ] ]);
		jsonName: #error;
		beOptional;
		yourself
]

{ #category : #accessing }
PJItem >> institutionId [
	^ institutionId
]

{ #category : #accessing }
PJItem >> institutionId: anObject [
	institutionId := anObject
]

{ #category : #description }
PJItem >> institutionIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Institution ID';
		accessor: #institutionId;
		jsonName: #institution_id;
		yourself
]

{ #category : #accessing }
PJItem >> itemError [
	^ itemError
]

{ #category : #accessing }
PJItem >> itemError: anObject [
	itemError := anObject
]

{ #category : #accessing }
PJItem >> itemId [
	^ itemId
]

{ #category : #accessing }
PJItem >> itemId: anObject [
	itemId := anObject
]

{ #category : #description }
PJItem >> itemIdDescription [
	<magritteDescription>
	^ MAStringDescription new
		label: 'Item ID';
		accessor: #itemId;
		jsonName: #item_id;
		yourself
]

{ #category : #accessing }
PJItem >> webhook [
	^ webhook
]

{ #category : #accessing }
PJItem >> webhook: anObject [
	webhook := anObject
]

{ #category : #description }
PJItem >> webhookDescription [
	<magritteDescription>
	^ MAUrlDescription new
		label: 'Webhook';
		accessor: #webhook;
		jsonName: #webhook;
		beOptional;
		yourself
]
