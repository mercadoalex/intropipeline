pipeline {
  agent any
  stages {
    stage('Say Hello') {
      steps {
        echo "Hello ${MY_NAME}!"
        echo "${ADMIN_USER_USR}"
        sh 'java -version'
      }
    }

  }
  environment {
    MY_NAME = 'Alex'
    ADMIN_USER = credentials('admin')
  }
}