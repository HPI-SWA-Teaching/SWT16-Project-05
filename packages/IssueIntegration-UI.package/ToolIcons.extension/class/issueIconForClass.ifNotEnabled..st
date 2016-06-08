*IssueIntegration-UI-icons
issueIconForClass: aClassNameSymbol ifNotEnabled: aBlock
	| issueManagement |
	issueManagement := IssueManagement getIssueManagementFor: aClassNameSymbol.
	issueManagement = '' ifTrue: [^ aBlock value].
	
	(issueManagement getMyIssuesForClass: aClassNameSymbol) ifNotEmpty: [ ^  #bugErrorIcon ].
      (issueManagement getMyIssuesForClass: aClassNameSymbol) ifNotEmpty: [ ^ #bugIcon ].

	^ aBlock value.