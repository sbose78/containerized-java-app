node {
    stage('Build') {
        sh 'ls -ltr'
    }
    stage('Test') {
        sh './build.sh'
    }
    stage('Deploy') {
        echo 'Deploying....'
    }
}
