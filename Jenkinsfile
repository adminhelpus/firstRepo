def TAG
node(){
	TAG = "${REVISION[0..7]}-${ID}"
	stage('first'){
		deleteDir()
		
	}
	stage('second'){
		sh 'pwd'
	}

	stage('Build') {
    def scmVars = checkout scm
      		REVISION = scmVars.GIT_COMMIT
      		ID = UUID.randomUUID().toString()[-12..-1]
      		TAG = "${REVISION[0..7]}-${ID}"  	
    image = docker.build("${repoName}:${TAG}")
    	}

}
