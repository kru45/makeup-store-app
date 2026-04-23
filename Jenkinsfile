pipeline {
    agent any
    stages {
        stage('Build React') {
            steps {
                dir('src-app') {
                    sh 'npm install'
                    sh 'npm run build'
                }
            }
        }
        stage('Build Docker Image') {
            steps {
                // This builds your container using the Dockerfile in the root
                sh 'docker build -t makeup-store:latest .'
            }
        }
    }
}
