pipeline {
     agent any
     stages {
         stage('Build') {
             steps {
                 sh 'echo "Hello World"'
                 sh '''
                     echo "Multiline shell steps works too"
                     ls -lah
                 '''
             }
         }
         stage('Lint HTML') {
              steps {
                  sh 'tidy -q -e *.html'
              }
         }
         stage('Upload to AWS') {
              steps {
                  
                  sh '''
                        
                        
                         aws cloudformation create-stack --stack-name udacityfinalproject-infra-last  --template-body  file://infra.yml   --region us-west-2  --parameters file://infra-paramas.json
                         sleep 5m
                         aws cloudformation create-stack --stack-name udacityfinalproject-kube --template-body  file://servers-kube.yaml   --region us-west-2  --parameters file://servers-paramas.json
                         sleep 5m 
                         aws cloudformation create-stack --stack-name udacityfinalproject --template-body  file://servers.yaml   --region us-west-2  --parameters file://servers-paramas.json
                      
                      
                      '''
              }
         }
     }
}
