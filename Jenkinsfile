pipeline {
    agent any
    tools {
     terraform 'terraform'
    }
    options {
        skipStagesAfterUnstable()
    }

    stages {

        stage('Pull Terraform infrastructure') {
                    steps {
                            git 'https://github.com/vjoksimovic/jenkins-tf-lamp.git'
                    }
                }
                
        stage('Terraform format check') {
            steps{
                sh 'terraform fmt'
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
                            sh 'terraform apply -auto-approve -var-file="secrets.tfvars"'
                        }
                    }
                }
	}
}
