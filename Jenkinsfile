
node(){
	
	stage('first'){
		deleteDir()
	}
	stage('second'){
		sh 'pwd'
	}
	stage('Build') {
	    def scmVars = checkout scm
      	    image = docker.build("denshkadov/test:latest")
    	}
	stage('Push'){
			withDockerRegistry([ credentialsId: "dockerhub", url: "" ]) {
				dockerImage.push()
				//sh 'docker push denshkadov/test'
          		
      	}
	}
}
