Class {
	#name : #PJAssetReportAccount,
	#superclass : #PJAccount,
	#instVars : [
		'daysAvailable',
		'historicalBalances',
		'owners',
		'transactions'
	],
	#category : #'Plaid-Models'
}

{ #category : #accessing }
PJAssetReportAccount >> daysAvailable [
	^ daysAvailable
]

{ #category : #accessing }
PJAssetReportAccount >> daysAvailable: anObject [
	daysAvailable := anObject
]

{ #category : #description }
PJAssetReportAccount >> daysAvailableDescription [
	<magritteDescription>
	^ MANumberDescription new
		label: 'Days Available';
		accessor: #daysAvailable;
		jsonName: #days_available;
		yourself
]

{ #category : #accessing }
PJAssetReportAccount >> historicalBalances [
	^ historicalBalances
]

{ #category : #accessing }
PJAssetReportAccount >> historicalBalances: anObject [
	historicalBalances := anObject
]

{ #category : #description }
PJAssetReportAccount >> historicalBalancesDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Historical Balances';
		accessor: #historicalBalances;
		jsonName: #historical_balances;
		classes: {PJAccountHistoricalBalance};
		beOrdered;
		beOptional;
		yourself
]

{ #category : #accessing }
PJAssetReportAccount >> owners [
	^ owners
]

{ #category : #accessing }
PJAssetReportAccount >> owners: anObject [
	owners := anObject
]

{ #category : #description }
PJAssetReportAccount >> ownersDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Owners';
		accessor: #owners;
		jsonName: #owners;
		classes: {PJIdentity};
		beOrdered;
		beOptional;
		yourself
]

{ #category : #accessing }
PJAssetReportAccount >> transactions [
	^ transactions
]

{ #category : #accessing }
PJAssetReportAccount >> transactions: anObject [
	transactions := anObject
]

{ #category : #description }
PJAssetReportAccount >> transactionsDescription [
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Transactions';
		accessor: #transactions;
		jsonName: #transactions;
		classes: {PJAssetReportTransaction};
		beOrdered;
		beOptional;
		yourself
]
