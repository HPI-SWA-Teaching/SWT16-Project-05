initialize-release
testLabelsSelected
	| labelList selectedLabels |
	labelList := self subject findByName: 'labels'.
	selectedLabels := OrderedCollection new.
	selectedLabels 
		add: 'Label1';
		add: 'Label2'.
	self subject model labelsSelected: selectedLabels.
	self assert: selectedLabels equals: self subject model labelsSelected