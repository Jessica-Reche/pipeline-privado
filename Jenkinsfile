pipeline {
    agent any 
    tools { nodejs "nodejs" }
    stages {
  
        stage('Linter') {
            steps {
                sh 'npm i'
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
                sh 'docker build -t my-node-app .'
                sh 'docker run -d -p 3000:3000 my-node-app'
            }
        }
    }
}
