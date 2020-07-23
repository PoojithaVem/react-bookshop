node{
   /* stage('version'){
       git url: 'https://github.com/PoojithaVem/react-bookshop.git'
       sh '''
        /home/vivek/.nvm/versions/node/v14.0.0/bin/npm install
        /home/vivek/.nvm/versions/node/v14.0.0/bin/npm --version
        /home/vivek/.nvm/versions/node/v14.0.0/bin/npm run build
       
       '''
    } */
    stage('checkout scm'){
       git url: 'https://github.com/PoojithaVem/react-bookshop.git'
    }
    stage('docker'){
        docker.image('node:6-alpine').withRun('-p 3000:3000')
    }
    stage('build'){
        sh 'npm install'
    }
 }
