running
testIsValidIssue
	self assert: IIGitHubIssue new isValidIssue.
	self assert: false equals: IIEmptyIssue new isValidIssue.
	self should: [IIIssue new isValidIssue] raise: SubclassResponsibility