pipeline {
    agent any
    
    tools{
        maven "Maven"
    }

    stages {
	
		stage("Checkout code"){
			steps
			{
				checkout([$class: 'GitSCM', branches: [[name: '*/jenkinsPipeline']], extensions: [], userRemoteConfigs: [[credentialsId: 'fdff78dd-6e3e-44e2-9d83-87698ec02474', url: 'https://git.nagarro.com/GITG00641/Java/apoorva-gholak.git']]])
				echo 'Check Out'
			}
        }
        stage('Clean') {
            steps {
                bat 'mvn -f pom.xml clean'
                echo 'Cleaning..'
            }
        }
        stage('Compile') {
            steps {
                bat 'mvn -f pom.xml compile'
                echo 'Compiling..'
            }
        }
        stage('Test') {
            steps {
                bat 'mvn -f pom.xml test'
                echo 'Testing..'
            }
        }
        stage('Packaging') {
            steps {
                bat 'mvn -f pom.xml package'
                echo 'Packageing..'
            }
        }
        stage('Install') {
            steps {
                bat 'mvn -f pom.xml install'
                echo 'Installing..'
            }
        }
        
    }
    
}    

