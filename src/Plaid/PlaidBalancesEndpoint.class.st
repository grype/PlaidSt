Class {
	#name : #PlaidBalancesEndpoint,
	#superclass : #PlaidAccountsEndpoint,
	#instVars : [
		'accountIds'
	],
	#category : #'Plaid-Client'
}

{ #category : #accessing }
PlaidBalancesEndpoint class >> urlOn: aClient [
	^ (super urlOn: aClient) / 'balance'
]

{ #category : #api }
PlaidBalancesEndpoint >> list [
	| endpoint |

	endpoint := (self / 'get') authenticated.
	accountIds isEmptyOrNil ifFalse: [ endpoint at: 'account_ids' put: accountIds ].
	^ PJAccountsResponse fromJson: endpoint post
]
