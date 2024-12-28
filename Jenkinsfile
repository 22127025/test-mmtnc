pipeline {
    agent any
    stages {
        stage ('Pull GitHub repo') {
            steps {
                git credentialsId: 'githubtoken', url: 'https://github.com/22127025/test-mmtnc.git'
            }
        }
    }
}