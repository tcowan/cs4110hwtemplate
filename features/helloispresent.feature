Feature: Script must be present and be executable
	Scenario: hello must be found
		When I run `getfile` 
		Then a file named "../../bin/helloworld" should exist
		Then 25 points are awarded

	Scenario: hello must be executable
		When I run `helloworld` 
		Then 25 points are awarded
