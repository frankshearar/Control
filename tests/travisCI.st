| gitPath |
gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.

Metacello new
  baseline: 'Control';
  repository: 'filetree://', gitPath, '/Control/packages';
  get.

Metacello new
  baseline: 'Control';
  repository: 'filetree://', gitPath, '/Control/packages';
  load: 'TravisCI'.

"Run the tests"
TravisCIHarness
  value: #( 'ConfigurationOfControl' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.
