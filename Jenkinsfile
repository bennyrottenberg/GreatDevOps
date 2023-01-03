pipeline {
  agent {
    node {
      label 'jenkins_agent'
    }
  }
  options {
    skipDefaultCheckout true
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
                              branches: [[name: 'refs/heads/main']]
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