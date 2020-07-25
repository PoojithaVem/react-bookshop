node{
   
    stage('checkout scm'){
       git url: 'https://github.com/PoojithaVem/react-bookshop.git'
    }
    /*
    stage('build'){
        sh '/home/vivek/.nvm/versions/node/v14.0.0/bin/npm install'
    }
   stage('run'){
        sh '/home/vivek/.nvm/versions/node/v14.0.0/bin/npm run build'
   }
   */
   
   stage('docker'){
     sh '''
         sudo docker build -t 7575662099/react-bookapp .
         sudo usermod -a -G docker $USER
     '''
   }
   stage('publish'){

      withDockerRegistry(credentialsId: 'dockerhub', toolName: 'docker') {
          sh '''
         sudo docker push 7575662099/react-bookapp
         '''
      }
    
   }
   
 }
