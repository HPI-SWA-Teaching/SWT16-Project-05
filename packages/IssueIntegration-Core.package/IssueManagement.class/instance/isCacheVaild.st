caching
isCacheVaild

	^ self cacheDatetime notNil and: [(DateAndTime totalSeconds -  self cacheDatetime) < 60]