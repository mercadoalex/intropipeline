pipeline {
  agent any
  stages {
    stage('Say Hello') {
      steps {
        echo "Hello ${MY_NAME}!"
        echo "--------------- ${params.Apellido}!"
        sh 'java -version'
        echo "The build number is ${env.BUILD_NUMBER}"
      }
    }

  }
  environment {
    MY_NAME = 'Alex'
  }
  parameters {
    string(name: 'Apellido', defaultValue: 'Market', description: 'Who should I say hi to?')
  }
}