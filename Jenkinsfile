pipeline {
    agent any

    stages {

        stage('Build React') {
            agent {
                docker {
                    image 'node:18'
                }
            }
            steps {
                dir('src-app') {
                    sh 'npm install'
                    sh 'npm run build'
                }
            }
        }

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
