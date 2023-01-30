pipeline {
    agent any
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
            agent {
                docker {
                    image 'node:8.9.4'
                    args '-p 8080:3000'
                }
            }
            steps {
          
                sh 'npm run start'
            }
           
        }
    }
}
