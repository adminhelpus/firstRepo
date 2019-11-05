def TAG
node(){
	TAG = "${[0..7]}-${ID}"
	stage('first'){
		deleteDir()
		
	}
	stage('second'){
		sh 'pwd'
	}

	stage('Build') {
    def scmVars = checkout scm
      		
      		
      		
    image = docker.build("${repoName}:${TAG}")
    	}

}
