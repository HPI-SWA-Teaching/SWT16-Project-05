issue accessing
getIssuesForMethod: methodName class: aClass andIsMeta: aBoolean
	| separator |
	aBoolean 
		ifTrue: [ separator := self class metaClassAndMethodSeparator ]
		ifFalse: [ separator := self class classAndMethodSeparator ].
	^ self getIssues select: [ :issue | 
		issue title includesSubString: '[', aClass, separator, methodName, ']' ]