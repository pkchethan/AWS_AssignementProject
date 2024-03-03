pipeline {
    agent any
    
    stages {
        stage('Build Maven') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/pkchethan/AWS_AssignementProject']])
                bat 'mvn clean install'
            }
			}
			stage('Build MySQL docker Image'){
           steps{
           bat 'docker run --name mysqlcontnew -p 3325:3306 -e MYSQL_ROOT_PASSWORD=root123 -e MYSQL_DATABASE=db_petadoption -d mysql'
		   bat 'docker network create mysqlnetnew'
		   bat 'docker network list'
		   bat 'docker network connect mysqlnetnew mysqlcontnew'
        }     
			}
                   
		
		
		}
 }
