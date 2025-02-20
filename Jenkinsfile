pipeline {
    agent any
stages {
        stage('Verify Environment') {
            steps {
                script {
                    sh '''
                        python --version
                        pip --version
                        robot --version
                        pabot --version
                        chromedriver --version
                    '''
                }
            }
        }
    stages {
        stage('Checkout') {
            steps {
                // Checkout code from your repository
                checkout scm
                // List workspace contents to verify files are present
                script {
                    sh 'ls -al'
                }
            }
        }
        
        stage('Parallel Tests') {
            parallel {
                stage('TS_1') {
                    steps {
                        script {
                            // List contents of the directory to ensure files are present
                            sh 'ls -al'
                            // Run the test suite
                            sh 'pabot --processes 2 TS_1.robot'
                        }
                    }
                }
                stage('TS_2') {
                    steps {
                        script {
                            // List contents of the directory to ensure files are present
                            sh 'ls -al'
                            // Run the test suite
                            sh 'pabot --processes 2 TS_2.robot'
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
