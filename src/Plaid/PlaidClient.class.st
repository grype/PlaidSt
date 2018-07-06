"
I am a RESTful API client for Plaid (https://plaid.com/).

I employ a builder-like interface to create PlaidEndpoint's, which are used to drive all of my communication with the REST service. This is accomplished via the general purpose #/ message, as well as various specialized messages, categorized under #endpoints.

Before making any requests, however, I should be configured with a baseURL and an instance of PlaidCredentials, both of which are used to configure HTTP requests for each endpoint. See below for an example on how to create an instance of me.

Example:
   | client |
	""create client""
	client := PlaidClient sandbox credentials: (PlaidCredentials new publicKey: ''; secret: ''; clientID: ''; yourself).
	
	""Specialized endpoint""
	client getInstitutions.
	
	""Adhoc endpoints""
	(client / 'institutions' / 'get')
		withClientId;
		withSecret;
		at: 'count' put: 200;
		at: 'offset' put: 0;
		post.


Instance Variables
	baseUrl:		<ZnUrl>
	credentials:		<PlaidCredentials>
"
Class {
	#name : #PlaidClient,
	#superclass : #Object,
	#instVars : [
		'baseUrl',
		'credentials',
		'clientName'
	],
	#classVars : [
		'DevelopmentEnvironment',
		'DevelopmentUrl',
		'ProductionEnvironment',
		'ProductionUrl',
		'SandboxEnvironment',
		'SandboxUrl'
	],
	#category : #'Plaid-Client'
}

{ #category : #'instance creation' }
PlaidClient class >> development [
	^ self with: DevelopmentUrl
]

{ #category : #initialize }
PlaidClient class >> initialize [
	SandboxEnvironment := 'sandbox'.
	DevelopmentEnvironment := 'development'.
	ProductionEnvironment := 'production'.
	SandboxUrl := ZnUrl fromString: 'https://sandbox.plaid.com/'.
	DevelopmentUrl := ZnUrl fromString: 'https://development.plaid.com/'.
	ProductionUrl := ZnUrl fromString: 'https://production.plaid.com/'
]

{ #category : #'instance creation' }
PlaidClient class >> production [
	^ self with: ProductionUrl
]

{ #category : #'instance creation' }
PlaidClient class >> sandbox [
	^ self with: SandboxUrl
]

{ #category : #'instance creation' }
PlaidClient class >> with: aUrl [
	^ self basicNew initializeWithUrl: aUrl
]

{ #category : #endpoints }
PlaidClient >> / aPath [
	^ PlaidEndpoint withClient: self url: self baseUrl / aPath
]

{ #category : #accessing }
PlaidClient >> baseUrl [
	^ baseUrl
]

{ #category : #endpoints }
PlaidClient >> categories [
	| endpoint |
	endpoint := self / 'categories' / 'get'.
	^ PJCategoriesResponse fromJson: endpoint post
]

{ #category : #accessing }
PlaidClient >> clientName [
	^ clientName
]

{ #category : #accessing }
PlaidClient >> clientName: anObject [
	clientName := anObject
]

{ #category : #private }
PlaidClient >> createHttpClient [
	^ ZnClient new
		url: baseUrl;
		contentWriter: [ :obj | ZnEntity json: obj asJson ]
		yourself
]

{ #category : #accessing }
PlaidClient >> credentials [
	^ credentials
]

{ #category : #accessing }
PlaidClient >> credentials: anObject [
	credentials := anObject
]

{ #category : #accessing }
PlaidClient >> environment [
	| map |
	map := {(ProductionUrl -> ProductionEnvironment).
	(DevelopmentUrl -> DevelopmentEnvironment).
	(SandboxUrl -> SandboxEnvironment)} asDictionary.
	^ map at: self baseUrl
]

{ #category : #endpoints }
PlaidClient >> exchangePublicToken: aPublicToken [ 
	^ (self / 'item' / 'public_token' / 'exchange')
		withClientId;
		withSecret;
		at: 'public_token' put: aPublicToken;
		post
]

{ #category : #initialization }
PlaidClient >> initializeWithUrl: aUrl [
	self initialize.
	baseUrl := aUrl
]

{ #category : #endpoints }
PlaidClient >> institutions [
	^ self institutions: 10 offset: 0 
]

{ #category : #endpoints }
PlaidClient >> institutions: aCount offset: anOffset [
	| endpoint |
	endpoint := (self / 'institutions' / 'get')
		withClientId;
		withSecret;
		at: 'count' put: aCount;
		at: 'offset' put: anOffset;
		yourself.
	^ PJInstitutionsResponse fromJson: endpoint post
]

{ #category : #testing }
PlaidClient >> isDevelopmentEnvironment [
	^ self baseUrl = DevelopmentUrl  
]

{ #category : #testing }
PlaidClient >> isProductionEnvironment [
	^ self baseUrl = ProductionUrl  
]

{ #category : #testing }
PlaidClient >> isSandboxEnvironment [
	^ self baseUrl = SandboxUrl 
]

{ #category : #endpoints }
PlaidClient >> item [
	| endpoint |
	endpoint := (self / 'item' / 'get')
		withClientId;
		withSecret;
		withAccessToken;
		yourself.
	^ PJItemResponse fromJson: endpoint post
]

{ #category : #endpoints }
PlaidClient >> transactionsFrom: startDate to: endDate accountIds: aListOfAccountIds count: aCount offset: anOffset [
	| options |
	options := Dictionary new.
	aListOfAccountIds ifNotNil: [ :value | options at: 'account_ids' put: value ].
	aCount ifNotNil: [ :value | options at: 'count' put: value ].
	anOffset ifNotNil: [ :value | options at: 'offset' put: value ].
	^ self transactionsFrom: startDate to: endDate options: options
]

{ #category : #endpoints }
PlaidClient >> transactionsFrom: startDate to: endDate options: options [
	| endpoint |
	endpoint := (self / 'transactions' / 'get')
		withClientId;
		withSecret;
		withAccessToken;
		at: 'start_date' put: startDate asPlaidString;
		at: 'end_date' put: endDate asPlaidString;
		yourself.
	options ifNotNil: [ :value | endpoint at: 'options' put: value ].
	^ PJTransactionsResponse fromJson: endpoint post
]
