generated-reduction actions
reduceActionForglobal_stmt1: nodes
	| result |
	result := PyGlobalNode new.
	result globalToken: (nodes at: 1).
	result names: (nodes at: 2).
	^ result