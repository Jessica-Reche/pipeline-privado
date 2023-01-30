pipeline {
    agent { label 'nodejs'}
  stages {
    stage('linter') {
      steps {
        sh 'npm install',
        sh 'npm run lint'
      }
    }
    stage('Test') {
      steps {
        sh 'npm test'
      }
    }
    stage('Deploy') {
      agent {
        docker {
          image 'node:14-alpine',
          label 'nodejs',
           args '-p 8080:3000 -v /tmp:/tmp'

        }
      }
        steps {
            sh 'npm install',
            sh 'npm start'
        }
    }
  }
}
