running
tearDown
	super tearDown.
	self createdMorphs do: [ :each | each delete ].
	self mockHelper tearDown