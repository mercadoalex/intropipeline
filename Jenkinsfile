pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh 'echo "Un paso sencillo de una linea"'
        sh '''
         echo "Pasos Multilinea"\'
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
      steps {
        sh 'echo "Paso de deploy:prod"'
      }
    }

  }
}