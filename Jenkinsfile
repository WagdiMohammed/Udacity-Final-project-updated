pipeline {
     agent any
     stages {
         stage('Build') {
             steps {
                 sh 'echo "Hello World"'
                 sh '''
                     echo "Multiline shell steps works too"
                    
                     
                 '''
             }
         }
      
     stage('Lint HTML') {
              steps {
                  sh 'tidy -q -e *.html'
              }
     stage('Create CloudFormation Stacks')
          {
               step {
                    sh '''
                         aws cloudformation create-stack --stack-name udacityfinalproject-infra  --template-body  file://infra.yml   --region us-west-2  --parameters file://infra-paramas.json
                         aws cloudformation create-stack --stack-name udacityfinalproject --template-body  file://servers.yml   --region us-west-2  --parameters file://servers-paramas.json
                      
                      
                      '''
               }
          }
              
         }
     }
}
