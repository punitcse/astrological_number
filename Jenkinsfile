
pipeline {
    agent any
    options { disableConcurrentBuilds() }
    lock(resource: "compiler_${env.NODE_NAME}", inversePrecedence: true) {
        stages {
           stage('build') {
              steps {
                     sh 'sleep 100'
              }
           }
       }
    }
}
