# PlaidSt
Pharo Smalltalk Bindings for the Plaid API (https://www.plaid.com/docs).

The whole available Plaid API is defined in the `PlaidClient` and various subclasses of `PlaidEndpoint`. Link support is provided via `JSPlaid`.

Uses [Unrest](https://github.com/grype/unrest), [Seaside](https://github.com/SeasideSt/Seaside) for providing Link support, and [Magritte](https://github.com/magritte-metamodel/magritte) for models.

### Installation
``` smalltalk
Metacello
	new
		baseline: 'Plaid';
		repository: 'github://grype/PlaidSt/src';
		onConflictUseLoaded;
		load.
```

Note: PlaidSt depends on Magritte3 and Magritte3AddOns. Those packages haven't been updated for Pharo7 and will ultimately result in some issues during load. For that reason, BaselineOfPlaid pins down their versions, and pulls in the latest Seaside from github. It is also for that reason that the Metacello script above is instructed to #onConflictUseLoaded.

### Versioning
Currently supported API version is 2018-05-22, and is defined in:
```smalltalk
PlaidClient class>>apiVersion
	^ '2018-05-22'
```

### Basic Usage
``` smalltalk
"Creating an instance of PlaidClient"
client := PlaidClient sandbox
    clientName: 'Acme';
	credentials: (PlaidCredentials new
		publicKey: '...';
		secret: '...';
		clientId: '...';
		yourself);
	yourself.

"Institutions"
client institutions listFrom: 0 count: 100.
client institutions search: 'Platypus' products: nil.
client institutions institutionWithId: 'ins_10'.

"Public tokens"
client publicToken create.
client publicToken exchange: 'public-sandbox-...'.

"Other fun things which should be self-explanatory"
client accounts list.
client item list.
client transactions 
    startDate: Date today - 1 days; 
    endDate: Date today; 
    accountIds: nil; 
    count: 300; 
    offset: 0; 
    list.
```

API calls are synchronous and return responses that are defined in subclasses of `PlaidResponse`. Fork those calls if you'd like things asynchronous.

API calls may also raise an error, which could be at the transport, SDK or API level. You may want to wrap those API calls in a block and handle errors via #on:do:

```smalltalk
[client item list] on: Error do: [...]
```

### Coverage

<img src="https://github.com/grype/PlaidSt/raw/master/resources/plaid-map.png" width="50%" title="API Coverage Map">