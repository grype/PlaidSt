Class {
	#name : #BaselineOfPlaid,
	#superclass : #BaselineOf,
	#category : #BaselineOfPlaid
}

{ #category : #baselines }
BaselineOfPlaid >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ 
			spec repository: 'github://grype/PlaidSt/src'.
			self setupDependenciesOn: spec.
			spec package: #Plaid with: [ spec requires: #('Ethel' 'Seaside3' 'Magritte3' 'Magritte3AddOns') ].
			spec group: 'default' with: #('Plaid') ]
]

{ #category : #baselines }
BaselineOfPlaid >> setupDependenciesOn: spec [
	spec baseline: 'Ethel' with: [ spec repository: 'github://grype/Ethel' ].
	spec baseline: 'Seaside3' with: [ spec repository: 'github://SeasideSt/Seaside:master/repository' ].
	spec
		configuration: 'Magritte3'
		with: [ spec
				versionString: '3.5.2';
				repository: 'http://smalltalkhub.com/mc/Magritte/Magritte3/main/' ].
	spec
		configuration: 'Magritte3AddOns'
		with: [ spec
				versionString: #development;
				repository: 'http://smalltalkhub.com/mc/Magritte/Magritte3Addons/main/';
				loads: #('Json') ]
]
