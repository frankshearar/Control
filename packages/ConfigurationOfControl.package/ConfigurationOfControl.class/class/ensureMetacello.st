private
ensureMetacello
	"Bootstrap Gofer (if necessary), load latest mcz file for ConfigurationOfMetacello (using old 
	 Gofer API), then load the latest version of Metacello itself."
	| meta |
	meta := 'ConfigurationOfMetacello-EstebanLorenzano.718'.
	Smalltalk at: #MetacelloProject ifAbsent: [
		"list of repositories to try, in case primary repository is not accessible"
		self bootstrapPackage: meta from: 'http://www.squeaksource.com/MetacelloRepository'.
		Smalltalk at: #ConfigurationOfMetacello ifPresent: [:config | config load].
		Smalltalk at: #MetacelloProject ifAbsent: [
			self bootstrapPackage: meta from: 'http://seaside.gemstone.com/ss/metacello'.
			Smalltalk at: #ConfigurationOfMetacello ifPresent: [:config | config load].
			Smalltalk at: #MetacelloProject ifAbsent: [self error: 'Couldn''t load Metacello']]].