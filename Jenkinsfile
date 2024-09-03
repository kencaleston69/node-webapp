pipeline {
    agent {
        label 'worker'
    }
    stages {
        stage('Build') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'fafd03b9-3667-4e25-a3eb-19b36b096023', url: 'https://github.com/kencaleston69/node-webapp.git']])
                sh 'docker build -t ken .'
                sh 'docker run -d --name node-app -p 3000:3000 ken'
            }
        }
    }
}
