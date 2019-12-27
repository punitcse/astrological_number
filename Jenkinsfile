
pipeline {
    agent any
    options { disableConcurrentBuilds() }
        stages {
           stage('build') {
              steps {
                  lock(resource: "compiler_${env.NODE_NAME}", inversePrecedence: true) {
                  
                     sh 'sleep 100'
                   }
                      
              }
           }
    }
}
