pipeline {
    agent any
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
                sh 'npm run build'
                sh 'docker run -p 3000:8080 jolly-borg'
            }
        }
    }
}
