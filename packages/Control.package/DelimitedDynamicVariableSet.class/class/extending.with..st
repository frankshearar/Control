instance creation
extending: aDynvarSet with: dynVar
	^ self new variables: aDynvarSet variables , {dynVar}.