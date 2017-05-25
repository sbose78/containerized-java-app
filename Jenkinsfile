node {
    stage('Build') {
        sh 'export sshopts="-t -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -l root"'
        sh 'export ssh_cmd="ssh $sshopts $CICO_hostname"'
        sh "env > jenkins-env"
        sh 'cd ${WORKSPACE}/containerized-java-app && ls -ltr && whoami'
    }
    stage('Test') {
        sh 'cd ${WORKSPACE}/containerized-java-app && chmod +x build.sh && $ssh_cmd ./build.sh'
    }
    stage('Deploy') {
        echo 'Deploying....'
    }
}
