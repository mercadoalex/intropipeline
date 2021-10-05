pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh 'echo "Un paso sencillo de una linea"'
        sh '''
         echo "Pasos Multilinea"
         cd /tmp
         ls -lrt
         '''
      }
    }

    stage('test: integration y calidad') {
      steps {
        sh 'echo "Paso de test: integration y calidad"'
      }
    }

    stage('test:funcional') {
      steps {
        sh 'echo "Paso de test:funcional"'
      }
    }

    stage('aprobacion') {
      steps {
        sh 'echo "Paso de aprobacion"'
      }
    }

    stage('deploy:prod') {
      input {
        message 'Presiona OK para continuar'
        submitter 'user1,user2'
        parameters {
          string(name: 'username', defaultValue: 'user', description: 'Nombre de usaurio que esta dando el OK')
        }
      }
      steps {
        sh 'echo "Paso de deploy:prod"'
        echo "User: ${username} diho que OK."
      }
    }

  }
  environment {
    OUTPUT_PATH = './tmp'
  }
}