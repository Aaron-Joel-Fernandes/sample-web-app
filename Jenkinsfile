pipeline {
    agent {
        Docker {
            image 'node:19-alpine' 
            args '-p 3000:3000' 
        }
    }
    stages {
        stage('Install') { 
            steps {
                sh 'npm install' 
            }
        }
    }
}

