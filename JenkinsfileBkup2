pipeline{
	agent {
		docker{
			image 'maven:latest'
			args '-v $HOME/.m2:/root/.m2:z -u root'
            reuseNode true
		}
		
	}
	
	environment{
		VERSION='0.5.2'
		REL_VER ='LINUX_GIT_TEST_1'
	}
	
	stages{
		stage('build'){
			steps{
				sh ''' 
					echo "This is Build with version as ${VERSION} and release as ${REL_VER}"
					java -version
					mvn -version
					ls
					mvn clean package
					
				
				'''
				
			
			
			}
		
		
						}
	stage('test'){
			steps{
				sh ''' 
					echo "This is TEST with version as ${VERSION} and release as ${REL_VER} updated"
				'''
			}
					}					
		}

		post
		{
			always
			{
			cleanWs()
			}
		}

}

