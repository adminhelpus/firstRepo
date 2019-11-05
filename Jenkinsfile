
node(){
	

	stage('Build') {
	    def scmVars = checkout scm
      	    image = docker.build("denshkadov/test:latest")
    	}
	stage('Push'){
			withDockerRegistry([ credentialsId: "dockerhub", url: "" ]) {
			docker.image("${image}").push()	
				//image.push()
				         		
      	}
		buildAddUrl(title: 'Deploy', url: "/job/firstRepo/job/Deploy/job/test/parambuild/")
	}
}
