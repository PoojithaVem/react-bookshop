
node(){
    stage('Cloning Git') {
        checkout scm
    }
        
    stage('Install dependencies') {
        nodejs('nodejs') {
            sh 'npm install'
            echo "Modules installed"
        }
        
    }
    stage('Build') {
        nodejs('nodejs') {
            sh 'npm run build'
            echo "Build completed"
        }
        
    }

    stage('Package Build') {
        sh "tar -zcvf bundle.tar.gz build/"
    }

    stage('Artifacts Creation') {
        fingerprint 'bundle.tar.gz'
        archiveArtifacts 'bundle.tar.gz'
        echo "Artifacts created"
    }

    stage('Stash changes') {
        stash allowEmpty: true, includes: 'bundle.tar.gz', name: 'buildArtifacts'
    }
}

node('awsnode') {
    echo 'Unstash'
    unstash 'buildArtifacts'
    echo 'Artifacts copied'

    echo 'Copy'
    sh "yes | sudo cp -R bundle.tar.gz /var/www/html && cd /var/www/html && sudo tar -xvf bundle.tar.gz"
    echo 'Copy completed'
}




















/*
node(){
    stage('Cloning Git') {
        checkout scm
    }
        
    stage('Install dependencies') {
        nodejs('nodejs') {
            sh 'npm install'
            echo "Modules installed"
        }
        
    }
    stage('Build') {
        nodejs('nodejs') {
            sh 'npm run build'
            echo "Build completed"
        }
        
    }

    stage('Package Build') {
        sh "tar -zcvf bundle.tar.gz build/"
    }

    stage('Artifacts Creation') {
        fingerprint 'bundle.tar.gz'
        archiveArtifacts 'bundle.tar.gz'
        echo "Artifacts created"
    }

    stage('Stash changes') {
        stash allowEmpty: true, includes: 'bundle.tar.gz', name: 'buildArtifacts'
    }
}

node('awsnode') {
    echo 'Unstash'
    unstash 'buildArtifacts'
    echo 'Artifacts copied'

    echo 'Copy'
    sh "yes | sudo cp -R bundle.tar.gz /var/www/html && cd /var/www/html && sudo tar -xvf bundle.tar.gz"
    echo 'Copy completed'
}
*/








/*node{
   
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
         sudo docker build -t 7575662099/react-bookapp .
         sudo usermod -a -G docker $USER
         sudo docker login -u="7575662099" -p="Poojitha@7575"
     '''
   }
   stage('publish'){
          sh '''
         sudo docker push 7575662099/react-bookapp
         '''
    
   }
   
 }
*/
