generated
scan14
	self step.
	currentCharacter == $c
		ifTrue:
			[self step.
			(currentCharacter between: $A and: $Z) ifTrue: [^self scan13].
			^self reportLastMatch].
	currentCharacter == $x
		ifTrue:
			[self step.
			(currentCharacter isHexDigit or: [currentCharacter between: $a and: $f]) ifTrue: [^self scan13].
			^self reportLastMatch].
	^self scan13