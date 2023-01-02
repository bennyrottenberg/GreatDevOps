pipeline {
  agent {
    node {
      label 'jenkins_agent'
    }
  }

  triggers {
    pollSCM '* * * * *'
  }
  stages {
    stage('checkout') {
      steps {
        checkout scm: [$class: 'GitSCM',
          userRemoteConfigs: [[url: 'https://github.com/bennyrottenberg/GreatDevOps',
                              credentialsId: 'git_token']],
                              branches: [[name: 'refs/heads/dev']]
        ], poll: true
      }
    }
    stage('run puthon script') {
      steps {
        script{
          sh "python main.py"
        }
      }
    }
  }
}
    
          