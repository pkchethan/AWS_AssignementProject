pipeline {
    agent any
    tools{
    	maven 'maven 3_5_0'
    }
    stages {
        stage('Build Maven') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/pkchethan/AWS_AssignementProject']])
                bat 'mvn clean install'
            }
        }
        
        }
    }
