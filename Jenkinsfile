node {
    stage('Build') {
        sh 'ls -ltr && cd ${WORKSPACE}/jenkins-env && cd ${WORKSPACE}/containerized-java-app && ls -ltr && whoami'
    }
    stage('Test') {
        sh 'cd ${WORKSPACE}/containerized-java-app && cat build.sh && chmod +x build.sh && ./build.sh'
    }
    stage('Deploy') {
        echo 'Deploying....'
    }
}
