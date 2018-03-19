pipeline {
  agent any
  stages {
    stage('myStage'){
      steps {
        sh 'ls -la' 
      }
    }
    stage('Build') {
      steps { 
        sh 'kubectl cluster-info'; sh 'echo teste-jenkins' 
      }
    }
  }
}
