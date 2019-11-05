node(){
	stage('first'){
		deleteDir()
		def scmVars = checkout scm
      		REVISION = scmVars.GIT_COMMIT
      		ID = UUID.randomUUID().toString()[-12..-1]
      		TAG = "${REVISION[0..7]}-${ID}"
	}
	stage('second'){
		sh 'pwd'
	}
}
