
node(){
	
	def TAG
	def IMAGE
	
	stage('Checkout') {
        deleteDir() // Workdir cleanup

        def scmVars = checkout scm
        REVISION = scmVars.GIT_COMMIT
        // there is no way to configure PreBuildMerge in MultiBranch pipeline job, so we could use such workaround
        // https://support.cloudbees.com/hc/en-us/articles/226122247-How-to-Customize-Checkout-for-Pipeline-Multibranch-
        // but PreBuildMerge sets GIT_COMMIT variable to HEAD commit of the merged branch :(
        if (!env.BRANCH_NAME.startsWith("hotfix/")) {
           sh 'git merge -s recursive --no-ff origin/master'
        }
		echo ${currentBuild.number}
        TAG = "${env.BUILD_NUMBER}"
		echo ${TAG}
        IMAGE = "denshkadov/test:${TAG}"
    }

	stage('Build') {
	    
		image = docker.build(${IMAGE})
    	}
	stage('Push'){
			withDockerRegistry([ credentialsId: "dockerhub", url: "" ]) {
			docker.image("${IMAGE}").push()	
				//image.push()
				         		
      	}
		//buildAddUrl(title: 'Deploy', url: "/job/firstRepo/job/Deploy/job/test/parambuild/")
	}
}
