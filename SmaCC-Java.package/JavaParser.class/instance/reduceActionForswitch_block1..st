generated-reduction actions
reduceActionForswitch_block1: nodes
	| result |
	result := JavaSwitchBlockNode new.
	result left: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result statementGroups.
	result addNodes: ((nodes at: 3) at: 1) to: result labels.
	result right: (nodes at: 4).
	^ result