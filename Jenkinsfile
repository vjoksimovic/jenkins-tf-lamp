pipeline {
    agent any
    environment {
        ACCESS_KEY = credentials('AWS_ACCESS_KEY_ID')
        SECRET_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }
    stages {
        stage('Checkout') {
            steps {
            checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/vjoksimovic/jenkins-tf-lamp']]])

          }
        }

        stage ("terraform init") {
            steps {
                sh ('terraform init -upgrade')
            }
        }

        stage ("terraform Action") {
            steps {
                echo "Terraform action is --> ${action}"
                sh ('terraform ${action} --auto-approve -var-file="secrets.tfvars"')
           }
        }
    }
}