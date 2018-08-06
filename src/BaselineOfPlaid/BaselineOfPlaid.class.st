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
			self setupDependenciesOn: spec.
			spec package: #Plaid with: [ spec requires: #('Unrest') ].
			spec group: 'default' with: #('Plaid') ]
]

{ #category : #baselines }
BaselineOfPlaid >> setupDependenciesOn: spec [
	spec baseline: 'Unrest' with: [ spec repository: 'github://grype/Unrest/src' ].
	spec
		configuration: 'Magritte3'
		with: [ spec
				versionString: #stable;
				repository: 'http://smalltalkhub.com/mc/Magritte/Magritte3/main/' ].
	spec
		configuration: 'Magritte3Addons'
		with: [ spec
				versionString: #stable;
				repository: 'http://smalltalkhub.com/mc/Magritte/Magritte3Addons/main/';
				loads: #('Json') ]
]
