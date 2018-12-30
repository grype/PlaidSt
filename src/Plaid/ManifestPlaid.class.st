"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestPlaid,
	#superclass : #PackageManifest,
	#category : #'Plaid-Manifest'
}

{ #category : #'code-critics' }
ManifestPlaid class >> ruleNoClassCommentRuleV1TODO [
	^ #(#(#(#RGClassDefinition #(#PlaidCategory)) #'2018-12-29T23:33:57.725708-08:00') #(#(#RGClassDefinition #(#PlaidAccount)) #'2018-12-29T23:33:57.725967-08:00') #(#(#RGClassDefinition #(#PlaidInstitution)) #'2018-12-29T23:33:57.726165-08:00') #(#(#RGClassDefinition #(#PlaidAccountBalance)) #'2018-12-29T23:33:57.726358-08:00') )
]
