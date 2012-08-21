private
ensureMetacelloBaseConfiguration
	Smalltalk
		at: #MetacelloBaseConfiguration
		ifAbsent: [ 
			self bootstrapPackage: 'Metacello-Base-DaleHenrichs.19' from: 'http://seaside.gemstone.com/ss/metacello']