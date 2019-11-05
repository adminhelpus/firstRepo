
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
		docker.withRegistry("https://registry-1.docker.io/v2/", "dockerhub") {
                dockerImage.push()
      	}
	}
}
