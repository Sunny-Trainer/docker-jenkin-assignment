pipeline {
agent any
tools {
maven 'maven'
}
stages {
stage ('git checkout') {
steps {
checkout scm
}
}
stage (' maven package') { 
steps {
sh 'mvn clean package'
}
}
stage ('docker build') {
steps {
sh 'docker build -t sunnytrainer/tomcat25 . '
}
}
  stage('Push to Docker Hub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'USER', passwordVariable: 'PASS')]) {
                    sh '''
                        echo "$PASS" | docker login -u "$USER" --password-stdin
                        docker push sunnytrainer/tomcat25
                    '''
}
}
}
  stage('Docker Run') {
            steps {
              docker rm -f webapp-container || true
                sh 'docker run -d -p 9090:8080 --name webapp-container sunnytrainer/tomcat25'
}
}
}
}
