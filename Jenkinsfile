pipeline {
    agent any

    environment {
        REGISTRY = 'sunnytrainer'
        IMAGE = 'full-app-img'
        TAG = 'latest'
        CREDENTIALS_ID = 'docker-hub-credentials'
        CONTAINER_NAME = 'webapp'
    }

    stages {
        stage('Clone Code') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Sunny-Trainer/docker-jenkin-assignment.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("${REGISTRY}/${IMAGE}:${TAG}")
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                script {
                    docker.withRegistry('', "${CREDENTIALS_ID}") {
                        dockerImage.push()
                    }
                }
            }
        }

        stage('Deploy Container') {
            steps {
                sh """
                docker rm -f ${CONTAINER_NAME} || true
                docker run -d --name ${CONTAINER_NAME} -p 9090:8080 ${REGISTRY}/${IMAGE}:${TAG}
                """
            }
        }
    }
}

