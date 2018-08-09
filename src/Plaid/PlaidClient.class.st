"
I am a RESTful API client for Plaid (https://plaid.com/).

I employ a builder-like interface to create PlaidEndpoint's, which are used to drive all of my communication with the REST service.

Before making any requests, however, I should be configured with a baseURL and an instance of PlaidCredentials, both of which are used to configure HTTP requests for each endpoint. See below for an example on how to create an instance of me.

Example:
   | client |
	""create client""
	client := PlaidClient sandbox
		clientName: 'Acme' 
		credentials: (PlaidCredentials new publicKey: ''; secret: ''; clientID: ''; yourself).
	
	""Institutions""
	client institutions getFrom: 0 count: 100.
	client institutions search: 'Platypus' products: nil.
	client institutions getById: 'ins_10'.

	""Public tokens""
	client publicToken create.
	client publicToken exchange: 'public-sandbox-...'.

	""Other fun things which should be self-explanatory""
	client accounts get.
	client item get.
	client transactions get: [:endpoint | 
 	   endpoint startDate: Date today - 1 days; 
  		  	endDate: Date today; 
    		accountIds: nil; 
    		count: 300; 
    		offset: 0].

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

{ #category : #'class initialization' }
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
PlaidClient >> assetReport [
	^ self > PlaidAssetReportEndpoint   
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

{ #category : #endpoints }
PlaidClient >> identity [
	^ self > PlaidIdentityEndpoint   
]

{ #category : #endpoints }
PlaidClient >> income [
	^ self > PlaidIncomeEndpoint 
]

{ #category : #initialization }
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

{ #category : #http }
PlaidClient >> validateResponse: aResponse [
	| error |

	aResponse isSuccess
		ifTrue: [ ^ self ].
	error := PlaidError fromJson: aResponse contents.
	PlaidResponseError
		withResponse: error;
		signal: error displayMessage
]
