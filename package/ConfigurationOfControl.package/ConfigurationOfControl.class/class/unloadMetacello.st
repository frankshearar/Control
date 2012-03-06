unloading metacello
unloadMetacello
	Smalltalk at: #ConfigurationOfMetacello ifPresent: [:cls | cls unloadMetacello ]