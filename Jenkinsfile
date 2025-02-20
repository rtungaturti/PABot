pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout code from your repository
                checkout scm
            }
        }
        
        stage('Parallel Tests') {
            parallel {
                stage('TS_1') {
                    steps {
                        script {
                            sh 'pabot --processes 2 tests/TS_1.robot'
                        }
                    }
                }
                stage('TS_2') {
                    steps {
                        script {
                            sh 'pabot --processes 2 tests/TS_2.robot'
                        }
                    }
                }
            }
        }
        
        stage('Publish Reports') {
            steps {
                // Publish Robot Framework test results
                script {
                    robot 'results/'
                }
            }
        }
    }

    post {
        always {
            // Clean up workspace after the build
            cleanWs()
        }
    }
}
