pipeline {
    agent any
    
    environment {
        IMAGE = "modassir7488/demo-jenkins"
        registryCredential = 'Dockerhub'
        dockerImage = '' // You can assign a value here if needed
    }
    
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', // Check if 'main' is the correct branch name
                url: 'https://github.com/krishnagopika/1903-jenkins.git'
            }
        }
        
        stage('Build') {
            steps {
                script {
                    // Docker build command
                    sh 'docker build -t ${IMAGE}:latest .'
                }
            }
        }
        
        stage('Push image to Docker Hub') {
            steps {
                script {
                    // Docker push command
                    sh 'docker push ${IMAGE}:latest'
                }
            }
        }
        
        stage('Run the Docker container') {
            steps {
                script {
                    // Docker run command
                    sh 'docker run -d -p 3000:3000 --name demo-app ${IMAGE}:latest'
                }
            }
        } 
    }
}
