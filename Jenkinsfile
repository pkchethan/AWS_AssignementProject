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
           bat 'docker run --name mysqlcont1 -p 3308:3306 -e MYSQL_ROOT_PASSWORD=root123 -e MYSQL_DATABASE=db_petadoption -d mysql'
		   bat 'docker network create mysqlnet1'
		   bat 'docker network list'
		   bat 'docker network connect mysqlnet1 mysqlcont1'
        }     
			
           stage('Build Sprint boot docker Image'){
           steps{
           bat 'docker build -t	 appimage1 .'
		   bat 'docker run --name appcont1 --net mysqlnet1 -p 8088:8085 -e MYSQL_HOST=mysqlcont1 -e MYSQL_DB_NAME=db_petadoption -e MYSQL_PORT=3306 -e MYSQL_USER=root -e MYSQL_PASSWORD=root123 appimage1'
		     bat 'docker ps -a'
			 
	   }
        }            
		
		
		}
 }
