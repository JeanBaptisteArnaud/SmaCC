generated-reduction actions
reduceActionForswitch_block3: nodes
	| result |
	result := JavaSwitchBlockNode new.
	result left: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result labels.
	result right: (nodes at: 3).
	^ result