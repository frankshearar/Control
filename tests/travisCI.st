| gitPath |
gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.

Metacello new
  configuration: 'Control';
  repository: 'filetree://', gitPath, '/Control/packages';
  load.

"Run the tests"
TravisCIHarness
  value: #( 'ConfigurationOfControl' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.
