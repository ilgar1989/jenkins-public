pipeline {
    agent any {
        stages {
            stage ('Checkout') {
                steps {
                    git branch: 'main', url:'git@github.com:ilgar1989/jenkins-public.git'
                }
            }
            
            stage ('CreateEnv') {
                steps {
                    sh '''#!/bin/bash
                         aws ec2 run-instances --image-id ami-0aa7d40eeae50c9a9 --count 1 --instance-type t2.micro --key-name 123 --region us-east-1'''
                
                }
            }
        }
    }
}
