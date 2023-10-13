pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'python-image'
        DOCKERFILE = 'Dockerfile' 
        DOCKER_REGISTRY_CREDENTIALS = credentials('ankitdockerhub') 
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
      
        stage('Run Unit Tests') {
            steps {
                
                sh 'running unit test'
            }
        }
    }
       stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image
                    def dockerImage = docker.build(env.DOCKER_IMAGE, "--file ${env.DOCKERFILE} .")

                    // Tag the image (optional)
                    dockerImage.tag("${env.DOCKER_IMAGE}:latest")

                }
            }
       }

}
