pipeline {
    agent any
    environment {
        PASS = credentials('registry-pass')
    }
    stages {
        stage('Build') {
            steps {
                sh '''
                    ./jenkins/build/mvn.sh mvn -B -DskipTests clean package
                    ./jenkins/build/build.sh
                    '''
            }
        }
        stage('Test') {
            steps {
                sh './jenkins/test/mvn.sh mvn test'
            }
        }
        stage('Push') {
            steps {
                echo './jenkins/push/push.sh'
            }
        }
        stage('Deploy') {
            steps {
                echo './jenkins/deploy/deploy.sh'
            }
        }
    }
}