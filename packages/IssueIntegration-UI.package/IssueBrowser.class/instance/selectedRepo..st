accessing
selectedRepo: aSymbol	
	selectedRepo := aSymbol.
	self changed: #selectedRepo.
	self changed: #getIssues