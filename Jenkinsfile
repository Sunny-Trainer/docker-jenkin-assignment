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
}
}
