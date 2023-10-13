pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'python-image'
        DOCKERFILE = 'Dockerfile'  
    }

    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[url: 'https://github.com/ankit0906/multi']]])
            }
        }
        stage('Install Dependencies') {
            steps {
                sh 'yum install python -y'
                sh 'yum install pip -y' 
            }
        }
      
        stage('Build Docker Image') {
            steps {
                script {
                      sh 'docker build -t Dockerfile'

                }
            }
       }
    }
}
