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
            post {
                success {
                   archiveArtifacts artifacts: 'simple-java-maven-app/target/*.jar', fingerprint: true
                }
            }
        }
        stage('Test') {
            steps {
                sh './jenkins/test/mvn.sh mvn test'
            }
            post {
                always {
                   junit 'simple-java-maven-app/target/surefire-reports/*.xml'
                }
            }
        }
        stage('Push') {
            steps {
                sh './jenkins/push/push.sh'
            }
        }
        stage('Deploy') {
            steps {
                sh './jenkins/deploy/deploy.sh'
            }
        }
    }
}