testing
testEncodingNil
	| enc ret |
	enc := SoapSqEncoder new.
	
	ret := enc encodeSoapVariable: (SoapVariable name: 'auau' value: nil).
	self should: [ ret name = 'auau'].
	self should: [ (ret getAttributeNamed: 'xsi:null') = 1].
	self should: [ ret isEmptyBody].