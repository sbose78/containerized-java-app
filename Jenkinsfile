node {
    stage('Build') {
        sh 'git clone https://github.com/sbose78/containerized-java-app.git'
    }
    stage('Test') {
        sh 'cd containerized-java-app && ./build.sh'
    }
    stage('Deploy') {
        echo 'Deploying....'
    }
}
