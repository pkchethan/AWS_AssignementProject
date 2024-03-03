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
           bat 'docker run --name mysqlcontnew -p 3308:3306 -e MYSQL_ROOT_PASSWORD=root123 -e MYSQL_DATABASE=db_petadoption -d mysql'
		   bat 'docker network create mysqlnetnew'
		   bat 'docker network list'
		   bat 'docker network connect mysqlnetnew mysqlcontnew'
        }     
			}
           stage('Build Sprint boot docker Image'){
           steps{
           bat 'docker build -t	 appimagenew .'
		   bat 'docker run --name appcontnew --net mysqlnetnew -p 8090:8085 -e MYSQL_HOST=mysqlcontnew -e MYSQL_DB_NAME=db_petadoption -e MYSQL_PORT=3306 -e MYSQL_USER=root -e MYSQL_PASSWORD=root123 appimagenew'
		   bat 'docker ps -a'
			 
	   }
        }            
		
		
		}
 }
