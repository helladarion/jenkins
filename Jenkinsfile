#!groovy

stages{
  stage('puppet') {
    node('nucapollo'){
      checkout scm
      sh './jenkins/scripts/check_puppet.sh'
    }
  }
}



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
//     post {
//         always {
//             echo 'One way or another, I have finished'
//             deleteDir() /* clean up our workspace */
//         }
//         success {
//             echo 'I succeeeded!'
//         }
//         unstable {
//             echo 'I am unstable :/'
//         }
//         failure {
//             echo 'I failed :('
//         }
//         changed {
//             echo 'Things were different before...'
//         }
//     }
// }
