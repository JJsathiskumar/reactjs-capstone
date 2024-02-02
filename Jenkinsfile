pipeline {
    agent any

    stages {


        stage('Build') {
            steps {
                // Build your React application
                sh 'chmod -x build.sh'
                sh './build.sh'
            }
        }

        stage('Deploy') {
            steps {
                sh 'chmod -x deploy.sh'
		sh './deploy.sh'
            }
        }
    }
}

