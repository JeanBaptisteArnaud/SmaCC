accessing
removeTransformation: aSmaCCAbstractRewrite
	rewrites remove: aSmaCCAbstractRewrite ifAbsent: [].
	aSmaCCAbstractRewrite parent: nil.
	self modified