pipeline {
    agent any

    stages {

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t makeup-store-app .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker rm -f makeup-store-container || true'
                sh 'docker run -d -p 3001:80 --name makeup-store-container makeup-store-app'
            }
        }
    }
}
