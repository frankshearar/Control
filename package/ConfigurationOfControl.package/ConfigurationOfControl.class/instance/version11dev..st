versions
version11dev: spec
	<version: '1.1.dev' imports: #('1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: 'stable version'.
		spec author: 'fbs'.
		spec timestamp: '07/14/2012 21:37'.
		spec
			package: 'Control' with: 'Control-fbs.15';
			package: 'ControlTests' with: 'ControlTests-fbs.10'. ].
		spec for: #squeak do: [ ].
		spec for: #pharo do: [ ].
