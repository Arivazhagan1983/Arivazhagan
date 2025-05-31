pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git branch: 'dev', url: 'git@github.com:Arivazhagan1983/Arivazhagan.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'chmod +x build.sh && ./build.sh'
            }
        }

        stage('Deploy Container') {
            steps {
                sh 'chmod +x deploy.sh && ./deploy.sh'
            }
        }
    }
}
