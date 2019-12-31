*Supreme-Giggle
weekIndexOfYear
	| weeks |
	weeks := OrderedCollection new.
	self year asYear weeksDo: [ :w | weeks add: w ].
	^ weeks indexOf: self asWeek