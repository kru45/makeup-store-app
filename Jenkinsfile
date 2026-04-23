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
        stage('Build') {
            steps {
                // This 'ls' command will list everything in the current folder so we can see what's happening
                sh 'ls -R' 
        
                dir('src-app') {
                    sh 'npm install'
                    sh 'npm run build'
        }
    }
}
    }
}
