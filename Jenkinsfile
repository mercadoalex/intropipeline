pipeline {
  agent any
  stages {
    stage('Say Hello') {
      steps {
        echo "Hello ${MY_NAME}!"
        echo "${TEST_USER_USR}"
        sh 'java -version'
      }
    }

  }
  environment {
    MY_NAME = 'Alex'
    TEST_USER = credentials('admin')
  }
}