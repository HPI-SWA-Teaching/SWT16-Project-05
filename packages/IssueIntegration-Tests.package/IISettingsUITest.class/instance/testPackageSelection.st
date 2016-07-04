as yet unclassified
testPackageSelection
	self packageList changeModelSelection: (self packageList getList 
		indexOf: (self packageList getList 
			detect: [ :package | package = 'IssueIntegration-Tests'])).
	self assert: (self subject findByName: 'projectIdInput') text equals: GitHubApiServer repoSlug.
	self assert: (self subject findByName: 'usernameInput') text equals: GitHubApiServer repoOwner.
	self assert: (self subject findByName: 'loginKeyInput') text equals: 'i-am-not-a-key'