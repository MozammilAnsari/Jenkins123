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
                    dockerImage = sh(script: "sudo docker build -t ${IMAGE}:latest .", returnStdout: true).trim()
                }
            }
        }
        stage('Push image to docker hub') {
            steps {
                script {
                    sh "sudo docker login -u ${DOCKERHUB_USERNAME} -p ${DOCKERHUB_PASSWORD}"
                    sh "sudo docker push ${IMAGE}:latest"
                }
            }
        }
        stage('run the docker container') {
            steps {
                sh 'sudo docker run -d -p 80:80 --name demo-app ${IMAGE}:latest'
            }
        } 
    }
}

