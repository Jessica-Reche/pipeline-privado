pipeline {
    agent any 
    tools { nodejs "nodejs" }
    stages {
        stage('Linter') {
            steps {
                sh 'npm install'
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
            sh 'npm start'
            }
           
        }
    }
}
