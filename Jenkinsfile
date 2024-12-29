pipeline {
    agent any
    stages {
        stage ('Pull GitHub repo') {
            steps {
                git credentialsId: 'githubtoken', url: 'https://github.com/22127025/test-mmtnc.git'
            }
        }
        stage ('Build and push DockerHub repo') {
            steps {
                withDockerRegistry(credentialsId: 'dockerhubtoken', url: 'https://index.docker.io/v1/') {
                    bat 'docker build -t 22127025/mmtnc-project3:latest .'
                    bat 'docker push 22127025/mmtnc-project3:latest'
                }
            }
        }
    }
}