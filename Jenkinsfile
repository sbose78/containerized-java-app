node {
    stage('Build') {
        sh 'cd ${WORKSPACE}/containerized-java-app && ls -ltr'
    }
    stage('Test') {
        sh 'cd ${WORKSPACE}/containerized-java-app && chmod +x build.sh && ./build.sh'
    }
    stage('Deploy') {
        echo 'Deploying....'
    }
}
