pipeline {
    environment {
        IMAGE = "modassir7488/demo-jenkins"
        registryCredential = 'Dockerhub'
        dockerImage = ''
    }
    agent any
    stages {
        stage('checkout') {
            steps {
                git branch: 'main',
                url: 'https://github.com/MozammilAnsari/Jenkins123.git'
            }
        }
        stage('Build') {
            steps {
                script {
                    dockerImage = docker.build "${IMAGE}:1"
                }
            }
        }
        stage('Push image to docker hub') {
            steps {
                script {
                    docker.withRegistry( '', registryCredential ) { 
                        dockerImage.push() 
                    }
                }
            }
        }

        stage('Start Container') {
            steps {
                sh 'chmod +x start_container.sh'
                sh 'start_container.sh'
            }
        }
        stage('Run Tests') {
            steps {
                echo "Run Step"
            }
        }
        stage('Stop Container') {
            steps {
                sh 'chmod +x stop_container.sh'
                sh 'stop_container.sh'
            }
        }
    }
}


