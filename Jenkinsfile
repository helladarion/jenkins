pipeline {
    agent { alpine-jks-01 { image 'python:3.5.1' } }
    stages {
        stage('build') {
            steps {
                sh 'python --version'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying'
            }
        }
    }
}

//pipeline {
//  agent none
//  stages {
//    stage('puppet') {
//      agent {
//        label 'nucapollo'
//      }
//      steps {
//        // checkout scm
//        // sh '$WORKSPACE/jenkins/scripts/check_puppet.sh'
//        echo 'Checking puppet Status'
//        sh './jenkins/scripts/check_puppet.sh'
//        // sh 'ls /Jenkins/*/*/*/*'
//      }
//    }
//  }
//  post {
//      always {
//          echo 'One way or another, I have finished'
//          // deleteDir() /* clean up our workspace */
//      }
//      success {
//          echo 'I succeeeded!'
//      }
//      unstable {
//          echo 'I am unstable :/'
//      }
//      failure {
//          echo 'I failed :('
//      }
//      changed {
//          echo 'Things were different before...'
//      }
//  }
//}



// pipeline {
//     agent {
//       label 'nucapollo'
//     }
//     stages {
//         stage('Checkout') {
//             checkout scm
//         }
//         stage('No-op') {
//             steps {
//                 sh 'ls'
//             }
//         }
//         stage('Puppet') {
//             steps {
//                 sh './jenkins/scripts/check_puppet.sh'
//             }
//         }
//     }
// }
