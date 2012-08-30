baselines
baseline10: spec
	<version: '1.0-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://www.squeaksource.com/Control'.
		spec 
			package: 'Control';
			package: 'ControlTests' with: [
				spec requires: #('Control' )].
		spec
			group: 'default' with: #('Core' 'Tests');
			group: 'Core' with: #('Control');
			group: 'Tests' with: #('ControlTests') ].
	spec for: #'squeak' do: [ ].
	spec for: #'pharo' do: [
		spec
			package: 'ControlPharo'].