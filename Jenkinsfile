
node(){
	
	stage('first'){
		deleteDir()
	}
	stage('second'){
		sh 'pwd'
	}
	stage('Build') {
	    def scmVars = checkout scm
      	    image = docker.build("test")
    	}
	stage('Push'){
		docker.withRegistry("https://hub.docker.com/r/denshkadov/fortest", "dockerhub") {
                dockerImage.push()
      	}
	}
}
