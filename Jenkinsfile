pipeline {
  agent any
  stages {
    stage('Say Hello') {
      steps {
        echo "Hello ${MY_NAME}!"
        echo "Hello ${params.Apellid}!"
        sh 'java -version'
        echo "The build number is ${env.BUILD_NUMBER}"
      }
    }

  }
  environment {
    MY_NAME = 'Alex'
  }
  parameters {
    string(name: 'Apellido', defaultValue: 'whoever you are', description: 'Who should I say hi to?')
  }
}