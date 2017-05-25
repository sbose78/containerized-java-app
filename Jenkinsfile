node {
    stage('Build') {
        checkout scm
        sh 'ls -ltr && ls -ltr && whoami'
    }
    stage('Test') {
        agent { dockerfile true }
    }
    stage('Deploy') {
        echo 'Deploying....'
    }
}
