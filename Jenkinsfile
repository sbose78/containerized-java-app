node {
    stage('Build') {
        sh 'cd ${WORKSPACE} && ls -ltr'
    }
    stage('Test') {
        sh 'chmod +x build.sh && ./build.sh'
    }
    stage('Deploy') {
        echo 'Deploying....'
    }
}
