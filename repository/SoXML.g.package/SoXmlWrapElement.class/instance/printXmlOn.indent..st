printing
printXmlOn: aStream indent: level 
	self isXmlPrintable
		ifFalse: [^ self].
	level
		timesRepeat: [aStream space].
	self printXmlHeaderOn: aStream.
	self printXmlContentsOn: aStream indent: level.
	self printXmlFooterOn: aStream.
	aStream cr