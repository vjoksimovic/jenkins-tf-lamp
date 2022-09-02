pipeline {
    agent any
    tools {
     tool name: 'terraform', type: 'terraform'
    }
    options {
        skipStagesAfterUnstable()
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
                            sh 'terraform apply -auto-approve -var-file="secrets.tfvars"'
                        }
                    }
                }
	}
}
