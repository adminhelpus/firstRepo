
node(){
	
	stage('first'){
		deleteDir()
	}
	stage('second'){
		sh 'pwd'
	}
	stage('Build') {
	    def scmVars = checkout scm
      	    image = docker.build("denshkadov/test")
    	}
	stage('Push'){
			withDockerRegistry([ credentialsId: "dockerhub", url: "" ]) {
          		sh 'docker push denshkadov/test'
          		
      	}
	}
}
