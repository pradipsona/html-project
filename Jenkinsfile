pipeline {
    agent any

    stages {
        stage('git checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/pradipsona/html-project' 
            }
        }
        stage('deploy') {
            steps {
                sh 'sudo cp index.html /var/www/html'
                sh 'sudo systemctl restart nginx'
            }
        }
        stage('Build & Tag Docker Image') {
            steps {
               sh "docker build -t html-app ."
            }
       }
       stage('Running the container') {
            steps {
              sh "docker run -d --name app -p 8000:80 html-app"
            }
       }
       
       
    }
}
