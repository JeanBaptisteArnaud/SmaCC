generated-reduction actions
reduceActionFormember_initializer1: nodes
	| result |
	result := CSMemberInitializerNode new.
	result identifier: (nodes at: 1).
	result equalToken: (nodes at: 2).
	result _value: (nodes at: 3).
	^ result