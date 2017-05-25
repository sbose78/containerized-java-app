node {
    stage('Build') {
        checkout scm
        sh 'ls -ltr && whoami'
    }
    stage('Test') {
        sh 'chmod +x build.sh && ./build.sh'
    }
    stage('Deploy') {
        echo 'Deploying....'
    }
}
