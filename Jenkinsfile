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
                        script {
                            git 'https://github.com/vjoksimovic/jenkins-tf-lamp.git'
                        }
                    }
                }

        stage('Apply Terraform infrastructure') {
                    steps {
                        script {
                            sh 'terraform apply -var-file="secrets.tfvars"'
                        }
                    }
                }
	}
}
