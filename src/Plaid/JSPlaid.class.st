"
I am a Plaid web client.

You can use me in Seaside components, much like JSLogger.

In order to use me, I have to be created first, using an instance of PlaidClient:

Example:
renderContentOn: html
	client := PlaidClient sandbox credentials: (PlaidCredentials new...); yourself.
	html script:
			((html javascript plaid
				create: client
				with: [ :builder | 
					builder
						at: #product putCollection: {'transactions'};
						at: #onLoad putAjaxCallback: [ self halt ];
						at: #onSuccess putAjaxCallback: [ :publicToken :meta | self halt ];
						at: #onExit putAjaxCallback: [ :err :meta | self halt ];
						at: #onEvent putAjaxCallback: [ :event :meta | self halt ] ]) call: 'open')
"
Class {
	#name : #JSPlaid,
	#superclass : #JSObject,
	#category : #'Plaid-Web'
}

{ #category : #'private-source' }
JSPlaid >> create: aPlaidClient with: aBuilderBlock [
	| builder |

	builder := PlaidLinkPropertyBuilder on: self renderContext.
	builder
		clientName: aPlaidClient clientName;
		env: aPlaidClient environment;
		key: aPlaidClient credentials publicKey.
	aBuilderBlock ifNotNil: [ :block | block cull: builder ].
	self call: 'create' with: builder data
]

{ #category : #printing }
JSPlaid >> javascriptContentOn: aStream [
	aStream nextPutAll: 'Plaid'
]
