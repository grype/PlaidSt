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
	#superclass : #Unrest,
	#instVars : [
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

{ #category : #accessing }
PlaidClient class >> apiVersion [
	^ '2018-05-22'
]

{ #category : #'instance creation' }
PlaidClient class >> development [
	^ self withUrl: DevelopmentUrl
]

{ #category : #accessing }
PlaidClient class >> developmentEnvironment [
	^ DevelopmentEnvironment
]

{ #category : #accessing }
PlaidClient class >> developmentUrl [
	^ DevelopmentUrl
]

{ #category : #defaults }
PlaidClient class >> endpointClass [
	^ PlaidEndpoint
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
	^ self withUrl: ProductionUrl
]

{ #category : #accessing }
PlaidClient class >> productionEnvironment [
	^ ProductionEnvironment
]

{ #category : #accessing }
PlaidClient class >> productionUrl [
	^ ProductionUrl
]

{ #category : #'instance creation' }
PlaidClient class >> sandbox [
	^ self withUrl: SandboxUrl
]

{ #category : #accessing }
PlaidClient class >> sandboxEnvironment [
	^ SandboxEnvironment
]

{ #category : #accessing }
PlaidClient class >> sandboxUrl [
	^ SandboxUrl
]

{ #category : #endpoints }
PlaidClient >> accounts [
	^ self > PlaidAccountsEndpoint
]

{ #category : #endpoints }
PlaidClient >> auth [
	^ self > PlaidAuthEndpoint
]

{ #category : #endpoints }
PlaidClient >> categories [
	^ self > PlaidCategoriesEndpoint
]

{ #category : #accessing }
PlaidClient >> clientName [
	^ clientName
]

{ #category : #accessing }
PlaidClient >> clientName: anObject [
	clientName := anObject
]

{ #category : #http }
PlaidClient >> configureHttpClient: http [
	super configureHttpClient: http.
	http
		headerAt: 'Plaid-Version' put: self class apiVersion
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

{ #category : #private }
PlaidClient >> initialize [
	super initialize.
	self contentWriter: [ :obj | ZnEntity json: obj asJson ]
]

{ #category : #endpoints }
PlaidClient >> institutions [
	^ self > PlaidInstitutionsEndpoint
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
	^ self > PlaidItemEndpoint 
]

{ #category : #endpoints }
PlaidClient >> transactions [
	^ self > PlaidTransactionsEndpoint  
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

{ #category : #execution }
PlaidClient >> validateResponse: aResponse [
	| error |

	aResponse isSuccess
		ifTrue: [ ^ self ].
	error := PJError fromJson: aResponse contents.
	PlaidResponseError
		withResponse: error;
		signal: error displayMessage
]
