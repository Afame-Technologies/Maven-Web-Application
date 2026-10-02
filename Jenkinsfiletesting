node {
    def mavenHome=tool name: "maven3.9.16"
    stage('CheckoutCode'){
        git branch: 'development', credentialsId: '20627e37-1e4c-4ad6-8724-78e2f07e6a3e', url: 'https://github.com/Afame-Technologies/Maven-Web-Application.git'
    }
    stage('Build'){
        sh "$mavenHome/bin/mvn clean package"
    }
    stage('sonarQubeReport'){
        sh "$mavenHome/bin/mvn sonar:sonar"
    }
    stage("UploadArtifactsIntoNexus"){
        sh "$mavenHome/bin/mvn deploy"
    }
    stage("deployAppintokTomcat"){
        sshagent(credentials: ['5666df38-7d79-4bb2-917c-91f939886216'], executable: '') {
    sh "scp -o StrictHostKeyChecking=no target/maven-web-application.war ec2-user@13.233.163.243:/opt/tomcat9/webapps"
}
    }
    
}
