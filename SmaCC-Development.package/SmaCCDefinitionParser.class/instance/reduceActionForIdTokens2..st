generated-reduction actions
reduceActionForIdTokens2: nodes
	^ (nodes at: 1)
		add: (nodes at: 2) value;
		yourself