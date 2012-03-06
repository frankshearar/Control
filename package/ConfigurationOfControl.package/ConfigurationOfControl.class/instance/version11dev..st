versions
version11dev: spec
	<version: '1.1dev' imports: #('1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: 'stable version'.
		spec author: 'nice'.
		spec timestamp: '06/03/2012 10:49'.
		spec
			package: 'Control' with: 'Control-fbs.11';
			package: 'ControlTests' with: 'ControlTests-fbs.8'. ].
		spec for: #squeak do: [ ].
		spec for: #pharo do: [ ].
