user interface signals
createIssue
	IIIssueManagement createIssueWithTitle: self title 
		body: self body
		assignee: self assignee
		labels: self labelsSelected 
		method: self methodName 
		class: self issueClassName 
		isMeta: self issueClassIsMeta 
		andPackage: self packageName.
	self close