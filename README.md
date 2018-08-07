# PlaidSt
Plaid client for Pharo

## Installation
``` smalltalk
Metacello
	new
		baseline: 'Plaid';
		repository: 'github://grype/PlaidSt/src';
		onConflictUseLoaded;
		load.
```

Note: PlaidSt depends on Magritte3 and Magritte3AddOns. Those packages haven't been updated for Pharo7 and will ultimately result in some issues during load. For that reason, BaselineOfPlaid pins down their versions, and pulls in the latest Seaside from github. It is also for that reason that the Metacello script above is instructed to #onConflictUseLoaded.
