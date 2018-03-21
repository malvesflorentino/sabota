pipeline {
  agent any
  stages {
    stage('myStage'){
      steps {
        sh 'ls -l'
      }
    }
    stage('Build') {
      steps {
        sh '/bin/bash build/build.sh'
      }
    }
  }
}
