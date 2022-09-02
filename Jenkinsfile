pipeline {
    agent any
    tools {
     terraform 'terraform'
    }
    options {
        skipStagesAfterUnstable()
    }
    environment {
        access=credentials('aws-credentials')
    }

    stages {

        stage('Pull Terraform infrastructure') {
                    steps {
                            git branch: 'main', credentialsId: '1d86e2d4-24fd-4c64-96d2-f7d58b604252', url: 'https://github.com/vjoksimovic/jenkins-tf-lamp'
                    }
                }

        stage('Terraform Init') {
            steps{
                sh 'terraform init'
            }
        }

        stage('Apply Terraform infrastructure') {
                    steps {
                        script {
                            sh 'terraform apply -auto-approve -var "access-key=$aws-credentials" -var-file="secrets.tfvars"'
                        }
                    }
                }
	}
}