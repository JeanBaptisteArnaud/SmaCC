generated
scanForToken
	self step.
	currentCharacter == $' ifTrue: [^self scan1].
	currentCharacter == $-
		ifTrue:
			[self step.
			currentCharacter == $> ifTrue: [^self recordAndReportMatch: #(8)].
			^self reportLastMatch].
	currentCharacter == $" ifTrue: [^self scan2].
	currentCharacter == $: ifTrue: [^self recordAndReportMatch: #(1)].
	currentCharacter == $[ ifTrue: [^self recordAndReportMatch: #(5)].
	currentCharacter == $] ifTrue: [^self recordAndReportMatch: #(4)].
	currentCharacter == $<
		ifTrue:
			[self step.
			currentCharacter == $<
				ifTrue:
					[self step.
					currentCharacter == $< ifTrue: [^self recordAndReportMatch: #(6)]].
			^self reportLastMatch].
	currentCharacter == $>
		ifTrue:
			[self step.
			currentCharacter == $>
				ifTrue:
					[self step.
					currentCharacter == $> ifTrue: [^self recordAndReportMatch: #(7)]].
			^self reportLastMatch].
	currentCharacter isWhitespace
		ifTrue:
			[[self recordMatch: #(12).
			self step.
			currentCharacter isWhitespace] whileTrue.
			^self reportLastMatch].
	(currentCharacter isLetter or: [currentCharacter == $_]) ifTrue: [^self scan3].
	^self reportLastMatch