versions
version10: spec
	<version: '1.0' imports: #('1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: 'stable version'.
		spec author: 'fbs'.
		spec timestamp: '06/03/2011 10:47'.
		spec
			package: 'Control' with: 'Control-fbs.11';
			package: 'ControlTests' with: 'ControlTests-fbs.8'. ].
		spec for: #squeak do: [ ].
		spec for: #pharo do: [ ].
