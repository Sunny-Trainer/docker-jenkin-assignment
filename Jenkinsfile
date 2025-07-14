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
}
}
