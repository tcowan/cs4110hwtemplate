// Jenkinsfile for Hello World in CS 4110
pipeline {
	agent any

	stages {
		stage('Build') {
			steps {
				echo 'Building..'
				sh 'cs4110helloworldbuild script ./helloworld'
				#sh 'cs4110helloworldbuild swift helloworld.swift'
				#sh 'cs4110helloworldbuild java "HelloWorld/HelloWorld.java"'
				#sh 'cs4110helloworldbuild c# "HelloWorld/HelloWorld.cs"'
			}
			post {
				failure {
					echo 'Sending console log to submitter'
					sh 'cs4110sendlog "Hello World Build failed"'
				}
			}
		}
		stage('Test') {
			steps {
				echo 'Testing..'
				sh 'cs4110cucumber'
			}
			post {
				always {
					echo 'Reporting to the student....'
					sh "cs4110report"
					echo 'Grading the assignment....'
					sh "cs4110grade"
				}
			}
		}
	}
}
