pipeline {
    agent {
        label 'worker'
    }
    stages {
        stage('Pull') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'fafd03b9-3667-4e25-a3eb-19b36b096023', url: 'https://github.com/kencaleston69/node-webapp.git']])
            }
        }
        stage('Build') {
            steps {
                sh 'docker build -t ken_pipe .'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker run -d --name node-app -p 8080:3000 ken_pipe'
            }
        }
    }
}

