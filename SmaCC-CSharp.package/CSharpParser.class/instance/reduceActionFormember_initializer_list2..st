generated-reduction actions
reduceActionFormember_initializer_list2: nodes
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 1) at: 1) to: (result at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 2).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 3).
	self addAll: ((nodes at: 1) at: 4) to: (result at: 4).
	self add: (nodes at: 2) to: (result at: 4).
	self
		addAll: (SmaCCParseNode collectionVariableIn: (nodes at: 3) collectionGetter: nil variableGetter: #identifier)
		to: (result at: 1).
	self
		addAll: (SmaCCParseNode collectionVariableIn: (nodes at: 3) collectionGetter: nil variableGetter: #equalToken)
		to: (result at: 2).
	self
		addAll: (SmaCCParseNode collectionVariableIn: (nodes at: 3) collectionGetter: nil variableGetter: #_value)
		to: (result at: 3).
	^ result