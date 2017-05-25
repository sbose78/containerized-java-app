node {
    stage('Build') {
        sh 'git clone https://github.com/sbose78/containerized-java-app.git'
    }
    stage('Test') {
        sh 'cd containerized-java-app && chmod +x build.sh && ./build.sh'
    }
    stage('Deploy') {
        echo 'Deploying....'
    }
}
