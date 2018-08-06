Class {
	#name : #PlaidAssetReportAccount,
	#superclass : #PlaidAccount,
	#instVars : [
		'daysAvailable',
		'historicalBalances',
		'owners',
		'transactions'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PlaidAssetReportAccount >> daysAvailable [
	^ daysAvailable
]

{ #category : #accessing }
PlaidAssetReportAccount >> daysAvailable: anObject [
	daysAvailable := anObject
]

{ #category : #description }
PlaidAssetReportAccount >> daysAvailableDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Days Available';
		accessor: #daysAvailable;
		jsonName: #days_available;
		yourself
]

{ #category : #accessing }
PlaidAssetReportAccount >> historicalBalances [
	^ historicalBalances
]

{ #category : #accessing }
PlaidAssetReportAccount >> historicalBalances: anObject [
	historicalBalances := anObject
]

{ #category : #description }
PlaidAssetReportAccount >> historicalBalancesDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Historical Balances';
		accessor: #historicalBalances;
		jsonName: #historical_balances;
		classes: {PlaidAccountHistoricalBalance};
		beOrdered;
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidAssetReportAccount >> owners [
	^ owners
]

{ #category : #accessing }
PlaidAssetReportAccount >> owners: anObject [
	owners := anObject
]

{ #category : #description }
PlaidAssetReportAccount >> ownersDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Owners';
		accessor: #owners;
		jsonName: #owners;
		classes: {PlaidIdentity};
		beOrdered;
		beOptional;
		yourself
]

{ #category : #accessing }
PlaidAssetReportAccount >> transactions [
	^ transactions
]

{ #category : #accessing }
PlaidAssetReportAccount >> transactions: anObject [
	transactions := anObject
]

{ #category : #description }
PlaidAssetReportAccount >> transactionsDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Transactions';
		accessor: #transactions;
		jsonName: #transactions;
		classes: {PlaidAssetReportTransaction};
		beOrdered;
		beOptional;
		yourself
]
