pipeline{
  agent {
    label 'SLAVE'
  }

  parameters {
    choice(name: 'ACTION', choices: ['', 'APPLY', 'DESTROY'], description: 'Pick something')
  }

  stages{
    stage('Terramform init')
            {
              steps{
                sh '''
                  terraform get -update
                  terraform init
              '''
              }
            }
    stage('Terramform apply')
            {
              when{
                expression{
                  params.ACTION == 'APPLY'
                }
              }
              steps{
                sh '''
                  terraform apply -auto-approve
              '''
              }
            }
    stage('Terramform destroy')
            {
              when{
                expression{
                  params.ACTION == 'DESTROY'
                }
              }
              steps{
                sh '''
                  terraform destroy -auto-approve
              '''
              }
            }
  }
}