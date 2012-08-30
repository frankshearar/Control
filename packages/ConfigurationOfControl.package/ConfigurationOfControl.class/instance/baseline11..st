baselines
baseline11: spec
	<version: '1.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://www.squeaksource.com/Control'.
		spec 
			package: 'Control';
			package: 'ControlTests' with: [
				spec requires: #('Control' )].
		spec
			group: 'default' with: #('Core' 'Tests');
			group: 'Tests' with: #('ControlTests')].
	spec for: #'squeak' do: [
		spec
			group: 'Core' with: #('Control')].
	spec for: #'pharo' do: [
		spec
			package: 'ControlPharo'.
		spec
			group: 'Core' with: #('Control' 'ControlPharo')].