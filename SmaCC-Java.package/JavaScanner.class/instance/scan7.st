generated
scan7
	[ 
	self step.
	currentCharacter = $*
		ifTrue: [ 
			[ 
			self step.
			currentCharacter = $* ] whileTrue.
			currentCharacter = $/
				ifTrue: [ ^ self recordAndReportMatch: #(104) ].
			^ self scan7 ] ] repeat