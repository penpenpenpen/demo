pipeline {
    agent any
    stages {
        stage 'Clone'
            def scmVars = checkout([$class: 'GitSCM', 
                  branches: [[name: '*/${Branch}']], 
                  userRemoteConfigs: [[credentialsId: credentials_Id, 
                                       url: https://github.com/penpenpenpen/demo/]]])
        stage('Build') {            
            steps {                
                sh 'go build'         
            }        
        }        
        stage('Test') {            
            steps {                
                echo 'Testing'            
            }        
        }
        stage('Deploy - Staging') {            
            steps {                
                sh './demo Staging'                
                echo './run-smoke-tests'            
            }        
        }        
        stage('Sanity check') {            
            steps {                
                input "Does the staging environment look ok?"            
            }        
        }        
        stage('Deploy - Production') {            
            steps {                
                echo './deploy production'            
            }        
        }    
    }
 
    post {        
        always {            
            echo 'One way or another, I have finished'            
            deleteDir() /* clean up our workspace */        
        }        
        success {            
            echo 'I succeeeded!'        
        }        
        unstable {            
            echo 'I am unstable :/'        
        }        
        failure {            
            echo 'I failed :('        
        }        
        changed {            
            echo 'Things were different before...'        
        }    
    }
}

