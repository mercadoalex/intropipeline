pipeline {
  agent any
  stages {
    stage('corriendo en paralelo') {
      parallel {
        stage('a') {
          steps {
            echo 'Test en paralelo en Linux'
          }
        }

        stage('b') {
          steps {
            echo 'Test en paralelo en Windows'
          }
        }

      }
    }

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
        sh 'pwd'
        sh 'chmod 777 ./miscript.sh'
        sh './miscript.sh'
      }
    }

    stage('test:funcional') {
      when {
        branch 'test'
      }
      steps {
        sh 'echo "PEjecucion de epruebas en rama  test '
      }
    }

    stage('aprobacion') {
      steps {
        sh 'echo "Paso de aprobacion"'
      }
    }

    stage('deploy:prod') {
      input {
        message 'Presiona Proceed para continuar'
        submitter 'user1,user2'
        parameters {
          string(name: 'username', defaultValue: 'Alex', description: 'Nombre de usaurio que esta dando el OK')
        }
      }
      steps {
        sh 'echo "Paso de deploy:prod"'
        echo "User: ${username} dijo que OK."
      }
    }

  }
  environment {
    OUTPUT_PATH = './tmp'
  }
  post {
    aborted {
      echo 'No termino de correr el pipeline fue forzado a terminar'
    }

    always {
      echo 'El Pipeline termino exitosamente'
    }

    failure {
      echo 'Algo fallo'
      mail(to: 'mfabian@na-at.com.mx', subject: 'Error en el pipeline del ejercicio del curso de docker.', body: 'Cuerpo del correo')
    }

  }
  triggers {
    cron('0*/4**1-5')
  }
}