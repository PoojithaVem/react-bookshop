node{
   
    stage('checkout scm'){
       git url: 'https://github.com/PoojithaVem/react-bookshop.git'
    }
    
    stage('build'){
        sh '/home/vivek/.nvm/versions/node/v14.0.0/bin/npm install'
    }
   stage('run'){
        sh '/home/vivek/.nvm/versions/node/v14.0.0/bin/npm run build'
   }
   stage('docker'){
     sh '''
         sudo docker build -t react-bookapp .
     '''
   }
   
 }
