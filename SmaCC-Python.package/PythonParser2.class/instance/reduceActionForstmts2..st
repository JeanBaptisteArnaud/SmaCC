generated-reduction actions
reduceActionForstmts2: nodes
	| result |
	result := PyStatementsNode new.
	result addObject: (nodes at: 1) to: result statements.
	^ result