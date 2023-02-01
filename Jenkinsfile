pipeline {
    agent any 
    tools { nodejs "nodejs" }
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t my-node-app .'
            }
        }
        stage('Linter') {
            steps {
                sh 'npm run lint'
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
