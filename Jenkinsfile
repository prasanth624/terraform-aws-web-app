pipeline {
    agent any
    
    parameters {
        choice(name: 'ACTION', choices: ['apply', 'destroy'], description: 'Select the action to perform')
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', credentialsId: 'my-credentials', url: 'https://github.com/prasanth624/terraform-aws-web-app.git'
            }
        }
        
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Approval') {
            steps {
                script {                    
                    def userInput = input(
                        id: 'userInput', 
                        message: "Do you want to proceed with the ${params.ACTION} action?",
                        parameters: [string(name: 'Confirm', defaultValue: 'yes', description: 'Type "yes" to proceed')]
                    )
                }
            }
        }
        
        stage('Terraform Action') {
            steps {
                script {
                    if (params.ACTION == 'apply') {
                        sh 'terraform apply -auto-approve'
                    } else if (params.ACTION == 'destroy') {
                        sh 'terraform destroy -auto-approve'
                    }
                }
            }
        }
    }
}
