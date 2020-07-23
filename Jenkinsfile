node{
    stage('version'){
       git url: 'https://github.com/PoojithaVem/react-bookshop.git'
       sh '''
        /home/vivek/.nvm/versions/node/v14.0.0/bin/npm install
        /home/vivek/.nvm/versions/node/v14.0.0/bin/npm --version
        
        /home/vivek/.nvm/versions/node/v14.0.0/bin/npm run deploy
       '''
    }
 }
