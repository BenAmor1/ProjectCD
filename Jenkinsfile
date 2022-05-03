pipeline
{
    agent any
      stages {
         stage('pull'){
              steps{
                script{
                   checkout([$class: 'GitSCM', branches: [[name: '*/main']],
                       userRemoteConfigs: [[
                               credentialsId: '889caec4-a638-4273-91b1-6a945a58201c',
                               url: 'https://github.com/BenAmor1/ProjectCD.git']]])
                }
              }  
         }
         stage('build'){
              steps{
                script{
                   sh "ansible-playbook ansible/build.yml -i ansible/inventory/host.yml"
                }
              }
         }
      }
}
