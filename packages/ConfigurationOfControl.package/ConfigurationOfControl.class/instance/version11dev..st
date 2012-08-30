versions
version11dev: spec
	<version: '1.1.dev' imports: #('1.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: 'stable version'.
		spec author: 'fbs'.
		spec timestamp: '08/30/2012 08:00'.
		spec
			package: 'Control' with: 'Control-fbs.19';
			package: 'ControlTests' with: 'ControlTests-fbs.15'. ].
		spec for: #'squeak' do: [ ].
		spec for: #'pharo-1.x' do: [
			spec
				package: 'ControlPharo' with: 'ControlPharo-fbs.1' ].
