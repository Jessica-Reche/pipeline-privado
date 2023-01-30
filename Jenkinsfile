pipeline {
    agent any
     tools {nodejs "nodejs"}
    
    stages {
        stage('linter') {
            steps {
                sh 'npm install'
                sh 'npm run lint'
            }
        }
        stage('test') {
            steps {
                sh 'npm run test'
            }
        }
        stage('deploy') {
            steps {
                sh 'npm start'
                sh 'docker run -p 3000:8080 jolly-borg'
            }
        }
    }
}
