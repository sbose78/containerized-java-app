node {
    stage('Build') {
        sh 'cd ${WORKSPACE}/containerized-java-app && ls -ltr && whoami'
    }
    stage('Test') {
        sh 'cd ${WORKSPACE}/containerized-java-app && chmod +x build.sh && su  ./build.sh'
    }
    stage('Deploy') {
        echo 'Deploying....'
    }
}
