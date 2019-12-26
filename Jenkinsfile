
pipeline {
    agent any
    options { disableConcurrentBuilds() }
    stages {
       stage('build') {
          lock(resource: "compiler_${env.NODE_NAME}", inversePrecedence: true) {
              steps {                
                  sh 'sleep 100'
              }
          }
       }
    }
}
