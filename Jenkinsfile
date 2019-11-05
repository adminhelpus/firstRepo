def TAG
node(){
	TAG = "${REVISION[0..7]}-${ID}"
	stage('first'){
		deleteDir()
	}
	stage('second'){
		sh 'pwd'
	}
	stage('Build'){
		checkout scm
		def image = docker.build("test":${TAG})
	}
}
