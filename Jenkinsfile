pipeline {
    agent any

    parameters {
        choice(
            name: 'ENVIRONMENT',
            choices: ['dev', 'prod', 'stg'],
            description: 'Select Terraform workspace'
        )
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Select Workspace') {
            steps {
                sh """
                    terraform workspace select ${params.ENVIRONMENT} ||
                    terraform workspace new ${params.ENVIRONMENT}
                """
            }
        }

        stage('Terraform Plan') {
            steps {
                sh """
                    terraform plan \
                    -var-file=${params.ENVIRONMENT}.tfvars
                """
            }
        }
    }
}
