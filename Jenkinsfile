pipeline {
    agent any
    environment {
        IMAGE = "modassir7488/demo-cicd-1903"
        registryCredential = 'Dockerhub'
        dockerImage = ''
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
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
