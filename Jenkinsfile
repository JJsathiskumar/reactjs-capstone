pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout your code from your version control system
                git 'your_repository_url'
            }
        }

        stage('Install Dependencies') {
            steps {
                // Install Node.js and npm
                script {
                    def nodejsInstallation = tool 'NodeJS'
                    env.PATH = "${nodejsInstallation}/bin:${env.PATH}"
                }
                // Install npm dependencies
                sh 'npm install'
            }
        }

        stage('Build') {
            steps {
                // Build your React application
                sh 'npm run build'
            }
        }

        stage('Deploy') {
            steps {
                // You can add deployment steps here
                // For example, deploying to a web server or a cloud platform
                // For simplicity, let's assume you're copying the build artifacts to a server
                sh 'rsync -avz --delete ./build/ user@your-server:/path/to/deploy'
            }
        }
    }
}

