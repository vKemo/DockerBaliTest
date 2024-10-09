pipeline {
    agent any

    stages {
         stage('Checkout Repository') {
            steps {
                git url: 'https://github.com/vKemo/DockerBaliTest/', branch: 'main'
            }
        }
       
        stage('Build Docker Image') {
            steps {
                script {
                    // Build Docker image
                    sh 'docker build -t my-script-runner .'
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    // Run the container with the built image
                    sh 'docker run my-script-runner'
                }
            }
        }
    }
}
