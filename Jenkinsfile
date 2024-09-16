pipeline {
    agent {
        label 'discovery'
    }

    stages {

        stage('GIT SCM') {
           steps {
                git 'https://github.com/Ashishhole18/discovery-service'
           }
        }
        stage('Package Application') {
            steps {
                 sh 'mvn -T 1C package'
            }

        }
        stage('Dockerize App') {
            steps {
                sh 'docker build -t discovery-service .'
            }
        }
        stage ('Run Container') {
            steps {
                sh 'docker run -d -p 8761:8761 discovery_service'
            }
        }

    }



}