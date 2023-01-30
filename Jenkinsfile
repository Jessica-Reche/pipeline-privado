pipeline {
  agent {
    docker {
      image 'node:14'
    }
  }
  stages {
    stage('Build') {
      steps {
        sh 'npm install'
      }
    }
    stage('Test') {
      steps {
        sh 'npm test'
      }
    }
    stage('Deploy') {
      steps {
        sh 'docker run -p 8080:3000 my-node-app'
      }
    }
  }
}
