generated-reduction actions
reduceActionForprint_stmt1: nodes
	| result |
	result := PyPrintNode new.
	result printToken: (nodes at: 1).
	result arguments: (nodes at: 2).
	^ result