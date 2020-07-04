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
                         aws configure set aws_access_key_id AKIAIYSLUQ4IO6A55UUQ
                         aws configure set aws_secret_access_key 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
                         aws cloudformation create-stack --stack-name udacityfinalproject-infra  --template-body  file://infra.yml   --region us-west-2  --parameters file://infra-paramas.json
                         aws cloudformation create-stack --stack-name udacityfinalproject --template-body  file://servers.yml   --region us-west-2  --parameters file://servers-paramas.json
                      
                      
                      '''
              }
         }
     }
}
